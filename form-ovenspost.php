<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];
	$doorlock = (isset($_POST['doorlock']) && $_POST['doorlock'] == "on") ? 1 : 0; 
	$doorlock_notes = mysql_escape_string($_POST['doorlock_notes']); 
	$doorseal = (isset($_POST['doorseal']) && $_POST['doorseal'] == "on") ? 1 : 0;
	$doorseal_notes = mysql_escape_string($_POST['doorseal_notes']); 
	$fanmotor = (isset($_POST['fanmotor']) && $_POST['fanmotor'] == "on") ? 1 : 0;
	$fanmotor_notes = mysql_escape_string($_POST['fanmotor_notes']); 
	$electricalsupply = (isset($_POST['electricalsupply']) && $_POST['electricalsupply'] == "on") ? 1 : 0;
	$electricalsupply_notes = mysql_escape_string($_POST['electricalsupply_notes']); 
	$conditioninside = (isset($_POST['conditioninside']) && $_POST['conditioninside'] == "on") ? 1 : 0;
	$conditioninside_notes = mysql_escape_string($_POST['conditioninside_notes']); 
	$conditionoutside = (isset($_POST['conditionoutside']) && $_POST['conditionoutside'] == "on") ? 1 : 0;
	$conditionoutside_notes = mysql_escape_string($_POST['conditionoutside_notes']); 
	$settemperature = $_POST['settemperature']; 
	$actualtemperature = $_POST['actualtemperature'];
	$status = "Y";

	if ($doorlock == 0 || 
		$doorseal == 0 || 
		$fanmotor == 0 || 
		$electricalsupply == 0 || 
		$conditioninside == 0 || 
		$conditionoutside == 0) {
		
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
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}ovenchecklist 
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, doorlock, 
				doorlock_notes, doorseal, doorseal_notes, 
				fanmotor, fanmotor_notes, electricalsupply, electricalsupply_notes, 
				conditioninside, conditioninside_notes, 
				conditionoutside, conditionoutside_notes, settemperature, actualtemperature,
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, $doorlock, 
				'$doorlock_notes', $doorseal, '$doorseal_notes', 
				$fanmotor, '$fanmotor_notes', $electricalsupply, '$electricalsupply_notes', 
				$conditioninside, '$conditioninside_notes', 
				$conditionoutside, '$conditionoutside_notes', $settemperature, $actualtemperature,
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
		