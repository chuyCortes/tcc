<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 09:57:49
         compiled from "/var/www/html/modules/cdrreport/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14190665265b801cedf30d97-73428895%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '27cf136527317d2337a0e064a5b0f54acc0a549b' => 
    array (
      0 => '/var/www/html/modules/cdrreport/themes/default/filter.tpl',
      1 => 1510073152,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14190665265b801cedf30d97-73428895',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'field_pattern' => 0,
    'field_name' => 0,
    'Filter' => 0,
    'date_end' => 0,
    'status' => 0,
    'ringgroup' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b801cee0479d4_48685930',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b801cee0479d4_48685930')) {function content_5b801cee0479d4_48685930($_smarty_tpl) {?>    <table width="99%" cellpadding="4" cellspacing="0" border="0" align="center">
      <tr class="letra12">
        <td width="7%" align="right"><?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>
:</td>
        <td width="10%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>
</td>
        <td width="11%" align="right"><?php echo $_smarty_tpl->tpl_vars['field_pattern']->value['LABEL'];?>
: </td>
        <td width="14%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['field_name']->value['INPUT'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['field_pattern']->value['INPUT'];?>
</td>
        <td align="left"><input class="button" type="submit" name="filter" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" /></td>
      </tr>
      <tr class="letra12">
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>
:</td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>
</td>
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['status']->value['LABEL'];?>
: </td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['status']->value['INPUT'];?>
</td>
      </tr>
      <tr class="letra12">
        <td /td>
        <td /td>
        <td align="right"><?php echo $_smarty_tpl->tpl_vars['ringgroup']->value['LABEL'];?>
: </td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['ringgroup']->value['INPUT'];?>
</td>
      </tr>
   </table>


<?php }} ?>
