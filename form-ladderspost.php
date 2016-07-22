<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];
	$loosefeet = (isset($_POST['loosefeet']) && $_POST['loosefeet'] == "on") ? 1 : 0; 
	$loosefeet_notes = mysql_escape_string($_POST['loosefeet_notes']); 
	$loosesteps = (isset($_POST['loosesteps']) && $_POST['loosesteps'] == "on") ? 1 : 0;
	$loosesteps_notes = mysql_escape_string($_POST['loosesteps_notes']);
	$brokenbraces = (isset($_POST['brokenbraces']) && $_POST['brokenbraces'] == "on") ? 1 : 0;
	$brokenbraces_notes = mysql_escape_string($_POST['brokenbraces_notes']); 
	$damagedsurfaces = (isset($_POST['damagedsurfaces']) && $_POST['damagedsurfaces'] == "on") ? 1 : 0;
	$damagedsurfaces_notes = mysql_escape_string($_POST['damagedsurfaces_notes']); 
	$looserivets = (isset($_POST['looserivets']) && $_POST['looserivets'] == "on") ? 1 : 0;
	$looserivets_notes = mysql_escape_string($_POST['looserivets_notes']); 
	$brokensteps = (isset($_POST['brokensteps']) && $_POST['brokensteps'] == "on") ? 1 : 0;
	$brokensteps_notes = mysql_escape_string($_POST['brokensteps_notes']); 
	$comments = mysql_escape_string($_POST['comments']); 
	$status = "Y";

	if ($loosesteps == 0 ||
		$loosefeet == 0 || 
		$brokenbraces == 0 || 
		$damagedsurfaces == 0 || 
		$looserivets == 0 || 
		$brokensteps == 0) {
		
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
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}ladderchecklist 
			(
				checklistid, signatureid, inspectiondate, inspectionuserid, loosefeet, 
				loosefeet_notes, brokenbraces, brokenbraces_notes,
				damagedsurfaces, damagedsurfaces_notes, looserivets, looserivets_notes, 
				brokensteps, brokensteps_notes, comments, loosesteps, loosesteps_notes,
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', $inspectionuserid, $loosefeet, 
				'$loosefeet_notes', $brokenbraces, '$brokenbraces_notes', 
				$damagedsurfaces, '$damagedsurfaces_notes', $looserivets, '$looserivets_notes', 
				$brokensteps, '$brokensteps_notes', '$comments', $loosesteps, '$loosesteps_notes',
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