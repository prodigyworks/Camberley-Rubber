<?php
	require_once('report-injectionmachineslib.php');

	$pdf = new RepCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>