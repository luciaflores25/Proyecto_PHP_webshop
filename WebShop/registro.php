<?php

	// Aquí cogemos los datos del formulario
	$nom = $_POST["nom"]??"";
	$ape = $_POST["ape"]??"";
	$email = $_POST["email"]??"";

	// Método orientado a objetos
	$lnk = new mysqli("sql111.epizy.com","epiz_23053891","eyhdAQRsn") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error");

	// Seleccionamos la base de datos
	$lnk->select_db("epiz_23053891_webshop");

	// Seleccionamos el tipo de codificación de caracteres
	$lnk->set_charset("utf8");

	/* Si flag es false insertamos en la base de datos la información
	   que se ha introducido en el formulario, si es true se muestra el formulario.*/
	if (isset($_POST["flag"]) && ($_POST["flag"]==="false")):

		// Guardamos la contraseña
		$pwd = md5($_POST["pwd"]);

		// Construimos la sentencia SQL
		$sql = "INSERT INTO usuario
			    (email,password,nombre,apellidos) VALUES
			    ('$email','$pwd','$nom','$ape') ;";

		// Lanzamos la consulta sobre el motor de BD
		if($lnk->query($sql)):

			/* Si el registro se ha producido con éxito aparece un mensaje
			   en la página principal */
			header("location:http://landf.epizy.com/?exitoRegistro");
			
		else :
			$err = "Se ha producido un error en el registro.";
			require_once("libs/formularioRegistro.php");
		endif ;

	else:

		require_once("libs/formularioRegistro.php");

	endif ;

	$lnk->close();
?>


