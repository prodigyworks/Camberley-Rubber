<?php
	require_once('report-alarmcallpointslib.php');

	$pdf = new AlarmCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>