<?php include 'database.php'; ?>
<?PHP 
	//Get Total Nmber of Questions
	$query ="SELECT * FROM questions";
	//GET RESULTS
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" value="text/html; charset=UTF-8" />
		<title>Quizlet</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<link href="css/bootstrap.css" rel="stylesheet">
	</head>
	<body>
		<header>
			<div class="container">
				<h1>Quizlet</h1>
			</div>
		</header>
