<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 14:33:25
         compiled from "/var/www/html/modules/userlist/plugins/extension/tpl/new_extension.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9210663175b7f0c055af5a5-98757855%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8606e67b766f4401ce6b636145edff7834560586' => 
    array (
      0 => '/var/www/html/modules/userlist/plugins/extension/tpl/new_extension.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9210663175b7f0c055af5a5-98757855',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'LBL_EXTENSION_FIELDS' => 0,
    'extension' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f0c055e32e2_78426616',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f0c055e32e2_78426616')) {function content_5b7f0c055e32e2_78426616($_smarty_tpl) {?><fieldset>
    <legend><img src="images/call.png" width="22" height="22" />&nbsp;<b><?php echo $_smarty_tpl->tpl_vars['LBL_EXTENSION_FIELDS']->value;?>
</b></legend>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
        <tr>
            <td width="20%"><?php echo $_smarty_tpl->tpl_vars['extension']->value['LABEL'];?>
:</td>
            <td width="30%"><?php echo $_smarty_tpl->tpl_vars['extension']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</fieldset>
<?php }} ?>
