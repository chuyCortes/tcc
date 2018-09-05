<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:12:52
         compiled from "/var/www/html/modules/sec_weak_keys/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17418228875b803c9401d9e6-43841384%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '782e1fd9cb638ec865a0e9003848497b1a0d22a7' => 
    array (
      0 => '/var/www/html/modules/sec_weak_keys/themes/default/filter.tpl',
      1 => 1510073206,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17418228875b803c9401d9e6-43841384',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filter_field' => 0,
    'filter_value' => 0,
    'SHOW' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b803c94050fe4_68291945',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b803c94050fe4_68291945')) {function content_5b803c94050fe4_68291945($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
        <td align="left">
            <?php echo $_smarty_tpl->tpl_vars['filter_field']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_field']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_value']->value['INPUT'];?>

            <input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
" />
        </td>
    </tr>
</table><?php }} ?>
