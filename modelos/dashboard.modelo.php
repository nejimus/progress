<?php

	class userinfo{

	    function __construct($db)
	    {
	        $this->db = $db;
	    }

	    function getPerfil($id)
	    {
	        $sql = 'SELECT idUser, nick, descrip, twitter FROM usuarios WHERE idUser = :id';
        	$stm = $this->db->prepare($sql);
        	$stm->execute(array(':id' => $id));
        
			  if ($stm == NULL) {
			  	header("Location: ../error");
			  } else {
			  	return $data = $stm->fetch(PDO::FETCH_ASSOC);
			  }
	    }

	    function getUltimoCompletado($id)
	    {
	        $sql = 'SELECT cod_jue FROM usuarios_juegos WHERE cod_usu = :id AND estado = "Completado" ORDER BY hora DESC';
        	$stm = $this->db->prepare($sql);
        	$stm->execute(array(':id' => $id));
        
			return $data = $stm->fetch(PDO::FETCH_ASSOC);
	    }

	    function getTitulosSiguiendo($id) {

	        $sql = 'SELECT COUNT(*) FROM usuarios_juegos WHERE cod_usu = :id';
        	$stm = $this->db->prepare($sql);
        	$stm->execute(array(':id' => $id));
        
			return $data = $stm->fetch(PDO::FETCH_BOTH);	    	

	    }

	    function getTitulosByEstado($id,$e) {

	        $sql = 'SELECT COUNT(*) FROM usuarios_juegos WHERE cod_usu = :id AND estado = :e';
        	$stm = $this->db->prepare($sql);
        	$stm->execute(array(':id' => $id,':e' => $e));
        
			return $data = $stm->fetch(PDO::FETCH_BOTH);	    	

	    }

	    function getEventosUsuario($id) {

	        $sql = 'SELECT * FROM usuarios_juegos WHERE cod_usu = :id ORDER BY hora DESC LIMIT 4';
        	$stm = $this->db->prepare($sql);
        	$stm->execute(array(':id' => $id));
        
			return $data = $stm->fetchAll();	    	
	    }

	}

?>