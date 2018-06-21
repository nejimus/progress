<?php

	//Incluye el modelo que corresponde
	require 'modelos/dashboard.modelo.php';

		// Recuperamos id usuario de la URL
		$id = $_REQUEST['id'];	

		$userinfo   = new userinfo($connect);
		$perfil = $userinfo->getPerfil($id);
		$ultimo = $userinfo->getUltimoCompletado($id);

		$siguiendo = $userinfo->getTitulosSiguiendo($id);
		$completos = $userinfo->getTitulosByEstado($id,'Completado');
		$proceso = $userinfo->getTitulosByEstado($id,'Jugando');
		$pendientes = $userinfo->getTitulosByEstado($id,'Pendiente');	

		if ($ultimo['cod_jue'] != null) {
			$lasttitle = obtNameElement('titulo', 'juegos', 'idJuego', $ultimo['cod_jue']);	
		} else {
			$lasttitle = "No has completado ningun juego todavía.";
		}

		if ($siguiendo[0] != 0) {
			$por_com = round(($completos[0]/$siguiendo[0])*100);
			$por_pro = round(($proceso[0]/$siguiendo[0])*100);
			$por_pen = round(($pendientes[0]/$siguiendo[0])*100);		
		} else {
			$por_com = 0;
			$por_pro = 0;
			$por_pen = 0;
		}

		$eventos = $userinfo->getEventosUsuario($id);

	//Pasa a la vista toda la información que se desea representar
	require 'cabecera.controlador.php';
	require 'vistas/dashboard.php';

?>