<?php /* Smarty version Smarty-3.1.21, created on 2018-08-30 15:52:23
         compiled from "/var/www/html/modules/calendar/themes/default/address_book_list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8756227575b885907cd1e82-97533076%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9e7dcdaf68a00cc1aced0914beb77672c9cdb7a5' => 
    array (
      0 => '/var/www/html/modules/calendar/themes/default/address_book_list.tpl',
      1 => 1497201970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8756227575b885907cd1e82-97533076',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'path' => 0,
    'THEMENAME' => 0,
    'HEADER_LIBS_JQUERY' => 0,
    'module_name' => 0,
    'BODYPARAMS' => 0,
    'icon' => 0,
    'title' => 0,
    'md_message_title' => 0,
    'CONTENT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b885907d03783_95787313',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b885907d03783_95787313')) {function content_5b885907d03783_95787313($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Issabel</title>
        <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['path']->value;?>
themes/<?php echo $_smarty_tpl->tpl_vars['THEMENAME']->value;?>
/styles.css">
        <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['path']->value;?>
themes/<?php echo $_smarty_tpl->tpl_vars['THEMENAME']->value;?>
/help.css">
        <?php echo $_smarty_tpl->tpl_vars['HEADER_LIBS_JQUERY']->value;?>

        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['path']->value;?>
libs/js/base.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['path']->value;?>
modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/themes/default/js/javascript.js"><?php echo '</script'; ?>
>
    </head>
    <body <?php echo $_smarty_tpl->tpl_vars['BODYPARAMS']->value;?>
>
        <?php if ($_smarty_tpl->tpl_vars['THEMENAME']->value=="elastixneo") {?>
          <div>
            <div class="elxneo-module-title">
                <div class="name-left"></div>
                <span class="name">
                      <?php if ($_smarty_tpl->tpl_vars['icon']->value!=null) {?>
                      <img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" width="22" height="22" align="absmiddle" />
                      <?php }?>
                      &nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</span>
                <div class="name-right"></div>
            </div>
           <input type="hidden" id="issabel_framework_module_id" value="<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
" />
           <div id="elxneo-content">
              <div class="div_msg_errors" id="message_error" style="display:none;">
              <div style="float:left;">
                  <span id="mb_title" style="color:red;font-weight:bold"></span>
                  <br />
                  <span id="mb_message"></span>
              </div>
              <div style="text-align:right; padding:5px">
                  <input type="button" onclick="hide_message_error();" value="<?php echo $_smarty_tpl->tpl_vars['md_message_title']->value;?>
"/>
              </div>
            </div>
              <?php echo $_smarty_tpl->tpl_vars['CONTENT']->value;?>

           </div>
        <?php } else { ?>
            <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" class="message_board">
              <tbody style="display:none" id="table_error"><tr>
                <td valign="middle" class="mb_title" id="mb_title"></td>
                </tr>
                <tr>
                    <td valign="middle" class="mb_message" id="mb_message"></td>
                </tr>
            </tbody></table>
            <div class="moduleTitle">
              &nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle">&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>

            </div>
            <?php echo $_smarty_tpl->tpl_vars['CONTENT']->value;?>

        <?php }?>
    </body>
</html>
<?php }} ?>
