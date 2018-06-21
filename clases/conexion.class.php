<?php

	// Define database
	define('dbhost', 'localhost');
	define('dbuser', 'root');
	define('dbpass', 'suerte.0');
	define('dbname', 'progress');

	// Connecting database
	try {
		$connect = new PDO("mysql:host=".dbhost."; dbname=".dbname, dbuser, dbpass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
		$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}

	catch(PDOException $e) {
		echo $e->getMessage();
	}

?>