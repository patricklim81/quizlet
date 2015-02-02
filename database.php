<<<<<<< HEAD
<?php 
//Create connection credentials
$db_host = 'localhost';
$db_name = 'quizlet';
$db_user = 'root';
$db_pass = 'insignia89';

//Create mysqli object
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Error handler
if($mysqli->connect_error) {
	printf("Connect failed: %s\n", $mysqli->connect_error);
	exit();
}

?>


<!--aws
	DB instance Id: quizlet
	DB name: quizlet
	username: bazuccka
	password: qc^M6Ben^#90
-->
=======
<?php 
//Create connection credentials
$db_host = 'localhost';
$db_name = 'quizlet';
$db_user = 'root';
$db_pass = 'insignia89';

//Create mysqli object
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Error handler
if($mysqli->connect_error) {
	printf("Connect failed: %s\n", $mysqli->connect_error);
	exit();
}

?>


<!--aws
	DB instance Id: quizlet
	DB name: quizlet
	username: bazuccka
	password: qc^M6Ben^#90
-->
>>>>>>> origin/master
=======
<?php 
//Create connection credentials
$db_host = 'quizlet.cqk9ew5iyc62.us-west-2.rds.amazonaws.com';
$db_name = 'quizlet';
$db_user = 'bazuccka';
$db_pass = '*fcGU6wVPpx7';

//Create mysqli object
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Error handler
if($mysqli->connect_error) {
	printf("Connect failed: %s\n", $mysqli->connect_error);
	exit();
}

?>
>>>>>>> c6a0076a952e324985cd502768a3e874065078d0
