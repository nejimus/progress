<?php

	function getFichaElemento($t,$c,$i,$a)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  $resultado = mysqli_query($conexion,"SELECT * FROM $t WHERE $c = $i $a ");
	 
	  $ficha = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);

	  if ($ficha != NULL) {
	  	return $ficha;
	  } else {
	  	header("Location: ../error");
	  }
	  
	}

	function getEstadoElemento($t,$c,$i)
	{		
	  $conexion = conectarBD();

	  $uid = $_SESSION['id'];
	 
	  $status = mysqli_query($conexion,"SELECT * FROM $t WHERE $c = $i AND cod_usu = $uid ");
	 
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
	 
	  $resultado = mysqli_query($conexion,"SELECT sinopsis FROM series WHERE idSerie = '$un' ");
	 
	  $sino = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $sino;		
	}

	function getManyElemento($t,$c,$i)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM $t WHERE puntuacion > 0 AND $c = $i ");
	 
	  $many = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $many;
	}

	function getSumaNotas($t,$c,$i)
	{		
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  $resultado = mysqli_query($conexion,"SELECT SUM(puntuacion) FROM $t WHERE puntuacion > 0 AND $c = $i ");
	 
	  $suma = mysqli_fetch_array($resultado);
	 
	  mysqli_close($conexion);
	 
	  return $suma;
	}

?>