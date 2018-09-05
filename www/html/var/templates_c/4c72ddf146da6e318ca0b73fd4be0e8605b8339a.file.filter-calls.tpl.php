<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 10:53:16
         compiled from "/var/www/html/modules/calls_per_hour/themes/default/filter-calls.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7502635475b8029ec9cfd42-80562881%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4c72ddf146da6e318ca0b73fd4be0e8605b8339a' => 
    array (
      0 => '/var/www/html/modules/calls_per_hour/themes/default/filter-calls.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7502635475b8029ec9cfd42-80562881',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'fecha_ini' => 0,
    'fecha_fin' => 0,
    'LABEL_FIND' => 0,
    'tipo' => 0,
    'estado' => 0,
    'queue' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b8029eca18342_95445544',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b8029eca18342_95445544')) {function content_5b8029eca18342_95445544($_smarty_tpl) {?>    <table width='100%' border='0'>
                <tr>
                    <td class='letra12'><?php echo $_smarty_tpl->tpl_vars['fecha_ini']->value['LABEL'];?>
<span  class='required'>*</span></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['fecha_ini']->value['INPUT'];?>
</td>
                    <td class='letra12'><?php echo $_smarty_tpl->tpl_vars['fecha_fin']->value['LABEL'];?>
<span  class='required'>*</span></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['fecha_fin']->value['INPUT'];?>
</td>
                    <td class='letra12' colspan="2">&nbsp;</td>
                    <td><input type='submit' name='submit_fecha' value='<?php echo $_smarty_tpl->tpl_vars['LABEL_FIND']->value;?>
' class='button' /></td>
                </tr>
                <tr>
                    <td class='letra12' align='left'><?php echo $_smarty_tpl->tpl_vars['tipo']->value['LABEL'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['tipo']->value['INPUT'];?>
</td>
                    <td class='letra12' align='left'><?php echo $_smarty_tpl->tpl_vars['estado']->value['LABEL'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['estado']->value['INPUT'];?>
</td>
                    <td class='letra12' align='left'><?php echo $_smarty_tpl->tpl_vars['queue']->value['LABEL'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['queue']->value['INPUT'];?>
</td>
                    <td class='letra12'>&nbsp;</td>
                </tr>
    </table>

<?php }} ?>
