<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:44:38
         compiled from "/var/www/html/modules/form_list/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:144528755b806e36548bb8-53098215%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dd1ffbc59d565d7925183e0bc9db1a0fa4eb555a' => 
    array (
      0 => '/var/www/html/modules/form_list/themes/default/filter.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '144528755b806e36548bb8-53098215',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'cbo_estado' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806e365790a5_92802759',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806e365790a5_92802759')) {function content_5b806e365790a5_92802759($_smarty_tpl) {?><table class='tabForm' width="100%" border="0">
    <tr>
        <td class="letra12" width="10%"><?php echo $_smarty_tpl->tpl_vars['cbo_estado']->value['LABEL'];?>
:</td>
        <td><?php echo $_smarty_tpl->tpl_vars['cbo_estado']->value['INPUT'];?>
</td>
    </tr>
</table><?php }} ?>
