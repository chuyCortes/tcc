<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 10:53:54
         compiled from "/var/www/html/modules/ingoings_calls_success/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4240459605b802a13000548-37891438%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '57c060529fb56a2467ed55fa53b8eed676a4b9ec' => 
    array (
      0 => '/var/www/html/modules/ingoings_calls_success/themes/default/form.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4240459605b802a13000548-37891438',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'txt_fecha_init' => 0,
    'txt_fecha_end' => 0,
    'btn_consultar' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b802a13036b20_86053963',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b802a13036b20_86053963')) {function content_5b802a13036b20_86053963($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="4" align="center">
      <tr class="letra12">
        <td width="8%" align="right"><?php echo $_smarty_tpl->tpl_vars['txt_fecha_init']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td width="12%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['txt_fecha_init']->value['INPUT'];?>
</td>
        <td width="8%" align="right"><?php echo $_smarty_tpl->tpl_vars['txt_fecha_end']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td width="12%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['txt_fecha_end']->value['INPUT'];?>
</td>
        <td width="12%" align="center">
            <input class="button" type="submit" name="submit_fecha" value="<?php echo $_smarty_tpl->tpl_vars['btn_consultar']->value;?>
" >
        </td>
      </tr>
</table>

<?php }} ?>
