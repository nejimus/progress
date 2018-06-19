<?php

	//Incluye el modelo que corresponde
	require 'modelos/dashboard.modelo.php';

	$id = $_REQUEST['id'];						// Obtenemos el ID	

	$perfil = getPerfilUsuario($id);
	$ultimo = getUltimoCompleto($id);

	if ($ultimo[0] != null) {
		$lasttitle = obtNameElement('titulo', 'juegos', 'idJuego', $ultimo[0]);	
	} else {
		$lasttitle = "No has completado ningun juego todavía.";
	}

	$siguiendo = getTitulosSiguiendo($id);
	$completos = getTitulosByEstado($id,'Completado');
	$proceso = getTitulosByEstado($id,'Jugando');
	$pendientes = getTitulosByEstado($id,'Pendiente');

	if ($siguiendo[0] != 0) {
		$por_com = round(($completos[0]/$siguiendo[0])*100);
		$por_pro = round(($proceso[0]/$siguiendo[0])*100);
		$por_pen = round(($pendientes[0]/$siguiendo[0])*100);		
	} else {
		$por_com = 0;
		$por_pro = 0;
		$por_pen = 0;
	}

	$eventos = getEventosUsuario($id);

	//Pasa a la vista toda la información que se desea representar
	require 'cabecera.controlador.php';
	require 'vistas/dashboard.php';

?>	