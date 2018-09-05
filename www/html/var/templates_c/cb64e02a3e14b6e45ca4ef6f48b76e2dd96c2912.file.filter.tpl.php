<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:26:30
         compiled from "/var/www/html/modules/group_permission/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8595149465b7eee465354c1-41641515%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cb64e02a3e14b6e45ca4ef6f48b76e2dd96c2912' => 
    array (
      0 => '/var/www/html/modules/group_permission/themes/default/filter.tpl',
      1 => 1514304129,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8595149465b7eee465354c1-41641515',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filter_group' => 0,
    'SHOW' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7eee4656a754_42116278',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7eee4656a754_42116278')) {function content_5b7eee4656a754_42116278($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
        <td width="10%" align="right"><?php echo $_smarty_tpl->tpl_vars['filter_group']->value['LABEL'];?>
:</td>
        <td width="20%" align="left"><?php echo $_smarty_tpl->tpl_vars['filter_group']->value['INPUT'];?>
</td>
        <td align="left"><input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
" /><td>
    </tr>
</table>
<?php }} ?>
