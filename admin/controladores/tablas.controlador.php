<?php

	//Incluye el modelo que corresponde
	require 'modelos/tablas.modelo.php';

	$tabla = $_GET['tabla'];

	$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
	$qty = 15; // o $_GET['qty'] si quieres que sea parametrizable
	$datos = getDatos($tabla, $page, $qty);
	$rowcount = getTotalDatos($tabla);
	$total_paginas = ceil($rowcount / $qty);		


	//Pasa a la vista toda la información que se desea representar
	require 'vistas/tablas.php';

?>