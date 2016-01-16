<?php
	$user = $_POST['user'];
	$password= $_POST['password'];
	
	session_start();
	$_SESSION['user'] = $user;
	
	header("location:http://localhost/OPHION/View/welcome.php");