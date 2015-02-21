<?PHP session_start(); ?>
<?php include 'includes/header.php'; ?>
	<body>
		<main>
			<div class="container">
				<h2>You're Done!</h2>
				<p>Congrats! You have completed the test</p>
				<p>Final Score: <?PHP echo $_SESSION['score']; ?></p>
				<a class="btn btn-lg btn-primary btn-block" href="question.php?n=1" class="start">Take Again</a>
			</div>
		</main>
<?php include 'includes/footer.php'; ?>
<?PHP session_destroy(); ?>