<?php

	session_start();

	if(isset($_SESSION["id"])){
		if ($_SESSION["id"] == 1) {

		} else {
			header("Location: ../index.php");	
		}
	} else {
		header("Location: ../index.php");	
	}
	
	// La carpeta donde se encuentran los controladores
	$carpetaControladores = "controladores/";

	require '../clases/funciones.class.php';

	include 'vistas/metas.php';
	include 'vistas/cabecera.php';
	include 'vistas/sidebar.php';
	
	if(!empty($_REQUEST['accion']))
	{	
	
		$accion = $_REQUEST['accion'];
		
		switch ($accion) {
		
			case 'insert':	
			include $carpetaControladores.'insert.controlador.php';
			break;

			case 'tablas':	
			include $carpetaControladores.'tablas.controlador.php';
			break;			
			
		}
	
	}
	
	else
	{
		include $carpetaControladores.'dashboard.controlador.php';
	}

	include 'vistas/pie.php' 
	
?>