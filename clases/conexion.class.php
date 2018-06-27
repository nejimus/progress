<?php

	// Define database
	define('dbhost', 'db');
	define('dbuser', 'root');
	define('dbpass', 'root');
	define('dbname', 'progress');

	// Connecting database
	try {
		$connect = new PDO("mysql:host=".dbhost."; dbname=".dbname, dbuser, dbpass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
		$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}

	catch(PDOException $e) {
	    throw new PDOException($e->getMessage());
		echo $e->getMessage();
	}

?>