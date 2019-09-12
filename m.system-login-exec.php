<?php
	//Include database connection details
	require_once('system-db.php');
	
	start_db();
	
	login($_POST['login'], $_POST['password']);
?>