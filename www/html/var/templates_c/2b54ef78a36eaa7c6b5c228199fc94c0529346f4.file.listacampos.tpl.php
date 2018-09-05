<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:44:41
         compiled from "/var/www/html/modules/form_list/themes/default/listacampos.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15170092355b806e39aa3498-30390773%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2b54ef78a36eaa7c6b5c228199fc94c0529346f4' => 
    array (
      0 => '/var/www/html/modules/form_list/themes/default/listacampos.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15170092355b806e39aa3498-30390773',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'listacampos' => 0,
    'campo' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806e39ab0b12_88340572',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806e39ab0b12_88340572')) {function content_5b806e39ab0b12_88340572($_smarty_tpl) {?><table width="100%" border=0 class="tabForm" height="400">
  <tr>
    <td valign='top'>
		<table cellpadding="2" cellspacing="0" width="100%" border="0">
		<?php  $_smarty_tpl->tpl_vars['campo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['campo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['listacampos']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['campo']->key => $_smarty_tpl->tpl_vars['campo']->value) {
$_smarty_tpl->tpl_vars['campo']->_loop = true;
?>
		<tr>
		    <td height='15' width='15%' align="right" valign="top"><?php echo $_smarty_tpl->tpl_vars['campo']->value['LABEL'];?>
</td>
		    <td height='15' width='85%'><?php echo $_smarty_tpl->tpl_vars['campo']->value['INPUT'];?>
</td>
		</tr>
		<?php } ?>
		</table>
    </td>
  </tr>
</table>
<?php }} ?>
