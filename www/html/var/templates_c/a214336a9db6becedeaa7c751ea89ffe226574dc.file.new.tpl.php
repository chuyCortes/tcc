<?php /* Smarty version Smarty-3.1.21, created on 2018-09-03 14:56:07
         compiled from "/var/www/html/modules/userlist/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9281213875b7f0c05600396-97512885%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a214336a9db6becedeaa7c751ea89ffe226574dc' => 
    array (
      0 => '/var/www/html/modules/userlist/themes/default/new.tpl',
      1 => 1536004557,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9281213875b7f0c05600396-97512885',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f0c0564ea92_00896796',
  'variables' => 
  array (
    'userExtension_success' => 0,
    'icon' => 0,
    'LBL_CORE_FIELDS' => 0,
    'description' => 0,
    'name' => 0,
    'mode' => 0,
    'password1' => 0,
    'password2' => 0,
    'group' => 0,
    'nuevo_campo' => 0,
    'SAVE' => 0,
    'editUserExtension' => 0,
    'CANCEL' => 0,
    'REQUIRED_FIELD' => 0,
    'PLUGIN_CONTENT' => 0,
    'id_user' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f0c0564ea92_00896796')) {function content_5b7f0c0564ea92_00896796($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['userExtension_success']->value==1) {?>

<?php echo '<script'; ?>
 type="text/javascript">
if (window.opener && !window.opener.closed) {
    window.opener.location.reload();
}
window.close();
<?php echo '</script'; ?>
>

<?php } else { ?>
<form method="POST">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
  <td>
      &nbsp;
  </td>
</tr>
<tr>
  <td>
    <br>
    <fieldset>
        <legend><b><img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['LBL_CORE_FIELDS']->value;?>
</b></legend>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table">

          <tr>
            <td width="25%"><?php echo $_smarty_tpl->tpl_vars['description']->value['LABEL'];?>
:</td>
            <td width="25%"><?php echo $_smarty_tpl->tpl_vars['description']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>


          <tr>
            <td width="20%"><?php echo $_smarty_tpl->tpl_vars['name']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span  class="required">*</span><?php }?></td>
            <td width="30%"><?php echo $_smarty_tpl->tpl_vars['name']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>

          <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['password1']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span  class="required">*</span><?php }?></td>
            <td><?php echo $_smarty_tpl->tpl_vars['password1']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>

          <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['password2']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span class="required">*</span><?php }?></td>
            <td><?php echo $_smarty_tpl->tpl_vars['password2']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>

          <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['group']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span  class="required">*</span><?php }?></td>
            <td><?php echo $_smarty_tpl->tpl_vars['group']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>

          <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['nuevo_campo']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span  class="required">*</span><?php }?></td>
            <td><?php echo $_smarty_tpl->tpl_vars['nuevo_campo']->value['INPUT'];?>
</td>
            <td colspan="2">&nbsp;</td>
          </tr>


        </table>

        <table width="60%" cellpadding="4" cellspacing="0" border="0">
          <tr>
            <td align="left">
              <button class="button" type="submit" name="save" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
"><i class='fa fa-save'></i> <?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
</button>
              <?php if ($_smarty_tpl->tpl_vars['editUserExtension']->value!='yes') {?><input class="button" type="button" id="btn_cancel" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
"><?php }?>
            </td>
            <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?>
              <td align="left" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td>
            <?php }?>
         </tr>
       </table>
   
    </fieldset>
    <!--<?php echo $_smarty_tpl->tpl_vars['PLUGIN_CONTENT']->value;?>
-->
  </td>
</tr>
</table>
<input type="hidden" name="id_user" value="<?php echo $_smarty_tpl->tpl_vars['id_user']->value;?>
">
</form>
<?php echo '<script'; ?>
 type='text/javascript'>
    $(document).ready(function(e) {
        $('#group').addClass('form-control');

        $('#btn_cancel').click(function(event) {
          window.location.href = "?menu=userlist&action=cancel";
        });
    });
<?php echo '</script'; ?>
>
<?php }?><?php }} ?>
