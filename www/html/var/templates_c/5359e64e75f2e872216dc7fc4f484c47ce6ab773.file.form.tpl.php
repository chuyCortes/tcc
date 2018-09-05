<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:30:06
         compiled from "/var/www/html/modules/currency/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9621744125b7eef1eb51ba2-46204868%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5359e64e75f2e872216dc7fc4f484c47ce6ab773' => 
    array (
      0 => '/var/www/html/modules/currency/themes/default/form.tpl',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9621744125b7eef1eb51ba2-46204868',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SAVE' => 0,
    'currency' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7eef1eb83c39_41089419',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7eef1eb83c39_41089419')) {function content_5b7eef1eb83c39_41089419($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
        <td align="left"><input class="button" type="submit" name="save" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
"></td>
    </tr>
</table>
<table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['currency']->value['LABEL'];?>
: </b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['currency']->value['INPUT'];?>
</td>
    </tr>

</table>
<?php }} ?>
