<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 12:24:18
         compiled from "/var/www/html/modules/packages/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13430748075b7eedc2978111-68783181%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '967a3f098f3fbac249d2ef45df5a939d174e0faf' => 
    array (
      0 => '/var/www/html/modules/packages/themes/default/new.tpl',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13430748075b7eedc2978111-68783181',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'nombre_paquete' => 0,
    'Search' => 0,
    'submitInstalado' => 0,
    'accionEnProceso' => 0,
    'UpdatingRepositories' => 0,
    'InstallPackage' => 0,
    'UpdatePackage' => 0,
    'UninstallPackage' => 0,
    'msgConfirmDelete' => 0,
    'msgConfirmUpdate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7eedc29c21b8_47586540',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7eedc29c21b8_47586540')) {function content_5b7eedc29c21b8_47586540($_smarty_tpl) {?>    <table border='0' cellpadding='0' callspacing='0' width='100%' height='44'>
        <tr class="letra12">
            <td width='70%'><?php echo $_smarty_tpl->tpl_vars['nombre_paquete']->value['LABEL'];?>
 &nbsp; <?php echo $_smarty_tpl->tpl_vars['nombre_paquete']->value['INPUT'];?>

                <input type='submit' class='button' id="submit_nombre" name='submit_nombre' value='<?php echo $_smarty_tpl->tpl_vars['Search']->value;?>
' />
            </td>
            <td rowspan='2' id='relojArena' style="text-align:center;">
            </td>
        </tr>
        <tr class="letra12">
            <td width='200'><?php echo $_smarty_tpl->tpl_vars['submitInstalado']->value['LABEL'];?>
 &nbsp; <?php echo $_smarty_tpl->tpl_vars['submitInstalado']->value['INPUT'];?>
</td>
        </tr>
    </table>
    <input type='hidden' id='estaus_reloj' value='apagado' />

<?php echo '<script'; ?>
 type='text/javascript'>
arrLang = {
    action_in_progress: "<?php echo $_smarty_tpl->tpl_vars['accionEnProceso']->value;?>
",
    updating_repositories: "<?php echo $_smarty_tpl->tpl_vars['UpdatingRepositories']->value;?>
",
    install_package: "<?php echo $_smarty_tpl->tpl_vars['InstallPackage']->value;?>
",
    update_package: "<?php echo $_smarty_tpl->tpl_vars['UpdatePackage']->value;?>
",
    uninstall_package: "<?php echo $_smarty_tpl->tpl_vars['UninstallPackage']->value;?>
",
    msg_confirm_delete: "<?php echo $_smarty_tpl->tpl_vars['msgConfirmDelete']->value;?>
",
    msg_confirm_update: "<?php echo $_smarty_tpl->tpl_vars['msgConfirmUpdate']->value;?>
"
};
<?php echo '</script'; ?>
>


<?php }} ?>
