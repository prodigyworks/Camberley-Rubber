<?php
	require_once('report-ovenslib.php');

	$pdf = new OvenCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>