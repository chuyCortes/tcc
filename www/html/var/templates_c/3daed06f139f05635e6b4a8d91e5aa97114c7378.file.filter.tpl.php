<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 15:10:46
         compiled from "/var/www/html/modules/rep_agent_information/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6823041065b7f14c6c51251-57341216%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3daed06f139f05635e6b4a8d91e5aa97114c7378' => 
    array (
      0 => '/var/www/html/modules/rep_agent_information/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6823041065b7f14c6c51251-57341216',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'queue' => 0,
    'date_end' => 0,
    'agent' => 0,
    'Filter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f14c6c93b35_62643780',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f14c6c93b35_62643780')) {function content_5b7f14c6c93b35_62643780($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
  <td>
    <table width="100%" cellpadding="4" cellspacing="0" border="0">
      <tr class="letra12">
        <td width="12%" align="right"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td width="12%" align="left" nowrap="nowrap"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>
</td>
        <td width="12%" align="right"><?php echo $_smarty_tpl->tpl_vars['queue']->value['LABEL'];?>
:<span  class="required">*</span></td>
        <td width="12%"><?php echo $_smarty_tpl->tpl_vars['queue']->value['INPUT'];?>
</td>
		<td>&nbsp;</td>
     </tr>
     <tr class="letra12">
        <td width="12%" align="right"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td width="12%" align="left" nowrap="nowrap"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>
</td>
        <td width="12%" align="right"><?php echo $_smarty_tpl->tpl_vars['agent']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td width="12%"><?php echo $_smarty_tpl->tpl_vars['agent']->value['INPUT'];?>
</td>
        <td width="10%" align="center"><input class="button" type="submit" name="submit" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" /></td>
      </tr>
   </table>
  </td>
</tr>
</table>

<?php }} ?>
