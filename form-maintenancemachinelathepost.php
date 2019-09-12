<?php
	require_once("system-db.php");
	require_once("form-globals.php");
	require_once('signature-to-image.php');

	start_db();

	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']);
	$inspectionuserid = $_POST['inspectionuserid'];
	$subcategoryid = $_POST['subcategoryid'];
	
	$coolant = (isset($_POST['coolant']) && $_POST['coolant'] == "on") ? 1 : 0;
	$coolant_notes = mysql_escape_string($_POST['coolant_notes']);
	$slidewayoil = (isset($_POST['slidewayoil']) && $_POST['slidewayoil'] == "on") ? 1 : 0;
	$slidewayoil_notes = mysql_escape_string($_POST['slidewayoil_notes']);
	$headstockoilsumplevel = (isset($_POST['headstockoilsumplevel']) && $_POST['headstockoilsumplevel'] == "on") ? 1 : 0;
	$headstockoilsumplevel_notes = mysql_escape_string($_POST['headstockoilsumplevel_notes']);
	$manuallubeslideways = (isset($_POST['manuallubeslideways']) && $_POST['manuallubeslideways'] == "on") ? 1 : 0;
	$manuallubeslideways_notes = mysql_escape_string($_POST['manuallubeslideways_notes']);
	
	$checkoilheadstock = (isset($_POST['checkoilheadstock']) && $_POST['checkoilheadstock'] == "on") ? 1 : 0;
	$checkoilheadstock_notes = mysql_escape_string($_POST['checkoilheadstock_notes']);
	$greasechuck = (isset($_POST['greasechuck']) && $_POST['greasechuck'] == "on") ? 1 : 0;
	$greasechuck_notes = mysql_escape_string($_POST['greasechuck_notes']);
	$checkcoolant = (isset($_POST['checkcoolant']) && $_POST['checkcoolant'] == "on") ? 1 : 0;
	$checkcoolant_notes = mysql_escape_string($_POST['checkcoolant_notes']);
	$cleanguardways = (isset($_POST['cleanguardways']) && $_POST['cleanguardways'] == "on") ? 1 : 0;
	$cleanguardways_notes = mysql_escape_string($_POST['cleanguardways_notes']);
	
	$comments = mysql_escape_string($_POST['comments']);
	$status = "Y";
	
	if ($coolant == 0 ||
		$headstockoilsumplevel == 0 ||
		$manuallubeslideways == 0 ||
		$slidewayoil == 0) {

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
				coolant, coolant_notes,
				headstockoilsumplevel, headstockoilsumplevel_notes,
				manuallubeslideways, manuallubeslideways_notes,
				slidewayoil, slidewayoil_notes,
				checkoilheadstock, checkoilheadstock_notes, greasechuck, greasechuck_notes, 
				checkcoolant, checkcoolant_notes, cleanguardways, cleanguardways_notes,				
				comments, correction_notes,
				metacreateduserid, metamodifieduserid,
				metacreateddate, metamodifieddate,
				maintenancetype
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, 
				$coolant, '$coolant_notes', 
				$headstockoilsumplevel, '$headstockoilsumplevel_notes',
				$manuallubeslideways, '$manuallubeslideways_notes',
				$slidewayoil, '$slidewayoil_notes',
				'$checkoilheadstock', '$checkoilheadstock_notes', '$greasechuck', '$greasechuck_notes', 
				'$checkcoolant', '$checkcoolant_notes', '$cleanguardways', '$cleanguardways_notes',				
				'$comments', '$correction_notes',
				$memberid, $memberid,
				NOW(), NOW(),
				'L'
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
