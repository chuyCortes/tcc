<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 10:53:28
         compiled from "/var/www/html/modules/hold_time/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3927654475b8029f858d410-43887140%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3b172c324afab58c07cf29d04c8b1f964e5db0b2' => 
    array (
      0 => '/var/www/html/modules/hold_time/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3927654475b8029f858d410-43887140',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'date_start' => 0,
    'date_end' => 0,
    'call_type' => 0,
    'call_state' => 0,
    'LABEL_FIND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b8029f85ce940_17871301',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b8029f85ce940_17871301')) {function content_5b8029f85ce940_17871301($_smarty_tpl) {?><table width='100%' border='0'>
    <tr>
        <td align='left'>
            <table>
            <tr>
                <td class='letra12'>
                    <?php echo $_smarty_tpl->tpl_vars['date_start']->value['LABEL'];?>

                    <span  class='required'>*</span>
                </td>
                <td>
                    <?php echo $_smarty_tpl->tpl_vars['date_start']->value['INPUT'];?>

                </td>
                <td class='letra12'>
                    &nbsp;
                </td>
                <td class='letra12'>
                    <?php echo $_smarty_tpl->tpl_vars['date_end']->value['LABEL'];?>

                    <span  class='required'>*</span>
                </td>
                <td>
                    <?php echo $_smarty_tpl->tpl_vars['date_end']->value['INPUT'];?>

                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td class='letra12' align='left'><?php echo $_smarty_tpl->tpl_vars['call_type']->value['LABEL'];?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['call_type']->value['INPUT'];?>
</td>
                <td class='letra12'>
                    &nbsp;
                </td>
                <td class='letra12' align='left'><?php echo $_smarty_tpl->tpl_vars['call_state']->value['LABEL'];?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['call_state']->value['INPUT'];?>
</td>
                <td>
                    <input type='submit' name='submit_fecha' value="<?php echo $_smarty_tpl->tpl_vars['LABEL_FIND']->value;?>
" class='button'>
                </td>
            </tr>
            </table>
        </td>
    </tr>
</table>
<?php }} ?>
