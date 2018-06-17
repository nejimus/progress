<?php

	function getUniversos() {
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT * FROM universos ORDER BY nombre");
	 
	  $unis = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$unis[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $unis;
	}	

?>