<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:44:41
         compiled from "/var/www/html/modules/form_list/themes/default/preview.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12302394545b806e39a5f630-38817568%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eebb9be46ce3ecce8058a9feef5a34064c2c98e7' => 
    array (
      0 => '/var/www/html/modules/form_list/themes/default/preview.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12302394545b806e39a5f630-38817568',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'FRAMEWORK_TIENE_TITULO_MODULO' => 0,
    'icon' => 0,
    'title' => 0,
    'form_nombre' => 0,
    'style_field' => 0,
    'form_description' => 0,
    'formulario' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806e39aa10f5_23809317',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806e39aa10f5_23809317')) {function content_5b806e39aa10f5_23809317($_smarty_tpl) {?><?php if (!$_smarty_tpl->tpl_vars['FRAMEWORK_TIENE_TITULO_MODULO']->value) {?>
    <table width="100%">
    <tr class="moduleTitle">
            <td class="moduleTitle" valign="middle">&nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
 
            </td>
    </tr>
    </table>
<?php }?>    
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
    <tr>
        <td width="20%"><?php echo $_smarty_tpl->tpl_vars['form_nombre']->value['LABEL'];?>
: <span  class="required" <?php echo $_smarty_tpl->tpl_vars['style_field']->value;?>
>*</span></td>
        <td width="80%"><?php echo $_smarty_tpl->tpl_vars['form_nombre']->value['INPUT'];?>
</td>
    </tr>
    <tr>
        <td width="20%"><?php echo $_smarty_tpl->tpl_vars['form_description']->value['LABEL'];?>
:</td>
        <td width="80%"><?php echo $_smarty_tpl->tpl_vars['form_description']->value['INPUT'];?>
</td>
    </tr>
</table>
<div style='padding:5px'>
    <fieldset >
        <?php echo $_smarty_tpl->tpl_vars['formulario']->value;?>

    </fieldset>
</div>

<?php }} ?>
