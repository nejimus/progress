<?php

	require_once("conectar.class.php");

	class Usuarios
	{
	
		var $iduser;
		var $mail;
		var $pass;
		var $nick;
		var $role;
		
		public function __construct($iduser, $mail, $pass, $nick, $role) {
			
			$this->iduser = $iduser;
			$this->mail = $mail;
			$this->pass = $pass;
			$this->nick = $nick;
			$this->role = $role;
			
		}
	
	}

?>