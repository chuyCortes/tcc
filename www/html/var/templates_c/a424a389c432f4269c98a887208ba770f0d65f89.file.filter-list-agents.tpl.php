<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:58:51
         compiled from "/var/www/html/modules/agents/themes/default/filter-list-agents.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4970833925b7ef5db7d2db4-73841857%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a424a389c432f4269c98a887208ba770f0d65f89' => 
    array (
      0 => '/var/www/html/modules/agents/themes/default/filter-list-agents.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4970833925b7ef5db7d2db4-73841857',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'LABEL_STATE' => 0,
    'estados' => 0,
    'estado_sel' => 0,
    'PREGUNTA_BORRAR_AGENTE_CONF' => 0,
    'PREGUNTA_AGREGAR_AGENTE_CONF' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7ef5db80c735_78105200',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7ef5db80c735_78105200')) {function content_5b7ef5db80c735_78105200($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include '/usr/share/php/Smarty/plugins/function.html_options.php';
?><table width="100%" border="0">
<tr>
	<td class="letra12" width="10%" align="right"><b><?php echo $_smarty_tpl->tpl_vars['LABEL_STATE']->value;?>
:</b></td>
    <td><?php echo smarty_function_html_options(array('name'=>'cbo_estado','id'=>'cbo_estado','options'=>$_smarty_tpl->tpl_vars['estados']->value,'selected'=>$_smarty_tpl->tpl_vars['estado_sel']->value,'onchange'=>'submit();'),$_smarty_tpl);?>
</td>
</tr>
</table>
<?php echo '<script'; ?>
 language='JavaScript' type='text/javascript'>
var pregunta_borrar_agente_conf = "<?php echo $_smarty_tpl->tpl_vars['PREGUNTA_BORRAR_AGENTE_CONF']->value;?>
";
var pregunta_agregar_agente_conf = "<?php echo $_smarty_tpl->tpl_vars['PREGUNTA_AGREGAR_AGENTE_CONF']->value;?>
";
<?php echo '</script'; ?>
><?php }} ?>
