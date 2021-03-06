<?php 

	session_start();
	
	if(!empty($_REQUEST['accion'])) {
		$accion = $_REQUEST['accion'];
	}

	if(!empty($_REQUEST['sec'])) {
		$sec = $_REQUEST['sec'];
	}	
	
	require 'clases/conexion.class.php';
	require 'clases/funciones.class.php';
	
	// La carpeta donde se encuentran los controladores
	$carpetaControladores = "controladores/";


	// include 'vistas/cabecera.php';

	if(!empty($_REQUEST['accion']))
	{	
		
		switch ($accion) {

			case 'error':
			include $carpetaControladores.'error.controlador.php';
			break;
		
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
			
			case 'logout':
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