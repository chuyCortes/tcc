<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 12:22:36
         compiled from "/var/www/html/modules/dashboard/applets/HardDrives/tpl/dirspacereport.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10215910915b803edc56e759-57049720%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f06dd02c44dfdb35d79390629d115c64e604d7d' => 
    array (
      0 => '/var/www/html/modules/dashboard/applets/HardDrives/tpl/dirspacereport.tpl',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10215910915b803edc56e759-57049720',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'listaReporteDir' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b803edc5d4ce0_31147037',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b803edc5d4ce0_31147037')) {function content_5b803edc5d4ce0_31147037($_smarty_tpl) {?><div class="neo-applet-hd-report-row">
    <div class="neo-applet-hd-report-row-left" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['logs']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['logs']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['logs']['use'];?>
</div>
    <div class="neo-applet-hd-report-row-right" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['backups']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['backups']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['backups']['use'];?>
</div>
</div>
<div class="neo-applet-hd-report-row">
    <div class="neo-applet-hd-report-row-left" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['emails']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['emails']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['emails']['use'];?>
</div>
    <div class="neo-applet-hd-report-row-right" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['config']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['config']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['config']['use'];?>
</div>
</div>
<div class="neo-applet-hd-report-row">
    <div class="neo-applet-hd-report-row-left" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['voicemails']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['voicemails']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['voicemails']['use'];?>
</div>
    <div class="neo-applet-hd-report-row-right" title="<?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['recordings']['dir'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['recordings']['tag'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['listaReporteDir']->value['recordings']['use'];?>
</div>
</div>
<?php }} ?>
