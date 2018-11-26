<?php

	require_once "Sesion.php";
	require_once "Usuario.php";

	$ses = Sesion::iniciarSesion();
	
	// Comprobamos si se nos envían datos de logueo
	if (($ses->checkActiveSession()) || (!empty($_POST))):
		$ema = $_POST["ema"]??"";
		$pwd = $_POST["pwd"]??"";

		// Intentamos hacer un login
		$log = $ses->doLogin($ema, $pwd);

		// Comprobamos si hemos accedido a nuestra cuenta
		if (!$log):
			header("location:http://localhost:0090/DWES/WebShop/libs/formularioLogin.php?fracasoLogin");
		endif;
	endif;

	// Método orientado a objetos
	$lnk = new mysqli("localhost","root","") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;

	// Seleccionamos la base de datos
	$lnk->select_db("webshop") ;

	// Seleccionamos el tipo de codificación de caracteres
	$lnk->set_charset("utf8") ;

	if($_POST) {
	    $nombre = $_POST['nombre'];
	    $descripcion = $_POST['descripcion'];
	    $precio = $_POST['precio'];
	    $tipo = $_POST['tipo'];
	    $imagen = $_POST['imagen'];

	    // hacemos la consulta a la base de datos
		$sql = "INSERT INTO producto (nombre, descripcion, precio, tipo, imagen) VALUES ('$nombre', '$descripcion', $precio, '$tipo', '$imagen')";

		$consulta = $lnk->query($sql);

	 
	    if($consulta) {
	        echo "<p>Nuevo producto añadido correctamente</p>";
	    } else {
	        echo "Error: ".$sql.' '.$lnk->connect_error;
	    }
	 
	}
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
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
				<p class="nav-1-rigth login-form"><a href="../logout.php">SALIR</a></p>
				<p><a href="../index.php">HOME</a></p>
			</div>
			<div class="nav-2">
				<span><a class="nav-a-blue" href="../index.php">REBAJAS</a></span>
				<span><a class="nav-a-blue" href="../index.php">MUJER</a></span>
				<span><a class="nav-a-blue" href="../index.php">HOMBRE</a></span>
			</div>
		</nav>
		<main>
		
		<div class="navLateral">
			<a href="../inicio.php">Ver todo</a>
			<a href="../ropa/camisetas.php">Camisetas</a>
			<a href="../ropa/pantalones.php">Pantalones</a>
			<a href="../ropa/vestidos.php">Vestidos</a>
			<a href="../ropa/sudaderas.php">Sudaderas</a>
			<a href="../ropa/zapatos.php">Zapatos</a>
			<a href="formularioAdd.php">Añadir Producto</a>
		</div>
		<!-- -->
		<div class="login-page">
			<div class="form">
				<form class="login-form" method="post" action="formularioAdd.php">
					<input type="text" placeholder="Nombre" name="nombre" />
					<input type="text" placeholder="Descripción" name="descripcion" />
					<input type="decimal" placeholder="Precio" name="precio" />
					<input type="text" placeholder="Tipo" name="tipo" />
					<input type="text" placeholder="Enlace imagen" name="imagen" />
					<button name="submit">Añadir</button>
				</form>
			</div>
		</div>
		
	</main>

</div>
</body>

</html>