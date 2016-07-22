<?php
	require_once('checklistreportlib.php');
	
	$report = new CheckListReport( 'P', 'mm', 'A4', $_GET['id']);
	$report->Output();
	
	mysql_query("COMMIT");
?>