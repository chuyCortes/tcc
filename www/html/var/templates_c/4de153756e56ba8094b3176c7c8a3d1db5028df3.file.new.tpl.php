<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:18:11
         compiled from "/var/www/html/modules/ping/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19560684165b803dd3c197f8-78376926%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4de153756e56ba8094b3176c7c8a3d1db5028df3' => 
    array (
      0 => '/var/www/html/modules/ping/themes/default/new.tpl',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19560684165b803dd3c197f8-78376926',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ping_hostname' => 0,
    'tracert_hostname' => 0,
    'frame_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b803dd3c5bf29_97488588',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b803dd3c5bf29_97488588')) {function content_5b803dd3c5bf29_97488588($_smarty_tpl) {?><!--<form method="POST" enctype="multipart/form-data">

Comentario:  He agregado variables para que se muestre la misma vista de la 160

-->

<form method="POST" enctype="multipart/form-data">
<input type="hidden" value="" name="send" id="send">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">

        <tr>            
            <td width="200px"><input type="text" id="ping_hostname" name="ping_hostname" value='<?php echo $_smarty_tpl->tpl_vars['ping_hostname']->value;?>
' /></td>
            <td width="100px"><input type="submit" class="button" value="<?php $_smarty_tpl->smarty->_tag_stack[] = array('php', array()); $_block_repeat=true; echo smarty_php_tag(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
echo _tr('Ping');<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_php_tag(array(), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
" onclick="document.getElementById('send').value='ping';"></td>
            <td></td>
        </tr>
        <tr>            
            <td>&nbsp;</td>
            <td></td>
            <td></td>
        </tr>
        <tr>            
            <td width="200px"><input type="text" id="tracert_hostname" name="tracert_hostname" value='<?php echo $_smarty_tpl->tpl_vars['tracert_hostname']->value;?>
' /></td>
            <td width="100px"><input type="submit" class="button" value="<?php $_smarty_tpl->smarty->_tag_stack[] = array('php', array()); $_block_repeat=true; echo smarty_php_tag(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
echo _tr('Trace');<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_php_tag(array(), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
" onclick="document.getElementById('send').value='tracepath';"></td>
            <td></td>
        </tr>        

        <tr>            
            <td></td>
            <td></td>
            <td></td>
        </tr>
</table>
</form>
<?php if ($_smarty_tpl->tpl_vars['frame_url']->value!='') {?>
<br><br>
<table class="tabForm" style="font-size: 16px;" cellspacing="0" cellpadding="0" width="100%">
        <tr><td align="left" colspan="2"><b><?php $_smarty_tpl->smarty->_tag_stack[] = array('php', array()); $_block_repeat=true; echo smarty_php_tag(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>
echo _tr('Results');<?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_php_tag(array(), $_block_content, $_smarty_tpl, $_block_repeat); } array_pop($_smarty_tpl->smarty->_tag_stack);?>
</b></td></tr>
        <tr><td align="left" colspan="2"><div class='hr-line'></div></td></tr>
    </table>
<pre style="font-family: monospace;">
<iframe name="ifm" id="ifm" frameborder=0 width="600px" height="500px" marginheight=0 marginwidth=0 scrolling=no src=<?php echo $_smarty_tpl->tpl_vars['frame_url']->value;?>
></iframe>
</pre>
<?php }?>


<?php }} ?>
