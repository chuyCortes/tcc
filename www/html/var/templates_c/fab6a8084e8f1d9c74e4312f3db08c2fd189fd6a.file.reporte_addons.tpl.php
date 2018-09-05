<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 11:58:58
         compiled from "/var/www/html/modules/addons_availables/themes/default/reporte_addons.tpl" */ ?>
<?php /*%%SmartyHeaderCode:688452365b7ee7d27f6b48-28063058%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fab6a8084e8f1d9c74e4312f3db08c2fd189fd6a' => 
    array (
      0 => '/var/www/html/modules/addons_availables/themes/default/reporte_addons.tpl',
      1 => 1510072712,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '688452365b7ee7d27f6b48-28063058',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filter_by' => 0,
    'available' => 0,
    'installed' => 0,
    'purchased' => 0,
    'update_available' => 0,
    'name' => 0,
    'module_name' => 0,
    'lblStart' => 0,
    'lblPrevious' => 0,
    'showing' => 0,
    'of' => 0,
    'lblNext' => 0,
    'lblEnd' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7ee7d2859696_72444631',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7ee7d2859696_72444631')) {function content_5b7ee7d2859696_72444631($_smarty_tpl) {?>
<div
    id="neo-addons-error-message"
    class="ui-corner-all"
    style="display: none;">
    <p>
        <span class="ui-icon" style="float: left; margin-right: .3em;"></span>
        <span id="neo-addons-error-message-text"></span>
    </p>
</div>
  <div class="neo-addons-header-row">
    <div class="neo-addons-header-row-filter">
      <?php echo $_smarty_tpl->tpl_vars['filter_by']->value;?>
:
      <select id="filter_by" class="neo-addons-header-row-select" name="filter_by" onchange="javascript:do_listarAddons(null)">
        <option value="available"><?php echo $_smarty_tpl->tpl_vars['available']->value;?>
</option>
        <option value="installed"><?php echo $_smarty_tpl->tpl_vars['installed']->value;?>
</option>
        <option value="purchased"><?php echo $_smarty_tpl->tpl_vars['purchased']->value;?>
</option>
        <option value="update_available"><?php echo $_smarty_tpl->tpl_vars['update_available']->value;?>
</option>
      </select>
    </div>
    <div class="neo-addons-header-row-filter">
      <span style="vertical-align:top;"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
:</span>
      <input type="text" id="filter_namerpm" value="" name="filter_namerpm" onkeypress="javascript:keyPressed(event)">
      <a onclick="javascript:do_listarAddons(null)" href="#">
      <img width="19" height="21" border="0" align="absmiddle" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/searchw.png" alt="">
      </a>
    </div>
    <div class="neo-addons-header-row-navigation">
        <img id="imgPrimero" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-first.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblStart']->value;?>
' align='absmiddle' />
        <img id="imgAnterior"  style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-previous.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblPrevious']->value;?>
' align='absmiddle' />
        (<?php echo $_smarty_tpl->tpl_vars['showing']->value;?>
 <span id="addonlist_start_range">?</span> - <span id="addonlist_end_range">?</span> <?php echo $_smarty_tpl->tpl_vars['of']->value;?>
 <span id="addonlist_total">?</span>)
        <img id="imgSiguiente" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-next.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblNext']->value;?>
' align='absmiddle' />
        <img id="imgFinal" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-last.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblEnd']->value;?>
' align='absmiddle' />
    </div>
  </div>
<div id="addonlist">
<div style="text-align: center; padding: 40px;">
<img src="images/loading.gif" />
</div>
</div>
     <div id="footer" style="background: url(../../../images/addons_header_row_bg.png) repeat-x top; width: 100%; height:40px;"  >
     <div class="neo-addons-header-row-navigation">
        <img id="imgPrimeroFooter" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-first.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblStart']->value;?>
' align='absmiddle' />
        <img id="imgAnteriorFooter"  style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-previous.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblPrevious']->value;?>
' align='absmiddle' />
        (<?php echo $_smarty_tpl->tpl_vars['showing']->value;?>
 <span id="addonlist_start_range_footer">?</span> - <span id="addonlist_end_range_footer">?</span> <?php echo $_smarty_tpl->tpl_vars['of']->value;?>
 <span id="addonlist_total_footer">?</span>)
        <img id="imgSiguienteFooter" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-next.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblNext']->value;?>
' align='absmiddle' />
        <img id="imgFinalFooter" style="cursor: pointer;" src="modules/<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
/images/table-arrow-last.gif" width="16" height="16" alt='<?php echo $_smarty_tpl->tpl_vars['lblEnd']->value;?>
' align='absmiddle' />
    </div>
    </div>
<!-- Neo Progress Bar -->
<div class="neo-modal-box">
  <div id="container">
    <div class="neo-progress-bar-percentage"><span class="neo-progress-bar-percentage-tag"></span></div>
    <div class="neo-progress-bar"><div class="neo-progress-bar-progress"></div></div>
    <span class="neo-progress-bar-label"><img src="images/loading2.gif" align="absmiddle" />&nbsp;<span id="feedback"></span></span>
    <div class="neo-progress-bar-title"></div>
    <div class="neo-progress-bar-close"></div>
  </div>
</div>
<div class="neo-modal-blockmask"></div>
<?php }} ?>
