<?php

	require_once "Database.php" ;

	class Usuario {

		private $idUsuario ;
		private $usuario ;
		private $nombre ;
		private $apellidos ;
		private $email ;
		private $password;

		//
		// Dejamos el constructor vacío y privado ya que, en un principio, solo crearemos
		// un usuario (el nuestro) y esa responsabilidad recae sobre la base de datos.
		private function __construct() 
		{
		}

		//
		public function __get($prop)
		{
			return $this->$prop ;
		}

		// 
		public function setNombre($nom) 
		{ 
			$this->nombre = $nom ;
		}

		// 
		public function setApellidos($ape) 
		{ 
			$this->apellidos = $ape ;
		}

		//
		// Un usuario solo podrá actualizar sus datos.
		// No le permitiremos borrarse a sí mismo, o insertar nuevos usuarios.
		public function update($usr, $pwd, $nom, $ape, $email)
		{
			// Añade aquí el código necesario !!!!!!
			$this->usuario = $usr;
			$this->password = $pwd;
			$this->nombre = $nom;
			$this->apellidos = $ape;
			$this->email = $email;

			// A partir de aquí, hay que construir la sentencia sql para modificar el usuario en la BBDD
		}

		//
		public function __toString()
		{
			return "Eres: $this->nombre $this->apellidos<br/>" ;
		}


	}








