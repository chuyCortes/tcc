<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 13:04:11
         compiled from "/var/www/html/modules/instantmessaging/themes/default/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:460993615b80489bcc6254-71123208%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '083de7d14cec24bc3123a2cab31b9b247e0da45e' => 
    array (
      0 => '/var/www/html/modules/instantmessaging/themes/default/form.tpl',
      1 => 1514330039,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '460993615b80489bcc6254-71123208',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'imess1_img' => 0,
    'imess1_software_description' => 0,
    'tag_manuf_description' => 0,
    'imess1_manufacturer_description' => 0,
    'download_link' => 0,
    'tag_manufacturer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b80489bcfdfc3_23911599',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b80489bcfdfc3_23911599')) {function content_5b80489bcfdfc3_23911599($_smarty_tpl) {?><table width="90%"  border="0" cellpadding="6" align="center">
  <tr>
    <td width="200" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['imess1_img']->value;?>
" align="center">&nbsp;</td>
    <td><table class="tabForm" align="left" width="100%">
          <tr>
            <td><b>Spark</b><br>
              <?php echo $_smarty_tpl->tpl_vars['imess1_software_description']->value;?>
<br/> 
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manuf_description']->value;?>
</b><br>
              <i>"<?php echo $_smarty_tpl->tpl_vars['imess1_manufacturer_description']->value;?>
"</i><br>
              <b><?php echo $_smarty_tpl->tpl_vars['download_link']->value;?>
: </b><a href="http://www.igniterealtime.org/downloads/index.jsp#spark">http://www.igniterealtime.org/downloads/index.jsp#spark</a><br>
              <b><?php echo $_smarty_tpl->tpl_vars['tag_manufacturer']->value;?>
:</b> <a href="http://www.igniterealtime.org">Ignite Realtime</a><br>
            </td>
          </tr>
        </table>
    </td>
  </tr>
</table>
<?php }} ?>
