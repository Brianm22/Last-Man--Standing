<?php
	require 'core.inc.php';
	require 'connect.inc.php';
	
	if (!loggedin()) {
		if (isset($_POST['username'])&&isset($_POST['password'])&&isset($_POST['password2'])&&isset($_POST['firstname'])&&isset($_POST['lastname'])&&isset($_POST['email'])) {
				$username = $_POST['username'];
				$password = $_POST['password'];
				$password2 = $_POST['password2'];
				$firstname = $_POST['firstname'];
				$lastname = $_POST['lastname'];
				$email = $_POST['email'];
				
				if (!empty($username) && !empty($password) && !empty($password2) &&
					!empty($firstname) && !empty($lastname) && !empty($email)) {
						if($password != $password2){
							echo 'Passwords do not match';
						} else {
										
							$query = "SELECT Username FROM user WHERE Username='". $username."'";
							$query_run = mysql_query($query);
							
							if(mysql_num_rows($query_run)==1){
								echo "The username ". $username . " already excists.";
							}
							else {
								$query = "INSERT INTO user VALUES ('','".mysql_real_escape_string($username)."','".mysql_real_escape_string($password)."','".mysql_real_escape_string($email)."','".mysql_real_escape_string($firstname)."','".mysql_real_escape_string($lastname)."')";
								
								if ($query_run = mysql_query($query)){
									header('Location: register_success.php');
								} else {
									echo 'Registration Failed';
								}
							}
							
						}
					}
					else {
						echo 'All fields are required';
					}
			
		}
			
?>
	<h1>Register Form</h1>
	<form action="register.php" method ="POST">
		Username: <br> <input type="text" name="username" value="<?php echo $username;?>"> <br><br>
		Password: <br> <input type="password" name="password"> <br><br>
		Re-Type Password: <br> <input type="password" name="password2"> <br><br>
		First Name: <br> <input type="text" name="firstname" value="<?php echo $firstname;?>"> <br><br>
		Last Name: <br> <input type="text" name="lastname" value="<?php echo $lastname;?>"> <br><br>
		Email Address: <br> <input type="text" name="email" value="<?php echo $email;?>"> <br><br>
		<input type="submit" value="Register">
	</form>
	
<?php
	} else if (loggedin()){
		echo 'You\'re already registered and logged in';
	}
?>