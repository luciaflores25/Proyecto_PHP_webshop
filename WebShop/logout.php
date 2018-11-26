<?php

  require_once "libs/Sesion.php" ;
	// Obtenemos una instancia de la sesión
	$ses = Sesion::iniciarSesion() ;

	//
	$ses->close() ;
	
	//
	$ses->redirect("http://localhost:0090/DWES/WebShop/");

?>
	

	

