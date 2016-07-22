<?php
	require_once('report-ladderslib.php');

	$pdf = new LadderCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>