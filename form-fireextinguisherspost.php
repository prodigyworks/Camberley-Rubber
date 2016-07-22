<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];
	$status = "Y";
	$comments = mysql_escape_string($_POST['comments']);

	foreach ($_POST as $key => $value) {
		if (substr($key, 0, 2) == "p_" && (! endsWith($key, "_notes") && ! endsWith($key, "_location"))) {
			if ($value == "off") {
				$faultsfound = true;
			}
		}
	}
	
	if ($faultsfound) {
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
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}fireextinguisherchecklist 
			(
				checklistid, signatureid, inspectiondate, 
				inspectionuserid, comments,
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', 
				$inspectionuserid, '$comments',
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
	
	foreach ($_POST as $key => $value) {
		if (substr($key, 0, 2) == "p_" && (! endsWith($key, "_notes") && ! endsWith($key, "_location"))) {
			$fault = $_POST[$key] == "off" ? 1 : 0;
			$fault_notes = mysql_escape_string($_POST[$key . "_notes"]);
			$location = mysql_escape_string($_POST[$key . "_location"]);
			
			$sql = "INSERT INTO {$_SESSION['DB_PREFIX']}fireextinguisherchecklistitem
					(
						fireextinguisherchecklistid, fault, fault_notes, location, name,
						metacreateduserid, metamodifieduserid, 
						metacreateddate, metamodifieddate
					)
					VALUES
					(
						$confirmid, $fault, '$fault_notes', '$location', '$key',
						$memberid, $memberid, 
						NOW(), NOW()
					)";
		
			if (! mysql_query($sql)) {
				logError($sql . " - " . mysql_error());
			}
		}
	}	
	
	checkForFaults($checklistid);
	
	mysql_query("COMMIT");
	
	header("location: checklistconfirm.php?id=$confirmid");
?>
		