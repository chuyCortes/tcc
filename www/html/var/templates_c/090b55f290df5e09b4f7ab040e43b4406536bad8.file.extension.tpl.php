<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:33:05
         compiled from "/var/www/html/modules/extensions_batch/themes/default/extension.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11913854655b806b8103e185-43211684%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '090b55f290df5e09b4f7ab040e43b4406536bad8' => 
    array (
      0 => '/var/www/html/modules/extensions_batch/themes/default/extension.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11913854655b806b8103e185-43211684',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
    'LABEL_UPLOAD' => 0,
    'LABEL_DELETE' => 0,
    'CONFIRM_DELETE' => 0,
    'LABEL_FILE' => 0,
    'LABEL_DOWNLOAD' => 0,
    'HeaderFile' => 0,
    'AboutUpdate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806b8107a024_32060796',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806b8107a024_32060796')) {function content_5b806b8107a024_32060796($_smarty_tpl) {?><form  method='POST' enctype='multipart/form-data' style='margin-bottom:0;' action='?menu=<?php echo $_smarty_tpl->tpl_vars['MODULE_NAME']->value;?>
'>

<!--  align="center" width="99%" -->
<table border="0" cellspacing="0" cellpadding="4" >
    <tr class="letra12">
    <td><input class="button" type="submit" name="csvupload" value="<?php echo $_smarty_tpl->tpl_vars['LABEL_UPLOAD']->value;?>
" /></td>
    <td><input class='button' type='submit' name='delete_all' value='<?php echo $_smarty_tpl->tpl_vars['LABEL_DELETE']->value;?>
' onClick="return confirmSubmit('<?php echo $_smarty_tpl->tpl_vars['CONFIRM_DELETE']->value;?>
');" /></td>
    </tr>
</table>
<table class="tabForm" width="100%">
<tbody>
<tr>
    <td align="right" width="15%"><b><?php echo $_smarty_tpl->tpl_vars['LABEL_FILE']->value;?>
:</b></td>
    <td><input type='file' id='csvfile' name='csvfile' /></td>
</tr>
<tr>
    <td colspan="2"><a class="link1" href="?menu=<?php echo $_smarty_tpl->tpl_vars['MODULE_NAME']->value;?>
&amp;action=csvdownload&amp;rawmode=yes"><?php echo $_smarty_tpl->tpl_vars['LABEL_DOWNLOAD']->value;?>
</a></td>
</tr>
<tr><td colspan="3"><?php echo $_smarty_tpl->tpl_vars['HeaderFile']->value;?>
</td></tr>
<tr><td colspan="3"><?php echo $_smarty_tpl->tpl_vars['AboutUpdate']->value;?>
</td></tr>
</tbody>
</table>
</form><?php }} ?>
