<?php

	function getPerfilUsuario($id) {

	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT * FROM usuarios WHERE idUser = $id ");
	 
	  $perfil = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $perfil;

	}

	function getUltimoCompleto($id) {

	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT cod_jue FROM usuarios_juegos WHERE cod_usu = $id AND estado = 'Completado' ORDER BY hora DESC ");
	 
	  $ultimo = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $ultimo;

	}

	function getTitulosSiguiendo($id) {

	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM usuarios_juegos WHERE cod_usu = $id ");
	 
	  $siguiendo = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $siguiendo;

	}

	function getTitulosByEstado($id,$e) {

	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM usuarios_juegos WHERE cod_usu = $id AND estado = '$e' ");
	 
	  $porestado = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $porestado;

	}

	function getEventosUsuario($id)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT * FROM usuarios_juegos WHERE cod_usu = $id ORDER BY hora DESC LIMIT 4");
	 
	  // Crear el array de elementos para la capa de la vista
	  $eventos = array();
	  
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$eventos[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $eventos;
	}


?>