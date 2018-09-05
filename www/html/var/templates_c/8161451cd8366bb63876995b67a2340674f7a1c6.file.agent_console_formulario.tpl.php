<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:41:56
         compiled from "/var/www/html/modules/agent_console/themes/default/agent_console_formulario.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3828601715b7ef1e42519a0-99821365%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8161451cd8366bb63876995b67a2340674f7a1c6' => 
    array (
      0 => '/var/www/html/modules/agent_console/themes/default/agent_console_formulario.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3828601715b7ef1e42519a0-99821365',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'FORMS' => 0,
    'ID_FORM' => 0,
    'FORM' => 0,
    'FIELD' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7ef1e43029e9_63128775',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7ef1e43029e9_63128775')) {function content_5b7ef1e43029e9_63128775($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include '/usr/share/php/Smarty/plugins/function.html_options.php';
?>
<div id="issabel-callcenter-cejillas-formulario">
   <ul>
<?php  $_smarty_tpl->tpl_vars['FORM'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FORM']->_loop = false;
 $_smarty_tpl->tpl_vars['ID_FORM'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['FORMS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FORM']->key => $_smarty_tpl->tpl_vars['FORM']->value) {
$_smarty_tpl->tpl_vars['FORM']->_loop = true;
 $_smarty_tpl->tpl_vars['ID_FORM']->value = $_smarty_tpl->tpl_vars['FORM']->key;
?>
       <li><a href="#issabel-callcenter-formulario-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['FORM']->value['name'];?>
</a></li>
<?php } ?>
   </ul>
<?php  $_smarty_tpl->tpl_vars['FORM'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FORM']->_loop = false;
 $_smarty_tpl->tpl_vars['ID_FORM'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['FORMS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FORM']->key => $_smarty_tpl->tpl_vars['FORM']->value) {
$_smarty_tpl->tpl_vars['FORM']->_loop = true;
 $_smarty_tpl->tpl_vars['ID_FORM']->value = $_smarty_tpl->tpl_vars['FORM']->key;
?>
   <div id="issabel-callcenter-formulario-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
">
    <table border="0" cellpadding="0">
            <tr>
                <th colspan="2"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['FORM']->value['description'], ENT_QUOTES, 'UTF-8', true);?>
</th>
            </tr>
<?php  $_smarty_tpl->tpl_vars['FIELD'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FIELD']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['FORM']->value['fields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FIELD']->key => $_smarty_tpl->tpl_vars['FIELD']->value) {
$_smarty_tpl->tpl_vars['FIELD']->_loop = true;
?>
            <tr>
<?php if ($_smarty_tpl->tpl_vars['FIELD']->value['type']!="LABEL") {?>
                <td><label><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['label'], ENT_QUOTES, 'UTF-8', true);?>
: </label></td>
<?php }?>
                <td <?php if ($_smarty_tpl->tpl_vars['FIELD']->value['type']=="LABEL") {?>colspan="2"<?php }?>>
<?php if ($_smarty_tpl->tpl_vars['FIELD']->value['type']=="LIST") {?>
<?php echo smarty_function_html_options(array('name'=>"field-".((string)$_smarty_tpl->tpl_vars['ID_FORM']->value)."-".((string)$_smarty_tpl->tpl_vars['FIELD']->value['id']),'id'=>"field-".((string)$_smarty_tpl->tpl_vars['ID_FORM']->value)."-".((string)$_smarty_tpl->tpl_vars['FIELD']->value['id']),'class'=>"issabel-callcenter-field ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only",'output'=>$_smarty_tpl->tpl_vars['FIELD']->value['options'],'values'=>$_smarty_tpl->tpl_vars['FIELD']->value['options'],'selected'=>$_smarty_tpl->tpl_vars['FIELD']->value['current_value']),$_smarty_tpl);?>

<?php } elseif ($_smarty_tpl->tpl_vars['FIELD']->value['type']=="DATE") {?>

<input
    type="text"
    name="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    id="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    class="issabel-callcenter-field issabel-callcenter-field-date ui-widget-content ui-corner-all"
    value="<?php if ($_smarty_tpl->tpl_vars['FIELD']->value['current_value']=='') {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['default_value'], ENT_QUOTES, 'UTF-8', true);
} else {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['current_value'], ENT_QUOTES, 'UTF-8', true);
}?>" />
<?php } elseif ($_smarty_tpl->tpl_vars['FIELD']->value['type']=="LABEL") {?>
                <label><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['label'], ENT_QUOTES, 'UTF-8', true);?>
</label>
<?php } elseif ($_smarty_tpl->tpl_vars['FIELD']->value['type']=="TEXTAREA") {?>
<textarea
    name="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    id="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    rows="3" cols="50"
    maxlength="<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['maxsize'];?>
"
    class="issabel-callcenter-field ui-widget-content ui-corner-all"><?php if ($_smarty_tpl->tpl_vars['FIELD']->value['current_value']=='') {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['default_value'], ENT_QUOTES, 'UTF-8', true);
} else {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['current_value'], ENT_QUOTES, 'UTF-8', true);
}?></textarea>
<?php } else { ?>
<input
    type="text"
    name="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    id="field-<?php echo $_smarty_tpl->tpl_vars['ID_FORM']->value;?>
-<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['id'];?>
"
    size="<?php if ($_smarty_tpl->tpl_vars['FIELD']->value['maxsize']>64) {?>64<?php } else {
echo $_smarty_tpl->tpl_vars['FIELD']->value['maxsize'];
}?>"
    maxlength="<?php echo $_smarty_tpl->tpl_vars['FIELD']->value['maxsize'];?>
"
    class="issabel-callcenter-field ui-widget-content ui-corner-all"
    value="<?php if ($_smarty_tpl->tpl_vars['FIELD']->value['current_value']=='') {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['default_value'], ENT_QUOTES, 'UTF-8', true);
} else {
echo htmlspecialchars($_smarty_tpl->tpl_vars['FIELD']->value['current_value'], ENT_QUOTES, 'UTF-8', true);
}?>" />
<?php }?>
                </td>
            </tr>
<?php } ?>
    </table>
   </div>
<?php } ?>
</div><?php }} ?>
