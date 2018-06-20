<?php

	function getManyElemento($t)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM $t ");
	 
	  $many = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $many;
	}	

?>