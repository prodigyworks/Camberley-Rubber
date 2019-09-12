<?php
	require_once('report-maintenancemachinelib.php');

	$pdf = new MaintenanceReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>