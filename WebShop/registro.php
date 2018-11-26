<?php

	// La siguiente línea muestra de manera formateada el contenido de $_POST
	//echo "<pre>".print_r($_POST, true)."</pre>" ; 

	// Capturamos los datos del formulario (si los hubiere).
	// El operador de fusión (??) solo podrá utilizarse a partir de PHP7
	$nom = $_POST["nom"]??"" ;
	$ape = $_POST["ape"]??"" ;
	$email = $_POST["email"]??"" ;

	// Método orientado a objetos
	$lnk = new mysqli("localhost","root","") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;

	// Seleccionamos la base de datos
	$lnk->select_db("webshop") ;

	// Seleccionamos el tipo de codificación de caracteres
	$lnk->set_charset("utf8") ;

	//
	// Comprobamos ahora el valor del flag: si es FALSE tendremos que insertar en la base de datos la información que se
	// nos proporciona a través del formulario. En otro caso, mostramos el formulario de registro.
	if (isset($_POST["flag"]) && ($_POST["flag"]==="false")):

		// Guardamos la contraseña
		$pwd = md5($_POST["pwd"]) ;

		// Construimos la sentencia SQL
		$sql = "INSERT INTO usuario
			    (email,password,nombre,apellidos) VALUES
			    ('$email','$pwd','$nom','$ape') ;" ;

		// Lanzamos la consulta sobre el motor de BD
		if($lnk->query($sql)):

			// Enviar un mensaje a la página principal indicando que
			// el registro se ha realizado con éxito.
			header("location:http://localhost:0090/DWES/WebShop/?exitoRegistro") ;
			
		else :
			$err = "Se ha producido un error en el registro." ;
			require_once("libs/formularioRegistro.php") ;
		endif ;

	else:

		// Accedemos por primera vez al formulario o lo hemos 
		// recargado por un cambio de provincia.
		require_once("libs/formularioRegistro.php") ;

	endif ;

	// 
	// Cerramos la conexión con el motor de bases de datos
	$lnk->close() ;
?>


