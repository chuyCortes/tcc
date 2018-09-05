<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:13:08
         compiled from "/var/www/html/modules/sec_advanced_settings/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17788359225b803ca42f50f6-17891823%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ffd5f9fcf51692f311c7d9f6ba0e4dedc335300e' => 
    array (
      0 => '/var/www/html/modules/sec_advanced_settings/themes/default/form.tpl',
      1 => 1510073206,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17788359225b803ca42f50f6-17891823',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mode' => 0,
    'SAVE' => 0,
    'subtittle1' => 0,
    'status_fpbx_frontend' => 0,
    'value_fpbx_frontend' => 0,
    'status_anonymous_sip' => 0,
    'value_anonymous_sip' => 0,
    'subtittle2' => 0,
    'fpbx_password' => 0,
    'fpbx_confir_password' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b803ca4352860_79119759',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b803ca4352860_79119759')) {function content_5b803ca4352860_79119759($_smarty_tpl) {?><table width="100%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
        <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
        <td align="left">
            <input class="button" type="submit" name="update_advanced_security_settings" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
">&nbsp;&nbsp;
        </td>
        <?php }?>
    </tr>
</table>
<table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr>
	<td  width="50%" valign='top'>
	    <table>
		<tr class="letra12">
		    <td align="left"><b class='form-label-style'><?php echo $_smarty_tpl->tpl_vars['subtittle1']->value;?>
</b></td>
		</tr>
		<tr class="letra12">
		    <td align="left" >
                        <b><?php echo $_smarty_tpl->tpl_vars['status_fpbx_frontend']->value['LABEL'];?>
:</b>
                    </td>
		    <td align="left" ><input type="hidden" name="oldstatus_fpbx_frontend" id="oldstatus_fpbx_frontend" value="<?php if ($_smarty_tpl->tpl_vars['value_fpbx_frontend']->value) {?>1<?php } else { ?>0<?php }?>" /><input type="checkbox" name="status_fpbx_frontend" id="status_fpbx_frontend" <?php if ($_smarty_tpl->tpl_vars['value_fpbx_frontend']->value) {?>checked="checked"<?php }?> /></td>
		</tr>
        <tr class="letra12">
            <td align="left" ><b><?php echo $_smarty_tpl->tpl_vars['status_anonymous_sip']->value['LABEL'];?>
:</b></td>
            <td align="left" ><input type="hidden" name="oldstatus_anonymous_sip" id="oldstatus_anonymous_sip" value="<?php if ($_smarty_tpl->tpl_vars['value_anonymous_sip']->value) {?>1<?php } else { ?>0<?php }?>" /><input type="checkbox" name="status_anonymous_sip" id="status_anonymous_sip" <?php if ($_smarty_tpl->tpl_vars['value_anonymous_sip']->value) {?>checked="checked"<?php }?> /></td>
        </tr>
	    </table>
	</td>
	<td width="50%" valign='top'>
	    <table>
		<tr class="letra12">
		    <td align="left"><b class='form-label-style'><?php echo $_smarty_tpl->tpl_vars['subtittle2']->value;?>
</b></td>
		</tr>
		<tr class="letra12">
		    <td align="left" >
                        <b><?php echo $_smarty_tpl->tpl_vars['fpbx_password']->value['LABEL'];?>
:</b>                        
                    </td>
		    <td align="left" ><?php echo $_smarty_tpl->tpl_vars['fpbx_password']->value['INPUT'];?>
</td>
		</tr>
		<tr class="letra12">
		    <td align="left" ><b><?php echo $_smarty_tpl->tpl_vars['fpbx_confir_password']->value['LABEL'];?>
:</b></td>
		    <td align="left" ><?php echo $_smarty_tpl->tpl_vars['fpbx_confir_password']->value['INPUT'];?>
</td>
		</tr>
	    </table>
	</td>
    </tr>
</table>
<?php }} ?>
