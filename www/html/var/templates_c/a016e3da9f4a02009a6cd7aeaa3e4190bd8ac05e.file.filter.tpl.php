<?php /* Smarty version Smarty-3.1.21, created on 2018-08-30 08:24:00
         compiled from "/var/www/html/modules/clientes/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5216241475b858b50b08a09-50371335%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a016e3da9f4a02009a6cd7aeaa3e4190bd8ac05e' => 
    array (
      0 => '/var/www/html/modules/clientes/themes/default/filter.tpl',
      1 => 1535634464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5216241475b858b50b08a09-50371335',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b858b50b42377_25601337',
  'variables' => 
  array (
    'filter_field' => 0,
    'filter_value' => 0,
    'SHOW' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b858b50b42377_25601337')) {function content_5b858b50b42377_25601337($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
        <td width="10%" align="left">&nbsp;&nbsp;</td>
        <td width="10%" align="right">
            <?php echo $_smarty_tpl->tpl_vars['filter_field']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_field']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_value']->value['INPUT'];?>

            <input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
" />
        </td>
    </tr>
</table><?php }} ?>
