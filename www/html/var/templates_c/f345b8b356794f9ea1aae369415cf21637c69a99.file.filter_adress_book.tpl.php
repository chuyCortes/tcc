<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:11:05
         compiled from "/var/www/html/modules/address_book/themes/default/filter_adress_book.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11879445515b806659aed551-28276289%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f345b8b356794f9ea1aae369415cf21637c69a99' => 
    array (
      0 => '/var/www/html/modules/address_book/themes/default/filter_adress_book.tpl',
      1 => 1497201970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11879445515b806659aed551-28276289',
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
  'unifunc' => 'content_5b806659b2c218_67028404',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806659b2c218_67028404')) {function content_5b806659b2c218_67028404($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
            <td width="13%" align="right"><?php echo $_smarty_tpl->tpl_vars['Phone_Directory']->value;?>
:</td>
            <td width="15%" align="left">
                <select name="select_directory_type" onchange='submit();'>
                    <option value="internal" <?php echo $_smarty_tpl->tpl_vars['internal_sel']->value;?>
><?php echo $_smarty_tpl->tpl_vars['Internal']->value;?>
</option>
                    <option value="external" <?php echo $_smarty_tpl->tpl_vars['external_sel']->value;?>
><?php echo $_smarty_tpl->tpl_vars['External']->value;?>
</option>
                </select>
            </td>
            <td width="43%" align="right"><?php echo $_smarty_tpl->tpl_vars['field']->value['LABEL'];?>
: </td>
            <td width="32%" align="left" nowrap>
                <?php echo $_smarty_tpl->tpl_vars['field']->value['INPUT'];?>
 &nbsp;<?php echo $_smarty_tpl->tpl_vars['pattern']->value['INPUT'];?>
&nbsp;&nbsp;
                <input class="button" type="submit" name="report" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
">
            </td>
    </tr>
</table>


<?php }} ?>
