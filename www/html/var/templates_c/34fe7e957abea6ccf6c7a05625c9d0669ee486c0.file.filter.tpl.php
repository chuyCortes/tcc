<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 13:34:58
         compiled from "/var/www/html/modules/language_admin/themes/default/filter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20662229925b804fd29ba4a7-82588885%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '34fe7e957abea6ccf6c7a05625c9d0669ee486c0' => 
    array (
      0 => '/var/www/html/modules/language_admin/themes/default/filter.tpl',
      1 => 1327443722,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20662229925b804fd29ba4a7-82588885',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module' => 0,
    'language' => 0,
    'SHOW' => 0,
    'nav_value' => 0,
    'start_value' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b804fd29f7eb2_94393318',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b804fd29f7eb2_94393318')) {function content_5b804fd29f7eb2_94393318($_smarty_tpl) {?><table width="99%" border="0" cellspacing="0" cellpadding="2" align="center">
    <tr class="letra12">
        <td width="20%" align="right"><?php echo $_smarty_tpl->tpl_vars['module']->value['LABEL'];?>
: </td>
        <td align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['module']->value['INPUT'];?>
</td>
    </tr>
    <tr class="letra12">
        <td width="20%" align="right"><?php echo $_smarty_tpl->tpl_vars['language']->value['LABEL'];?>
: </td>
        <td width="10%" align="left" nowrap><?php echo $_smarty_tpl->tpl_vars['language']->value['INPUT'];?>
</td>
        <td align="left"><input class="button" type="submit" name="show" value="<?php echo $_smarty_tpl->tpl_vars['SHOW']->value;?>
"/></td>
    </tr>
</table>

<input type="hidden" name="nav" value="<?php echo $_smarty_tpl->tpl_vars['nav_value']->value;?>
" />
<input type="hidden" name="start" value="<?php echo $_smarty_tpl->tpl_vars['start_value']->value;?>
" /> <?php }} ?>
