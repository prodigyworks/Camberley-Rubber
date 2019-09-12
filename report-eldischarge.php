<?php
	require_once('report-eldischargelib.php');

	$pdf = new LightCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>