<?php
  /* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4:
  Codificación: UTF-8
  +----------------------------------------------------------------------+
  | Issabel version 4.0.4-22                                               |
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
  $Id: index.php,v 1.1 2011-06-01 10:06:04 Alberto Santos asantos@palosanto.com Exp $ */
//include issabel framework
include_once "libs/paloSantoGraphImage.lib.php";

function _moduleContent(&$smarty, $module_name)
{
    //include module files
    include_once "modules/$module_name/configs/default.conf.php";

    $base_dir=dirname($_SERVER['SCRIPT_FILENAME']);

    load_language_module($module_name);

    //global variables
    global $arrConf;
    global $arrConfModule;
    $arrConf = array_merge($arrConf,$arrConfModule);

    //folder path for custom templates
    $templates_dir=(isset($arrConf['templates_dir']))?$arrConf['templates_dir']:'themes';
    $local_templates_dir="$base_dir/modules/$module_name/".$templates_dir.'/'.$arrConf['theme'];

    $smarty->assign("title",_tr("Incoming Email"));
    $smarty->assign("icon","images/bardoc.png");
    if (isset($_GET['image'])) {
        $_GET['image'] = (int)$_GET['image'];
        displayGraph($module_name, "paloSantoPostfixStats", "postfixStats",array($_GET['image']),"functionCallback");
    } else {
        $listaGraficos = array(
            'img_1' =>  0,
	    'img_2' =>  1,
	    'img_3' =>  2,
        );
        foreach (array_keys($listaGraficos) as $k)
            $listaGraficos[$k] = "<img alt=\"{$listaGraficos[$k]}\" src=\"?menu=$module_name&amp;image={$listaGraficos[$k]}&rawmode=yes\" />";
        $smarty->assign($listaGraficos);
        return $smarty->fetch("$local_templates_dir/form.tpl");
    }
}
?>