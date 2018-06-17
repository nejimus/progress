<?php

	function getJuegosCompletos($page = 1, $qti = 15)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	  
	  $qti = $qti * ($page - 1);
	  
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM usuarios_juegos, plataformas, juegos WHERE usuarios_juegos.cod_jue = juegos.idJuego AND usuarios_juegos.plataforma = plataformas.id AND estado = 'Completado' ORDER BY fecha DESC LIMIT 15 OFFSET $qti ");
	  
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

	function getTotalCompletos()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM usuarios_juegos, plataformas, juegos WHERE usuarios_juegos.cod_jue = juegos.idJuego AND usuarios_juegos.plataforma = plataformas.id AND estado = 'Completado' ");
	  $rowcount=mysqli_num_rows($resultado);

	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $rowcount;  
	  
	}	
	
	function getAnimesCompletos($page = 1, $qti = 15)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	  
	  $qti = $qti * ($page - 1);
	  
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM usuarios_animes, animes WHERE usuarios_animes.cod_ani = animes.idAnime AND estado = 'Completado' ORDER BY fecha DESC LIMIT 15 OFFSET $qti ");
	  
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

	function getTotalAnimesCompletos()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM usuarios_animes, animes WHERE usuarios_animes.cod_ani = animes.idAnime AND estado = 'Completado' ");
	  $rowcount=mysqli_num_rows($resultado);

	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $rowcount;  
	  
	}

	function getSeriesCompletas($page = 1, $qti = 15)
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	  
	  $qti = $qti * ($page - 1);
	  
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,"SELECT * FROM usuarios_series, temporadas, series WHERE usuarios_series.cod_ser = temporadas.idTempo AND temporadas.serie = series.id AND estado = 'Completada' ORDER BY fecha DESC LIMIT 15 OFFSET $qti ");
	 
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

	function getTotalSeriesCompletas()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = conectarBD();
	  mysqli_query($conexion,"SET NAMES 'utf8'");

	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion, "SELECT * FROM usuarios_series, temporadas, series WHERE usuarios_series.cod_ser = temporadas.idTempo AND temporadas.serie = series.id AND estado = 'Completada' ");
	  $rowcount=mysqli_num_rows($resultado);

	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $rowcount;  
	  
	}		

?>