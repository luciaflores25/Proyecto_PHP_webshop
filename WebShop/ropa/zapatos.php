<?php

	require_once "../libs/Sesion.php";
	require_once "../libs/Usuario.php";

	// comprobamos si la sesión está iniciada
	$ses = Sesion::iniciarSesion();
	
	// Aquí comprobamos si obtenemos los datos de los campos de email y contraseña
	if (($ses->checkActiveSession()) || (!empty($_POST))):
		$ema = $_POST["ema"]??"";
		$pwd = $_POST["pwd"]??"";

		// Intentamos hacer un login
		$log = $ses->doLogin($ema, $pwd);

		// Comprobamos si hemos accedido a nuestra cuenta
		if (!$log):
			$ses->redirect("http://http://landf.epizy.com/libs/formularioLogin.php?fracasoLogin");
		endif;
	else:
		$ses->redirect("http://landf.epizy.com/nolog.php");
	endif;

	// Método orientado a objetos
	$lnk = new mysqli("sql111.epizy.com","epiz_23053891","eyhdAQRsn") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error");

	// Seleccionamos la base de datos
	$lnk->select_db("epiz_23053891_webshop");

	// Seleccionamos el tipo de codificación de carácteres
	$lnk->set_charset("utf8");

	// hacemos la consulta a la base de datos
	$sql = "SELECT * FROM producto WHERE tipo=\"zapatos\"";

	// Lanzamos la consulta sobre el motor de BD
	$consulta = $lnk->query($sql);

	// Aquí guardo la url para utilizarla con el paginado
	$url = "http://landf.epizy.com/ropa/zapatos.php";

	$totalRegistros = $consulta->num_rows;

	//PAGINACIÓN
	//Si hay registros
	if ($totalRegistros > 0) {
		//Limito la busqueda
		$regPorPag = 16;
	    $pagina = false;

		//examino la pagina a mostrar y el inicio del registro a mostrar
	        if (isset($_GET["pagina"]))
	            $pagina = $_GET["pagina"];
	        
		if (!$pagina) {
			$inicio = 0;
			$pagina = 1;
		}
		else {
			$inicio = ($pagina - 1) * $regPorPag;
		}
		//calculo el total de paginas
		$total_paginas = ceil($totalRegistros / $regPorPag);
    	$sql = "SELECT * FROM producto WHERE tipo=\"zapatos\" ORDER BY id_producto DESC LIMIT ".$inicio."," . $regPorPag;
    	
    	$consulta = $lnk->query($sql);	
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>L&F</title>
	<link rel="stylesheet" href="../css/styleIndex.css">

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
				<div class="paginacion">
				<?php
					echo '<p>';
					if ($total_paginas > 1) {
						if ($pagina != 1)
							echo '<a href="'.$url.'?pagina='.($pagina-1).'"><img src="../imagenes/izq.png" border="0"></a>';
						for ($i=1;$i<=$total_paginas;$i++) {
							if ($pagina == $i)
								// este es el índice de la página en la que estoy
								echo '<a class="paginaSeleccionada" href="">'.$pagina.'</a>';
							else
								// estos son los demás enlaces para ir a otras páginas
								echo '  <a href="'.$url.'?pagina='.$i.'">'.$i.'</a> ';
						}
						if ($pagina != $total_paginas)
							echo '<a href="'.$url.'?pagina='.($pagina+1).'"><img src="../imagenes/der.png" border="0"></a>';
					}
					echo '</p>';
				?>
				</div>
		</nav>
		<main>
		
		<div class="navLateral">
			<a href="../inicio.php">Ver todo</a>
			<a href="camisetas.php">Camisetas</a>
			<a href="pantalones.php">Pantalones</a>
			<a href="vestidos.php">Vestidos</a>
			<a href="sudaderas.php">Sudaderas</a>
			<a href="zapatos.php">Zapatos</a>
			<a href="../libs/formularioAdd.php">Añadir Producto</a>
		</div>
		<div class="articulos">
			<!--------------------------------Listado de productos------------------------------>
			<div class="contenedorProductos">
	        <?php 

	        	foreach ($consulta as $item):
	        		$id = $item["id_producto"];
					$nombre = $item["nombre"];
					$precio = $item["precio"];
					$imagen = $item["imagen"]
			?>
			        <div class="listaImagenes listaProduct">
			           <img src=<?=$imagen?> />
			           <h5><?=$nombre?></h5>
			           <p class="precio"><b>Precio:</b> <?=$precio?> €</p>
		               <a href="../libs/formularioModify.php?idProducto=<?=$id?>"><input class="botonImg btnModify" type="submit" value="MODIFICAR"></a>
		               <a href="../libs/preguntaDelete.php?idProducto=<?=$id?>"><input class="botonImg btnDelete" type="submit" value="BORRAR"></a>
			        </div>
			    <?php 
					endforeach; 
				?> 
			</div>
			<!------------------------Fin listado de productos------------------------>
			<div class="paginacion">
				<?php
				echo '<p>';
					if ($total_paginas > 1) {
						if ($pagina != 1)
							echo '<a href="'.$url.'?pagina='.($pagina-1).'"><img src="../imagenes/izq.png" border="0"></a>';
						for ($i=1;$i<=$total_paginas;$i++) {
							if ($pagina == $i)
								// este es el índice de la página en la que estoy
								echo '<a class="paginaSeleccionada" href="">'.$pagina.'</a>';
							else
								// estos son los demás enlaces para ir a otras páginas
								echo '  <a href="'.$url.'?pagina='.$i.'">'.$i.'</a>  ';
						}
						if ($pagina != $total_paginas)
							echo '<a href="'.$url.'?pagina='.($pagina+1).'"><img src="../imagenes/der.png" border="0"></a>';
					}
					echo '</p>';

				}
				?>
			</div>

		</div>

	</main>

</div>
</body>
</html>