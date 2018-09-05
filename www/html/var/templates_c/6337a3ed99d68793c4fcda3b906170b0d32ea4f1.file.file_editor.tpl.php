<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:35:35
         compiled from "/var/www/html/modules/file_editor/themes/default/file_editor.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12136197755b7ef067e2e346-93339291%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6337a3ed99d68793c4fcda3b906170b0d32ea4f1' => 
    array (
      0 => '/var/www/html/modules/file_editor/themes/default/file_editor.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12136197755b7ef067e2e346-93339291',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'url_edit' => 0,
    'msg_status' => 0,
    'url_back' => 0,
    'search' => 0,
    'LABEL_BACK' => 0,
    'basename' => 0,
    'LABEL_COMPLETADO' => 0,
    'LABEL_SAVE' => 0,
    'RELOAD_ASTERISK' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7ef067e718a4_87869245',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7ef067e718a4_87869245')) {function content_5b7ef067e718a4_87869245($_smarty_tpl) {?><!--Comentario:  He agregado variables para que se muestre la misma vista de la 160-->
<form method="POST" enctype="multipart/form-data" action="<?php echo $_smarty_tpl->tpl_vars['url_edit']->value;?>
">
<table class="message_board" width="99%" border="0" cellspacing="0" cellpadding="4" >
    <tr>
        <td class="mb_message">
            <font size="2px"><?php echo $_smarty_tpl->tpl_vars['msg_status']->value;?>
</font>
        </td>
    </tr>
    <tr>
        <td>
        <a href="<?php echo $_smarty_tpl->tpl_vars['url_back']->value;?>
&file=<?php echo $_smarty_tpl->tpl_vars['search']->value;?>
" style="text-decoration: none;"><b>&laquo;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LABEL_BACK']->value;?>
</b></a>
        <b><?php echo $_smarty_tpl->tpl_vars['basename']->value['LABEL'];?>
:</b>&nbsp;<?php echo $_smarty_tpl->tpl_vars['basename']->value['INPUT'];
echo $_smarty_tpl->tpl_vars['LABEL_COMPLETADO']->value;?>
&nbsp;&nbsp;
        <input type="submit" class="button" name="Guardar" value="<?php echo $_smarty_tpl->tpl_vars['LABEL_SAVE']->value;?>
" />&nbsp;&nbsp;
        <input type="submit" class="button" name="Reload"  value="<?php echo $_smarty_tpl->tpl_vars['RELOAD_ASTERISK']->value;?>
" />
	</td>
    </tr>
    <tr>
        <td><?php echo $_smarty_tpl->tpl_vars['content']->value['INPUT'];?>
</td>
    </tr>
</table>
</form>
<?php }} ?>
