<?php
	require_once('report-workshopmachineslib.php');

	$pdf = new WorkshopCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>