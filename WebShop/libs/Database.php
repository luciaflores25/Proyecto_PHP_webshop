<?php
	
	// Creamos la clase Database
	class Database {

		private $dbHost = "localhost" ;
		private $dbUser = "root" ;
		private $dbPass = "" ;
		private $dbName = "webshop" ;

		private static $res ;

		// Instancia 
		private static $instancia = null ;

		// Conexión con el motor
		private static $db ;

		// Constructor privado para que no se puedan crear otras instancias del objeto.
		private function __construct()  
		{
			$this->conectar() ;
		}
		
		/* El destructor se encargará de cerrar la conexión con el gestor
		   de bases de datos. Además, serializará el objeto y lo guardará
		   en una variable de sesión, si ésta existe.*/
		public function __destruct() 
		{	
			Database::$db->close() ;
		}

		/* Haciendo privado el método __clone evitamos que se pueda clonar 
		   el objeto y, por tanto, obtener diferentes instancias del mismo.*/
		private function __clone() { }

		/* Este método se llamará tras deserializar el objeto, momento en
		   el que será necesario reestablecer la conexión con el gestor
		   de bases de datos.*/
		public function __wakeup() 
		{
			$this->conectar() ;
		}

		// Crea, si aún no se ha hecho, y devuelve una instancia de la clase DATABASE
		public static function getInstancia() 
		{
			if (is_null(self::$instancia)):
				self::$instancia = new Database() ;
			endif ;
			
			return self::$instancia ;
		}

		// Lanza una consulta SQL dada sobre la base de datos y conserva los resultados
		public function consulta($sql):bool 
		{
			// Lanzamos la consulta sobre la base de datos
			self::$res = self::$db->query($sql)  ;
						//or die ("**Se ha producido un error de consulta en la base de datos.") ;

			/* Devolvemos verdadero/falso según se haya realizado con éxito o no la consulta. 
			   Hemos de tener en cuenta:

			   Consulta SELECT: a no ser que se produzca un error, QUERY nos devolverá siempre un objeto de tipo MYSQLI_RESULT; en otro caso, devolverá FALSE. Así, comprobamos en primer lugar, si el resultado es un objeto o no (variable booleana). Si es un objeto, devolvemos verdadero/falso en función de si hemos obtenido resultado alguno en el SELECT.
			  
			   Operación INSERT, UPDATE, DELETE: el método QUERY devolverá SIEMPRE un valor de tipo booleano. Así que, en este caso, devolveremos verdadero/falso en función de si nuestra operación sobre la base de datos ha afectado o no algún registro.*/
			
			if (is_object(self::$res)) return (self::$res->num_rows > 0) ;
			else
				return (self::$db->affected_rows > 0) ;
		}

		/* Devuelve un objeto con el primer resultado obtenido tras la consulta. Si no hay más resultados, la función devuelve null*/
		public function getObjeto($class="StdClass")
		{
			return self::$res->fetch_object($class) ;
		}

		/* Establecemos la conexión con el motor de bases de datos, seteamos la base de datos con la que queremos trabajar y definimos el tipo de codificación que emplearemos.*/
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