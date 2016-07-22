<?php 
	require_once("system-db.php"); 
	require_once("form-globals.php"); 
	require_once('signature-to-image.php');
	
	function convertValue($str) {
		if (! isset($str)) {
			return 0;
		}
		
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
	
	$large_emerstops = convertValue($_POST['large_emerstops']);
	$large_grease = convertValue($_POST['large_grease']);
	$large_electrics = convertValue($_POST['large_electrics']);
	$large_cooling = convertValue($_POST['large_cooling']);
	$small_emerstops = convertValue($_POST['small_emerstops']);
	$small_grease = convertValue($_POST['small_grease']);
	$small_electrics = convertValue($_POST['small_electrics']);
	$small_cooling = convertValue($_POST['small_cooling']);
	$merkle_emerstops = convertValue($_POST['merkle_emerstops']);
	$merkle_fingerguardfront = convertValue($_POST['merkle_fingerguardfront']);
	$merkle_fingerguardrear = convertValue($_POST['merkle_fingerguardrear']);
	$merkle_mechanics = convertValue($_POST['merkle_mechanics']);
	$merkle_electrics = convertValue($_POST['merkle_electrics']);
	
	$tool_electrics = convertValue($_POST['tool_electrics']);
	$tool_airsupply = convertValue($_POST['tool_airsupply']);
	$tool_filters = convertValue($_POST['tool_filters']);
	$tool_cyclone = convertValue($_POST['tool_cyclone']);
	$turbex_water = convertValue($_POST['turbex_water']);
	$turbex_airsupply = convertValue($_POST['turbex_airsupply']);
	$turbex_electrics = convertValue($_POST['turbex_electrics']);
	$shotblast1_electrics = convertValue($_POST['shotblast1_electrics']);
	$shotblast1_airsupply = convertValue($_POST['shotblast1_airsupply']);
	$shotblast1_filters = convertValue($_POST['shotblast1_filters']);
	$shotblast1_cyclone = convertValue($_POST['shotblast1_cyclone']);
	$shotblast2_electrics = convertValue($_POST['shotblast2_electrics']);
	$shotblast2_airsupply = convertValue($_POST['shotblast2_airsupply']);
	$shotblast2_filters = convertValue($_POST['shotblast2_filters']);
	$shotblast2_cyclone = convertValue($_POST['shotblast2_cyclone']);
	$washbooth_electrics = convertValue($_POST['washbooth_electrics']);
	$washbooth_watersupply = convertValue($_POST['washbooth_watersupply']);
	$washbooth_frame = convertValue($_POST['washbooth_frame']);
	$drybooth_electrics = convertValue($_POST['drybooth_electrics']);
	$drybooth_drivebelt = convertValue($_POST['drybooth_drivebelt']);
	$drybooth_frame = convertValue($_POST['drybooth_frame']);
	$agitator_electrics = convertValue($_POST['agitator_electrics']);
	$agitator_chains = convertValue($_POST['agitator_chains']);
	$agitator_grease = convertValue($_POST['agitator_grease']);
	$chemical_bund = convertValue($_POST['chemical_bund']);
	$racking_safetylock = convertValue($_POST['racking_safetylock']);
	$racking_floorbolts = convertValue($_POST['racking_floorbolts']);
	$racking_loadmarkings = convertValue($_POST['racking_loadmarkings']);
	$racking_supportbeams = convertValue($_POST['racking_supportbeams']);
	$racking_uprights = convertValue($_POST['racking_uprights']);
	
	$status = "Y";

	if ($large_emerstops == 0 || 
		$large_grease == 0 || 
		$large_electrics == 0 || 
		$large_cooling == 0 || 
		$small_emerstops == 0 || 
		$small_grease == 0 || 
		$small_electrics == 0 || 
		$small_cooling == 0 || 
		$tool_electrics == 0 || 
		$tool_airsupply == 0 || 
		$tool_filters == 0 || 
		$tool_cyclone == 0 || 
		$turbex_water == 0 || 
		$turbex_airsupply == 0 || 
		$turbex_electrics == 0 || 
		$shotblast1_electrics == 0 || 
		$shotblast1_airsupply == 0 || 
		$shotblast1_filters == 0 || 
		$shotblast1_cyclone == 0 || 
		$shotblast2_electrics == 0 || 
		$shotblast2_airsupply == 0 || 
		$shotblast2_filters == 0 || 
		$shotblast2_cyclone == 0 || 
		$washbooth_electrics == 0 || 
		$washbooth_watersupply == 0 || 
		$washbooth_frame == 0 || 
		$drybooth_electrics == 0 || 
		$drybooth_drivebelt == 0 ||
		$drybooth_frame == 0 || 
		$agitator_electrics == 0 || 
		$agitator_chains == 0 || 
		$agitator_grease == 0 || 
		$chemical_bund == 0 || 
		$racking_safetylock == 0 || 
		$racking_floorbolts == 0 || 
		$racking_loadmarkings == 0 || 
		$racking_supportbeams == 0 || 
		$racking_uprights == 0 || 
		$merkle_emerstops == 0 || 
		$merkle_fingerguardfront == 0 || 
		$merkle_fingerguardrear == 0 || 
		$merkle_mechanics == 0 || 
		$merkle_electrics == 0) {
		
		/* Fault. */
		$status = "F";
	}

	if (isset($_POST['correction_notes'])) {
		$correction_notes = mysql_escape_string($_POST['correction_notes']);

	} else {
		$correction_notes = "";
	}
	
	$large_emerstops_notes = mysql_escape_string($_POST['large_emerstops_notes']);
	$large_grease_notes = mysql_escape_string($_POST['large_grease_notes']);
	$large_electrics_notes = mysql_escape_string($_POST['large_electrics_notes']);
	$large_cooling_notes = mysql_escape_string($_POST['large_cooling_notes']);
	$small_emerstops_notes = mysql_escape_string($_POST['small_emerstops_notes']);
	$small_grease_notes = mysql_escape_string($_POST['small_grease_notes']);
	$small_electrics_notes = mysql_escape_string($_POST['small_electrics_notes']);
	$small_cooling_notes = mysql_escape_string($_POST['small_cooling_notes']);
	$merkle_emerstops_notes = mysql_escape_string($_POST['merkle_emerstops_notes']);
	$merkle_fingerguardfront_notes = mysql_escape_string($_POST['merkle_fingerguardfront_notes']);
	$merkle_fingerguardrear_notes = mysql_escape_string($_POST['merkle_fingerguardrear_notes']);
	$merkle_mechanics_notes = mysql_escape_string($_POST['merkle_mechanics_notes']);
	$merkle_electrics_notes = mysql_escape_string($_POST['merkle_electrics_notes']);
	
	$tool_electrics_notes = mysql_escape_string($_POST['tool_electrics_notes']);
	$tool_airsupply_notes = mysql_escape_string($_POST['tool_airsupply_notes']);
	$tool_filters_notes = mysql_escape_string($_POST['tool_filters_notes']);
	$tool_cyclone_notes = mysql_escape_string($_POST['tool_cyclone_notes']);
	$turbex_water_notes = mysql_escape_string($_POST['turbex_water_notes']);
	$turbex_airsupply_notes = mysql_escape_string($_POST['turbex_airsupply_notes']);
	$turbex_electrics_notes = mysql_escape_string($_POST['turbex_electrics_notes']);
	$shotblast1_electrics_notes = mysql_escape_string($_POST['shotblast1_electrics_notes']);
	$shotblast1_airsupply_notes = mysql_escape_string($_POST['shotblast1_airsupply_notes']);
	$shotblast1_filters_notes = mysql_escape_string($_POST['shotblast1_filters_notes']);
	$shotblast1_cyclone_notes = mysql_escape_string($_POST['shotblast1_cyclone_notes']);
	$shotblast2_electrics_notes = mysql_escape_string($_POST['shotblast2_electrics_notes']);
	$shotblast2_airsupply_notes = mysql_escape_string($_POST['shotblast2_airsupply_notes']);
	$shotblast2_filters_notes = mysql_escape_string($_POST['shotblast2_filters_notes']);
	$shotblast2_cyclone_notes = mysql_escape_string($_POST['shotblast2_cyclone_notes']);
	$washbooth_electrics_notes = mysql_escape_string($_POST['washbooth_electrics_notes']);
	$washbooth_watersupply_notes = mysql_escape_string($_POST['washbooth_watersupply_notes']);
	$washbooth_frame_notes = mysql_escape_string($_POST['washbooth_frame_notes']);
	$drybooth_electrics_notes = mysql_escape_string($_POST['drybooth_electrics_notes']);
	$drybooth_drivebelt_notes = mysql_escape_string($_POST['drybooth_drivebelt_notes']);
	$drybooth_frame_notes = mysql_escape_string($_POST['drybooth_frame_notes']);
	$agitator_electrics_notes = mysql_escape_string($_POST['agitator_electrics_notes']);
	$agitator_chains_notes = mysql_escape_string($_POST['agitator_chains_notes']);
	$agitator_grease_notes = mysql_escape_string($_POST['agitator_grease_notes']);
	$chemical_bund_notes = mysql_escape_string($_POST['chemical_bund_notes']);
	$racking_safetylock_notes = mysql_escape_string($_POST['racking_safetylock_notes']);
	$racking_floorbolts_notes = mysql_escape_string($_POST['racking_floorbolts_notes']);
	$racking_loadmarkings_notes = mysql_escape_string($_POST['racking_loadmarkings_notes']);
	$racking_supportbeams_notes = mysql_escape_string($_POST['racking_supportbeams_notes']);
	$racking_uprights_notes = mysql_escape_string($_POST['racking_uprights_notes']);
	

	if (isset($_POST['jobstatus']) && $_POST['jobstatus'] == "on") {
		$status = "Y";
	}
		
	$signatureid = saveImage();
	$checklistid = getAssociatedCheckList($subcategoryid);
	$memberid = getLoggedOnMemberID();
	
	$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}servicechecklist 
			(
				checklistid, signatureid, inspectiondate, 
				inspectionuserid, 
				large_emerstops, large_grease,
				large_electrics, large_cooling,
				small_emerstops, small_grease,
				small_electrics, small_cooling,
				merkle_emerstops, merkle_fingerguardfront,
				merkle_mechanics, merkle_fingerguardrear,
				merkle_electrics, 
				tool_electrics,
				tool_airsupply,
				tool_filters,
				tool_cyclone,
				turbex_water,
				turbex_airsupply,
				turbex_electrics,
				shotblast1_electrics,
				shotblast1_airsupply,
				shotblast1_filters,
				shotblast1_cyclone,
				shotblast2_electrics,
				shotblast2_airsupply,
				shotblast2_filters,
				shotblast2_cyclone,
				washbooth_electrics,
				washbooth_watersupply,
				washbooth_frame,
				drybooth_electrics,
				drybooth_drivebelt,
				drybooth_frame,
				agitator_electrics,
				agitator_chains,
				agitator_grease,
				chemical_bund,
				racking_safetylock,
				racking_floorbolts,
				racking_loadmarkings,
				racking_supportbeams,
				racking_uprights,
				large_emerstops_notes,
				large_grease_notes, large_electrics_notes,
				large_cooling_notes, small_emerstops_notes,
				small_grease_notes, small_electrics_notes,
				small_cooling_notes, merkle_emerstops_notes,
				merkle_fingerguardfront_notes, merkle_mechanics_notes,
				merkle_fingerguardrear_notes, merkle_electrics_notes,
				tool_electrics_notes,
				tool_airsupply_notes,
				tool_filters_notes,
				tool_cyclone_notes,
				turbex_water_notes,
				turbex_airsupply_notes,
				turbex_electrics_notes,
				shotblast1_electrics_notes,
				shotblast1_airsupply_notes,
				shotblast1_filters_notes,
				shotblast1_cyclone_notes,
				shotblast2_electrics_notes,
				shotblast2_airsupply_notes,
				shotblast2_filters_notes,
				shotblast2_cyclone_notes,
				washbooth_electrics_notes,
				washbooth_watersupply_notes,
				washbooth_frame_notes,
				drybooth_electrics_notes,
				drybooth_drivebelt_notes,
				drybooth_frame_notes,
				agitator_electrics_notes,
				agitator_chains_notes,
				agitator_grease_notes,
				chemical_bund_notes,
				racking_safetylock_notes,
				racking_floorbolts_notes,
				racking_loadmarkings_notes,
				racking_supportbeams_notes,
				racking_uprights_notes,
				correction_notes,
				metacreateduserid, metamodifieduserid, 
				metacreateddate, metamodifieddate
			)
			VALUES
			(
				$checklistid, $signatureid, '$inspectiondate', 
				$inspectionuserid,  
				$large_emerstops, $large_grease,
				$large_electrics, $large_cooling,
				$small_emerstops, $small_grease,
				$small_electrics, $small_cooling,
				$merkle_emerstops, $merkle_fingerguardfront,
				$merkle_mechanics, $merkle_fingerguardrear,
				$merkle_electrics, 
				$tool_electrics,
				$tool_airsupply,
				$tool_filters,
				$tool_cyclone,
				$turbex_water,
				$turbex_airsupply,
				$turbex_electrics,
				$shotblast1_electrics,
				$shotblast1_airsupply,
				$shotblast1_filters,
				$shotblast1_cyclone,
				$shotblast2_electrics,
				$shotblast2_airsupply,
				$shotblast2_filters,
				$shotblast2_cyclone,
				$washbooth_electrics,
				$washbooth_watersupply,
				$washbooth_frame,
				$drybooth_electrics,
				$drybooth_drivebelt,
				$drybooth_frame,
				$agitator_electrics,
				$agitator_chains,
				$agitator_grease,
				$chemical_bund,
				$racking_safetylock,
				$racking_floorbolts,
				$racking_loadmarkings,
				$racking_supportbeams,
				$racking_uprights,
				'$large_emerstops_notes',
				'$large_grease_notes', '$large_electrics_notes',
				'$large_cooling_notes', '$small_emerstops_notes',
				'$small_grease_notes', '$small_electrics_notes',
				'$small_cooling_notes', '$merkle_emerstops_notes',
				'$merkle_fingerguardfront_notes', '$merkle_mechanics_notes',
				'$merkle_fingerguardrear_notes', '$merkle_electrics_notes',
				'$tool_electrics_notes',
				'$tool_airsupply_notes',
				'$tool_filters_notes',
				'$tool_cyclone_notes',
				'$turbex_water_notes',
				'$turbex_airsupply_notes',
				'$turbex_electrics_notes',
				'$shotblast1_electrics_notes',
				'$shotblast1_airsupply_notes',
				'$shotblast1_filters_notes',
				'$shotblast1_cyclone_notes',
				'$shotblast2_electrics_notes',
				'$shotblast2_airsupply_notes',
				'$shotblast2_filters_notes',
				'$shotblast2_cyclone_notes',
				'$washbooth_electrics_notes',
				'$washbooth_watersupply_notes',
				'$washbooth_frame_notes',
				'$drybooth_electrics_notes',
				'$drybooth_drivebelt_notes',
				'$drybooth_frame_notes',
				'$agitator_electrics_notes',
				'$agitator_chains_notes',
				'$agitator_grease_notes',
				'$chemical_bund_notes',
				'$racking_safetylock_notes',
				'$racking_floorbolts_notes',
				'$racking_loadmarkings_notes',
				'$racking_supportbeams_notes',
				'$racking_uprights_notes',
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
		