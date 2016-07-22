<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];
	$meterreading = $_POST['meterreading'];
	$pump1ph = $_POST['pump1ph'];
	$pump2tdssystem = $_POST['pump2tdssystem'];
	$pump2tdsmakeup = $_POST['pump2tdsmakeup'];
	$pump3dipslide = $_POST['pump3dipslide'];
	$pump4suspendedmatter = $_POST['pump4suspendedmatter'];
	$pump5pondtemp = $_POST['pump5pondtemp'];
	$pump6systempressure = $_POST['pump6systempressure'];
	$hardness = $_POST['hardness'];
	$bromine = $_POST['bromine'];
	$c16 = $_POST['c16'];
	$c31 = $_POST['c31'];
	$comments = $_POST['comments'];
	$status = "Y";

	if ($pump3dipslide == "0") {
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
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}coolingtowerschecklist 
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, meterreading, 
				pump1ph, pump2tdssystem, pump2tdsmakeup, 
				pump3dipslide, pump4suspendedmatter, pump5pondtemp,
				pump6systempressure, hardness, bromine, c16, c31, comments, 
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, '$meterreading', 
				'$pump1ph', '$pump2tdssystem', '$pump2tdsmakeup', 
				'$pump3dipslide', '$pump4suspendedmatter', '$pump5pondtemp',
				'$pump6systempressure', '$hardness', '$bromine', '$c16', '$c31', '$comments',
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
		