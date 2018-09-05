<?php /* Smarty version Smarty-3.1.21, created on 2018-08-24 15:46:17
         compiled from "/var/www/html/modules/campaign_in/themes/default/new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20183110435b806e9937fbd5-36522502%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7006030e823f02e2cfb80400bfc2d3fb042b54fe' => 
    array (
      0 => '/var/www/html/modules/campaign_in/themes/default/new.tpl',
      1 => 1515977925,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20183110435b806e9937fbd5-36522502',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'no_queues' => 0,
    'no_incoming_queues' => 0,
    'no_forms' => 0,
    'relative_dir_rich_text' => 0,
    'FRAMEWORK_TIENE_TITULO_MODULO' => 0,
    'icon' => 0,
    'title' => 0,
    'mode' => 0,
    'SAVE' => 0,
    'CANCEL' => 0,
    'REQUIRED_FIELD' => 0,
    'APPLY_CHANGES' => 0,
    'EDIT' => 0,
    'DELETE' => 0,
    'CONFIRM_DELETE' => 0,
    'nombre' => 0,
    'fecha_str' => 0,
    'fecha_ini' => 0,
    'fecha_fin' => 0,
    'hora_str' => 0,
    'hora_ini_HH' => 0,
    'hora_ini_MM' => 0,
    'hora_fin_HH' => 0,
    'hora_fin_MM' => 0,
    'formulario' => 0,
    'label_manage_forms' => 0,
    'formularios_elegidos' => 0,
    'external_url' => 0,
    'label_manage_external_url' => 0,
    'queue' => 0,
    'label_manage_queues' => 0,
    'script' => 0,
    'rte_script' => 0,
    'id_campaign' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b806e99447181_56792365',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b806e99447181_56792365')) {function content_5b806e99447181_56792365($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['no_queues']->value) {?>
<p><b>No incoming queues have been defined</b></p>
<p>For an incoming campaign to be created, it is necessary to configure at least one incoming queue. You can add queues <a href="?menu=pbxconfig&amp;display=queues">here</a> and configure them as incoming queues <a href="?menu=queues">here</a>.</p>
<?php } elseif ($_smarty_tpl->tpl_vars['no_incoming_queues']->value) {?>
<p><b>No remaining queues for incoming campaings</b></p>
<p>No queues are currently reserved for incoming campaigns. For an incoming campaign to be created, it is necessary to have at least one reserved queue. You can add queues <a href="?menu=pbxconfig&amp;display=queues">here</a> and configure them as incoming queues <a href="?menu=queues">here</a>.</p>
<?php } elseif ($_smarty_tpl->tpl_vars['no_forms']->value) {?>
<p><b>No active forms available</b></p>
<p>For an incoming campaign to be created, it is necessary to have at least one active form. You can add forms <a href="?menu=form_designer">here</a>.</p>
<?php } else { ?>
<?php echo '<script'; ?>
 language="JavaScript" type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['relative_dir_rich_text']->value;?>
/richtext/html2xhtml.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 language="JavaScript" type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['relative_dir_rich_text']->value;?>
/richtext/richtext_compressed.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 language="JavaScript" type="text/javascript">
//Usage: initRTE(imagesPath, includesPath, cssFile, genXHTML, encHTML)
initRTE("./<?php echo $_smarty_tpl->tpl_vars['relative_dir_rich_text']->value;?>
/richtext/images/", "./<?php echo $_smarty_tpl->tpl_vars['relative_dir_rich_text']->value;?>
/richtext/", "", true);
var rte_script = new richTextEditor('rte_script');
<?php echo '</script'; ?>
>

<form method="post" enctype="multipart/form-data" onsubmit="return submitForm();">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
<?php if (!$_smarty_tpl->tpl_vars['FRAMEWORK_TIENE_TITULO_MODULO']->value) {?>
<tr class="moduleTitle">
  <td class="moduleTitle" valign="middle">&nbsp;&nbsp;<img src="<?php echo $_smarty_tpl->tpl_vars['icon']->value;?>
" border="0" align="absmiddle" />&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</td>
</tr>
<?php }?>
<tr>
  <td>
    <table width="100%" valign="top" cellpadding="4" cellspacing="0" border="0">
      <tr>
          <?php if ($_smarty_tpl->tpl_vars['mode']->value=='input') {?>
        <td align="left">
          <input class="button" type="submit" name="save" value="<?php echo $_smarty_tpl->tpl_vars['SAVE']->value;?>
" />
          <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" />
        </td>
        <td align="right" nowrap><span class="letra12"><span  class="required">*</span> <?php echo $_smarty_tpl->tpl_vars['REQUIRED_FIELD']->value;?>
</span></td>
          <?php } elseif ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
        <td align="left">
          <input class="button" type="submit" name="apply_changes" value="<?php echo $_smarty_tpl->tpl_vars['APPLY_CHANGES']->value;?>
" />
          <input class="button" type="submit" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" />
        </td>
          <?php } else { ?>
        <td align="left">
          <input class="button" type="submit" name="edit" value="<?php echo $_smarty_tpl->tpl_vars['EDIT']->value;?>
" />
          <input class="button" type="submit" name="delete" value="<?php echo $_smarty_tpl->tpl_vars['DELETE']->value;?>
"  onClick="return confirmSubmit('<?php echo $_smarty_tpl->tpl_vars['CONFIRM_DELETE']->value;?>
');" />
          <input class="button" type="button" name="cancel_view" value="<?php echo $_smarty_tpl->tpl_vars['CANCEL']->value;?>
" onclick="window.open('?menu=campaign_out','_parent');" />
        </td>
          <?php }?>          
     </tr>
   </table>
  </td>
</tr>
<tr>
  <td>
    <table width="900" valign="top" border="0" cellspacing="0" cellpadding="0" class="tabForm">
      <tr height='50'>
          <td width="20%" align='right'><?php echo $_smarty_tpl->tpl_vars['nombre']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td colspan='2'><?php echo $_smarty_tpl->tpl_vars['nombre']->value['INPUT'];?>
</td>
      </tr>
      <tr>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['fecha_str']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td width="25%"><?php echo $_smarty_tpl->tpl_vars['fecha_ini']->value['INPUT'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['fecha_ini']->value['LABEL'];?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['fecha_fin']->value['INPUT'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['fecha_fin']->value['LABEL'];?>
</td>
      </tr>
      <tr height='10'>
          <td align='right' colspan='3'></td>
      </tr>
      <tr height='30'>
          <td align='right'><?php echo $_smarty_tpl->tpl_vars['hora_str']->value['LABEL'];?>
: <span  class="required">*</span></td>
          <td align='left' colspan='2'><?php echo $_smarty_tpl->tpl_vars['hora_ini_HH']->value['INPUT'];?>
&nbsp;:&nbsp;<?php echo $_smarty_tpl->tpl_vars['hora_ini_MM']->value['INPUT'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['hora_ini_HH']->value['LABEL'];?>
</td>
      </tr>
      <tr height='30'>
          <td>&nbsp;</td>
          <td align='left' colspan='2'><?php echo $_smarty_tpl->tpl_vars['hora_fin_HH']->value['INPUT'];?>
&nbsp;:&nbsp;<?php echo $_smarty_tpl->tpl_vars['hora_fin_MM']->value['INPUT'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['hora_fin_HH']->value['LABEL'];?>
</td>
      </tr>
      <tr height='10'>
          <td align='left' colspan='3'></td>
      </tr>
      <tr>
		<td align='right' valign='top'>
			<?php echo $_smarty_tpl->tpl_vars['formulario']->value['LABEL'];?>
: <span  class="required">*</span>
			<br><br>
			<a href="?menu=form_designer">
			<b><?php echo $_smarty_tpl->tpl_vars['label_manage_forms']->value;?>
</b>
			</a><br><br><hr>			
		</td>
          <td  colspan='2'>
           <?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit'||$_smarty_tpl->tpl_vars['mode']->value=='input') {?>
                <table border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td rowspan='2'><?php echo $_smarty_tpl->tpl_vars['formulario']->value['INPUT'];?>
</td>
                        <td><input type='button' name='agregar_formulario' value="&gt;&gt;" onclick='add_form()'/></td>
                        <td width="50%" rowspan='2' ><?php echo $_smarty_tpl->tpl_vars['formularios_elegidos']->value['INPUT'];?>
</td>
                        <?php if ($_smarty_tpl->tpl_vars['label_manage_forms']->value) {?>
                        <td rowspan='2' align='right' valign='top'></td>
                        <?php }?>
                    </tr>
                    <tr>
                        <td><input type='button' name='quitar_formulario' value="&lt;&lt;" onclick='drop_form()'/></td>
                    </tr>
                </table>                
           <?php } else { ?>
               <?php echo $_smarty_tpl->tpl_vars['formulario']->value['INPUT'];?>

            <?php }?>
            </td>
	  </tr>
      <tr  height='30'>
        <td align='right'><?php echo $_smarty_tpl->tpl_vars['external_url']->value['LABEL'];?>
:<br><br>
        <a href="?menu=external_url">
        <b><?php echo $_smarty_tpl->tpl_vars['label_manage_external_url']->value;?>
</b></a><br><hr>
        </td>
        <td valign="top" colspan='2'><?php echo $_smarty_tpl->tpl_vars['external_url']->value['INPUT'];
if ($_smarty_tpl->tpl_vars['label_manage_external_url']->value) {?>&nbsp;<?php }?></td>
      </tr>
      <tr height='30'>
		<td align='right'><?php echo $_smarty_tpl->tpl_vars['queue']->value['LABEL'];?>
: <span  class="required">*</span><br><br>
		<a href="?menu=pbxconfig&amp;display=queues">
		<b><?php echo $_smarty_tpl->tpl_vars['label_manage_queues']->value;?>
</b></a><br><hr>
		</td>
		<td valign="top" colspan='2'><?php echo $_smarty_tpl->tpl_vars['queue']->value['INPUT'];
if ($_smarty_tpl->tpl_vars['label_manage_queues']->value) {?>&nbsp;<?php }?></td>
      </tr>
      <tr>
        <td align='right' valign='top'><?php echo $_smarty_tpl->tpl_vars['script']->value['LABEL'];?>
: <span  class="required">*</span></td>
        <td  colspan='2'> 
            <?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit'||$_smarty_tpl->tpl_vars['mode']->value=='input') {?>
               <?php echo '<script'; ?>
 language="JavaScript" type="text/javascript">
                   rte_script.html ="<?php echo $_smarty_tpl->tpl_vars['rte_script']->value;?>
";
                   rte_script.toggleSrc = false;
                   rte_script.build();
               <?php echo '</script'; ?>
>
            <?php } else { ?>
                <?php echo $_smarty_tpl->tpl_vars['script']->value['INPUT'];?>

            <?php }?> 
        </td>
      </tr>
      </table>
    </td>
  </tr>
</table>
<input type="hidden" name="id_campaign" id='id_campaign' value="<?php echo $_smarty_tpl->tpl_vars['id_campaign']->value;?>
" />
<input type="hidden" name="values_form" id='values_form' value="" />    
</form>


<?php echo '<script'; ?>
 type="text/javascript">

/* Función para recoger todas las variables del formulario y procesarlas. Sólo
   se requiere atención especial para el RTF del script, y para la lista de 
   formularios elegidos. */
function submitForm() { 
    var lc = listaControlesFormularios();
    var select_form = lc[1]; /* Formularios elegidos */
    var values = "";
    
    for(var i=0; i < select_form.length; i++) {
        values = values + select_form[i].value + ",";
    }
    if(values != "")
        values = values.substring(0,values.length-1);
    document.getElementById("values_form").value = values;

    updateRTEs();   
    return true;
}

function add_form()
{
    var lc = listaControlesFormularios();
    var select_formularios = lc[0];
    var select_formularios_elegidos = lc[1];

    for(var i=0;i<select_formularios.length;i++){
        if(select_formularios[i].selected){
            var option_tmp = document.createElement("option");
            option_tmp.value = select_formularios[i].value;
            option_tmp.appendChild(document.createTextNode(select_formularios[i].firstChild.data));
            select_formularios_elegidos.appendChild(option_tmp);
        }
    }

    for(var i=select_formularios.length-1;i>=0;i--){
        if(select_formularios[i].selected){
            select_formularios.removeChild(select_formularios[i]);
        }
    }
}


function drop_form()
{
    var lc = listaControlesFormularios();
    var select_formularios = lc[0];
    var select_formularios_elegidos = lc[1];

    for(var i=0;i<select_formularios_elegidos.length;i++){
        if(select_formularios_elegidos[i].selected){
            var option_tmp = document.createElement("option");
            option_tmp.value = select_formularios_elegidos[i].value;
            option_tmp.appendChild(document.createTextNode(select_formularios_elegidos[i].firstChild.data));
            select_formularios.appendChild(option_tmp);
        }
    }

    for(var i=select_formularios_elegidos.length-1;i>=0;i--){
        if(select_formularios_elegidos[i].selected){
            select_formularios_elegidos.removeChild(select_formularios_elegidos[i]);
        }
    }
}

/* Esta función es necesaria para lidiar con el cambio en los nombres de los 
   controles generados por Elastix entre 1.6-12 y 1.6.2-1 */
function listaControlesFormularios()
{
    var listaControles;
    var select_formularios;
    var select_formularios_elegidos;
    
    listaControles = document.getElementsByName('formulario');
    if (listaControles.length == 0)
        listaControles = document.getElementsByName('formulario[]');
    select_formularios = listaControles[0];
    
    listaControles = document.getElementsByName('formularios_elegidos');
    if (listaControles.length == 0)
        listaControles = document.getElementsByName('formularios_elegidos[]');
    select_formularios_elegidos = listaControles[0];

    var lista = new Array();
    lista[0] = select_formularios;
    lista[1] = select_formularios_elegidos;
    return lista;
}

<?php echo '</script'; ?>
>

<?php }?> 
<?php }} ?>
