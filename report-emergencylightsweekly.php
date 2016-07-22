<?php
	require_once('report-emergencylightsweeklylib.php');

	$pdf = new LightCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>