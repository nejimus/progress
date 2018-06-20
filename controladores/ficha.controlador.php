<?php

	//Incluye el modelo que corresponde
	require 'modelos/ficha.modelo.php';

		$id = $_REQUEST['id'];							// Obtenemos el ID
		$sec = $_REQUEST['sec'];						// Obtenemos la sección

	SWITCH ($sec) {
		case 'anime':

			$ficha = getFichaElemento('animes','idAnime',$id,'');

			// CABECERA
			$titulo = $ficha['titulo'];
			$subtitulo = "";
			$linea = "";
			$sinopsis_tag = "ficha-sinopsis";
			$descripcion = $ficha['sinopsis'];			// Sinopsis del anime
			$ruta = "anime/".$ficha['idAnime'];

			// BOTÓN SEGUIR/EDITAR
			$elemento = "el anime";

			// FICHA TÉCNICA
			$ficha_t1 = "Géneros:";						// 1er TAG de la ficha técnica
			$ficha_t2 = "Episodios:";					// 2o TAG de la ficha técnica
			$ficha_t3 = "Fuente:";						// 3er TAG de la ficha técnica
			$ficha_t4 = "Temporada:";					// 4o TAG de la ficha técnica

			$generos = obtenerGeneroElemento('animes_genero','anime',$id);			// Obtenemos los géneros del anime
	
			if ($ficha['episodios'] == 0) {
				$ficha_t2_value = "Desconocido";
			} else {
				$ficha_t2_value = $ficha['episodios'];		// Valor para el 2o TAG de la ficha técnica	
			}		
			$ficha_t3_value = $ficha['fuente'];			// Valor para el 3er TAG de la ficha técnica
			$ficha_t4_value = $ficha['temporada'];		// Valor para el 4o TAG de la ficha técnica

			// MI RESUMEN
			$estado = getEstadoElemento('usuarios_animes','cod_ani',$id);				// Obtenemos el estado del anime		

			IF (isset($estado['estado'])) {				// Si el usuario lo tiene en alguna de sus listas:
				$seguimiento = TRUE;
				$txt_boton = "Editar anime";			
				$col_boton = "#F2C94C;";				
				$empezado = "date";
				$completado = "view";
			} else {
				$seguimiento = FALSE;					// Si no lo tiene en sus listas:
				$txt_boton = "Seguir anime";
				$col_boton = "#EB5757;";

				$minota = " ------- ";

				$empe = "No sigues este anime";
				$est = "Por determinar";
				$favorito = 'Por determinar';				
			}		
			
			if ($estado['favorito'] == 'Si') {
				$favorito = 'Está en tus favoritos';
			}
			if ($estado['favorito'] == 'Por determinar') {
				$favorito = 'Por determinar';
			}	
			if ($estado['favorito'] == 'No') {
				$favorito = 'No está entre tus favoritos';
			}

			IF ($estado['estado'] == 'Completado') {
				$est = "Terminado el ".transformarData($estado['fecha']);

				if ($estado['puntuacion'] != 0.00) {
					$minota = $estado['puntuacion'];
				} else {
					$minota = " ------- ";
				}

				if ($estado['empezado'] !== '0000-00-00') {
					$empe = "Lo empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}	

				if ($estado['fecha'] !== '0000-00-00') {
					$est = "Completado el ".transformarData($estado['fecha']);
				} else {
					$est = "Completado (sin fecha)";
				}							
			}

			IF ($estado['estado'] == 'Viendo') {
				$est = 'Viendo actualmente';
				$minota = " ------- ";

				if ($estado['empezado'] !== '0000-00-00') {
					$empe = "Lo empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}
			}	

			IF ($estado['estado'] == 'Pendiente') {
				$est = 'Lo tienes pendiente';
				$empe = "No lo has empezado aún";
				$minota = " ------- ";
			}

			$sumanota = getSumaNotas('usuarios_animes','cod_ani',$id);
			$howmany = getManyElemento('usuarios_animes','cod_ani',$id);					
			
			break;
		case 'cómics':									// CÓMICS

			$ficha = getFichaElemento('comics','idComic',$id,'');

			// CABECERA

			$titulo = $ficha['titulo'];

			if ($ficha['subtitulo'] !== '') {
				$subtitulo = $ficha['subtitulo'];
				$sinopsis_tag = "ficha-sinopsis2";
			} else {
				$subtitulo = "";
				$sinopsis_tag = "ficha-sinopsis3";	
			}

			$descripcion = $ficha['detalle'];			// Sinopsis del cómic
			$linea = $ficha['linea'];
			$ruta = "comics/".$ficha['idComic'];

			// BOTÓN SEGUIR/EDITAR

			$elemento = "el cómic";

			// FICHA TÉCNICA		

			$ficha_t1 = "Autor/es:";
			$ficha_t2 = "Páginas:";
			$ficha_t3 = "Contiene:";	
			$ficha_t4 = "Fecha de lanzamiento:";

			$ficha_t1_value = $ficha['autor'];
			$ficha_t2_value = $ficha['paginas']." pp";	
			$ficha_t3_value = $ficha['contiene'];
			$ficha_t4_value = transformarData($ficha['lanzamiento']);			

			$estado = getEstadoElemento('usuarios_comics','cod_com',$id);

			IF (isset($estado['estado'])) {
				$seguimiento = TRUE;
				$txt_boton = "Editar cómic";
				$col_boton = "#F2C94C;";
				$completado = "leido";
			} else {
				$seguimiento = FALSE;
				$txt_boton = "Seguir cómic";
				$col_boton = "#F2994A;";

				$minota = " ------- ";

				$empe = "No sigues este cómic";
				$est = "Por determinar";
				$favorito = 'Por determinar';				
			}		

			IF ($estado['estado'] == 'Leido') {
				$est = "Lo leíste el ".transformarData($estado['fecha']);
				$empezado = "comprado";
				$leido = "leido";
				$minota = $estado['puntuacion'];

				if ($estado['comprado'] == 'Si') {
					$empe = "Está en tu colección";
					$comprado = "comprado";
				} else {
					$empe = "No está en tu colección";
				}			
			}
			IF ($estado['estado'] == 'Por leer') {
				$est = 'No lo has empezado';
				$empezado = "comprado";
				$completado = "porleer";
				$minota = " ------- ";

				if ($estado['comprado'] == 'Si') {
					$empe = "Está en tu colección";
					$comprado = "comprado";
				} else {
					$empe = "No está en tu colección";
				}	
			}	

			IF ($estado['estado'] == 'Por comprar') {
				$est = 'Pendiente de compra';
				$empe = "No lo has comprado todavía";
				$empezado = "porcomprar";
				$completado = "porleer";
				$minota = " ------- ";
			}	

			if ($estado['favorito'] == 'Si') {
				$favorito = 'Está en tus favoritos';
			}
			if ($estado['favorito'] == 'Por determinar') {
				$favorito = 'Por determinar';
			}	
			if ($estado['favorito'] == 'No') {
				$favorito = 'No es de tus favoritos';
			}	

			$sumanota = getSumaNotas('usuarios_comics','cod_com',$id);
			$howmany = getManyElemento('usuarios_comics','cod_com',$id);	

			break;	

		case 'juegos':

			// FICHA JUEGOS
			$ficha = getFichaElemento('juegos','idJuego',$id,'');		

			// CABECERA
			$titulo = $ficha['titulo'];
			$subtitulo = "";
			$linea = "";
			$sinopsis_tag = "ficha-sinopsis";
			$descripcion = $ficha['descripcion'];
			$ruta = "juegos/".$id;

			// BOTÓN SEGUIR/EDITAR
			$elemento = "el juego";			

			// FICHA TÉCNICA		
			$ficha_t1 = "Géneros:";														// 1er TAG de la ficha técnica
			$ficha_t2 = "Desarrollador:";												// 2o TAG de la ficha técnica
			$ficha_t3 = "Disponible en:";												// 3er TAG de la ficha técnica
			$ficha_t4 = "Fecha de lanzamiento:";										// 4o TAG de la ficha técnica

			$generos = obtenerGeneroElemento('juegos_generos','juego',$id);				// Obtenemos los géneros del juego
			$plataformas = obtenerPlataformas($id);										// Obtenemos las plataformas del juego
			$de = $ficha['desarrollador'];												// Obtenemos el ID del desarrollador
			$desa = getDesarrollador($de);												// A través del ID del desarrollador obtenemos su nombre

			$ficha_t2_value = getNombreDesarrolladora($ficha['desarrollador']);
			$ficha_t4_value = transformarData($ficha['lanzamiento']);		

			// MI RESUMEN

			$estado = getEstadoElemento('usuarios_juegos','cod_jue',$id);				// Obtenemos el estado del juego
			$plataf = obtNamePlatf($estado['plataforma']);

			IF (isset($estado['estado'])) {
				$seguimiento = TRUE;
				$txt_boton = "Editar juego";
				$col_boton = "#F2C94C;";
				$empezado = "date";
				$completado = "trophy";
			} else {
				$seguimiento = FALSE;
				$txt_boton = "Seguir juego";
				$col_boton = "#2D9CDB;";

				$minota = " ------- ";

				$empe = "No sigues este juego";
				$est = "Por determinar";
				$favorito = 'Por determinar';				
			}

			if ($estado['favorito'] == 'Si') {
				$favorito = 'Está en tus favoritos';
			}
			if ($estado['favorito'] == 'Por determinar') {
				$fav = 'disabled';
				$favorito = 'Por determinar';
			}	
			if ($estado['favorito'] == 'No') {
				$fav = 'disabled';
				$favorito = 'No es de tus favoritos';
			}
			IF ($estado['estado'] == 'Completado') {

				$minota = $estado['puntuacion'];

				if ($estado['empezado'] !== '0000-00-00') {
					$empe = "Lo empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}	
				if ($estado['fecha'] !== '0000-00-00') {
					$est = "Completado el ".transformarData($estado['fecha']);
				} else {
					$est = "Completado (sin fecha)";
				}							
			}
			IF ($estado['estado'] == 'Jugando') {

				$est = 'Jugando actualmente';

				$minota = " ------- ";

				if ($estado['empezado'] !== '0000-00-00') {
					$empe = "Lo empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}
			}	

			IF ($estado['estado'] == 'Pendiente') {
				$est = 'Lo tienes pendiente';
				$empe = "No lo has empezado aún";
				$minota = " ------- ";
			}

			// UNIVERSO

			$un = $ficha['universo'];
			$unis = getUniverso($un);

			$sumanota = getSumaNotas('usuarios_juegos','cod_jue',$id);
			$howmany = getManyElemento('usuarios_juegos','cod_jue',$id);							

			break;	

		case 'series':

			// CABECERA

			$titulo = $ficha['titulo'];
			$subtitulo = "";
			$linea = "";

			$sinopsis_tag = "ficha-sinopsis";
			$descripcion = $ficha['sinopsis'];			// Sinopsis de la temporada
			$ruta = "series/".$ficha['idSerie'];

			// BOTÓN SEGUIR/EDITAR

			$elemento = "alguna temporada de esta serie";	

			// FICHA TÉCNICA

			$ficha_t1 = "Géneros:";						// 1er TAG de la ficha técnica
			$ficha_t2 = "Runtime:";						// 2o TAG de la ficha técnica
			$ficha_t3 = "Network:";						// 3er TAG de la ficha técnica
			$ficha_t4 = "Temporadas:";					// 4o TAG de la ficha técnica

			$ficha_t1_value = $ficha['autor'];
			$ficha_t2_value = $ficha['runtime']." min.";	
			$ficha_t3_value = $ficha['network'];
			$ficha_t4_value = "";

			// MI RESUMEN

			IF (isset($estado['estado'])) {
				$seguimiento = TRUE;
				$txt_boton = "Editar serie";
				$col_boton = "#F2C94C;";
				$empezado = "date";
				$completado = "view";
			} else {
				$seguimiento = FALSE;
				$txt_boton = "Seguir serie";
				$col_boton = "#27AE60;";

				$minota = " ------- ";

				$empe = "No sigues esta serie";
				$est = "Por determinar";
				$favorito = 'Por determinar';				
			}										

		break;

		case 'temporadas':								// TEMPORADAS

			$a = "AND temporada = ".$_REQUEST['t'];

			$ficha = getFichaElemento('temporadas','serie',$id,$a);

			$sec = "series";
			$ruta = "series/".$ficha['serie']."/T".$ficha['temporada'];								

			// CABECERA

			$titulo = obtNameElement('titulo', 'series', 'idSerie', $ficha['serie']);
			$subtitulo = "Temporada ".$ficha['temporada'];
			$linea = "";

			$sinopsis_tag = "ficha-sinopsis2";
			$descripcion = getSinopsis($ficha['serie'])[0];			// Sinopsis de la temporada

			// BOTÓN SEGUIR/EDITAR

			$elemento = "la temporada";

			// FICHA TÉCNICA

			$ficha_t1 = "Géneros:";										// 1er TAG de la ficha técnica
			$ficha_t2 = "Episodios:";									// 2o TAG de la ficha técnica
			$ficha_t3 = "Serie:";										// 3er TAG de la ficha técnica
			$ficha_t4 = "Fecha de lanzamiento:";						// 4o TAG de la ficha técnica
			
			$ficha_t1_value = "En construcción";
			$ficha_t2_value = $ficha['capitulos'];						// Valor para el 2o TAG de la ficha técnica
			$ficha_t3_value = "<a href='series/".$ficha['serie']."'>".obtNameElement('titulo', 'series', 'idSerie', $ficha['serie'])."</a>";			// Valor para el 3er TAG de la ficha técnica
			$ficha_t4_value = $ficha['lanzamiento'];					// Valor para el 4o TAG de la ficha técnica			

			// MI RESUMEN

			$estado = getEstadoElemento('usuarios_series','cod_ser',$ficha['idTempo']);				// Obtenemos el estado del anime		

			IF (isset($estado['estado'])) {				// Si el usuario lo tiene en alguna de sus listas:
				$seguimiento = TRUE;
				$txt_boton = "Editar temporada";			
				$col_boton = "#F2C94C;";				
				$empezado = "date";
				$completado = "view";
			} else {
				$seguimiento = FALSE;					// Si no lo tiene en sus listas:
				$txt_boton = "Seguir temporada";
				$col_boton = "#EB5757;";

				$minota = " ------- ";

				$empe = "No sigues esta temporada";
				$est = "Por determinar";
				$favorito = 'Por determinar';				
			}

			if ($estado['favorito'] == 'Si') {
				$favorito = 'Está en tus favoritos';
			}
			if ($estado['favorito'] == 'Por determinar') {
				$favorito = 'Por determinar';
			}	
			if ($estado['favorito'] == 'No') {
				$favorito = 'No está entre tus favoritos';
			}

			IF ($estado['estado'] == 'Completada') {
				$est = "Terminado el ".transformarData($estado['fecha']);

				if ($estado['puntuacion'] == '0.00') {
					$minota = " ------- ";
				} else {
					$minota = $estado['puntuacion'];	
				}
				
				if ($estado['empezada'] !== '0000-00-00') {
					$empe = "La empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}				
			}
			
			IF ($estado['estado'] == 'Viendo') {
				$est = 'Viendo actualmente';
				$minota = " ------- ";

				if ($estado['empezada'] !== '0000-00-00') {
					$empe = "La empezaste el ".transformarData($estado['empezado']);
				} else {
					$empe = "No lo has determinado";
				}
			}	

			IF ($estado['estado'] == 'Pendiente') {
				$est = 'La tienes pendiente';
				$empe = "No la has empezado aún";
				$minota = " ------- ";
			}

			$sumanota = getSumaNotas('usuarios_series','cod_ser',$ficha['idTempo']);
			$howmany = getManyElemento('usuarios_series','cod_ser',$ficha['idTempo']);								

		break;
	
	}

	ini_set("precision", 3);

	if ($howmany[0] >= 1) {
		$notamedia = bcdiv($sumanota[0],$howmany[0],2);
	} 
	if ($sumanota[0] == 0) {
		$notamedia = " ------- ";
	}
	if ($howmany[0] < 1) {
		$notamedia = " ------- ";
	}
	
	IF (isset($estado['puntuacion'])) {
		$notam = $estado['puntuacion'];
	} else {
		$notam = " ------- ";
	}
	
	//Pasa a la vista toda la información que se desea representar
	require 'cabecera.controlador.php';
	require 'vistas/ficha.php';

?>