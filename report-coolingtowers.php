<?php
	require_once('report-coolingtowerslib.php');

	$pdf = new CoolingCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>