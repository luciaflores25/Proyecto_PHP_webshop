<?php

	require_once "Database.php";

	// creamos la clase usuario
	class Usuario {

		private $idUsuario;
		private $usuario;
		private $nombre;
		private $apellidos;
		private $email;
		private $password;

		// el constructor está vacío porque por ahora solo voy a crear mi usuario
		private function __construct() 
		{
		}

		// getter
		public function __get($prop)
		{
			return $this->$prop;
		}

		// setter nombre
		public function setNombre($nom) 
		{ 
			$this->nombre = $nom;
		}

		// setter apellidos
		public function setApellidos($ape) 
		{ 
			$this->apellidos = $ape;
		}
	}








