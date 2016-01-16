<?php

session_start(); //grabs information from session
$user = $_SESSION['user'];
echo "Welcome: " . $user . "!";