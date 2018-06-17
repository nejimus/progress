<?php

	//Incluye el modelo que corresponde
	require 'modelos/insert.modelo.php';

	IF (isset($_REQUEST['sec'])) {
		$sec = $_REQUEST['sec'];
	}

		if ($sec == 'Animes') {
			$generos = getGenerosAnime();
		}
		if ($sec == 'Juegos') {
			$generos = getGeneros();
		}	

	$desarrolladoras = getDesarrolladoras();
	$plataformas = getPlataformas();
	$plataformasp = getPlataformasp();

	if(isset($_POST['insertar']))
	{
		if ($sec == 'Animes') {
			insertarAnime();
		}
		if ($sec == 'Juegos') {
			insertarJuego();
		}
	} 	
	
	//Pasa a la vista toda la información que se desea representar
	require 'vistas/insertar.php';

?>