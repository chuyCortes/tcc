<?php
  /* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4:
  Codificación: UTF-8
  +----------------------------------------------------------------------+
  | Issabel version 1.6-6                                               |
  | http://www.issabel.org                                               |
  +----------------------------------------------------------------------+
  | Copyright (c) 2006 Palosanto Solutions S. A.                         |
  +----------------------------------------------------------------------+
  | The contents of this file are subject to the General Public License  |
  | (GPL) Version 2 (the "License"); you may not use this file except in |
  | compliance with the License. You may obtain a copy of the License at |
  | http://www.opensource.org/licenses/gpl-license.php                   |
  |                                                                      |
  | Software distributed under the License is distributed on an "AS IS"  |
  | basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See  |
  | the License for the specific language governing rights and           |
  | limitations under the License.                                       |
  +----------------------------------------------------------------------+
  | The Initial Developer of the Original Code is PaloSanto Solutions    |
  +----------------------------------------------------------------------+
  $Id: index.php,v 1.1 2010-07-21 01:08:56 Bruno Macias bmacias@palosanto.com Exp $ */
//include issabel framework
include_once "libs/paloSantoGrid.class.php";
include_once "libs/paloSantoForm.class.php";
include_once "libs/paloSantoConfig.class.php";

function _moduleContent(&$smarty, $module_name)
{

    //include module files
    include_once "modules/$module_name/configs/default.conf.php";
    include_once "modules/$module_name/libs/paloSantoEmailRelay.class.php";

    $base_dir=dirname($_SERVER['SCRIPT_FILENAME']);

    load_language_module($module_name);

    //global variables
    global $arrConf;
    global $arrConfModule;
    $arrConf = array_merge($arrConf,$arrConfModule);

    //folder path for custom templates
    $templates_dir=(isset($arrConf['templates_dir']))?$arrConf['templates_dir']:'themes';
    $local_templates_dir="$base_dir/modules/$module_name/".$templates_dir.'/'.$arrConf['theme'];

    //conexion resource
    $pDB = new paloDB($arrConf['dsn_conn_database']);

    //actions
    $action = getAction();
    $content = "";

    switch($action){
        case "save_config":
            $content = saveNewEmailRelay($smarty, $module_name, $local_templates_dir, $pDB, $arrConf);
            break;
        default: // view_form
            $content = viewFormEmailRelay($smarty, $module_name, $local_templates_dir, $pDB, $arrConf);
            break;
    }
    return $content;
}

function viewFormEmailRelay($smarty, $module_name, $local_templates_dir, &$pDB, $arrConf)
{
    $pEmailRelay = new paloSantoEmailRelay($pDB);

    if(isset($_POST) && count($_POST) > 0)
        $_DATA = $_POST;
    else
        $_DATA = $pEmailRelay->getMainConfigByAll();

    $activated = $pEmailRelay->getStatus();
    if($activated==="on"){
        $_DATA['status'] = "on";
    }
    else{
        $_DATA['status'] = "off";
		$_DATA['SMTP_Server'] = "custom";
    }

    $smarty->assign("CONFIGURATION_UPDATE",_tr('Save'));
    $smarty->assign("ENABLED", _tr("Enabled"));
    $smarty->assign("DISABLED", _tr("Disabled"));
    $smarty->assign("ENABLE", _tr("Enable"));
    $smarty->assign("DISABLE", _tr("Disable"));
    $smarty->assign("REQUIRED_FIELD", _tr("Required field"));
    $smarty->assign("STATUS",_tr('Status'));
    $smarty->assign("MSG_REMOTE_SMTP",_tr('Message Remote SMTP Server'));
    $smarty->assign("MSG_REMOTE_AUT",_tr('Message Remote Autentification'));
    $smarty->assign("icon", "images/list.png");
    $smarty->assign("Example",_tr("Ex"));
    $smarty->assign("lbldomain",_tr("Domain"));

    $arrFormEmailRelay = createFieldForm();
    $oForm = new paloForm($smarty,$arrFormEmailRelay);
    $htmlForm = $oForm->fetchForm("$local_templates_dir/form.tpl",_tr("Remote SMTP Delivery"), $_DATA);
    return "<form method='POST' style='margin-bottom:0; action='?menu=$module_name'>".$htmlForm."</form>";
}

function saveNewEmailRelay($smarty, $module_name, $local_templates_dir, &$pDB, $arrConf)
{
    $arrFormEmailRelay = createFieldForm();
    $oForm = new paloForm($smarty,$arrFormEmailRelay);

    if(!$oForm->validateForm($_POST)){
        $smarty->assign("mb_title", _tr("Validation Error"));

        $arrErrores = $oForm->arrErroresValidacion;
        $strErrorMsg = "<b>"._tr('The following fields contain errors').":</b><br/>";
        if(is_array($arrErrores) && count($arrErrores) > 0){
            foreach($arrErrores as $k=>$v) {
                $strErrorMsg .= "$k, ";
            }
        }
        $smarty->assign("mb_message", $strErrorMsg);
    }
    else{
        $pEmailRelay = new paloSantoEmailRelay($pDB);

        $arrData['relayhost']       = rtrim(getParameter('relayhost'));
        $arrData['port']            = rtrim(getParameter('port'));
        $arrData['user']            = rtrim(getParameter('user'));
        $arrData['password']        = rtrim(getParameter('password'));
        $arrData['status']          = rtrim(getParameter('status'));
        $arrData['autentification'] = getParameter('autentification');

        if ($arrData['status'] != 'on') $arrData['status'] = 'off';

        $SMTP_Server = rtrim(getParameter('SMTP_Server'));
        if($SMTP_Server != "custom"){
            if($arrData['user'] == "" || $arrData['password'] == ""){
        	$varErrors = "";
        	if($arrData['user'] == "")
        	    $varErrors = _tr("Username").", ";
        	if($arrData['password'] == "")
        	    $varErrors .= " "._tr("Password");

        	$strErrorMsg = "<b>"._tr('The following fields contain errors').":</b><br/> ".$varErrors;
        	$smarty->assign("mb_message", $strErrorMsg);
        	$content = viewFormEmailRelay($smarty,$module_name,$local_templates_dir,$pDB,$arrConf);
        	return $content;
            }
        }

        $tls_enabled  = ($arrData['autentification']=="on")?true:false;
        $auth_enabled = ($arrData['user']!="" && $arrData['password']!="");
        $isOK = ($arrData['status'] == 'on')
            ? $pEmailRelay->checkSMTP(
                $arrData['relayhost'] ,
                $arrData['port'],
                $arrData['user'],
                $arrData['password'],
                $auth_enabled,
                $tls_enabled)
            : true;

        if(is_array($isOK)){ //hay errores al tratar de verificar datos
            $errors = $isOK["ERROR"];
            $smarty->assign("mb_title", _tr("ERROR"));
            $smarty->assign("mb_message", _tr($errors).': '.print_r($isOK["SMTP_ERROR"], TRUE));
            $content= viewFormEmailRelay($smarty,$module_name,$local_templates_dir,$pDB,$arrConf);
            return $content;
        }

        $pEmailRelay->setStatus($arrData['status']);
        $ok = $pEmailRelay->processUpdateConfiguration($arrData);
        if($ok){
            $smarty->assign("mb_title", _tr("Result transaction"));
            $smarty->assign("mb_message", _tr("Configured successful"));
        }
        else{
            $smarty->assign("mb_title", _tr("ERROR"));
            $smarty->assign("mb_message", $pEmailRelay->errMsg);
        }
    }
    $content= viewFormEmailRelay($smarty,$module_name,$local_templates_dir,$pDB,$arrConf);
    return $content;
}

function createFieldForm()
{

    $arrServers = array(
        "custom"=>_tr("OTHER"),
        "smtp.gmail.com"=>"GMAIL",
        "smtp.live.com"=>"HOTMAIL",
        "smtp.mail.yahoo.com" => "YAHOO");

    $arrFields = array(
            "status"   => array(      "LABEL"                  => _tr("Status"),
                                            "REQUIRED"               => "yes",
                                            "INPUT_TYPE"             => "CHECKBOX",
                                            "INPUT_EXTRA_PARAM"      => array("id"=>"status"),
                                            "VALIDATION_TYPE"        => "text",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "SMTP_Server"    => array(      "LABEL"                  => _tr("SMTP Server"),
                                            "REQUIRED"               => "yes",
                                            "INPUT_TYPE"             => "SELECT",
                                            "INPUT_EXTRA_PARAM"      => $arrServers,
                                            "VALIDATION_TYPE"        => "",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "relayhost"    => array(        "LABEL"                  => _tr("Domain"),
                                            "REQUIRED"               => "yes",
                                            "INPUT_TYPE"             => "TEXT",
                                            "INPUT_EXTRA_PARAM"      => "",
                                            "VALIDATION_TYPE"        => "text",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "port"         => array(        "LABEL"                  => _tr("Port"),
                                            "REQUIRED"               => "yes",
                                            "INPUT_TYPE"             => "TEXT",
                                            "INPUT_EXTRA_PARAM"      => "",
                                            "VALIDATION_TYPE"        => "numeric",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "user"         => array(        "LABEL"                  => _tr("Username"),
                                            "REQUIRED"               => "no",
                                            "INPUT_TYPE"             => "TEXT",
                                            "INPUT_EXTRA_PARAM"      => "",
                                            "VALIDATION_TYPE"        => "text",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "password"     => array(        "LABEL"                  => _tr("Password"),
                                            "REQUIRED"               => "no",
                                            "INPUT_TYPE"             => "PASSWORD",
                                            "INPUT_EXTRA_PARAM"      => "",
                                            "VALIDATION_TYPE"        => "text",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            "autentification"   => array(   "LABEL"                  => _tr("TLS Enable"),
                                            "REQUIRED"               => "no",
                                            "INPUT_TYPE"             => "CHECKBOX",
                                            "INPUT_EXTRA_PARAM"      => "",
                                            "VALIDATION_TYPE"        => "text",
                                            "VALIDATION_EXTRA_PARAM" => ""
                                            ),
            );
    return $arrFields;
}

function getAction()
{
    if(getParameter("save"))
        return "save_config";
    else
        return "report"; //cancel
}
?>
