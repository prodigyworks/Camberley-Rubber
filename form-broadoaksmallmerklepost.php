<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	$fingerguards = (isset($_POST['fingerguards']) && $_POST['fingerguards'] == "on") ? 1 : 0;
	$fingerguards_notes = mysql_escape_string($_POST['fingerguards_notes']);
	$electrics = (isset($_POST['electrics']) && $_POST['electrics'] == "on") ? 1 : 0;
	$electrics_notes = mysql_escape_string($_POST['electrics_notes']);
	$emergencystops = (isset($_POST['emergencystops']) && $_POST['emergencystops'] == "on") ? 1 : 0;
	$emergencystops_notes = mysql_escape_string($_POST['emergencystops_notes']);
	$mechanics = (isset($_POST['mechanics']) && $_POST['mechanics'] == "on") ? 1 : 0;
	$mechanics_notes = mysql_escape_string($_POST['mechanics_notes']);
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($fingerguards == 0 ||
		$emergencystops == 0 ||
		$mechanics == 0 ||
		$electrics == 0) {

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
				checklistid, signatureid, inspectiondate, inspectionuserid, 
				fingerguards, fingerguards_notes,
				emergencystops, emergencystops_notes,
				mechanics, mechanics_notes,
				electrics, electrics_notes,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				broadoaktype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, 
				$fingerguards, '$fingerguards_notes', 
				$emergencystops, '$emergencystops_notes',
				$mechanics, '$mechanics_notes',
				$electrics, '$electrics_notes',
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
