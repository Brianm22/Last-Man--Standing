<?php
	require 'core.inc.php';
	require 'connect.inc.php';
	
	if(loggedin()){
		$firstName = getuserfield('firstname');
		$lastName = getuserfield('lastname');
		echo 'You\'re logged in '. $firstName . ' ' . $lastName . '. <a href="logout.php">Log Out</a><br>';
	} else {
		include 'loginform.inc.php';
	}
	
	
?>