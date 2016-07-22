<?php
	//Include database connection details
	require_once('system-db.php');
	
	start_db();
	initialise_db();
	
	$subcategoryid = $_GET['id'];
	$memberid = getLoggedOnMemberID();
	
	$qry = "SELECT A.id FROM {$_SESSION['DB_PREFIX']}documents A " .
		   "WHERE A.sessionid = '" . session_id() . "' " .
		   	"AND A.id NOT IN (SELECT documentid FROM {$_SESSION['DB_PREFIX']}subcategorydocs WHERE documentid = A.id) " .
		   "ORDER BY A.id";
	$result = mysql_query($qry);
	
	if (! $result) {
		logError($qry . " = " . mysql_error());
	}
	
	while (($member = mysql_fetch_assoc($result))) {
		$id = $member['id'];
		$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}subcategorydocs 
				(
					subcategoryid, documentid, createddate, 
					metacreateddate, metacreateduserid, 
					metamodifieddate, metamodifieduserid
				) 
				VALUES 
				(
					$subcategoryid, $id, NOW(), 
					NOW(), $memberid, 
					NOW(), $memberid
				)";
				
		$itemresult = mysql_query($qry);
		
		if (! $itemresult) {
			logError($qry . " = " . mysql_error());
		}
	}
	
	$sessionid = session_id();
	$qry = "UPDATE {$_SESSION['DB_PREFIX']}documents SET 
			sessionid = NULL, 
			metamodifieddate = NOW(), 
			metamodifieduserid = $memberid
		    WHERE sessionid = '$sessionid'";
	$result = mysql_query($qry);
	
	if (! $result) {
		logError($qry . " = " . mysql_error());
	}
		
	if (isset($_GET['refer'])) {
	  	header("location: " . base64_decode($_GET['refer']));
		
	} else {
	  	header("location: " . $_SERVER['HTTP_REFERER']);
	}	
?>