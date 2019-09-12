<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	
	$lubircatequill = (isset($_POST['lubircatequill']) && $_POST['lubircatequill'] == "on") ? 1 : 0;
	$lubircatequill_notes = mysql_escape_string($_POST['lubircatequill_notes']);
	$bearingblock = (isset($_POST['bearingblock']) && $_POST['bearingblock'] == "on") ? 1 : 0;
	$bearingblock_notes = mysql_escape_string($_POST['bearingblock_notes']);
	$hilowgear = (isset($_POST['hilowgear']) && $_POST['hilowgear'] == "on") ? 1 : 0;
	$hilowgear_notes = mysql_escape_string($_POST['hilowgear_notes']);
	
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($lubircatequill == 0 ||
		$hilowgear == 0 ||
		$bearingblock == 0) {

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
				lubircatequill, lubircatequill_notes,
				hilowgear, hilowgear_notes,
				bearingblock, bearingblock_notes,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				maintenancetype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, 
				$lubircatequill, '$lubircatequill_notes', 
				$hilowgear, '$hilowgear_notes',
				$bearingblock, '$bearingblock_notes',
				'$comments', '$correction_notes',
				$memberid, $memberid,
				NOW(), NOW(),
				'M'
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
