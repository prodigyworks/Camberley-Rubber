<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	$hydraulichoses = (isset($_POST['hydraulichoses']) && $_POST['hydraulichoses'] == "on") ? 1 : 0;
	$hydraulichoses_notes = mysql_escape_string($_POST['hydraulichoses_notes']);
	$hydraulicvalves = (isset($_POST['hydraulicvalves']) && $_POST['hydraulicvalves'] == "on") ? 1 : 0;
	$hydraulicvalves_notes = mysql_escape_string($_POST['hydraulicvalves_notes']);
	$hydrauliccylinders = (isset($_POST['hydrauliccylinders']) && $_POST['hydrauliccylinders'] == "on") ? 1 : 0;
	$hydrauliccylinders_notes = mysql_escape_string($_POST['hydrauliccylinders_notes']);

	$lightguard = 0;

	if (isset($_POST['lightguard'])) {
		if ($_POST['lightguard'] == "on") {
			$lightguard = 1;

		} else if ($_POST['lightguard'] == "na") {
			$lightguard = 2;
		}
	}

	$lightguard_notes = mysql_escape_string($_POST['lightguard_notes']);
	$frame = (isset($_POST['frame']) && $_POST['frame'] == "on") ? 1 : 0;
	$frame_notes = mysql_escape_string($_POST['frame_notes']);
	$heaterstopplaten = (isset($_POST['heaterstopplaten']) && $_POST['heaterstopplaten'] == "on") ? 1 : 0;
	$heaterstopplaten_notes = mysql_escape_string($_POST['heaterstopplaten_notes']);
	$heatersbottomplaten = (isset($_POST['heatersbottomplaten']) && $_POST['heatersbottomplaten'] == "on") ? 1 : 0;
	$heatersbottomplaten_notes = mysql_escape_string($_POST['heatersbottomplaten_notes']);
	$timeclock = (isset($_POST['timeclock']) && $_POST['timeclock'] == "on") ? 1 : 0;
	$timeclock_notes = mysql_escape_string($_POST['timeclock_notes']);
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($hydraulichoses == 0 ||
		$hydraulicvalves == 0 ||
		$hydrauliccylinders == 0 ||
		$lightguard == 0 ||
		$heaterstopplaten == 0 ||
		$heatersbottomplaten == 0 ||
		$frame == 0 ||
		$timeclock == 0) {

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

	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}broadoakchecklist
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, hydraulichoses,
				hydraulichoses_notes, hydraulicvalves, hydraulicvalves_notes,
				hydrauliccylinders, hydrauliccylinders_notes, lightguard, lightguard_notes,
				frame, frame_notes, heatersbottomplaten_notes, timeclock_notes,
				heaterstopplaten, heaterstopplaten_notes, heatersbottomplaten, timeclock,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				broadoaktype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, $hydraulichoses,
				'$hydraulichoses_notes', $hydraulicvalves, '$hydraulicvalves_notes',
				$hydrauliccylinders, '$hydrauliccylinders_notes', $lightguard, '$lightguard_notes',
				$frame, '$frame_notes', '$heatersbottomplaten_notes', '$timeclock_notes',
				$heaterstopplaten, '$heaterstopplaten_notes', $heatersbottomplaten, $timeclock,
				'$comments', '$correction_notes',
				$memberid, $memberid,
				NOW(), NOW(),
				'P'
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
