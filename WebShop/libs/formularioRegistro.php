<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<title>L&F</title>

	<link rel="stylesheet" href="css/styleIndex.css">
	<link rel="stylesheet" href="css/styleLogin.css">
	
</head>
<body>
	<div class="wrapper">
		<nav>
			<header>

				<h1><a href="index.php" class="logo">L <span class="and">&</span> F</a></h1>

			</header><br/><br/>

			<div class="nav-1" class="noLog">
				<p><a href="libs/formularioLogin.php">ENTRA</a></p>
				<p> - </p>
				<p><a href="registro.php">REGISTRATE</a></p>
			</div>
		</nav>
		<br/>

		<div class="login-page">
			<div class="form">
				<form id="registro" class="login-form" method="post">
					<p style="color:red; font-weight: bold">
						<?= isset($err)?$err:"" ?>
					</p>
					<input type="hidden" id="flag" name="flag" value="false" />
					<input type="text" placeholder="nombre" name="nom" maxlength="30" required/>
					<input type="text" placeholder="apellidos" name="ape" maxlength="60" required/>
					<input type="email" placeholder="email" name="email" required/>
					<input type="password" placeholder="contraseña" name="pwd" required/>
					<button type="submit">Registro</button>
					<p class="message">¿Ya tienes una cuenta? <a href="formularioLogin.php">Entra</a></p>
				</form>
			</div>
		</div>
		<br/>

	</div>

	<script src="js/login.js"></script>
</body>

</html>
