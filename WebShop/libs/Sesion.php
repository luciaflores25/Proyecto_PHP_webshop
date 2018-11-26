<?php

	require_once "Usuario.php" ;

	// creamos la clase sesión
	class Sesion {

		private $expire_time = 600; // En 10 minutos se cierra la sesión

		private $usuario          = null; // información usuario
		private static $instancia = null;	// instancia

		private function __construc() { }
		private function __clone()    { }

		// Aquí se obtiene un objeto de tipo usuario
		public function getUser():Usuario 
		{ 
			return $this->usuario; 
		}

		// Aquí se crea una instancia del objeto Session, a continuación se inicia sesión
		public static function iniciarSesion() 
		{
			/* Esta línea es la primera que hay que ejecutar para tener disponibles
			   todas las variables de sesión*/
			session_start();

			if (isset($_SESSION["session"])):
				self::$instancia = unserialize($_SESSION["session"]);
			else:

				if (is_null(self::$instancia)):
					self::$instancia = new Sesion();
				endif ;
			endif ;

			//
			return self::$instancia;
		}

		// función para comprobar si la sesión ha expirado
		private function isExpired()
		{
			$tme_log = $_SESSION["time"];
			$tme_act = time();

			return (($tme_act - $tme_log) > $this->expire_time);
		}

		// función para comprobar si el usuario está logueado
		private function isLogged()
		{	
			return !empty($_SESSION);
		}

		// función para comprobar si la sesión está activa
		public function checkActiveSession() 
		{
			// Aquí comprobamos si el usuario está registrado
			if ($this->isLogged()):

				// Comprobamos si ha expirado la sesión
				if ($this->isExpired()):

					$this->close();
					header("location:http://landf.epizy.com/noLog.php");

					// la sesión no está activa
					return false;

				else:

					// la sesión está activa
					return true;

				endif;

			else:

				// la sesión no esttá activa
				return false;

			endif ;
		}

		// función para intentar hacer el login
		public function doLogin($ema, $pwd)
		{
			// comprobamos si el usuario está logueado
			if ($this->isLogged()):
				 return true ;
			else :

				// Obtenemos instancia de la base de datos
				$db = Database::getInstancia() ;

				// Comprobamos si el usuario existe en la base de datos haciendo la siguiente consulta

				$sql = "SELECT id_usuario, email, password, nombre, apellidos FROM usuario WHERE email='$ema' AND password=MD5('$pwd') ;" ;  

				// Lanzamos la consulta para comprobar si el usuario existe
				if ($db->consulta($sql)):
					
					// cogemos el resultado de la base de datos
					$this->usuario = $db->getObjeto("usuario") ;
					
					// Guardamos el tiempo exacto en el que se ha iniciado la sesión
					$_SESSION["time"]    = time() ;
					$_SESSION["session"] = serialize(self::$instancia) ;

					return true ;

				endif ;

			endif ;

			return false ;
		}

		// función para hacer redirecciones rápidamente
		public function redirect($url)
		{
			header("location: $url") ;

			exit() ;
		}

		// función para cerrar la sesión
		public function close()
		{
			
			// Destruimos las variables de sesión
			session_unset() ;

			// Cerramos la sesión
			session_destroy() ;
			
		}
	}




















