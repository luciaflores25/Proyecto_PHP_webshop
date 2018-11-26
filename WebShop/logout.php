<?php

  require_once "libs/Sesion.php";
	// Obtenemos una instancia de la sesión
	$ses = Sesion::iniciarSesion();

	// cerramos el loguin
	$ses->close();
	
	// al cerrar, redirigimos a la página principal
	$ses->redirect("http://landf.epizy.com");

?>
	

	

