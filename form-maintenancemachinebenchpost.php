<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	
	$faceshield = (isset($_POST['faceshield']) && $_POST['faceshield'] == "on") ? 1 : 0;
	$faceshield_notes = mysql_escape_string($_POST['faceshield_notes']);
	$toolrest = (isset($_POST['toolrest']) && $_POST['toolrest'] == "on") ? 1 : 0;
	$toolrest_notes = mysql_escape_string($_POST['toolrest_notes']);
	$wheeldamage = (isset($_POST['wheeldamage']) && $_POST['wheeldamage'] == "on") ? 1 : 0;
	$wheeldamage_notes = mysql_escape_string($_POST['wheeldamage_notes']);
	
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($faceshield == 0 ||
		$wheeldamage == 0 ||
		$toolrest == 0) {

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
				faceshield, faceshield_notes,
				wheeldamage, wheeldamage_notes,
				toolrest, toolrest_notes,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				maintenancetype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, 
				$faceshield, '$faceshield_notes', 
				$wheeldamage, '$wheeldamage_notes',
				$toolrest, '$toolrest_notes',
				'$comments', '$correction_notes',
				$memberid, $memberid,
				NOW(), NOW(),
				'B'
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
