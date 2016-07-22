<?php
	require_once('report-serviceslib.php');

	$pdf = new ServiceCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>