<?php

	function getTotalAnimes()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('db', 'root', 'root','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM animes ");
	 
	  $numani = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $numani;
	}

	function getTotalComics()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('db', 'root', 'root','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM comics ");
	 
	  $numcom = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $numcom;
	}

	function getTotalJuegos()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('db', 'root', 'root','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM juegos ");
	 
	  $numjue = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $numjue;
	}

	function getTotalSeries()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('db', 'root', 'root','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT COUNT(*) FROM series ");
	 
	  $numser = mysqli_fetch_array($resultado);
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $numser;
	}			
	
?>