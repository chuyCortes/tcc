<?php
  /* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4:
  Codificación: UTF-8
  +----------------------------------------------------------------------+
  | Issabel version {ISSBEL_VERSION}                                     |
  | http://www.issabel.org                                               |
  +----------------------------------------------------------------------+
  | Copyright (c) 2017 Issabel Foundation                                |
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
  $Id: index.php,v 1.1 2018-08-28 01:08:03 Erick Estrada Exp $ */

//include issabel framework
    error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
    ini_set('display_errors', 1);

    require_once "libs/paloSantoDB.class.php";
    include_once "libs/paloSantoGrid.class.php";
    include_once "libs/paloSantoForm.class.php";

    function _moduleContent(&$smarty, $module_name){
        //include module files
        include_once "modules/$module_name/configs/default.conf.php";
        include_once "modules/$module_name/libs/paloSantoClientes.class.php";

        //include file language agree to issabel configuration
        //if file language not exists, then include language by default (en)
        $lang=get_language();
        $base_dir=dirname($_SERVER['SCRIPT_FILENAME']);
        $lang_file="modules/$module_name/lang/$lang.lang";
        if (file_exists("$base_dir/$lang_file")) include_once "$lang_file";
        else include_once "modules/$module_name/lang/en.lang";

        //global variables
        global $arrConf;
        global $arrConfModule;
        global $arrLang;
        global $arrLangModule;
        $arrConf = array_merge($arrConf,$arrConfModule);
        $arrLang = array_merge($arrLang,$arrLangModule);

        $smarty->assign('MODULE_NAME', $module_name);

        //folder path for custom templates
        $templates_dir=(isset($arrConf['templates_dir']))?$arrConf['templates_dir']:'themes';
        $local_templates_dir="$base_dir/modules/$module_name/".$templates_dir.'/'.$arrConf['theme'];

        // Conexión a la base de datos call_center
        $pDB = new paloDB($arrConf['cadena_dsn']);

        // Mostrar pantalla correspondiente
        $sAction = 'mostrar_clientes';
        if (isset($_REQUEST['action'])) $sAction = $_REQUEST['action'];
        
        switch ($sAction) {
            case 'nuevo_cliente':
                return nuevoCliente($pDB, $smarty, $module_name, $local_templates_dir);
            case 'editar_cliente':
                return editarCliente($pDB, $smarty, $module_name, $local_templates_dir);
            case 'eliminar_cliente':
                return eliminarCliente($pDB, $smarty, $module_name, $local_templates_dir);
            case 'mostrar_clientes':
                return mostrarClientes($smarty, $module_name, $local_templates_dir, $pDB, $arrConf);
            case 'cancel':
                Header("Location: ?menu=$module_name");
                return '';
            default:
                return mostrarClientes($smarty, $module_name, $local_templates_dir, $pDB, $arrConf);
        }
    }

    function mostrarClientes($smarty, $module_name, $local_templates_dir, &$pDB, $arrConf){
        $pClientes = new paloSantoClientes($pDB);
        $filter_field = getParameter("filter_field");
        $filter_value = getParameter("filter_value");

        //begin grid parameters
        $oGrid  = new paloSantoGrid($smarty);
        $oGrid->setTitle(_tr("Clientes"));
        $oGrid->pagingShow(false); // show paging section.
        // $oGrid->setLimit(50);
        $oGrid->addNew("?menu=$module_name&action=nuevo_cliente", _tr('Agregar Cliente'), TRUE);
        $oGrid->setIcon('images/user.png');
        //$oGrid->enableExport();   // enable export.
        // $oGrid->setNameFile_Export(_tr("Clientes"));

        $url = array(
            "menu"         =>  $module_name,
            "filter_field" =>  $filter_field,
            "filter_value" =>  $filter_value);
        $oGrid->setURL($url);

        $arrColumns = array(_tr("Client"), _tr("Description"), _tr("Fecha Alta"), '', '');
        $oGrid->setColumns($arrColumns);

        $total   = $pClientes->getNumClientes($filter_field, $filter_value);
        $arrData = null;
        if($oGrid->isExportAction()){
            $limit  = $total; // max number of rows.
            $offset = 0;      // since the start.
        }
        else{
            $limit  = 20;
            $oGrid->setLimit($limit);
            $oGrid->setTotal($total);
            $offset = $oGrid->calculateOffset();
        }

        $arrResult = $pClientes->getClientes($limit, $offset, $filter_field, $filter_value);

        if(is_array($arrResult) && $total>0){
            foreach($arrResult as $key => $value){ 
            $arrTmp[0] = $value;
                $arrData[] = $arrTmp;
            }
        }

        foreach ($arrData as $idCliente) {
            $listaClientes[] = array(
                'IdCliente'        =>  $idCliente[0]['Id'],
                'Cliente'    =>  $idCliente[0]['Cliente'],
                'Descripcion'      =>  $idCliente[0]['Descripcion'],
                'FechaAlta'  =>  date('d-m-Y h:i a', strtotime($idCliente[0]['FechaAlta']))
            );
        }

        foreach ($listaClientes as $tuplaCliente) {
            $tuplaData = array(
                //"<input class=\"button\" type=\"radio\" name=\"agent_number\" value=\"{$tuplaCliente["id"]}\" />",
                htmlentities($tuplaCliente['Cliente'], ENT_COMPAT, 'UTF-8'),
                htmlentities($tuplaCliente['Descripcion'], ENT_COMPAT, 'UTF-8'),
                htmlentities($tuplaCliente['FechaAlta'], ENT_COMPAT, 'UTF-8'),
                "<a href='?menu=clientes&amp;action=editar_cliente&amp;IdCliente=" . $pClientes->crypt($tuplaCliente["IdCliente"], 'e') . "'>["._tr("Editar")."]</a>",
                "<a class='eliminarCliente' data-id='".$pClientes->crypt($tuplaCliente["IdCliente"], 'e')."' href='#'>["._tr("Eliminar")."]</a>",
            );
            $arrDataHTML[] = $tuplaData;
        }

        $arrDataHTML = array_slice($arrDataHTML, $offset, $oGrid->getLimit());
        $oGrid->setData($arrDataHTML);
        
        //begin section filter
        $oFilterForm = new paloForm($smarty, createFieldFilter());
        $smarty->assign("SHOW", _tr("Show"));
        $smarty->assign("JAVASCRIPT_BOOTBOX", TRUE); //Código JavaScript para eliminar un cliente con un modal de bootbox
        $htmlFilter  = $oFilterForm->fetchForm("$local_templates_dir/filter.tpl","",$_POST);
        //end section filter

        // $oGrid->showFilter(trim($htmlFilter)); //Agrega los filtros 
        $content = $oGrid->fetchGrid();
        //end grid parameters

        return $content;
    }

    function nuevoCliente($pDB, $smarty, $module_name, $local_templates_dir){
        return formEditCliente($pDB, $smarty, $module_name, $local_templates_dir, NULL);
    }

    function editarCliente($pDB, $smarty, $module_name, $local_templates_dir){
        $IdCliente = NULL;
        if (isset($_GET['IdCliente']))
            $IdCliente = $_GET['IdCliente'];
        if (isset($_POST['IdCliente']))
            $IdCliente = $_POST['IdCliente'];
        if (is_null($IdCliente)) {
            Header("Location: ?menu=$module_name");
            return '';
        } else {
            return formEditCliente($pDB, $smarty, $module_name, $local_templates_dir, $IdCliente);
        }
    }

    function eliminarCliente($pDB, $smarty, $module_name, $local_templates_dir){
        $pClientes = new paloSantoClientes($pDB);
        $IdCliente = NULL;
        if (isset($_GET['IdCliente']) && $_GET['IdCliente'] != '')
            $IdCliente = $_GET['IdCliente'];
        if (isset($_POST['IdCliente']) && $_POST['IdCliente'] != '')
            $IdCliente = $_POST['IdCliente'];
        if (is_null($IdCliente)){
            Header("Location: ?menu=$module_name");
            return '';
        } else {
            if (!$pClientes->eliminarCliente($IdCliente)) {
                $smarty->assign(array(
                    'mb_title'      =>  _tr("Error al eliminar Cliente"),
                    'mb_message'    =>  $pClientes->errMsg,
                ));
            } else {
                Header("Location: ?menu=$module_name");
                $smarty->assign(array(
                    'mb_title'      =>  _tr("El Cliente sé eliminó correctamente"),
                    'mb_message'    =>  $pClientes->errMsg,
                ));
            }
        }
    }

    function formEditCliente($pDB, $smarty, $module_name, $local_templates_dir, $IdCliente){
        // Si se ha indicado cancelar, volver a listado sin hacer nada más
        if (isset($_POST['cancel'])) {
            Header("Location: ?menu=$module_name");
            return '';
        }

        $arrCliente = NULL;
        $pClientes = new paloSantoClientes($pDB);
        if (!is_null($IdCliente)) {
            $arrCliente = $pClientes->getClienteById($IdCliente);
            if (!is_array($arrCliente) || count($arrCliente) == 0) {
                $smarty->assign("mb_title", 'Unable to read client');
                $smarty->assign("mb_message", 'Cannot read client - '.$pClientes->errMsg);
                return '';
            }
        }

        $pClientes = new paloSantoClientes($pDB);
        $arrFormClientes = getFormCliente($smarty, !is_null($IdCliente));
        // Valores por omisión para primera carga
        if (is_null($IdCliente)) {
            // Creación de nuevo agente
            if (!isset($_POST['cliente']))    $_POST['cliente'] = '';
            if (!isset($_POST['descripcion']))  $_POST['descripcion'] = '';
        } else {
            // Modificación de agente existente
            if (!isset($_POST['cliente']))    $_POST['cliente'] = $arrCliente['Cliente'];
            if (!isset($_POST['descripcion']))  $_POST['descripcion'] = $arrCliente['Descripcion'];
            $smarty->assign("IdCliente", $IdCliente);
        }


        $oForm = new paloForm($smarty, $arrFormClientes);
        
        if (!is_null($IdCliente)) {
            $oForm->setEditMode();
            // $smarty->assign("IdCliente", $IdCliente);
        }
        $smarty->assign("SAVE", _tr("Save"));
        $smarty->assign("REQUIRED_FIELD", _tr("Required field"));
        $smarty->assign('icon', 'images/user.png');

        $bDoCreate = isset($_POST['submit_guardar_cliente']);
        $bDoUpdate = isset($_POST['submit_guardar_cambios']);

        if ($bDoCreate || $bDoUpdate) {
            if(!$oForm->validateForm($_POST)) {
                // Falla la validación básica del formulario
                $smarty->assign("mb_title", _tr("Validation Error"));
                $arrErrores = $oForm->arrErroresValidacion;
                $strErrorMsg = "<b>"._tr('The following fields contain errors').":</b><br>";
                foreach($arrErrores as $k=>$v) {
                    $strErrorMsg .= "$k, ";
                }
                $strErrorMsg .= "";
                $smarty->assign("mb_message", $strErrorMsg);
            } else {
                foreach (array('cliente', 'descripcion') as $k)
                    $_POST[$k] = trim($_POST[$k]);
                    $bExito = TRUE;
                    
                    $ClienteInfo = array(
                        0 => $_POST['cliente'],
                        1 => $_POST['descripcion'],
                        2 => is_null($IdCliente) ? NULL : $IdCliente 
                    );
                    if ($bDoCreate) {
                        $bExito = $pClientes->guardarNuevoCliente($ClienteInfo);
                        if (!$bExito) $smarty->assign("mb_message",
                            ""._tr("Error al insertar Cliente")." ".$pClientes->errMsg);
                    } elseif ($bDoUpdate) {
                        $bExito = $pClientes->guardarCambiosCliente($ClienteInfo);
                        if (!$bExito) $smarty->assign("mb_message",
                            ""._tr("Error al actualizar Cliente")." ".$pClientes->errMsg);
                    }
                    if ($bExito) header("Location: ?menu=$module_name");
            }
        }

        $contenidoModulo = $oForm->fetchForm("$local_templates_dir/form.tpl", is_null($IdCliente) ? _tr("Nuevo Cliente") : _tr('Editar Cliente'), $_POST);
        return $contenidoModulo;
    }


    function getFormCliente(&$smarty, $bEdit){
        $smarty->assign("REQUIRED_FIELD", _tr("Required field"));
        $smarty->assign("CANCEL", _tr("Regresar"));
        $smarty->assign("APPLY_CHANGES", _tr("Apply changes"));
        $smarty->assign("SAVE", _tr("Save"));
        $smarty->assign("EDIT", _tr("Edit"));
        $smarty->assign("DELETE", _tr("Delete"));
        $smarty->assign("CONFIRM_CONTINUE", _tr("Are you sure you wish to continue?"));

        $arrFormElements = array(
            "cliente" => array(
                "LABEL"                  => ""._tr('Cliente')."",
                "EDITABLE"               => "yes",
                "REQUIRED"               => "yes",
                "INPUT_TYPE"             => "TEXT",
                "INPUT_EXTRA_PARAM"      => array("class" => "form-control", "required" => "", "autofocus" => ""),
                "VALIDATION_TYPE"        => "text",
                "VALIDATION_EXTRA_PARAM" => ""),
            "descripcion" => array(
                "LABEL"                  => _tr("Descripción"),
                "DESCRIPTION"            => _tr(""),
                "REQUIRED"               => "yes",
                "INPUT_TYPE"             => "TEXTAREA",
                "INPUT_EXTRA_PARAM"      => array("class" => "form-control", "required" => ""),
                "VALIDATION_TYPE"        => "text",
                "EDITABLE"               => "yes",
                "COLS"                   => "50",
                "ROWS"                   => "5",
                "VALIDATION_EXTRA_PARAM" => "")
        );
        return $arrFormElements;
    }


    function createFieldFilter(){
        $arrFilter = array(
            "Cliente" => _tr("Cliente"),
                        );

        $arrFormElements = array(
                "filter_field" => array("LABEL"                  => _tr("Search"),
                                        "REQUIRED"               => "no",
                                        "INPUT_TYPE"             => "SELECT",
                                        "INPUT_EXTRA_PARAM"      => $arrFilter,
                                        "VALIDATION_TYPE"        => "text",
                                        "VALIDATION_EXTRA_PARAM" => ""),
                "filter_value" => array("LABEL"                  => "",
                                        "REQUIRED"               => "no",
                                        "INPUT_TYPE"             => "TEXT",
                                        "INPUT_EXTRA_PARAM"      => "",
                                        "VALIDATION_TYPE"        => "text",
                                        "VALIDATION_EXTRA_PARAM" => ""),
                        );
        return $arrFormElements;
    }

?>