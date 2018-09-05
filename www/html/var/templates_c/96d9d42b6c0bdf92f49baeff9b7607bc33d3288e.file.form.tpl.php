<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 14:23:17
         compiled from "/var/www/html/modules/prueba_de_modulo/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15203625335b7f09a557fc95-57283141%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '96d9d42b6c0bdf92f49baeff9b7607bc33d3288e' => 
    array (
      0 => '/var/www/html/modules/prueba_de_modulo/themes/default/form.tpl',
      1 => 1535039831,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15203625335b7f09a557fc95-57283141',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mode' => 0,
    'SAVE' => 0,
    'CANCEL' => 0,
    'EDIT' => 0,
    'REQUIRED_FIELD' => 0,
    'algo' => 0,
    'prueba' => 0,
    'campo' => 0,
    'area' => 0,
    'ID' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f09a55e65b6_48255982',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f09a55e65b6_48255982')) {function content_5b7f09a55e65b6_48255982($_smarty_tpl) {?><table width="100%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
        <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
        <td align="left">
            <input class="button" type="submit" name="save_new" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='view') {?>
        <td align="left">
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
        <td align="left">
            <input class="button" type="submit" name="save_edit" value="<?php echo $_smarty_tpl->tpl_vars['EDIT']->value;?>
">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php }?>
        <td align="right" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td>
    </tr>
</table>
<table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['algo']->value['LABEL'];?>
: <span  class="required">*</span></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['algo']->value['INPUT'];?>
</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['prueba']->value['LABEL'];?>
: <span  class="required">*</span></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['prueba']->value['INPUT'];?>
</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['campo']->value['LABEL'];?>
: <span  class="required">*</span></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['campo']->value['INPUT'];?>
</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['area']->value['LABEL'];?>
: <span  class="required">*</span></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['area']->value['INPUT'];?>
</td>
    </tr>

</table>
<input class="button" type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['ID']->value;?>
" /><?php }} ?>
