<?php include 'includes/header.php'; ?>

		<main>
			<div class="container">
				<h2>Test Your PHP Knowdledge</h2>
				<p>This is a multiple choice quiz to test your knowledge of PHP</p>
				<ul>
					<li><strong>Number of Questions: </strong> <?PHP echo $total; ?> </li>
					<li><strong>Type: </strong> Multiple Choice </li>
					<li><strong>Estimated Time: </strong><?PHP echo $total * .5 ?> Minutes </li>
				</ul>
				<a  class="btn btn-lg btn-primary btn-block" href="question.php?n=1" class="start">Start Quiz</a>
			</div>
		</main>

<?php include 'includes/footer.php'; ?>