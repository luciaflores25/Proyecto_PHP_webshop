<?php
	require_once "libs/Sesion.php";
	require_once "libs/Database.php";

	// Comprobamos si está la sesión iniciada
	$ses = Sesion::iniciarSesion();

	// Si la sesión está iniciada nos redirige al inicio
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
	<header>
		<?php
			// mensaje para comprobar que el registro se ha realizado corectamente
			if (isset($_GET["exitoRegistro"])):
				echo "<h3 style=\"color: green\">El registro se ha realizado correctamente</h3>";
			endif ;
		?>

	</header>
	<div class="wrapper">
		<nav>
			<header>

				<h1><a href="index.php" class="logo">L <span class="and">&</span> F</a></h1>

			</header><br/><br/>

			<div class="nav-1">
				<p><a href="libs/formularioLogin.php">ENTRA</a></p>
				<p> - </p>
				<p><a href="registro.php">REGISTRATE</a></p>
			</div>
		</nav>
		<br/>
		<main>
			<div class="imgIndex">
				<img src="imagenes/header.jpg" />
			</div><br/>
		</main>

</div>
</body>

</html>