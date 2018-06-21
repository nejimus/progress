<?php

	require 'clases/conexion.class.php';

	session_destroy();
	
	header('Location: index.php');
?>