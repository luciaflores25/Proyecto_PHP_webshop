
<?php
	require_once "Sesion.php";
	require_once "Usuario.php";

	// Método orientado a objetos
	$lnk = new mysqli("localhost","root","") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;

	// Seleccionamos la base de datos
	$lnk->select_db("webshop") ;

	// Seleccionamos el tipo de codificación de caracteres
	$lnk->set_charset("utf8") ;

	// nos traemos el id de la url
	$id = $_GET["idProducto"];
 
 	
 	// hacemos la consulta a la base de datos
 	$sql = "DELETE FROM producto WHERE id_producto=$id ";

    if($lnk->query($sql)) {
    	header("location:http://localhost:0090/DWES/WebShop/inicio.php");
    } else {
        echo "Error borrando el registro: ".$lnk->error;
    }
 
    $connect->close();

 
?>