<?php
	
	// Creamos la clase Database
	class Database {

		// datos para acceder
		private $dbHost = "sql111.epizy.com";
		private $dbUser = "epiz_23053891";
		private $dbPass = "eyhdAQRsn";
		private $dbName = "epiz_23053891_webshop";

		private static $res;

		// Instancia 
		private static $instancia = null;

		// Conexión con el motor
		private static $db;

		// Constructor privado para que no se puedan crear otras instancias del objeto
		private function __construct()  
		{
			$this->conectar();
		}
		
		/* El destructor se encarga de cerrar la conexión con el gestor
		   de bases de datos*/
		public function __destruct() 
		{	
			Database::$db->close();
		}

		// Hay que ponerlo en privado para que no se pueda clonar ni obtener diferentes instancias
		private function __clone() { }

		// aquí se crea una instancia de la clase database
		public static function getInstancia() 
		{
			if (is_null(self::$instancia)):
				self::$instancia = new Database();
			endif ;
			
			return self::$instancia;
		}


		// esta funcion sirve para lanzar una consulta a la base de datos y guardar el resultado
		public function consulta($sql):bool 
		{
			// Lanzamos la consulta sobre la base de datos
			self::$res = self::$db->query($sql);


			/* Si la consulta es un SELECT nos devolverá un true/false

			   Si la consulta es un INSERT, UPDATE o un DELETE, la consulta nos devolvera true si
			   la consulta ha afectado a algún registro y false si no afecta a ningún registro. */
			if (is_object(self::$res)) return (self::$res->num_rows > 0);
			else
				return (self::$db->affected_rows > 0);
		}

		/* Devuelve un objeto con el primer resultado obtenido después de la consulta. 
		   Si no hay más resultados, la función devuelve null*/
		public function getObjeto($class="StdClass")
		{
			return self::$res->fetch_object($class) ;
		}

		// Ésta función sirve para establecer la conexión con la base de datos
		private function conectar() 
		{

			// Conectamos con el gestor de bases de datos
			self::$db = new mysqli($this->dbHost, 
								   $this->dbUser, 
								   $this->dbPass)
							or die("**Se ha producido un error en la conexión con el motor de bases de datos.") ;

			// Accedemos a la base de datos
			self::$db->select_db($this->dbName) ;

			// Tipo de codificación
			self::$db->set_charset("utf8") ;
		}

	}