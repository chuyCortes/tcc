<?php /* Smarty version Smarty-3.1.21, created on 2018-08-23 16:23:56
         compiled from "/var/www/html/modules/dashboard/help/es.hlp" */ ?>
<?php /*%%SmartyHeaderCode:17060041445b7f25ec7ae8f5-60412157%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3fe6a3a7f96e68677b5de1950104dd5d2e82092b' => 
    array (
      0 => '/var/www/html/modules/dashboard/help/es.hlp',
      1 => 1510073251,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17060041445b7f25ec7ae8f5-60412157',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'THEMENAME' => 0,
    'node_name' => 0,
    'node_id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_5b7f25ec8408c8_17326223',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b7f25ec8408c8_17326223')) {function content_5b7f25ec8408c8_17326223($_smarty_tpl) {?><html>
<header>
  <link rel="stylesheet" href="/themes/<?php echo $_smarty_tpl->tpl_vars['THEMENAME']->value;?>
/styles.css">
  <link rel="stylesheet" href="/themes/<?php echo $_smarty_tpl->tpl_vars['THEMENAME']->value;?>
/help.css">
</header>
<body>

<h1><?php echo $_smarty_tpl->tpl_vars['node_name']->value;?>
</h1>

<p>La opción "Dashboard" del menú "Sistema" en Issabel es una herramienta de visualización que muestra una vista general del sistema y proporciona un rápido acceso a acciones administrativas con el fin de hacer más fácil la administración de Issabel. Entre las vistas disponibles están "Recursos del Sistema", "Estados de Procesos", "Discos Duros", "Gráfico de Rendimiento", "Actividad de Comunicación", entre otras. A continuación se describe brevemente cada una de ellas.</p>
<p><b>Recursos de Sistema: </b>Aquí se muestra información general sobre el sistema en el que Issabel se está ejecutando.</p>
<div class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_system_resources.png" border="0" />
<p>Figura 1</p>
</div>
<br />
<p><b>Estados de Procesos: </b>Muestra los procesos habilitados y deshabilitados. Aquí usted puede iniciar, parar o reiniciar los procesos.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_processes_status.png" border="0" />
<p>Figura 2</p>
</div>
<br />
<p><b>Discos Duros: </b>Muestra el espacio libre y usado de los discos duros instalados en el servidor.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_hard_drives.png" border="0" />
<p>Figura 3</p>
</div>
<br />
<p><b>Gráfico de Rendimiento: </b>Permite revisar el historial de uso de memoria y CPU, así como llamadas simultáneas a través del tiempo.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_performance_graphic.png" border="0" />
<p>Figura 4</p>
</div>
<br />
<p><b>Noticias: </b>Muestra las últimas noticias sobre Issabel desde la página web www.issabel.org</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_news.png" border="0">
<p>Figura 5</p>
</div>
<br />
<p><b>Actividad de Comunicación: </b>Muestra el número de extensiones, troncales y llamadas que se encuentran actualemente en el servidor Issabel.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_communication_activity.png" border="0" />
<p>Figura 6</p>
</div>
<br />
<p><b>Calendario: </b>Muestra el horario de actividades del usuario actual.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_calendar.png" border="0" />
<p>Figura 7</p>
</div>
<br />
<p><b>Llamadas: </b>Muestra el historial de llamadas con la hora y duración referente al usuario actual.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_calls.png" border="0" />
<p>Figura 8</p>
</div>
<br />
<p><b>Correos: </b>Aquí el usuario actual es notificado cuando recibe un correo electrónico.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_emails.png" border="0" />
<p>Figura 9</p>
</div>
<br />
<p><b>Faxes: </b>Muestra los faxes recibidos referente al usuario actual.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_faxes.png" border="0" />
<p>Figura 10</p>
</div>
<br />
<p><b>Mensajes de Voz: </b>Notifica cuando el usuario actual ha recibido mensajes de voz.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_voicemails.png" border="0" />
<p>Figura 11</p>
</div>
<br />
<p><b>Sistema: </b>Muestra el espacio asignado en disco para el usuario actual.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_system.png" border="0" />
<p>Figura 12</p>
</div>
<br />
<p><b>Hardware Telefónico: </b>Muestra una vista general de los dispositivos de telefonía instalados en el servidor Issabel.</p>
<div align="center" class="hlp_figures"><img src="../modules/<?php echo $_smarty_tpl->tpl_vars['node_id']->value;?>
/images/help/es_telephony_hardware.png" border="0" />
<p>Figura 13</p>
</div>
<br />
<br />
</body>
</html>
<?php }} ?>
