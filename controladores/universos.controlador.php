<?php

	//Incluye el modelo que corresponde
	require 'modelos/universos.modelo.php';

	IF (isset($_REQUEST['sec'])) {
		$sec = $_REQUEST['sec'];
	}	

	IF (isset($_REQUEST['id'])) {
		$un = $_REQUEST['id'];
		$nuni = getNombreUniverso($un);
	} else {
		$unis = getUniversos();
	}

	//Pasa a la vista toda la información que se desea representar
	require 'vistas/universos.php';

?>	