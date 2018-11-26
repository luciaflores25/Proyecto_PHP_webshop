<?php
	require_once "Database.php" ;
	require_once "Sesion.php" ;

	// comprobamos si la sesión está iniciada
	$ses = Sesion::iniciarSesion();

	// si la sesión está inicada nos redirige la inicio
	if ($ses->checkActiveSession()):
		header("location:http://landf.epizy.com/inicio.php");
	endif;
?>

<!DOCTYPE html>
<html lang="es" >

<head>
	<meta charset="UTF-8">
	<title>L&F</title>

	<link rel="stylesheet" href="../css/styleIndex.css">
	<link rel="stylesheet" href="../css/styleLogin.css">
</head>

<body>
	<div class="wrapper">
		<nav>
			<header>

				<h1><a href="../index.php" class="logo">L <span class="and">&</span> F</a></h1>

			</header><br/><br/>

			<div class="nav-1">
				<p><a href="formularioLogin.php">ENTRA</a></p>
				<p> - </p>
				<p><a href="../registro.php">REGISTRATE</a></p>
			</div>
		</nav>
		<br/>

		<div class="login-page">
			<div class="form">
				<form class="login-form" method="post" action="../inicio.php">
					<input type="text" placeholder="email" name="ema" />
					<input type="password" placeholder="contraseña" name="pwd" />
					<button name="submit">Accede</button>
					<p class="message">¿No te has registrado? <a href="formularioRegistro.php">Crear una cuenta</a></p>
					<?php
						if (isset($_GET["fracasoLogin"])):
							echo '<p style="color: red;">Error usuario o contraseeña.</p>';
						endif;
					?>
				</form>
			</div>
		</div>
		<br/>

	</div>

	<script src="js/login.js"></script>
</body>

</html>
