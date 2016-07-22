<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	function convertValue($str) {
		if ($str == "on") {
			return 1;
		}
		
		if ($str == "off") {
			return 0;
		}
		
		if ($str == "na") {
			return 2;
		}
	}
	
	start_db();
	
	$inspectiondate = convertStringToDateTime($_POST['inspectiondate']); 
	$inspectionuserid = $_POST['inspectionuserid']; 
	$subcategoryid = $_POST['subcategoryid'];

	$hydraulic_valves = convertValue($_POST['hydraulic_valves']);
	$hydraulic_hoses = convertValue($_POST['hydraulic_hoses']);
	$hydraulic_pistons = convertValue($_POST['hydraulic_pistons']);
	$hydraulic_oillevel = convertValue($_POST['hydraulic_oillevel']);
	$heating_toppltn = convertValue($_POST['heating_toppltn']);
	$heating_bottompltn = convertValue($_POST['heating_bottompltn']);
	$heating_extruder = convertValue($_POST['heating_extruder']);
	$heating_injection = convertValue($_POST['heating_injection']);
	$heating_oillevel = convertValue($_POST['heating_oillevel']);
	$pnuematic_airpressure = convertValue($_POST['pnuematic_airpressure']);
	$pnuematic_gatespeed = convertValue($_POST['pnuematic_gatespeed']);
	$safety_gatenudgebar = convertValue($_POST['safety_gatenudgebar']);
	$safety_emergencystop = convertValue($_POST['safety_emergencystop']);
	$safety_clampsafety = convertValue($_POST['safety_clampsafety']);
	$additional_columnnuts = convertValue($_POST['additional_columnnuts']);
	$additional_encodebelts = convertValue($_POST['additional_encodebelts']);
	$additional_platenparellelism = convertValue($_POST['additional_platenparellelism']);
	$status = "Y";

	if ($hydraulic_valves == 0 || 
		$hydraulic_hoses == 0 || 
		$hydraulic_pistons == 0 || 
		$hydraulic_oillevel == 0 || 
		$heating_toppltn == 0 || 
		$heating_bottompltn == 0 || 
		$heating_extruder == 0 || 
		$heating_injection == 0 || 
		$heating_oillevel == 0 || 
		$pnuematic_airpressure == 0 || 
		$pnuematic_gatespeed == 0 || 
		$safety_gatenudgebar == 0 || 
		$safety_emergencystop == 0 || 
		$safety_clampsafety == 0 || 
		$additional_columnnuts == 0 || 
		$additional_encodebelts == 0 || 
		$additional_platenparellelism == 0) {
		
		/* Fault. */
		$status = "F";
	}

	if (isset($_POST['correction_notes'])) {
		$correction_notes = mysql_escape_string($_POST['correction_notes']);

	} else {
		$correction_notes = "";
	}
	
	$hydraulic_valves_notes = mysql_escape_string($_POST['hydraulic_valves_notes']);
	$hydraulic_hoses_notes = mysql_escape_string($_POST['hydraulic_hoses_notes']);
	$hydraulic_pistons_notes = mysql_escape_string($_POST['hydraulic_pistons_notes']);
	$hydraulic_oillevel_notes = mysql_escape_string($_POST['hydraulic_oillevel_notes']);
	$heating_toppltn_notes = mysql_escape_string($_POST['heating_toppltn_notes']);
	$heating_bottompltn_notes = mysql_escape_string($_POST['heating_bottompltn_notes']);
	$heating_extruder_notes = mysql_escape_string($_POST['heating_extruder_notes']);
	$heating_injection_notes = mysql_escape_string($_POST['heating_injection_notes']);
	$heating_oillevel_notes = mysql_escape_string($_POST['heating_oillevel_notes']);
	$pnuematic_airpressure_notes = mysql_escape_string($_POST['pnuematic_airpressure_notes']);
	$pnuematic_gatespeed_notes = mysql_escape_string($_POST['pnuematic_gatespeed_notes']);
	$safety_gatenudgebar_notes = mysql_escape_string($_POST['safety_gatenudgebar_notes']);
	$safety_emergencystop_notes = mysql_escape_string($_POST['safety_emergencystop_notes']);
	$safety_clampsafety_notes = mysql_escape_string($_POST['safety_clampsafety_notes']);
	$additional_columnnuts_notes = mysql_escape_string($_POST['additional_columnnuts_notes']);
	$additional_encodebelts_notes = mysql_escape_string($_POST['additional_encodebelts_notes']);
	$additional_platenparellelism_notes = mysql_escape_string($_POST['additional_platenparellelism_notes']);
	
	$comments = mysql_escape_string($_POST['comments']);
	
	if (isset($_POST['jobstatus']) && $_POST['jobstatus'] == "on") {
		$status = "Y";
	}
		
	$signatureid = saveImage();
	$checklistid = getAssociatedCheckList($subcategoryid);
	$memberid = getLoggedOnMemberID();
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}repchecklist 
			(
				checklistid, signatureid, inspectiondate, 
				inspectionuserid, 
				hydraulic_valves,
				hydraulic_hoses, hydraulic_pistons,
				hydraulic_oillevel, heating_toppltn,
				heating_bottompltn, heating_extruder,
				heating_injection, heating_oillevel,
				pnuematic_airpressure, pnuematic_gatespeed,
				safety_gatenudgebar, safety_emergencystop,
				safety_clampsafety, additional_columnnuts,
				additional_encodebelts, additional_platenparellelism,
				hydraulic_valves_notes,
				hydraulic_hoses_notes, hydraulic_pistons_notes,
				hydraulic_oillevel_notes, heating_toppltn_notes,
				heating_bottompltn_notes, heating_extruder_notes,
				heating_injection_notes, heating_oillevel_notes,
				pnuematic_airpressure_notes, pnuematic_gatespeed_notes,
				safety_gatenudgebar_notes, safety_emergencystop_notes,
				safety_clampsafety_notes, additional_columnnuts_notes,
				additional_encodebelts_notes, additional_platenparellelism_notes,
				comments, correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', 
				$inspectionuserid,  
				'$hydraulic_valves',
				'$hydraulic_hoses', '$hydraulic_pistons',
				'$hydraulic_oillevel', '$heating_toppltn',
				'$heating_bottompltn', '$heating_extruder',
				'$heating_injection', '$heating_oillevel',
				'$pnuematic_airpressure', '$pnuematic_gatespeed',
				'$safety_gatenudgebar', '$safety_emergencystop',
				'$safety_clampsafety', '$additional_columnnuts',
				'$additional_encodebelts', '$additional_platenparellelism',
				'$hydraulic_valves_notes',
				'$hydraulic_hoses_notes', '$hydraulic_pistons_notes',
				'$hydraulic_oillevel_notes', '$heating_toppltn_notes',
				'$heating_bottompltn_notes', '$heating_extruder_notes',
				'$heating_injection_notes', '$heating_oillevel_notes',
				'$pnuematic_airpressure_notes', '$pnuematic_gatespeed_notes',
				'$safety_gatenudgebar_notes', '$safety_emergencystop_notes',
				'$safety_clampsafety_notes', '$additional_columnnuts_notes',
				'$additional_encodebelts_notes', '$additional_platenparellelism_notes',
				'$comments', '$correction_notes',
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
		