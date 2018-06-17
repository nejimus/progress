<?php

		function conectarBD() {
			$conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
			return $conexion;
		}

		function transformarData($data) {
		
			$fechamysql= $data;
			$fechareal=date("d-m-Y",strtotime($fechamysql));

			if ($fechareal!='00-00-0000') {

				$fecha3=$fechareal;
				$fecha4=date("d-m-Y",strtotime($fecha3));
				$dia1 = substr($fecha4, 0, 2);
				$mes1   = substr($fecha4, 3, 2);
				$ano1 = substr($fecha4, -4);
				if ($mes1=='01') { $mesa1 = 'Ene,'; }
				if ($mes1=='02') { $mesa1 = 'Feb,'; }
				if ($mes1=='03') { $mesa1 = 'Mar,'; }
				if ($mes1=='04') { $mesa1 = 'Abr,'; }
				if ($mes1=='05') { $mesa1 = 'May,'; }
				if ($mes1=='06') { $mesa1 = 'Jun,'; }
				if ($mes1=='07') { $mesa1 = 'Jul,'; }
				if ($mes1=='08') { $mesa1 = 'Ago,'; }
				if ($mes1=='09') { $mesa1 = 'Set,'; }
				if ($mes1=='10') { $mesa1 = 'Oct,'; }
				if ($mes1=='11') { $mesa1 = 'Nov,'; }
				if ($mes1=='12') { $mesa1 = 'Dic,'; }
				$fechar = $dia1 . ' ' . $mesa1 . ' ' . $ano1;
			}
			
			return $fechar;
		
		}

	function recortar_texto($texto, $limite=100){	
		$texto = trim($texto);
		$texto = strip_tags($texto);
		$tamano = strlen($texto);
		$acortado = '';
		if($tamano <= $limite){
			return $texto;
		}else{
			$texto = substr($texto, 0, $limite);
			$palabras = explode(' ', $texto);
			$acortado = implode(' ', $palabras);
			$acortado .= '...';
		}	
		return $acortado;
	}

		function transformarDataC($data) {
		
			$fechamysql= $data;
			$fechareal=date("d-m-Y",strtotime($fechamysql));

			if ($fechareal!='00-00-0000') {

				$fecha3=$fechareal;
				$fecha4=date("d-m-Y",strtotime($fecha3));
				$dia1 = substr($fecha4, 0, 2);
				$mes1   = substr($fecha4, 3, 2);
				$ano1 = substr($fecha4, -4);
				$fechar = $dia1 . '/' . $mes1 . '/' . $ano1;
			}
			
			return $fechar;
		
		}

		function colorPlataforma($plataforma) {
		
			SWITCH ($plataforma) {
				case 'PC':	
					$cpl = '#777';
					break;
				case 'PS2':
				case 'Play Station 2':
					$cpl ='#2C528B';
					break;
				case 'PS3':
				case 'Play Station 3':	
				case 'PS4':
				case 'Play Station 4':
					$cpl = '#155d9c';
					break;				
				case '3DS':
				case 'Nintendo 3DS':
					$cpl ='#19758F';
				case 'WII U':
					$cpl = '#266A95';
					break;
				case 'SWITCH':
				case 'Nintendo Switch':
					$cpl = '#e62e09';
					break;
				case 'X360':
				case 'Xbox 360':
				case 'XONE';
				case 'Xbox One':
					$cpl = '#437308';
					break;
				default:
					$cpl = '#000';
			}	
		
			return $cpl;
		
		}	

	function obtenerGeneroElemento($t,$c,$i)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT genero FROM $t WHERE $c = $i LIMIT 5");
	 
	  $plataformas = array();
	  
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$plataformas[] = $fila;	
	  }
	 
	  mysqli_close($conexion);
	 
	  return $plataformas;
	}

	function obtenerPlataformas($i)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT plataforma FROM juegos_plataformas WHERE Juego = $i ");
	 
	  // Crear el array de elementos para la capa de la vista
	  $plataformas = array();
	  
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$plataformas[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $plataformas;
	}

	function getDesarrollador($de) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT nombre FROM desarrolladoras WHERE idDes = '$de' ");
	 
	  $desa = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $desa;		
	}		

	function getNombreDesarrolladora($de) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT nombre FROM desarrolladoras WHERE idDes = '$de' ");
	 
	  $ndes = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $ndes[0];
	}

	function getNombreGenero($ge) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $se = $_REQUEST['sec'];

	  switch ($se) {

	  	case 'anime':	
		$tabla = "generos_animes";
		break;

	  	case 'juegos':	
		$tabla = "generos_juegos";
		break;					

	  }	  
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT nombre FROM $tabla WHERE idGenero = '$ge' ");
	 
	  $ngen = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $ngen[0];
	}	

	function getNombreUniverso($un) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT nombre FROM universos WHERE universos.id = '$un' ");
	 
	  $nuni = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $nuni[0];
	}	

	function obtNamePlatf($id) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT nombre FROM plataformas WHERE id = '$id' ");
	 
	  $plata = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $plata[0];
	}	

	function obtNameElement($id) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $se = $_REQUEST['sec'];

	  switch ($se) {

	  	case 'anime':	
		$tabla = "animes";
		$code = "idAnime";
		$campo = "titulo";
		break;

	  	case 'cómics':	
		$tabla = "comics";
		$code = "idComic";
		$campo = "titulo";
		break;	

	  	case 'juegos':	
		$tabla = "juegos";
		$code = "idJuego";
		$campo = "titulo";
		break;		

	  	case 'series':	
		$tabla = "series";
		$code = "id";
		$campo = "titulo";
		break;	

	  	case 'temporadas':	
		$tabla = "series";
		$code = "id";
		$campo = "titulo";
		break;							

	  }
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT $campo FROM $tabla WHERE $code = $id ");
	 
	  $plata = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $plata[0];
	}		

	function obtSiglasPlatf($id) {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT siglas FROM plataformas WHERE id = '$id' ");
	 
	  $plata = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $plata[0];
	}			

		
?>