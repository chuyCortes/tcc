<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 13:04:09
         compiled from "/var/www/html/modules/faxutils/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8923582995b804899787aa8-43771354%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a658d99a85233b0ca12069ebb55e9df4c84840f9' => 
    array (
      0 => '/var/www/html/modules/faxutils/themes/default/form.tpl',
      1 => 1514330039,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8923582995b804899787aa8-43771354',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'fax1_img' => 0,
    'fax1_software_description' => 0,
    'tag_manuf_description' => 0,
    'fax1_manufacturer_description' => 0,
    'download_link' => 0,
    'tag_manufacturer' => 0,
    'fax2_img' => 0,
    'fax2_software_description' => 0,
    'fax2_manufacturer_description' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b8048997cb277_71442892',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b8048997cb277_71442892')) {function content_5b8048997cb277_71442892($_smarty_tpl) {?><table width="90%"  border="0" cellpadding="6" align="center">
  <tr>
    <td width="200" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['fax1_img']->value;?>
" align="center">&nbsp;</td>
    <td><table class="tabForm" align="left" width="100%">
          <tr>
            <td><b>JHylaFAX</b><br>
              <?php echo $_smarty_tpl->tpl_vars['fax1_software_description']->value;?>
<br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manuf_description']->value;?>
</b><br>
              <i>"<?php echo $_smarty_tpl->tpl_vars['fax1_manufacturer_description']->value;?>
"</i><br>
              <b><?php echo $_smarty_tpl->tpl_vars['download_link']->value;?>
: </b><a href="http://sourceforge.net/project/showfiles.php?group_id=136485">http://sourceforge.net/project/showfiles.php?group_id=136485</a><br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manufacturer']->value;?>
:</b> <a href="http://jhylafax.sourceforge.net">JHylaFAX</a><br>
            </td>
          </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td width="200" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['fax2_img']->value;?>
" align="center">&nbsp;</td>
    <td><table class="tabForm" align="left" width="100%">
          <tr>
            <td><b>Winprint HylaFAX</b><br>
              <?php echo $_smarty_tpl->tpl_vars['fax2_software_description']->value;?>
<br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manuf_description']->value;?>
</b><br>
              <i>"<?php echo $_smarty_tpl->tpl_vars['fax2_manufacturer_description']->value;?>
"</i><br>
              <b><?php echo $_smarty_tpl->tpl_vars['download_link']->value;?>
: </b><a href="http://sourceforge.net/project/showfiles.php?group_id=91606">http://sourceforge.net/project/showfiles.php?group_id=91606</a><br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manufacturer']->value;?>
:</b> <a href="http://winprinthylafax.sourceforge.net">Winprint Hylafax</a><br>
            </td>
          </tr>
        </table>
    </td>
  </tr>
</table>
<?php }} ?>
