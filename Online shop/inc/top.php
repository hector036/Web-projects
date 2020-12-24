<?php
	include 'lib/Session.php';
    Session::init();


?>

<?php

	include_once 'lib/Database.php';
	include_once 'helpers/Format.php';


?>

<?php

	spl_autoload_register(function($class){

		include_once "classes/".$class.".php";
	});


	$db = new Database();
	$fm = new Format();
	$pd = new Product();
	$ct = new Cart();
	$cat =new Category();
	$cmr = new Customer();
	$bd = new Brand();
	


?>
