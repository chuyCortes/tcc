<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 15:10:42
         compiled from "/var/www/html/modules/rep_trunks_used_per_hour/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1544849595b7f14c26fac17-48679847%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cee75b2e2d1f6eb489cc7080ae6c3cd71bacd329' => 
    array (
      0 => '/var/www/html/modules/rep_trunks_used_per_hour/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1544849595b7f14c26fac17-48679847',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_from' => 0,
    'filter_field' => 0,
    'filter_value' => 0,
    'SHOW' => 0,
    'date_to' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f14c2739ed3_44026410',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f14c2739ed3_44026410')) {function content_5b7f14c2739ed3_44026410($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
        <td width="30%" align="left"><?php echo $_smarty_tpl->tpl_vars['date_from']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['date_from']->value['INPUT'];?>
</td>
        <td width="70%" align="left">
            <?php echo $_smarty_tpl->tpl_vars['filter_field']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_field']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_value']->value['INPUT'];?>

            <input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
" />
        </td>
    </tr>
    <tr class="letra12">
        <td width="30%" align="left"><?php echo $_smarty_tpl->tpl_vars['date_to']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['date_to']->value['INPUT'];?>
</td>
        <td width="70%" align="left">&nbsp;</td>
    </tr>
</table><?php }} ?>
