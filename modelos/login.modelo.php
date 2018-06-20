<?php

	require('clases/conexion.php');
	
	if(isset($_SESSION["id"])){
		header("Location: index.php?accion=dashboard&id=1");
	}
	
	if(!empty($_POST))
	{
		$email = mysqli_real_escape_string($mysqli,$_POST['email']);
		$password = mysqli_real_escape_string($mysqli,$_POST['password']);
		$error = '';
		
		$sha1_pass = sha1($password);
		
		$sql = "SELECT * FROM usuarios WHERE email = '$email' AND password = '$sha1_pass' ";
		$result=$mysqli->query($sql);
		$rows = $result->num_rows;
		
		if($rows > 0) {
			$row = $result->fetch_assoc();
			$_SESSION['id'] = $row['idUser'];
			$_SESSION['nick'] = $row['nick'];
			$_SESSION['role'] = $row['role'];
			
			header("Location: dashboard/".$_SESSION['id']."");
			} else {
			$error = "El nombre o contraseña son incorrectos";
		}
	}

	function loginGuest()
	{

		require("clases/conexion.php");

		$email = 'guest@progress.com';
		$password = 'invitado';
		$error = '';
		
		$sha1_pass = sha1($password);
		
		$sql = "SELECT idUser, nick FROM usuarios WHERE email = '$email' AND password = '$sha1_pass' ";
		$result=$mysqli->query($sql);
		$rows = $result->num_rows;
		
		if($rows > 0) {
			$row = $result->fetch_assoc();
			$_SESSION['id'] = $row['idUser'];
			$_SESSION['nick'] = $row['nick'];
			$_SESSION['role'] = $row['role'];
			
			header("Location: dashboard/".$_SESSION['id']."");
			}
		}

	if (isset($_GET['guest'])) {
    	loginGuest();
  	}

?>