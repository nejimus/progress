<?php

	require 'clases/conexion.class.php';

	if(isset($_POST['login'])) {

		$errMsg = '';

		// Get data from FORM
		$email = $_POST['email'];
		$password = sha1($_POST['password']);

		if($email == '')
			$errMsg = 'Introduce el email';

		if($password == '')
			$errMsg = 'Introduce el password';

		if($errMsg == '') {

			try {

				$stmt = $connect->prepare('SELECT idUser, email, password, nick, descrip, twitter, role FROM usuarios WHERE email = :email');
				$stmt->execute(array(
					':email' => $email
					));
				$data = $stmt->fetch(PDO::FETCH_ASSOC);

				if($data == false){
					$errMsg = "El mail $email no existe.";
				}
				else {

					if($password == $data['password']) {
						$_SESSION['idUser'] = $data['idUser'];
						$_SESSION['email'] = $data['email'];
						$_SESSION['password'] = $data['password'];
						$_SESSION['nick'] = $data['nick'];
						$_SESSION['descrip'] = $data['descrip'];
						$_SESSION['twitter'] = $data['twitter'];
						$_SESSION['role'] = $data['role'];

						header("Location: dashboard/".$_SESSION['idUser']."");
						exit;
					}
					else
						$errMsg = 'Password incorrecto.';
				}
			}

			catch(PDOException $e) {
				$errMsg = $e->getMessage();
			}
		}
	}

	function loginGuest()
	{

		require 'clases/conexion.class.php';

		$email = 'guest@progress.com';
		$password = sha1('invitado');
		$errMsg = '';
	
		$stmt = $connect->prepare('SELECT idUser, email, password, nick, descrip, twitter, role FROM usuarios WHERE email = :email');
		$stmt->execute(array(
			':email' => $email
		));

		$data = $stmt->fetch(PDO::FETCH_ASSOC);

		if($password == $data['password']) {

			$_SESSION['idUser'] = $data['idUser'];
			$_SESSION['email'] = $data['email'];
			$_SESSION['password'] = $data['password'];
			$_SESSION['nick'] = $data['nick'];
			$_SESSION['descrip'] = $data['descrip'];
			$_SESSION['twitter'] = $data['twitter'];
			$_SESSION['role'] = $data['role'];

			header("Location: dashboard/".$_SESSION['idUser']."");
			exit;
		}

	}

	if (isset($_GET['guest'])) {
	    loginGuest();
	}	

?>