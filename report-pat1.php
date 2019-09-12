<?php
	require_once('report-pat1lib.php');

	$pdf = new PATReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>