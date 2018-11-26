<?php
	// nos traemos el id de la url
	$id = $_GET["idProducto"];

?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>L&F</title>
	<link rel="stylesheet" href="../css/styleIndex.css">
	<style>
		.preguntaBorrado{
			text-align: center;
			padding-top: 20px;
		}

		.preguntaBorrado input {
			padding: 5px;
			width: 100px;
			margin-top: 20px;
		}
	</style>

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
		<div class="preguntaBorrado">
			<h3>¿Estás seguro de que quieres eliminar el producto?</h3>
			<a href="deleteProduct.php?idProducto=<?=$id?>"><input type="submit" value="SI" /></a>
			<a href="../inicio.php"><input type="submit" value="NO" /></a>
		</div>
	</main>

</div>
</body>