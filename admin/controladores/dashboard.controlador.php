<?php

	//Incluye el modelo que corresponde
	require 'modelos/dashboard.modelo.php';

	$animes = getManyElemento('animes');
	$comics = getManyElemento('comics');
	$juegos = getManyElemento('juegos');
	$series = getManyElemento('series');

	$total = $animes[0]+$comics[0]+$juegos[0]+$series[0];

	$por_a = round(($animes[0]/$total)*100);
	$por_c = round(($comics[0]/$total)*100);
	$por_j = round(($juegos[0]/$total)*100);
	$por_s = round(($series[0]/$total)*100);

	//Pasa a la vista toda la información que se desea representar
	require 'vistas/dashboard.php';

?>