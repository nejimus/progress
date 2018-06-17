<?php

	function getElementosPorEstado($t1,$c1,$c2,$st,$or)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT * FROM $t1 WHERE $c1 = $c2 AND estado = '$st' ORDER BY $or LIMIT 5");
	 
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

?>