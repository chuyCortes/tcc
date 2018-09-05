<?php /* Smarty version Smarty-3.1.21, created on 2018-08-29 12:42:36
         compiled from "/var/www/html/modules/external_url/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7763061135b86db0c327337-13236502%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '57b0447e6db2a9f9bc73eaabe4e1796fb277fed0' => 
    array (
      0 => '/var/www/html/modules/external_url/themes/default/new.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7763061135b86db0c327337-13236502',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'FRAMEWORK_TIENE_TITULO_MODULO' => 0,
    'icon' => 0,
    'title' => 0,
    'mode' => 0,
    'SAVE' => 0,
    'CANCEL' => 0,
    'REQUIRED_FIELD' => 0,
    'APPLY_CHANGES' => 0,
    'urltemplate' => 0,
    'description' => 0,
    'id_url' => 0,
    'active' => 0,
    'opentype' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b86db0c38a526_22388696',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b86db0c38a526_22388696')) {function content_5b86db0c38a526_22388696($_smarty_tpl) {?><form method="post" enctype="multipart/form-data">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<?php if (!$_smarty_tpl->tpl_vars['FRAMEWORK_TIENE_TITULO_MODULO']->value) {?>
<tr class="moduleTitle">
  <td class="moduleTitle" valign="middle">&nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</td>
</tr>
<?php }?>
<tr>
  <td>
    <table width="100%" valign="top" cellpadding="4" cellspacing="0" border="0">
      <tr>
          <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
        <td align="left">
          <input class="button" type="submit" name="save" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
" />
          <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" />
        </td>
        <td align="right" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td>
          <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
        <td align="left">
          <input class="button" type="submit" name="apply_changes" value="<?php echo $_smarty_tpl->tpl_vars['APPLY_CHANGES']->value;?>
" />
          <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" />
        </td>
          <?php }?>          
     </tr>
   </table>
  </td>
</tr>
<tr>
  <td>
    <table valign="top" border="0" cellspacing="0" cellpadding="0" class="tabForm">
      <tr>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['urltemplate']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td><?php echo $_smarty_tpl->tpl_vars['urltemplate']->value['INPUT'];?>
</td>
      </tr>
      <tr>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['description']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td><?php echo $_smarty_tpl->tpl_vars['description']->value['INPUT'];?>
</td>
      </tr>
      <?php if ($_smarty_tpl->tpl_vars['id_url']->value) {?>
      <tr>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['active']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td><?php echo $_smarty_tpl->tpl_vars['active']->value['INPUT'];?>
</td>
      </tr>
      <?php }?>
      <tr>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['opentype']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td><?php echo $_smarty_tpl->tpl_vars['opentype']->value['INPUT'];?>
</td>
      </tr>
      </table>
    </td>
  </tr>
</table>
<input type="hidden" name="id_url" id='id_url' value="<?php echo $_smarty_tpl->tpl_vars['id_url']->value;?>
" />
</form>
<?php }} ?>
