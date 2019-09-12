<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];
	$year1 = (isset($_POST['year1']) && $_POST['year1'] == "on") ? 1 : 0;
	$year3 = 2;
	$year5 = 2;

	if (isset($_POST['year3'])) {
		$year3 = ($_POST['year1'] == "on") ? 1 : 0;
	}

	if (isset($_POST['year5'])) {
		$year3 = ($_POST['year5'] == "on") ? 1 : 0;
	}
	
	$year1 = $_POST['pat1'];
	$year3 = $_POST['pat3'];
	$year5 = $_POST['pat5'];
	$comments = $_POST['comments'];
	$status = "Y";

	if ($year1 == "0") {
		/* Fault. */
		$status = "F";
	}

	if (isset($_POST['jobstatus']) && $_POST['jobstatus'] == "on") {
		$status = "Y";
	}
	
	if (isset($_POST['correction_notes'])) {
		$correction_notes = mysql_escape_string($_POST['correction_notes']);

	} else {
		$correction_notes = "";
	}
	
	$signatureid = saveImage();
	$checklistid = getAssociatedCheckList($subcategoryid);
	$memberid = getLoggedOnMemberID();
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}patchecklist 
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, year1, 
				year3, year5, comments, 
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, '$year1', 
				'$year3', '$year5', '$comments',
				'$correction_notes',
				$memberid, $memberid, 
				NOW(), NOW()
			)";

	$result = mysql_query($qry);
	$confirmid = mysql_insert_id();

	if (! $result) {
		logError($qry . " - " . mysql_error());
	}
	
	$sql = "UPDATE {$_SESSION['DB_PREFIX']}checklist SET
			status = '$status',
			inspectedby = $inspectionuserid,
			inspecteddatetime = '$inspectiondate'
			WHERE id = $checklistid";

	if (! mysql_query($sql)) {
		logError($sql . " - " . mysql_error());
	}
	
	checkForFaults($checklistid);
	
	mysql_query("COMMIT");
	
	header("location: checklistconfirm.php?id=$confirmid");
?>
		