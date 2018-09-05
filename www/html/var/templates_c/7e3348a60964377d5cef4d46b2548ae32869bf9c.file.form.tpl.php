<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:34:50
         compiled from "/var/www/html/modules/festival/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7473909245b806beabee624-61893743%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7e3348a60964377d5cef4d46b2548ae32869bf9c' => 
    array (
      0 => '/var/www/html/modules/festival/themes/default/form.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7473909245b806beabee624-61893743',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'status' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806beac1e425_29859991',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806beac1e425_29859991')) {function content_5b806beac1e425_29859991($_smarty_tpl) {?><table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr class="letra12">
        <td align="left" width="10%"><b><?php echo $_smarty_tpl->tpl_vars['status']->value['LABEL'];?>
: </b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['status']->value['INPUT'];?>
</td>
    </tr>
</table><?php }} ?>
