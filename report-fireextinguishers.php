<?php
	require_once('report-fireextinguisherslib.php');

	$pdf = new FireCheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$pdf->Output();
?>