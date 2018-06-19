<?php

	//Incluye el modelo que corresponde
	require 'modelos/resumen.modelo.php';

	$sec = $_REQUEST['sec'];

	SWITCH ($sec) {
		case 'anime':						// RESUMEN ANIME
			$boton = "Añadir anime";
			$color = "#EB5757;";
			$st1 = "co";			
			$stat1 = "COMPLETADOS";
			$stat2 = "SIGUIENDO";
			$ultimos = getElementosPorEstado('usuarios_animes,animes','cod_ani','idAnime','Completado','fecha DESC');
			$viendos = getElementosPorEstado('usuarios_animes,animes','cod_ani','idAnime','Viendo','titulo');
			$pendientes = getElementosPorEstado('usuarios_animes,animes','cod_ani','idAnime','Pendiente','titulo');	
			$ruta = "anime";				
			break;

		case 'cómics':						// RESUMEN COMICS
			$boton = "Añadir cómic";
			$color = "#F2994A;";
			$st1 = "col";			
			$stat1 = "LEÍDOS";			
			$stat2 = "LEYENDO";
			$ultimos = getElementosPorEstado('usuarios_comics,comics','cod_com','idComic','Leido','fecha DESC');	
			$viendos = getElementosPorEstado('usuarios_comics,comics','cod_com','idComic','Por leer','prioridad');
			$pendientes = getElementosPorEstado('usuarios_comics,comics','cod_com','idComic','Por comprar','prioridad');
			$ruta = "comics";
			break;	

		case 'juegos':						// RESUMEN JUEGOS
			$boton = "Añadir juego";
			$color = "#2D9CDB;";
			$st1 = "co";			
			$stat1 = "COMPLETADOS";			
			$stat2 = "JUGANDO";
			$ultimos = getElementosPorEstado('usuarios_juegos,juegos','cod_jue','idJuego','Completado','fecha DESC');
			$viendos = getElementosPorEstado('usuarios_juegos,juegos','cod_jue','idJuego','Jugando','titulo');
			$pendientes = getElementosPorEstado('usuarios_juegos,juegos','cod_jue','idJuego','Pendiente','prioridad DESC');	
			$ruta = "juegos";			
			break;

		case 'series':						// RESUMEN SERIES
			$boton = "Añadir temporada";
			$color = "#27AE60;";
			$st1 = "co";
			$stat1 = "COMPLETADAS";				
			$stat2 = "SIGUIENDO";
			$ultimos = getElementosPorEstado('usuarios_series,temporadas, series','cod_ser','idTempo AND serie = idSerie','Completada','fecha DESC');
			$viendos = getElementosPorEstado('usuarios_series,temporadas, series','cod_ser','idTempo AND serie = idSerie','Viendo','nombre');
			$pendientes = getElementosPorEstado('usuarios_series,temporadas, series','cod_ser','idTempo AND serie = idSerie','Pendiente','nombre');
			break;
	}
	
	
	//Pasa a la vista toda la información que se desea representar
	require 'cabecera.controlador.php';
	require 'vistas/resumen.php';

?>