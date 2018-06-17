<?php

	function getDatos($tabla, $page = 1, $qti = 15)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	  
	  $qti = $qti * ($page - 1);
	  
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM $tabla ORDER BY 1 LIMIT 15 OFFSET $qti ");
	  
	  // Crear el array de elementos para la capa de la vista
	  $ultimos = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$ultimos[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $ultimos;  
	  
	}

	function getTotalDatos($tabla)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM $tabla ");
	  $rowcount=mysqli_num_rows($resultado);

	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $rowcount;  
	  
	}	

?>