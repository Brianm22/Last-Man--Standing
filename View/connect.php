<?php
	$user_name = "root";
	$password = "";
	$database = "LMS";
	$server = "localhost";

	if (!mysql_connect($server, $user_name, $password)){
		die('Could not connect to the mySQL database');
	}
	
	if (mysql_select_db($database)) {
		die('Could not connect to the database');
	}
	
?>