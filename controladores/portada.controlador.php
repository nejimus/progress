<?php

	if(isset($_SESSION["idUser"])){
		header("Location: dashboard/".$_SESSION['idUser']."");
	}

	//Incluye el modelo que corresponde
	require 'modelos/portada.modelo.php';
 
	$numa = getTotalAnimes();
	$total_animes = $numa[0];

	$numc = getTotalComics();
	$total_comics = $numc[0];

	$numj = getTotalJuegos();
	$total_juegos = $numj[0];		

	$nums = getTotalSeries();
	$total_series = $nums[0];

	//Pasa a la vista toda la información que se desea representar
	require 'vistas/portada.php';

?>