<?php 
	
	if(!empty($_REQUEST['accion'])) {
		$accion = $_REQUEST['accion'];
	}

	if(!empty($_REQUEST['sec'])) {
		$sec = $_REQUEST['sec'];
	}	
	
	require 'clases/funciones.class.php';
	
	// La carpeta donde se encuentran los controladores
	$carpetaControladores = "controladores/";

	include 'vistas/metas.php';
	// include 'vistas/cabecera.php';

	if(!empty($_REQUEST['accion']))
	{	
		
		switch ($accion) {
		
			case 'login':	
			include $carpetaControladores.'login.controlador.php';
			break;
			
			case 'registro':
			include $carpetaControladores.'registro.controlador.php';
			break;	

			case 'dashboard';
			include $carpetaControladores.'dashboard.controlador.php';
			break;							
			
			case 'resumen';
			include $carpetaControladores.'resumen.controlador.php';
			break;							

			case 'ficha';
			include $carpetaControladores.'ficha.controlador.php';
			break;
			
			case 'completados';
			include $carpetaControladores.'completados.controlador.php';
			break;	

			case 'universos';
			include $carpetaControladores.'universos.controlador.php';
			break;		
			
			case 'salir':
			include $carpetaControladores.'logout.controlador.php';
			break;
			
		}
	
	}
	
	else
	{
		include $carpetaControladores.'portada.controlador.php';
	}

	include 'vistas/pie.php' 
	
?>