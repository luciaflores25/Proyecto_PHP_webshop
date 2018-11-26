<?php

	require_once "libs/Database.php";

	// enlace para acceder a la API
	// http://developer.shop.com/documentation/apnResources/products#!method_0_0_operation_0_content

	// API KEY
	const APIKEY = "l7xxffdf0f7fd16c4d5188654edfbc25aa27";

	// Método orientado a objetos
	$lnk = new mysqli("sql111.epizy.com","epiz_23053891","eyhdAQRsn") 
			or	die("**Error de conexión: $lnk->connection_errno : $lnk->connection_error");

	// Seleccionamos la base de datos
	$lnk->select_db("epiz_23053891_webshop");

	// Codificación UTF8
	$lnk->set_charset("utf8");

//////////////////////////////////////////////////////////////////////////////	
// Zapatos

	$shoes_url = "https://api.shop.com/AffiliatePublisherNetwork/v1/products?publisherID=TEST&locale=en_US&perPage=30&categoryId=1-32805&apikey=".APIKEY;
	$shoes   = json_decode(file_get_contents($shoes_url));

	// Mostrar JSON de los zapatos
	/*echo "<pre>";
	echo print_r($shoes);
	echo "</pre>";*/

	foreach ($shoes->products as $item):

		$nombre = $item->name;
		$nombre=str_replace("'","",$nombre);  
		$precio = $item->minimumPrice;
		$precio=str_replace("$","",$precio); 
		$descripcion = $item->description;
		$descripcion=str_replace("'","",$descripcion); 
		$tipo = "Zapatos";
		$imagen = $item->imageUrl;
		$idApi = $item->id;
		
		// Consulta sql
		$sql = "INSERT INTO producto
		    (nombre,descripcion,precio,tipo,imagen, idApi) VALUES ('$nombre','$descripcion','$precio','$tipo','$imagen', $idApi) ;";

		$lnk->query($sql);

	endforeach ;
//////////////////////////////////////////////////////////////////////////////
// Pantalones

	$trousers_url = "https://api.shop.com/AffiliatePublisherNetwork/v1/products?publisherID=TEST&locale=en_US&perPage=30&term=pants&categoryId=1-32838&apikey=".APIKEY;
	$trousers   = json_decode(file_get_contents($trousers_url));

	// Mostrar JSON de los pantalones
	/*echo "<pre>";
	echo print_r($trousers);
	echo "</pre>";*/

	foreach ($trousers->products as $item):

		$nombre = $item->name;
		$nombre=str_replace("'","",$nombre);  
		$precio = $item->minimumPrice;
		$precio=str_replace("$","",$precio); 
		$descripcion = $item->description;
		$descripcion=str_replace("'","",$descripcion); 
		$tipo = "Pantalones";
		$imagen = $item->imageUrl;
		$idApi = $item->id;
		
		// Consulta sql
		$sql = "INSERT INTO producto
		    (nombre,descripcion,precio,tipo,imagen, idApi) VALUES ('$nombre','$descripcion','$precio','$tipo','$imagen', $idApi) ;";

		$lnk->query($sql);

	endforeach ;

//////////////////////////////////////////////////////////////////////////////
// Camisetas

	$shirt_url = "https://api.shop.com/AffiliatePublisherNetwork/v1/products?publisherID=TEST&locale=en_US&perPage=30&term=shirt&categoryId=1-32838&apikey=".APIKEY ;
	$shirt   = json_decode(file_get_contents($shirt_url));

	// Mostrar JSON de las camisetas
	/*echo "<pre>";
	echo print_r($shirt);
	echo "</pre>";*/

	foreach ($shirt->products as $item):

		$nombre = $item->name;
		$nombre=str_replace("'","",$nombre);  
		$precio = $item->minimumPrice;
		$precio=str_replace("$","",$precio); 
		$descripcion = $item->description;
		$descripcion=str_replace("'","",$descripcion); 
		$tipo = "Camisetas";
		$imagen = $item->imageUrl;
		$idApi = $item->id;
		
		// Consulta sql
		$sql = "INSERT INTO producto
		    (nombre,descripcion,precio,tipo,imagen, idApi) VALUES ('$nombre','$descripcion','$precio','$tipo','$imagen', $idApi) ;";

		$lnk->query($sql);

	endforeach ;

//////////////////////////////////////////////////////////////////////////////
// Vestidos

	$dress_url = "https://api.shop.com/AffiliatePublisherNetwork/v1/products?publisherID=TEST&locale=en_US&perPage=30&term=dress&categoryId=1-32838&apikey=".APIKEY;
	$dress   = json_decode(file_get_contents($dress_url));

	// Mostrar JSON de los vestidos
	/*echo "<pre>";
	echo print_r($dress);
	echo "</pre>";*/

	foreach ($dress->products as $item):

		$nombre = $item->name;
		$nombre=str_replace("'","",$nombre);  
		$precio = $item->minimumPrice;
		$precio=str_replace("$","",$precio); 
		$descripcion = $item->description;
		$descripcion=str_replace("'","",$descripcion); 
		$tipo = "Vestidos";
		$imagen = $item->imageUrl;
		$idApi = $item->id;
		
		// Consulta sql
		$sql = "INSERT INTO producto
		    (nombre,descripcion,precio,tipo,imagen, idApi) VALUES ('$nombre','$descripcion','$precio','$tipo','$imagen', $idApi) ;";

		$lnk->query($sql);

	endforeach ;

//////////////////////////////////////////////////////////////////////////////
// Sudaderas

	$sweatshirt_url = "https://api.shop.com/AffiliatePublisherNetwork/v1/products?publisherID=TEST&locale=en_US&perPage=30&term=sweatshirt&categoryId=1-32838&apikey=".APIKEY;
	$sweatshirt   = json_decode(file_get_contents($sweatshirt_url));

	// Mostrar JSON de las sudaderas
	/*echo "<pre>";
	echo print_r($sweatshirt);
	echo "</pre>";*/

	foreach ($sweatshirt->products as $item):

		$nombre = $item->name;
		$nombre=str_replace("'","",$nombre);  
		$precio = $item->minimumPrice;
		$precio=str_replace("$","",$precio); 
		$descripcion = $item->description;
		$descripcion=str_replace("'","",$descripcion); 
		$tipo = "Sudaderas";
		$imagen = $item->imageUrl;
		$idApi = $item->id;
		
		// Consulta sql
		$sql = "INSERT INTO producto
		    (nombre,descripcion,precio,tipo,imagen, idApi) VALUES ('$nombre','$descripcion','$precio','$tipo','$imagen', $idApi) ;";

		$lnk->query($sql);

	endforeach ;



