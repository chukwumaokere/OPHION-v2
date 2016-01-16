<?php
include  'Employee.php';

$employeeId= $_POST['employee_id'];
$name = $_POST['name'];
$address1 = $_POST['address1'];
$address2 = $_POST['address2'];
$city = $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip'];
$mainPhone = $_POST['main_phone1'] . $_POST['main_phone2'] . $_POST['main_phone3'];
$altPhone = $_POST['alt_phone1'] . $_POST['alt_phone2'] . $_POST['alt_phone3'];
$isFullTime = $_POST['is_full_time'];


$servername = 'localhost';
$username   = 'root';
$password   = '';
$dbname     = 'store454 dsgn';

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password); //connects to database
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); //shows errors

//checks if ID exists
function doesIdExist($employeeId, $conn) {
	$stmt = $conn->prepare("SELECT employee_id FROM employee WHERE employee_id = :employee_id");
	$stmt->bindParam(':employee_id', $employeeId);
	$stmt->execute();

	if($stmt->rowCount() > 0){
		return true;
	}

	else {
		return false;
	}
}

$r = doesIdExist($employeeId, $conn);

if ($r == true) {
	echo "<b>Employee Data Already Exists</b>";
	header("refresh:5;url=http://localhost/OPHION/index.html");
}
else {
	$em = new Employee();
	$em->createEmployee(		
		$employeeId, 
		$name, 
		$address1, 
		$address2, 
		$city,
		$state,
		$zip, 
		$mainPhone, 
		$altPhone, 			
		$isFullTime
	);
	
	$em->insertEmployee($conn);
	
	echo "<b>Employee Data Saved!</b>";
	header("refresh:5;url=http://localhost/OPHION/index.html"); /* Redirect browser */
}

exit();
/*to crash server 
for ($x = 0; $x <= 1000000; $x++) {
	$stmt->execute();
}*/


/*
function example
function familyName($fname, $year) {
     echo "$fname Refsnes. Born in $year <br>";
}

familyName("Hege","1975");
familyName("Stale","1978");
familyName("Kai Jim","1983");
?>*/

/*
 * MVC (codeigniter, cakephp)
 * model, view, controller
 * css
 * javascript to detect characters
 */