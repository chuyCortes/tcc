<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 15:03:54
         compiled from "/var/www/html/modules/_issabelutils/themes/default/_rpms_version.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11091039845b7f132a67d8a3-80701680%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d444b7c0743d8c9ba0ce6892f696e00c6454246' => 
    array (
      0 => '/var/www/html/modules/_issabelutils/themes/default/_rpms_version.tpl',
      1 => 1514304129,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11091039845b7f132a67d8a3-80701680',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_name' => 0,
    'textMode' => 0,
    'htmlMode' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f132a6bd275_43556967',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f132a6bd275_43556967')) {function content_5b7f132a6bd275_43556967($_smarty_tpl) {?><link rel='stylesheet' href='modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/themes/default/css/rpms_version.css' />
<?php echo '<script'; ?>
 type='text/javascript' src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/themes/default/js/rpms_version.js"><?php echo '</script'; ?>
>
<div id="rpminfo_changemode">
    (<span id="rpms_textmode"><?php echo $_smarty_tpl->tpl_vars['textMode']->value;?>
</span>
    <span id="rpms_htmlmode"><?php echo $_smarty_tpl->tpl_vars['htmlMode']->value;?>
</span>)
</div>
<div id="rpminfo_loading">
    <img src="images/loading.gif" alt="loading" />
</div>
<div id="rpminfo_htmlmode" class="letra12">
	<table>
        <thead>
	        <tr>
	            <th>Name</th>
	            <th>Package Name</th>
	            <th>Version</th>
	            <th>Release</th>
	        </tr>
        </thead>
        <tbody>
            
            <tr class='tdRPMDetail'><td colspan='4' align='left'></td></tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
	    </tbody>
	</table>
</div>
<div id="rpminfo_textmode">
    <textarea readonly="readonly"></textarea>
</div>
<?php }} ?>
