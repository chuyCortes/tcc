<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 10:53:38
         compiled from "/var/www/html/modules/login_logout/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20171983885b802a02c99896-59880517%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6a95ac1d606e680c71635e4ff9fef3c46ffe6a91' => 
    array (
      0 => '/var/www/html/modules/login_logout/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20171983885b802a02c99896-59880517',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'date_end' => 0,
    'queue' => 0,
    'detailtype' => 0,
    'Filter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b802a02cda1e0_97147282',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b802a02cda1e0_97147282')) {function content_5b802a02cda1e0_97147282($_smarty_tpl) {?><table cellpadding="4" cellspacing="0" border="0" align="center">
  <tr class="letra12">
    <td align="right"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>
:<span  class='required'>*</span></td>
    <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>
</td>
    <td align="right"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>
:<span  class='required'>*</span></td>
    <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>
</td>
    <td align="right"><?php echo $_smarty_tpl->tpl_vars['queue']->value['LABEL'];?>
:</td>
    <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['queue']->value['INPUT'];?>
</td>
    <td align="right"><?php echo $_smarty_tpl->tpl_vars['detailtype']->value['LABEL'];?>
:<span  class='required'>*</span></td>
    <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['detailtype']->value['INPUT'];?>
</td>
    <td align="left"><input class="button" type="submit" name="filter" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" /></td>
  </tr>
</table>
<?php }} ?>
