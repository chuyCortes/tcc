<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:35:22
         compiled from "/var/www/html/modules/file_editor/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4603831525b7ef05ae6b926-00184324%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a4303cda4846ca72e23c9987cd2fc806af68affb' => 
    array (
      0 => '/var/www/html/modules/file_editor/themes/default/new.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4603831525b7ef05ae6b926-00184324',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'file' => 0,
    'Filter' => 0,
    'msj_err' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7ef05ae9f568_57232777',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7ef05ae9f568_57232777')) {function content_5b7ef05ae9f568_57232777($_smarty_tpl) {?><!--Comentario:  He agregado variables para que se muestre la misma vista de la 160-->
<table width="99%" border="0" cellspacing="0" cellpadding="2" align="center" >
    <tr>
        <td width="8%" align="right"><?php echo $_smarty_tpl->tpl_vars['file']->value['LABEL'];?>
: </td>
        <td width="12%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['file']->value['INPUT'];?>
</td>
        <td width="80%" align="left"><input class="button" type="submit" name="filter" value="<?php echo $_smarty_tpl->tpl_vars['Filter']->value;?>
" /></td>
    </tr>
    <tr width="99%" border="0" cellspacing="0" cellpadding="0" >
        <!--Mensaje de error si no es un directorio válido-->
        <td class="mb_message"><b><?php echo $_smarty_tpl->tpl_vars['msj_err']->value;?>
</b></td>
        </tr>
</table>


<?php }} ?>
