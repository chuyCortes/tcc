<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:52:43
         compiled from "/var/www/html/modules/break_administrator/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20061884285b8045eba83fb5-80402983%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4510b6e7eb3603d9f83f388b924c1ddc0354220e' => 
    array (
      0 => '/var/www/html/modules/break_administrator/themes/default/new.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20061884285b8045eba83fb5-80402983',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
    'ACTION' => 0,
    'FRAMEWORK_TIENE_TITULO_MODULO' => 0,
    'icon' => 0,
    'title' => 0,
    'CANCEL' => 0,
    'SAVE' => 0,
    'nombre' => 0,
    'descripcion' => 0,
    'id_break' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b8045ebacdc79_21167282',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b8045ebacdc79_21167282')) {function content_5b8045ebacdc79_21167282($_smarty_tpl) {?><form method="POST" action="?menu=<?php echo $_smarty_tpl->tpl_vars['MODULE_NAME']->value;?>
&amp;action=<?php echo $_smarty_tpl->tpl_vars['ACTION']->value;?>
">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<?php if (!$_smarty_tpl->tpl_vars['FRAMEWORK_TIENE_TITULO_MODULO']->value) {?>
<tr class="moduleTitle">
  <td class="moduleTitle" valign="middle">&nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</td>
</tr>
<?php }?>
<tr>
  <td>
    <table width="100%" cellpadding="4" cellspacing="0" border="0">
      <tr>
        <td align="left">
            <input class="button" type="submit" name="cancel" value="&laquo;&nbsp;<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" />
            <input class="button" type="submit" name="save" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
" />
        </td>
     </tr>
   </table>
  </td>
</tr>
<tr>
  <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
        <tr>
		<td width="20%"><?php echo $_smarty_tpl->tpl_vars['nombre']->value['LABEL'];?>
: <span  class="required">*</span></td>
		<td width="80%"><?php echo $_smarty_tpl->tpl_vars['nombre']->value['INPUT'];?>
</td>
        </tr>
        <tr>
		<td width="20%"><?php echo $_smarty_tpl->tpl_vars['descripcion']->value['LABEL'];?>
: <span  class="required">*</span></td>
		<td width="80%"><?php echo $_smarty_tpl->tpl_vars['descripcion']->value['INPUT'];?>
</td>
        </tr> 
      </table>
    </td>
  </tr>
</table>
<?php echo $_smarty_tpl->tpl_vars['id_break']->value['INPUT'];?>

</form>
<?php }} ?>
