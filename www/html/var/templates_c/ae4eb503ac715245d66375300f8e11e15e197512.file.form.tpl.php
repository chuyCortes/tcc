<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 13:04:02
         compiled from "/var/www/html/modules/sphones/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8317483535b804892af5ce4-19713827%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae4eb503ac715245d66375300f8e11e15e197512' => 
    array (
      0 => '/var/www/html/modules/sphones/themes/default/form.tpl',
      1 => 1514330039,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8317483535b804892af5ce4-19713827',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'xlite_img' => 0,
    'xlite_software_description' => 0,
    'tag_manuf_description' => 0,
    'xlite_manufacturer_description' => 0,
    'download_link' => 0,
    'tag_manufacturer' => 0,
    'zoiper_img' => 0,
    'zoiper_software_description' => 0,
    'zoiper_manufacturer_description' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b804892b38848_36324342',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b804892b38848_36324342')) {function content_5b804892b38848_36324342($_smarty_tpl) {?><table width="90%"  border="0" cellpadding="10" align="center">
  <tr>
    <td width="200" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['xlite_img']->value;?>
" align="center">&nbsp;</td>
    <td><table class="tabForm" align="left" width="100%">
          <tr>
            <td><b>X-Lite</b><br>
              <?php echo $_smarty_tpl->tpl_vars['xlite_software_description']->value;?>
<br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manuf_description']->value;?>
</b><br>
              <i>"<?php echo $_smarty_tpl->tpl_vars['xlite_manufacturer_description']->value;?>
"</i><br>
              <b><?php echo $_smarty_tpl->tpl_vars['download_link']->value;?>
: </b><a href="http://www.counterpath.com/x-lite-download.html">http://www.counterpath.com/x-lite-download.html</a><br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manufacturer']->value;?>
:</b> <a href="http://www.counterpath.com/">CounterPath</a><br>
            </td>
          </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td width="200" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['zoiper_img']->value;?>
" align="center" width="290" height="209">&nbsp;</td>
    <td><table class="tabForm" align="left" width="100%">
          <tr>
            <td><b>ZoIPer</b><br>
              <?php echo $_smarty_tpl->tpl_vars['zoiper_software_description']->value;?>
<br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manuf_description']->value;?>
</b><br>
              <i>"<?php echo $_smarty_tpl->tpl_vars['zoiper_manufacturer_description']->value;?>
"</i><br>
              <b><?php echo $_smarty_tpl->tpl_vars['download_link']->value;?>
: </b><a href="http://www.zoiper.com/download_list.php?os=All">http://www.zoiper.com/download_list.php?os=All</a><br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manufacturer']->value;?>
:</b> <a href="http://www.zoiper.com/">Zoiper's Official Web</a><br>
            </td>
          </tr>
        </table>
    </td>
  </tr>
</table>
<?php }} ?>
