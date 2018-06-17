<?php

	function getGeneros()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,'SELECT * FROM generos_juegos ORDER BY nombre');
	 
	  // Crear el array de elementos para la capa de la vista
	  $generos = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$generos[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $generos;
	}

	function getGenerosAnime()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,'SELECT * FROM generos_animes ORDER BY nombre');
	 
	  // Crear el array de elementos para la capa de la vista
	  $generos = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$generos[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $generos;
	}	

	function getDesarrolladoras()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,'SELECT * FROM desarrolladoras ORDER BY nombre');
	 
	  // Crear el array de elementos para la capa de la vista
	  $desarrolladoras = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$desarrolladoras[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $desarrolladoras;
	}

	function getPlataformas()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,'SELECT * FROM plataformas WHERE tipo = "sobremesa" ORDER BY nombre');
	 
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

	function getPlataformasP()
	{		
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");
	 
	  // Ejecutar la consulta SQL
	  $resultado = mysqli_query($conexion,'SELECT * FROM plataformas WHERE tipo = "portatil" ORDER BY nombre');
	 
	  // Crear el array de elementos para la capa de la vista
	  $plataformasp = array();
	  while ($fila = mysqli_fetch_array($resultado))
	  {
		$plataformasp[] = $fila;	
	  }
	 
	  // Cerrar la conexión
	  mysqli_close($conexion);
	 
	  return $plataformasp;
	}	

	function insertarAnime()
	{
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");

		$tit= $_REQUEST['titulo'];
		$til= $_REQUEST['title'];
		$sin= $_REQUEST['sinopsis'];
		$epi= $_REQUEST['episodios'];
		$fue= $_REQUEST['fuente'];
		$tem= $_REQUEST['temporada'];

	  // Consulta para insertar el juego en la tabla
	  $insertar = " INSERT INTO animes VALUES ('', '{$tit}', '{$til}', '{$sin}', '{$epi}', '{$fue}', '{$tem}', 0, 0 )";	

	  $res = mysqli_query($conexion, $insertar) or die ("Error: ". mysqli_error($conexion). " with query ". $insertar);
	  
	  printf (
			
	  "<div class='row'>
	   <div class='col-lg-12'>
	   	<div class='alert bg-teal' role='alert'>
	   		<span class='espacio'>&nbsp;</span>
	  		<em class='fa fa-lg fa-check-square-o'>&nbsp;</em> Insertado el anime con el id %d. <a href='index.php?accion=insert'' class='pull-right'><em class='fa fa-lg fa-close'></em></a>
	  	</div>
	   </div></div>", mysqli_insert_id($conexion));		// Si la inserción es CORRECTA nos muestra un banner conforme ha sido correcto

	  // Consulta para obtener el último ID añadido a la tabla
	  $getlastid = mysqli_query($conexion,'SELECT LAST_INSERT_ID() FROM animes');
	  $lastid = mysqli_fetch_array($getlastid);
	  $id = $lastid[0];

	  mkdir("../img/anime/$id", 0700);
	  copy("../img/cover.jpg","../img/anime/$id/cover.jpg");

	  foreach($_POST['genero'] as $gen)
	  {
	  	$gener = " INSERT INTO animes_genero VALUES ('{$id}', '{$gen}' )";	
	  	$gene = mysqli_query($conexion, $gener) or die ("Error: ". mysqli_error($conexion). " with query ". $gener);
	  } 	  

	  // Cerrar la conexión
	  mysqli_close($conexion);
	  
	}	

	function insertarJuego()
	{
	  // Conectar con la base de datos y seleccionarla
	  $conexion = mysqli_connect('localhost', 'root', 'suerte.0','progress');
	  mysqli_query($conexion,"SET NAMES 'utf8'");

		$tit= $_REQUEST['titulo'];
		$til= $_REQUEST['title'];
		$des= $_REQUEST['descripcion'];
		$dea= $_REQUEST['desarrolladora'];
		$lan= $_REQUEST['lanzamiento'];
		$uni= NULL;

	  // Consulta para insertar el juego en la tabla
	  $insertar = " INSERT INTO juegos VALUES ('', '{$tit}', '{$til}', '{$des}', '{$dea}', '{$lan}', NULL )";	

	  $res = mysqli_query($conexion, $insertar) or die ("Error: ". mysqli_error($conexion). " with query ". $insertar);
	  
	  printf (
			
	  "<div class='row'>
	   <div class='col-lg-12'>
	   	<div class='alert bg-teal' role='alert'>
	   		<span class='espacio'>&nbsp;</span>
	  		<em class='fa fa-lg fa-check-square-o'>&nbsp;</em> Insertado el registro con el id %d. <a href='index.php?accion=insert'' class='pull-right'><em class='fa fa-lg fa-close'></em></a>
	  	</div>
	   </div></div>", mysqli_insert_id($conexion));		// Si la inserción es CORRECTA nos muestra un banner conforme ha sido correcto

	  // Consulta para obtener el último ID añadido a la tabla
	  $getlastid = mysqli_query($conexion,'SELECT LAST_INSERT_ID() FROM juegos');
	  $lastid = mysqli_fetch_array($getlastid);
	  $id = $lastid[0];

	  mkdir("../img/juegos/$id", 0700);
	  copy("../img/cover.jpg","../img/juegos/$id/cover.jpg");

	  // Por cada Plataforma marcada insertamos en la tabla juegosplataforma un registro con el ID obtenido anteriormente y la plataforma
	  foreach($_POST['enfer'] as $enf)
	  {
	  	$inserto = " INSERT INTO juegos_plataformas VALUES ('{$id}', '{$enf}' )";	
	  	$res = mysqli_query($conexion, $inserto) or die ("Error: ". mysqli_error($conexion). " with query ". $inserto);
	  } 

	  foreach($_POST['genero'] as $gen)
	  {
	  	$gener = " INSERT INTO juegos_generos VALUES ('{$id}', '{$gen}' )";	
	  	$gene = mysqli_query($conexion, $gener) or die ("Error: ". mysqli_error($conexion). " with query ". $gener);
	  } 	  

	  // Cerrar la conexión
	  mysqli_close($conexion);
	  
	}	

?>