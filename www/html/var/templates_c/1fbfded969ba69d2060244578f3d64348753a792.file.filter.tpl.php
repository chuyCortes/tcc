<?php /* Smarty version Smarty-3.1.21, created on 2018-08-27 14:23:07
         compiled from "/var/www/html/modules/voicemail/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15432604505b844f9b84b115-51629144%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1fbfded969ba69d2060244578f3d64348753a792' => 
    array (
      0 => '/var/www/html/modules/voicemail/themes/default/filter.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15432604505b844f9b84b115-51629144',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'date_end' => 0,
    'Filter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b844f9b881f70_86794901',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b844f9b881f70_86794901')) {function content_5b844f9b881f70_86794901($_smarty_tpl) {?>    <table width="99%" cellpadding="4" cellspacing="0" border="0" align="center">
      <tr class="letra12">
        <td width="7%" align="right"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>
:</td>
        <td width="10%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>
</td>
        <td width="7%" align="right"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>
:</td>
        <td width="10%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>
</td>
        <td align="left"><input class="button" type="submit" name="filter" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" ></td>
      </tr>
   </table>
<a href="javascript:seleccionar_checkbox(1)">Marcar todos</a> | <a href="javascript:seleccionar_checkbox(0)">Desmarcar Todos</a>
<?php }} ?>
