<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:33:23
         compiled from "/var/www/html/modules/asterisk_cli/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8310089025b806b93af6630-08757696%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42b7a53d4e0185d72f5cf51b08e05a4ccc7eeb83' => 
    array (
      0 => '/var/www/html/modules/asterisk_cli/themes/default/new.tpl',
      1 => 1510073030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8310089025b806b93af6630-08757696',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'command' => 0,
    'txtCommand' => 0,
    'execute' => 0,
    'RESPUESTA_SHELL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806b93b2a206_13200679',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806b93b2a206_13200679')) {function content_5b806b93b2a206_13200679($_smarty_tpl) {?><!--<form method="POST" enctype="multipart/form-data">

Comentario:  He agregado variables para que se muestre la misma vista de la 160

-->

<form method="POST" enctype="multipart/form-data">

<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">

		<tr>
			<td align="right"><?php echo $_smarty_tpl->tpl_vars['command']->value;?>
: </td>
			<td><input name="txtCommand" type="text" size="70" value="<?php echo $_smarty_tpl->tpl_vars['txtCommand']->value;?>
"></td>
		</tr>

		<tr>
			<td>&nbsp;</td>
			<td>
				<input type="submit" class="button" value="<?php echo $_smarty_tpl->tpl_vars['execute']->value;?>
">
			</td>
		</tr>

		<tr>
			<td height="8">&nbsp;</td>
			<td><hr>
<pre style="font-family: monospace;">
<?php echo $_smarty_tpl->tpl_vars['RESPUESTA_SHELL']->value;?>

</pre>
			</td>
		</tr>
</table>
</form>
<?php }} ?>
