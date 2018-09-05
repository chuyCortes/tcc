<?php /* Smarty version Smarty-3.1.21, created on 2018-08-31 15:15:42
         compiled from "/var/www/html/modules/sec_ports/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4479622875b89a1eecca134-08748626%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aafec20e1b5ab9284e95496863ffb2d8dd5920c8' => 
    array (
      0 => '/var/www/html/modules/sec_ports/themes/default/filter.tpl',
      1 => 1510073206,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4479622875b89a1eecca134-08748626',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filter_type' => 0,
    'filter_txt' => 0,
    'SHOW' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b89a1eed01983_04836130',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b89a1eed01983_04836130')) {function content_5b89a1eed01983_04836130($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="letra12">
        <td align="left">
            <?php echo $_smarty_tpl->tpl_vars['filter_type']->value['LABEL'];?>
:&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_type']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['filter_txt']->value['INPUT'];?>

            <input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
" />
        </td>
    </tr>
</table>
<?php }} ?>
