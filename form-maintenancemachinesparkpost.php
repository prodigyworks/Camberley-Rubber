<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	
	$flamedetector = (isset($_POST['flamedetector']) && $_POST['flamedetector'] == "on") ? 1 : 0;
	$flamedetector_notes = mysql_escape_string($_POST['flamedetector_notes']);
	$dielectric = (isset($_POST['dielectric']) && $_POST['dielectric'] == "on") ? 1 : 0;
	$dielectric_notes = mysql_escape_string($_POST['dielectric_notes']);
	$lubricationaxis = (isset($_POST['lubricationaxis']) && $_POST['lubricationaxis'] == "on") ? 1 : 0;
	$lubricationaxis_notes = mysql_escape_string($_POST['lubricationaxis_notes']);
	
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($flamedetector == 0 ||
		$lubricationaxis == 0 ||
		$dielectric == 0) {

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

	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}maintenancemachinechecklist
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, 
				flamedetector, flamedetector_notes,
				lubricationaxis, lubricationaxis_notes,
				dielectric, dielectric_notes,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				maintenancetype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, 
				$flamedetector, '$flamedetector_notes', 
				$lubricationaxis, '$lubricationaxis_notes',
				$dielectric, '$dielectric_notes',
				'$comments', '$correction_notes',
				$memberid, $memberid,
				NOW(), NOW(),
				'S'
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
	
	logError($sql, false);

	if (! mysql_query($sql)) {
		logError($sql . " - " . mysql_error());
	}
	
	checkForFaults($checklistid);
	
	mysql_query("COMMIT");

	header("location: checklistconfirm.php?id=$confirmid");

?>
