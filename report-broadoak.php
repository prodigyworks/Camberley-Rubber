<?php
	require_once('report-broadoaklib.php');

	$pdf = new BroadoakReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>