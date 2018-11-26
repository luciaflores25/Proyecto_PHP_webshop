
<?php
	require_once "Sesion.php";
	require_once "Usuario.php";

	// Método orientado a objetos
	$lnk = new mysqli("sql111.epizy.com","epiz_23053891","eyhdAQRsn") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error") ;

	// Seleccionamos la base de datos
	$lnk->select_db("epiz_23053891_webshop") ;

	// Seleccionamos el tipo de codificación de caracteres
	$lnk->set_charset("utf8") ;

	// nos traemos el id de la url
	$id = $_GET["idProducto"];
 
 	
 	// hacemos la consulta a la base de datos
 	$sql = "DELETE FROM producto WHERE id_producto=$id ";

 	// Si la consulta es correcta nos lleva a la página de inicio
    if($lnk->query($sql)) {
    	header("location:http://landf.epizy.com/inicio.php");

    // si la consulta no es correcta nos muestra el siguiente mensaje de error
    } else {
        echo "Error borrando el registro: ".$lnk->error;
    }
 
    $connect->close();
?>