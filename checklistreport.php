<?php
	require_once('system-db.php');
	
	start_db();
	
	$sql =  "SELECT C.reportname
			 FROM  {$_SESSION['DB_PREFIX']}checklist A
			 INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
			 ON B.id = A.subcategoryid
			 INNER JOIN {$_SESSION['DB_PREFIX']}category C
			 ON C.id = B.categoryid
			 WHERE A.id = {$_GET['id']}";
	$result = mysql_query($sql);
	
	if ($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$reportname = $member['reportname'];
		}
	}
	
	header("location: $reportname?id={$_GET['id']}");
?>