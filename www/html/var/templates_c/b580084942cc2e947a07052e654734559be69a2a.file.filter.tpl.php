<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 10:53:19
         compiled from "/var/www/html/modules/calls_per_agent/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6883000825b8029ef2f6034-03713314%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b580084942cc2e947a07052e654734559be69a2a' => 
    array (
      0 => '/var/www/html/modules/calls_per_agent/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6883000825b8029ef2f6034-03713314',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'date_end' => 0,
    'type' => 0,
    'queue' => 0,
    'number' => 0,
    'Filter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b8029ef33b9c4_36939823',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b8029ef33b9c4_36939823')) {function content_5b8029ef33b9c4_36939823($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="4" align="center">
      <tr class="letra12">
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>
</td>
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>
</td>
        <td colspan="3">&nbsp;</td>
     </tr>
      <tr class="letra12">
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['type']->value['LABEL'];?>
</td>
        <td align="left" nowrap="nowrap"><?php echo $_smarty_tpl->tpl_vars['type']->value['INPUT'];?>
</td>
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['queue']->value['LABEL'];?>
</td>
        <td align="left" nowrap="nowrap"><?php echo $_smarty_tpl->tpl_vars['queue']->value['INPUT'];?>
</td>
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['number']->value['LABEL'];?>
</td>
        <td align="left" nowrap="nowrap"><?php echo $_smarty_tpl->tpl_vars['number']->value['INPUT'];?>
</td>
        <td align="center"><input class="button" type="submit" name="filter" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" /></td>
      </tr>
</table><?php }} ?>
