<?php

$isFormSubmissionSucessful = false;

if ($isFormSubmissionSucessful == true) {
	//create user object and run method user->insertNewUser and store session data
	include '/View/welcome.php';
}

else {
	include './View/newuserform.php';
}