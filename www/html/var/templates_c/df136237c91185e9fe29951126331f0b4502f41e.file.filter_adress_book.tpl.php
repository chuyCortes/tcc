<?php /* Smarty version Smarty-3.1.21, created on 2018-08-30 15:52:23
         compiled from "/var/www/html/modules/calendar/themes/default/filter_adress_book.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5685659325b885907c83c13-72810989%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'df136237c91185e9fe29951126331f0b4502f41e' => 
    array (
      0 => '/var/www/html/modules/calendar/themes/default/filter_adress_book.tpl',
      1 => 1497201970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5685659325b885907c83c13-72810989',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'Phone_Directory' => 0,
    'internal_sel' => 0,
    'Internal' => 0,
    'external_sel' => 0,
    'External' => 0,
    'field' => 0,
    'pattern' => 0,
    'SHOW' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b885907cc4c88_59321390',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b885907cc4c88_59321390')) {function content_5b885907cc4c88_59321390($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
	<td width="10%" align="right"><?php echo $_smarty_tpl->tpl_vars['Phone_Directory']->value;?>
:</td>
	<td width="7%" align="left">&nbsp;
	    <select name="select_directory_type" onchange='report_by_directory_type()'>
		<option value="Internal" <?php echo $_smarty_tpl->tpl_vars['internal_sel']->value;?>
><?php echo $_smarty_tpl->tpl_vars['Internal']->value;?>
</option>
		<option value="External" <?php echo $_smarty_tpl->tpl_vars['external_sel']->value;?>
><?php echo $_smarty_tpl->tpl_vars['External']->value;?>
</option>
	    </select>
	</td>
	<td align="left" nowrap> &nbsp;
	    <?php echo $_smarty_tpl->tpl_vars['field']->value['LABEL'];?>
: <?php echo $_smarty_tpl->tpl_vars['field']->value['INPUT'];?>
 &nbsp;<?php echo $_smarty_tpl->tpl_vars['pattern']->value['INPUT'];?>
&nbsp;&nbsp;
	    <input class="button" type="submit" name="report" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
">
	</td>
    </tr>
</table>


    <?php echo '<script'; ?>
 type="text/javascript">
        function report_by_directory_type()
        {
            var forms = document.getElementsByTagName('form');
            forms[0].submit();
        }
    <?php echo '</script'; ?>
>
<?php }} ?>
