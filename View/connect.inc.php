<?php
	
	$user_name = "root";
	$password = "";
	$database = "LMS";
	$server = "localhost";
	
	if (!mysql_connect($server, $user_name, $password) || !mysql_select_db($database)){
			die('Could not connect to the database');
	}
	
?>