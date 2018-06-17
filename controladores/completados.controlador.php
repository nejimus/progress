<?php

	//Incluye el modelo que corresponde
	require 'modelos/completados.modelo.php';

	IF (isset($_REQUEST['sec'])) {
		$sec = $_REQUEST['sec'];
	}	

	SWITCH ($sec) {
		case 'anime':
			$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
			$qty = 15; // o $_GET['qty'] si quieres que sea parametrizable			
			$ultimos = getAnimesCompletos($page, $qty);				
			$rowcount = getTotalAnimesCompletos();
			$total_paginas = ceil($rowcount / $qty);		
			break;	
		case 'series':
			$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
			$qty = 15; // o $_GET['qty'] si quieres que sea parametrizable			
			$ultimos = getSeriesCompletas($page, $qty);				
			$rowcount = getTotalSeriesCompletas();
			$total_paginas = ceil($rowcount / $qty);		
			break;
		case 'juegos':
			$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
			$qty = 15; // o $_GET['qty'] si quieres que sea parametrizable			
			$ultimos = getJuegosCompletos($page, $qty);				
			$rowcount = getTotalCompletos();
			$total_paginas = ceil($rowcount / $qty);		
			break;							
	}

	IF (isset($_REQUEST['ver'])) {
		$ver = $_REQUEST['ver'];
	} ELSE {
		$ver = 'lista';
	}
	
	//Pasa a la vista toda la información que se desea representar
	require 'vistas/completados.php';

?>	