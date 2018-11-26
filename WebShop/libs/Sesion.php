<?php

	require_once "Usuario.php" ;

	class Sesion {

		private $expire_time = 600; // En 10 minutos se cierra la sesión

		private $usuario          = null ; // información usuario
		private static $instancia = null ;	// instancia

		private function __construc() { }
		private function __clone()    { }

		// Aquí se obtiene un objeto de tipo usuario
		public function getUser():Usuario 
		{ 
			return $this->usuario ; 
		}

		// Aquí se crea una instancia del objeto Session, a continuación se inicia sesión
		public static function iniciarSesion() 
		{
			/* Esta línea es la primera que hay que ejecutar para tener disponibles
			   todas las variables de sesión*/
			session_start() ;

			if (isset($_SESSION["session"])):
				self::$instancia = unserialize($_SESSION["session"]) ;
			else:

				if (is_null(self::$instancia)):
					self::$instancia = new Sesion() ;
				endif ;
			endif ;

			//
			return self::$instancia ;
		}

		//
		private function isExpired()
		{
			$tme_log = $_SESSION["time"] ;
			$tme_act = time() ;

			return (($tme_act - $tme_log) > $this->expire_time) ;
		}

		//
		private function isLogged()
		{
			return !empty($_SESSION) ;
		}

		//
		public function checkActiveSession() 
		{
			// Comprobamos si el usuario está registrado
			if ($this->isLogged()):

				// Comprobamos si ha expirado la sesión
				if ($this->isExpired()):

					$this->close() ;
					header("location:http://localhost:0090/DWES/WebShop/noLog.php");

					return false ; // no hay sesión activa

				else:

					return true ;	// hay sesión activa

				endif ;

			else:

				return false ; 	   // no hay sesión activa

			endif ;
		}

		//
		public function doLogin($ema, $pwd)
		{
			// Comprobamos si el usuario está logueado
			if ($this->isLogged()):
				 return true ;
			else :

				// Obtenemos instancia de la base de datos
				$db = Database::getInstancia() ;

				// Comprobamos si el usuario existe en la base
				// de datos.
				$sql = "SELECT id_usuario, email, password, nombre, apellidos FROM usuario WHERE email='$ema' AND password=MD5('$pwd') ;" ;  

				// Lanzamos la consulta y comprobamos si hay resultado
				if ($db->consulta($sql)):
					
					// Rescatamos el resultado de la base de datos
					$this->usuario = $db->getObjeto("usuario") ;

					//
					// En la variable de sesión guardamos la información
					// que estimemos necesaria.
					
					// Guardamos marca de tiempo de inicio de sesión
					$_SESSION["time"]    = time() ;
					$_SESSION["session"] = serialize(self::$instancia) ;

					// 
					return true ;

				endif ;

			endif ;

			return false ;
		}

		//
		public function redirect($url)
		{
			header("location: $url") ;

			exit() ;
		}

		//
		public function close()
		{
			
			// Destruimos las variables de sesión
			session_unset() ;

			// Cerramos la sesión
			session_destroy() ;
			
		}

		//
		public function __sleep()
		{
			return ["expire_time", "usuario"] ;
		}
		

		//
		public function __toString()
		{
			return "<pre>".print_r($_SESSION,true)."</pre>" ;
		}
	}




















