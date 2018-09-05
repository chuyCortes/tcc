<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:17:59
         compiled from "/var/www/html/modules/dhcp_by_mac/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17490923245b803dc7d09d48-28903884%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48f24ebb620b4e44f30a6a5d0b223d9e786d1c74' => 
    array (
      0 => '/var/www/html/modules/dhcp_by_mac/themes/default/form.tpl',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17490923245b803dc7d09d48-28903884',
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
    'hostname' => 0,
    'HOST_NAME' => 0,
    'ipaddress' => 0,
    'IP_ADDRESS' => 0,
    'macaddress' => 0,
    'MAC_ADDRESS' => 0,
    'ID' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b803dc7d757a9_78098991',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b803dc7d757a9_78098991')) {function content_5b803dc7d757a9_78098991($_smarty_tpl) {?><table width="100%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
        <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
        <td align="left">
            <input class="button" type="submit" name="save_dhcp" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='view') {?>
        <td align="left">
            <input class="button" type="submit" name="edit_dhcpconf" value="<?php echo $_smarty_tpl->tpl_vars['EDIT']->value;?>
">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
        <td align="left">
            <input class="button" type="submit" name="update_dhacp" value="<?php echo $_smarty_tpl->tpl_vars['EDIT']->value;?>
">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
">
        </td>
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><td align="right" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td><?php }?>
    </tr>
</table>
<table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['hostname']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span class="required">*</span><?php }?></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['hostname']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['HOST_NAME']->value;?>
</td>
    </tr>

    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['ipaddress']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span class="required">*</span><?php }?></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['ipaddress']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['IP_ADDRESS']->value;?>
</td>
    </tr>

    <tr class="letra12">
        <td align="left"><b><?php echo $_smarty_tpl->tpl_vars['macaddress']->value['LABEL'];?>
: <?php if ($_smarty_tpl->tpl_vars['mode']->value!='view') {?><span class="required">*</span><?php }?></b></td>
        <td align="left"><?php echo $_smarty_tpl->tpl_vars['macaddress']->value['INPUT'];?>
&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['MAC_ADDRESS']->value;?>
</td>
    </tr>

</table>

<input class="button" type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['ID']->value;?>
" /><?php }} ?>
