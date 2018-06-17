<?php

	function getFichaElemento($t,$c,$i,$a)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT * FROM $t WHERE $c = $i $a ");
	 
	  $ficha = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $ficha;
	}

	function getEstadoElemento($t,$c,$i)
	{		
	  $conexion = conectarBD();
	 
	  $status = mysqli_query($conexion,"SELECT * FROM $t WHERE $c = $i ");
	 
	  $resul = mysqli_fetch_array($status);

	  mysqli_close($conexion);
	 
	  return $resul;
	}

	function getUniverso($un) 
	{
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT * FROM juegos WHERE universo = '$un' ");
	 
	  $unis = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $unis;		
	}

	function getSinopsis($un) 
	{
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT sinopsis FROM series WHERE id = '$un' ");
	 
	  $sino = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $sino;		
	}

	function getManyElemento($t,$c,$i)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM $t WHERE $c = $i ");
	 
	  $many = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $many;
	}

	function getSumaNotas($t,$c,$i)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT SUM(puntuacion) FROM $t WHERE $c = $i ");
	 
	  $suma = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $suma;
	}

?>