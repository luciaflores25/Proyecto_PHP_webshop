<?php
	require_once "libs/Sesion.php";
	require_once "libs/Database.php";

	// Comprobamos si el usuario está logueado
	$ses = Sesion::iniciarSesion();

	// Si está logueado nos redirige al inicio y no se muestra nada de esta página
	if ($ses->checkActiveSession()):
		$ses->redirect("http://landf.epizy.com/inicio.php");
	endif;
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>L&F</title>
	<link rel="stylesheet" href="css/styleIndex.css">
</head>

<body>
	<div class="wrapper">
		<nav>
			<header>
				<h1 class="logo">L <span class="and">&</span> F</h1>
			</header><br/><br/>

			<div class="nav-1">
				</br></br></br>
			</div>
		</nav>
		<br/>
		<main>
			<div class="noLog">
				Lo siento, no estás logueado o la cuenta ha expirado.</br></br>
				Entra con tu cuenta <a href="libs/formularioLogin.php">aquí</a>.</br>
				Si no tienes una cuenta puedes registrarte <a href="registro.php">aquí</a>
			</div>
		</main>

</div>
</body>

</html>
	

	

