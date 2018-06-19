<?php

	if (isset($sec)) {

		switch ($sec) {

			case 'anime': 
				$an = 'a';
				$tabla = 'animes';
				$campo = 'idAnime';
			break;
			case 'cómics': 
				$an = 'c';
				$tabla = 'comics';
				$campo = 'idComic';
			break;
			case 'juegos': 
				$an = 'j';
				$tabla = 'juegos';
				$campo = 'idJuego';
			break;
			case 'series': 
			case 'temporadas':
				$an = 's';
				$tabla = 'series';
				$campo = 'idSerie';
			break;																		

		} 

	} else {	

		$an = '';  

	}	

	//Pasa a la vista toda la información que se desea representar
	require 'vistas/cabecera.php';

?>