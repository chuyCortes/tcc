<?php /* Smarty version Smarty-3.1.21, created on 2018-09-03 15:15:56
         compiled from "/var/www/html/modules/clientes/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6009401165b86d8fc395e40-87732698%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c1cefe2f89fd803c34a8ca048d13462ee3aacbca' => 
    array (
      0 => '/var/www/html/modules/clientes/themes/default/form.tpl',
      1 => 1536005744,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6009401165b86d8fc395e40-87732698',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b86d8fc3cd217_83523999',
  'variables' => 
  array (
    'FRAMEWORK_TIENE_TITULO_MODULO' => 0,
    'icon' => 0,
    'title' => 0,
    'cliente' => 0,
    'descripcion' => 0,
    'mode' => 0,
    'SAVE' => 0,
    'CANCEL' => 0,
    'APPLY_CHANGES' => 0,
    'EDIT' => 0,
    'DELETE' => 0,
    'CONFIRM_CONTINUE' => 0,
    'REQUIRED_FIELD' => 0,
    'IdCliente' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b86d8fc3cd217_83523999')) {function content_5b86d8fc3cd217_83523999($_smarty_tpl) {?><form method="post">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<?php if (!$_smarty_tpl->tpl_vars['FRAMEWORK_TIENE_TITULO_MODULO']->value) {?>
<tr class="moduleTitle">
  <td>
    <br>
    <fieldset>
      <legend><b><img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</b></legend>
    </fieldset>
  </td>
</tr>
<?php }?>

<tr>
  <td>
  	<br>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table">
      <tr>
	    <td width="20%"><?php echo $_smarty_tpl->tpl_vars['cliente']->value['LABEL'];?>
: <span class="required">*</span></td>
	    <td width="40%"><?php echo $_smarty_tpl->tpl_vars['cliente']->value['INPUT'];?>
</td>
	    <td width="20%">&nbsp;</td>
	    <td width="20%">&nbsp;</td>
      </tr>
      <tr>
		<td width="20%"><?php echo $_smarty_tpl->tpl_vars['descripcion']->value['LABEL'];?>
: <span  class="required">*</span></td>
		<td width="40%"><?php echo $_smarty_tpl->tpl_vars['descripcion']->value['INPUT'];?>
</td>
	    <td width="20%">&nbsp;</td>
	    <td width="20%">&nbsp;</td>
      </tr>
    </table>

        <table width="60%" cellpadding="4" cellspacing="0" border="0">
          <tr>
            <td align="left">
              <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
              <input class="button" type="submit" name="submit_guardar_cliente" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
"/>
                <?php echo '<script'; ?>
 type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                <?php echo '</script'; ?>
>
              <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
              <input class="button" type="submit" name="submit_guardar_cambios" value="<?php echo $_smarty_tpl->tpl_vars['APPLY_CHANGES']->value;?>
" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
"/>
                <?php echo '<script'; ?>
 type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                <?php echo '</script'; ?>
>
              <?php } else { ?>
              <input class="button" type="submit" name="edit" value="<?php echo $_smarty_tpl->tpl_vars['EDIT']->value;?>
"/>
              <input class="button" type="submit" name="delete" value="<?php echo $_smarty_tpl->tpl_vars['DELETE']->value;?>
"  onClick="return confirmSubmit('<?php echo $_smarty_tpl->tpl_vars['CONFIRM_CONTINUE']->value;?>
')" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
"/>
                <?php echo '<script'; ?>
 type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                <?php echo '</script'; ?>
>
              <?php }?>
            </td>
            <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?>
              <td align="left" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td>
            <?php }?>
         </tr>
       </table>
  </td>
</tr>
<td>
    

</td>
</table>
<input type="hidden" name="IdCliente" value="<?php echo $_smarty_tpl->tpl_vars['IdCliente']->value;?>
" />
</form><?php }} ?>
