<?php require_once("system-db.php"); ?>
<table cellspacing=10>
<?php
	showHistory($member);
?>
	<tr>
		<td>Date</td>
		<td>
			<input id="inspectiondate" name="inspectiondate" readonly value="<?php echo date("d/m/Y H:i:s"); ?>" size=15></input>
		</td>
		<td>Inspected By</td>
		<td>
			<input readonly value="<?php echo GetUserName(); ?>" size=30></input>
			<input id="inspectionuserid" name="inspectionuserid" type="hidden" value="<?php echo getLoggedOnMemberID(); ?>"></input>
			<input id="subcategoryid" name="subcategoryid" type="hidden" value="<?php echo $_GET['id']; ?>"></input>

		</td>
	</tr>
	<tr>
		<td colspan=4>
			<hr />
		</td>
	</tr>
	<tr>
		<td><b><i>Large Mill</i></b></td>
	</tr>
	<tr>
		<td>Emergency Stops < 1/8 Rev</td>
		<td>
			<input class="notesbox" type="radio" id="large_emerstops" value="on" name="large_emerstops">Ok</input>
			<input class="notesbox" type="radio" id="large_emerstops" value="off" name="large_emerstops">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="large_emerstops_notes" name="large_emerstops_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Grease</td>
		<td>
			<input class="notesbox" type="radio" id="large_grease" value="on" name="large_grease">Ok</input>
			<input class="notesbox" type="radio" id="large_grease" value="off" name="large_grease">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="large_grease_notes" name="large_grease_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="large_electrics" value="on" name="large_electrics">Ok</input>
			<input class="notesbox" type="radio" id="large_electrics" value="off" name="large_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="large_electrics_notes" name="large_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cooling</td>
		<td>
			<input class="notesbox" type="radio" id="large_cooling" value="on" name="large_cooling">Ok</input>
			<input class="notesbox" type="radio" id="large_cooling" value="off" name="large_cooling">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="large_cooling_notes" name="large_cooling_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Small Mill</i></b></td>
	</tr>
	<tr>
		<td>Emergency Stops < 1/8 Rev</td>
		<td>
			<input class="notesbox" type="radio" id="small_emerstops" value="on" name="small_emerstops">Ok</input>
			<input class="notesbox" type="radio" id="small_emerstops" value="off" name="small_emerstops">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="small_emerstops_notes" name="small_emerstops_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Grease</td>
		<td>
			<input class="notesbox" type="radio" id="small_grease" value="on" name="small_grease">Ok</input>
			<input class="notesbox" type="radio" id="small_grease" value="off" name="small_grease">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="small_grease_notes" name="small_grease_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="small_electrics" value="on" name="small_electrics">Ok</input>
			<input class="notesbox" type="radio" id="small_electrics" value="off" name="small_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="small_electrics_notes" name="small_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cooling</td>
		<td>
			<input class="notesbox" type="radio" id="small_cooling" value="on" name="small_cooling">Ok</input>
			<input class="notesbox" type="radio" id="small_cooling" value="off" name="small_cooling">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="small_cooling_notes" name="small_cooling_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Merkle</i></b></td>
	</tr>
	<tr>
		<td>Emergency Stops</td>
		<td>
			<input class="notesbox" type="radio" id="merkle_emerstops" value="on" name="merkle_emerstops">Ok</input>
			<input class="notesbox" type="radio" id="merkle_emerstops" value="off" name="merkle_emerstops">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="merkle_emerstops_notes" name="merkle_emerstops_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Finger Guard Front</td>
		<td>
			<input class="notesbox" type="radio" id="merkle_fingerguardfront" value="on" name="merkle_fingerguardfront">Ok</input>
			<input class="notesbox" type="radio" id="merkle_fingerguardfront" value="off" name="merkle_fingerguardfront">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=merkle_fingerguardfront_notes name="merkle_fingerguardfront_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Mechanics</td>
		<td>
			<input class="notesbox" type="radio" id="merkle_mechanics" value="on" name="merkle_mechanics">Ok</input>
			<input class="notesbox" type="radio" id="merkle_mechanics" value="off" name="merkle_mechanics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="merkle_mechanics_notes" name="merkle_mechanics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Finger Guard Rear</td>
		<td>
			<input class="notesbox" type="radio" id="merkle_fingerguardrear" value="on" name="merkle_fingerguardrear">Ok</input>
			<input class="notesbox" type="radio" id="merkle_fingerguardrear" value="off" name="merkle_fingerguardrear">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=merkle_fingerguardrear_notes name="merkle_fingerguardrear_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="merkle_electrics" value="on" name="merkle_electrics">Ok</input>
			<input class="notesbox" type="radio" id="merkle_electrics" value="off" name="merkle_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="merkle_electrics_notes" name="merkle_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Tool Room</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="tool_electrics" value="on" name="tool_electrics">Ok</input>
			<input class="notesbox" type="radio" id="tool_electrics" value="off" name="tool_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="tool_electrics_notes" name="tool_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Air supply</td>
		<td>
			<input class="notesbox" type="radio" id="tool_airsupply" value="on" name="tool_airsupply">Ok</input>
			<input class="notesbox" type="radio" id="tool_airsupply" value="off" name="tool_airsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=tool_airsupply_notes name="tool_airsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Filters</td>
		<td>
			<input class="notesbox" type="radio" id="tool_filters" value="on" name="tool_filters">Ok</input>
			<input class="notesbox" type="radio" id="tool_filters" value="off" name="tool_filters">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="tool_filters_notes" name="tool_filters_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cyclone</td>
		<td>
			<input class="notesbox" type="radio" id="tool_cyclone" value="on" name="tool_cyclone">Ok</input>
			<input class="notesbox" type="radio" id="tool_cyclone" value="off" name="tool_cyclone">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=tool_cyclone_notes name="tool_cyclone_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Turbex</i></b></td>
	</tr>
	<tr>
		<td>Water Supply</td>
		<td>
			<input class="notesbox" type="radio" id="turbex_water" value="on" name="turbex_water">Ok</input>
			<input class="notesbox" type="radio" id="turbex_water" value="off" name="turbex_water">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="turbex_water_notes" name="turbex_water_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Air supply</td>
		<td>
			<input class="notesbox" type="radio" id="turbex_airsupply" value="on" name="turbex_airsupply">Ok</input>
			<input class="notesbox" type="radio" id="turbex_airsupply" value="off" name="turbex_airsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=turbex_airsupply_notes name="turbex_airsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="turbex_electrics" value="on" name="turbex_electrics">Ok</input>
			<input class="notesbox" type="radio" id="turbex_electrics" value="off" name="turbex_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="turbex_electrics_notes" name="turbex_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Spray Shop</i></b></td>
	</tr>
	<tr>
		<td><b><i>Shot Blast #1</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast1_electrics" value="on" name="shotblast1_electrics">Ok</input>
			<input class="notesbox" type="radio" id="shotblast1_electrics" value="off" name="shotblast1_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="shotblast1_electrics_notes" name="shotblast1_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Air supply</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast1_airsupply" value="on" name="shotblast1_airsupply">Ok</input>
			<input class="notesbox" type="radio" id="shotblast1_airsupply" value="off" name="shotblast1_airsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=shotblast1_airsupply_notes name="shotblast1_airsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Filters</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast1_filters" value="on" name="shotblast1_filters">Ok</input>
			<input class="notesbox" type="radio" id="shotblast1_filters" value="off" name="shotblast1_filters">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="shotblast1_filters_notes" name="shotblast1_filters_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cyclone</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast1_cyclone" value="on" name="shotblast1_cyclone">Ok</input>
			<input class="notesbox" type="radio" id="shotblast1_cyclone" value="off" name="shotblast1_cyclone">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=shotblast1_cyclone_notes name="shotblast1_cyclone_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Shot Blast #2</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast2_electrics" value="on" name="shotblast2_electrics">Ok</input>
			<input class="notesbox" type="radio" id="shotblast2_electrics" value="off" name="shotblast2_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="shotblast2_electrics_notes" name="shotblast2_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Air supply</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast2_airsupply" value="on" name="shotblast2_airsupply">Ok</input>
			<input class="notesbox" type="radio" id="shotblast2_airsupply" value="off" name="shotblast2_airsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=shotblast2_airsupply_notes name="shotblast2_airsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Filters</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast2_filters" value="on" name="shotblast2_filters">Ok</input>
			<input class="notesbox" type="radio" id="shotblast2_filters" value="off" name="shotblast2_filters">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="shotblast2_filters_notes" name="shotblast2_filters_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cyclone</td>
		<td>
			<input class="notesbox" type="radio" id="shotblast2_cyclone" value="on" name="shotblast2_cyclone">Ok</input>
			<input class="notesbox" type="radio" id="shotblast2_cyclone" value="off" name="shotblast2_cyclone">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=shotblast2_cyclone_notes name="shotblast2_cyclone_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Dry Booth 1</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="washbooth_electrics" value="on" name="washbooth_electrics">Ok</input>
			<input class="notesbox" type="radio" id="washbooth_electrics" value="off" name="washbooth_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="washbooth_electrics_notes" name="washbooth_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Drive Belt</td>
		<td>
			<input class="notesbox" type="radio" id="washbooth_watersupply" value="on" name="washbooth_watersupply">Ok</input>
			<input class="notesbox" type="radio" id="washbooth_watersupply" value="off" name="washbooth_watersupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=washbooth_watersupply_notes name="washbooth_watersupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Frame</td>
		<td>
			<input class="notesbox" type="radio" id="washbooth_frame" value="on" name="washbooth_frame">Ok</input>
			<input class="notesbox" type="radio" id="washbooth_frame" value="off" name="washbooth_frame">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="washbooth_frame_notes" name="washbooth_frame_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Dry Booth 2</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="drybooth_electrics" value="on" name="drybooth_electrics">Ok</input>
			<input class="notesbox" type="radio" id="drybooth_electrics" value="off" name="drybooth_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="drybooth_electrics_notes" name="drybooth_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Drive Belt</td>
		<td>
			<input class="notesbox" type="radio" id="drybooth_drivebelt" value="on" name="drybooth_drivebelt">Ok</input>
			<input class="notesbox" type="radio" id="drybooth_drivebelt" value="off" name="drybooth_drivebelt">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=drybooth_drivebelt_notes name="drybooth_drivebelt_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Frame</td>
		<td>
			<input class="notesbox" type="radio" id="drybooth_frame" value="on" name="drybooth_frame">Ok</input>
			<input class="notesbox" type="radio" id="drybooth_frame" value="off" name="drybooth_frame">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="drybooth_frame_notes" name="drybooth_frame_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Agitator</i></b></td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="agitator_electrics" value="on" name="agitator_electrics">Ok</input>
			<input class="notesbox" type="radio" id="agitator_electrics" value="off" name="agitator_electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="agitator_electrics_notes" name="agitator_electrics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Chains</td>
		<td>
			<input class="notesbox" type="radio" id="agitator_chains" value="on" name="agitator_chains">Ok</input>
			<input class="notesbox" type="radio" id="agitator_chains" value="off" name="agitator_chains">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=agitator_chains_notes name="agitator_chains_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Grease</td>
		<td>
			<input class="notesbox" type="radio" id="agitator_grease" value="on" name="agitator_grease">Ok</input>
			<input class="notesbox" type="radio" id="agitator_grease" value="off" name="agitator_grease">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="agitator_grease_notes" name="agitator_grease_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Chemical Store</i></b></td>
	</tr>
	<tr>
		<td>Chemical Bund</td>
		<td>
			<input class="notesbox" type="radio" id="chemical_bund" value="on" name="chemical_bund">Ok</input>
			<input class="notesbox" type="radio" id="chemical_bund" value="off" name="chemical_bund">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="chemical_bund_notes" name="chemical_bund_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Racking</i></b></td>
	</tr>
	<tr>
		<td>Safety Lock</td>
		<td>
			<input class="notesbox" type="radio" id="racking_safetylock" value="on" name="racking_safetylock">Ok</input>
			<input class="notesbox" type="radio" id="racking_safetylock" value="off" name="racking_safetylock">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="racking_safetylock_notes" name="racking_safetylock_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Floor Bolts</td>
		<td>
			<input class="notesbox" type="radio" id="racking_floorbolts" value="on" name="racking_floorbolts">Ok</input>
			<input class="notesbox" type="radio" id="racking_floorbolts" value="off" name="racking_floorbolts">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id=racking_floorbolts_notes name="racking_floorbolts_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Load Markings</td>
		<td>
			<input class="notesbox" type="radio" id="racking_loadmarkings" value="on" name="racking_loadmarkings">Ok</input>
			<input class="notesbox" type="radio" id="racking_loadmarkings" value="off" name="racking_loadmarkings">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="racking_loadmarkings_notes" name="racking_loadmarkings_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Support Beams</td>
		<td>
			<input class="notesbox" type="radio" id="racking_supportbeams" value="on" name="racking_supportbeams">Ok</input>
			<input class="notesbox" type="radio" id="racking_supportbeams" value="off" name="racking_supportbeams">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="racking_supportbeams_notes" name="racking_supportbeams_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Uprights</td>
		<td>
			<input class="notesbox" type="radio" id="racking_uprights" value="on" name="racking_uprights">Ok</input>
			<input class="notesbox" type="radio" id="racking_uprights" value="off" name="racking_uprights">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="racking_uprights_notes" name="racking_uprights_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
</table>

<?php
	function load($id) {
		$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}servicechecklist A
				WHERE A.checklistid = $id
				ORDER BY A.id
				LIMIT 1";
		$result = mysql_query($sql);

		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>
				$("#originaldate").val("<?php echo $member['inspectiondate']; ?>");
				$("#originalinspectedbyid").val("<?php echo GetUserName($member['metacreateduserid']); ?>");
<?php
			}
		}

		$sql = "SELECT A.*, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}servicechecklist A
				WHERE A.checklistid = $id
				ORDER BY A.id DESC
				LIMIT 1";
		$result = mysql_query($sql);

		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>
				$("#large_emerstops_notes").val("<?php echo mysql_escape_string($member['large_emerstops_notes']); ?>");
				$("#large_grease_notes").val("<?php echo mysql_escape_string($member['large_grease_notes']); ?>");
				$("#large_electrics_notes").val("<?php echo mysql_escape_string($member['large_electrics_notes']); ?>");
				$("#large_cooling_notes").val("<?php echo mysql_escape_string($member['large_cooling_notes']); ?>");
				$("#small_emerstops_notes").val("<?php echo mysql_escape_string($member['small_emerstops_notes']); ?>");
				$("#small_grease_notes").val("<?php echo mysql_escape_string($member['small_grease_notes']); ?>");
				$("#small_electrics_notes").val("<?php echo mysql_escape_string($member['small_electrics_notes']); ?>");
				$("#small_cooling_notes").val("<?php echo mysql_escape_string($member['small_cooling_notes']); ?>");
				$("#merkle_electrics_notes").val("<?php echo mysql_escape_string($member['merkle_electrics_notes']); ?>");
				$("#merkle_fingerguardrear_notes").val("<?php echo mysql_escape_string($member['merkle_fingerguardrear_notes']); ?>");
				$("#merkle_mechanics_notes").val("<?php echo mysql_escape_string($member['merkle_mechanics_notes']); ?>");
				$("#merkle_fingerguardfront_notes").val("<?php echo mysql_escape_string($member['merkle_fingerguardfront_notes']); ?>");
				$("#merkle_emerstops_notes").val("<?php echo mysql_escape_string($member['merkle_emerstops_notes']); ?>");
				
				$("#tool_electrics_notes").val("<?php echo mysql_escape_string($member['tool_electrics_notes']); ?>");
				$("#tool_airsupply_notes").val("<?php echo mysql_escape_string($member['tool_airsupply_notes']); ?>");
				$("#tool_filters_notes").val("<?php echo mysql_escape_string($member['tool_filters_notes']); ?>");
				$("#tool_cyclone_notes").val("<?php echo mysql_escape_string($member['tool_cyclone_notes']); ?>");
				$("#turbex_water_notes").val("<?php echo mysql_escape_string($member['turbex_water_notes']); ?>");
				$("#turbex_airsupply_notes").val("<?php echo mysql_escape_string($member['turbex_airsupply_notes']); ?>");
				$("#turbex_electrics_notes").val("<?php echo mysql_escape_string($member['turbex_electrics_notes']); ?>");
				$("#shotblast1_electrics_notes").val("<?php echo mysql_escape_string($member['shotblast1_electrics_notes']); ?>");
				$("#shotblast1_airsupply_notes").val("<?php echo mysql_escape_string($member['shotblast1_airsupply_notes']); ?>");
				$("#shotblast1_filters_notes").val("<?php echo mysql_escape_string($member['shotblast1_filters_notes']); ?>");
				$("#shotblast1_cyclone_notes").val("<?php echo mysql_escape_string($member['shotblast1_cyclone_notes']); ?>");
				$("#shotblast2_electrics_notes").val("<?php echo mysql_escape_string($member['shotblast2_electrics_notes']); ?>");
				$("#shotblast2_airsupply_notes").val("<?php echo mysql_escape_string($member['shotblast2_airsupply_notes']); ?>");
				$("#shotblast2_filters_notes").val("<?php echo mysql_escape_string($member['shotblast2_filters_notes']); ?>");
				$("#shotblast2_cyclone_notes").val("<?php echo mysql_escape_string($member['shotblast2_cyclone_notes']); ?>");
				$("#washbooth_electrics_notes").val("<?php echo mysql_escape_string($member['washbooth_electrics_notes']); ?>");
				$("#washbooth_watersupply_notes").val("<?php echo mysql_escape_string($member['washbooth_watersupply_notes']); ?>");
				$("#washbooth_frame_notes").val("<?php echo mysql_escape_string($member['washbooth_frame_notes']); ?>");
				$("#drybooth_electrics_notes").val("<?php echo mysql_escape_string($member['drybooth_electrics_notes']); ?>");
				$("#drybooth_drivebelt_notes").val("<?php echo mysql_escape_string($member['drybooth_drivebelt_notes']); ?>");
				$("#drybooth_frame_notes").val("<?php echo mysql_escape_string($member['drybooth_frame_notes']); ?>");
				$("#agitator_electrics_notes").val("<?php echo mysql_escape_string($member['agitator_electrics_notes']); ?>");
				$("#agitator_chains_notes").val("<?php echo mysql_escape_string($member['agitator_chains_notes']); ?>");
				$("#agitator_grease_notes").val("<?php echo mysql_escape_string($member['agitator_grease_notes']); ?>");
				$("#chemical_bund_notes").val("<?php echo mysql_escape_string($member['chemical_bund_notes']); ?>");
				$("#racking_safetylock_notes").val("<?php echo mysql_escape_string($member['racking_safetylock_notes']); ?>");
				$("#racking_floorbolts_notes").val("<?php echo mysql_escape_string($member['racking_floorbolts_notes']); ?>");
				$("#racking_loadmarkings_notes").val("<?php echo mysql_escape_string($member['racking_loadmarkings_notes']); ?>");
				$("#racking_supportbeams_notes").val("<?php echo mysql_escape_string($member['racking_supportbeams_notes']); ?>");
				$("#racking_uprights_notes").val("<?php echo mysql_escape_string($member['racking_uprights_notes']); ?>");
				

				$('input:radio[name=large_emerstops][value=<?php echo $member['large_emerstops'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=large_grease][value=<?php echo $member['large_grease'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=large_electrics][value=<?php echo $member['large_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=large_cooling][value=<?php echo $member['large_cooling'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=small_emerstops][value=<?php echo $member['small_emerstops'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=small_grease][value=<?php echo $member['small_grease'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=small_electrics][value=<?php echo $member['small_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=small_cooling][value=<?php echo $member['small_cooling'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=merkle_electrics][value=<?php echo $member['merkle_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=merkle_fingerguardrear][value=<?php echo $member['merkle_fingerguardrear'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=merkle_mechanics][value=<?php echo $member['merkle_mechanics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=merkle_fingerguardfront][value=<?php echo $member['merkle_fingerguardfront'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=merkle_emerstops][value=<?php echo $member['merkle_emerstops'] == 1 ? "on" : "off"; ?>]').click();


				$('input:radio[name=tool_electrics][value=<?php echo $member['tool_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=tool_airsupply][value=<?php echo $member['tool_airsupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=tool_filters][value=<?php echo $member['tool_filters'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=tool_cyclone][value=<?php echo $member['tool_cyclone'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=turbex_water][value=<?php echo $member['turbex_water'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=turbex_airsupply][value=<?php echo $member['turbex_airsupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=turbex_electrics][value=<?php echo $member['turbex_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast1_electrics][value=<?php echo $member['shotblast1_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast1_airsupply][value=<?php echo $member['shotblast1_airsupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast1_filters][value=<?php echo $member['shotblast1_filters'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast1_cyclone][value=<?php echo $member['shotblast1_cyclone'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast2_electrics][value=<?php echo $member['shotblast2_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast2_airsupply][value=<?php echo $member['shotblast2_airsupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast2_filters][value=<?php echo $member['shotblast2_filters'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=shotblast2_cyclone][value=<?php echo $member['shotblast2_cyclone'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=washbooth_electrics][value=<?php echo $member['washbooth_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=washbooth_watersupply][value=<?php echo $member['washbooth_watersupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=washbooth_frame][value=<?php echo $member['washbooth_frame'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=drybooth_electrics][value=<?php echo $member['drybooth_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=drybooth_drivebelt][value=<?php echo $member['drybooth_drivebelt'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=drybooth_frame][value=<?php echo $member['drybooth_frame'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=agitator_electrics][value=<?php echo $member['agitator_electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=agitator_chains][value=<?php echo $member['agitator_chains'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=agitator_grease][value=<?php echo $member['agitator_grease'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=chemical_bund][value=<?php echo $member['chemical_bund'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=racking_safetylock][value=<?php echo $member['racking_safetylock'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=racking_floorbolts][value=<?php echo $member['racking_floorbolts'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=racking_loadmarkings][value=<?php echo $member['racking_loadmarkings'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=racking_supportbeams][value=<?php echo $member['racking_supportbeams'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=racking_uprights][value=<?php echo $member['racking_uprights'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
