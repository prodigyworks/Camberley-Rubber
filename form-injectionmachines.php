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
		<td>REP Number</td>
		<td>
			<input id="repnumber" name="repnumber" readonly value="<?php echo $member['name']; ?>" size=30></input>
		</td>
		<td>Location</td>
		<td>
			<input id="location" name="location" readonly value="<?php echo $member['location']; ?>" size=30></input>
		</td>
	</tr>
	<tr>
		<td colspan=4>
			<hr />
		</td>
	</tr>
	<tr>
		<td><b><i>Hydraulics</i></b></td>
	</tr>
	<tr>
		<td>Valves</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulic_valves" value="on" name="hydraulic_valves">Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_valves" value="off" name="hydraulic_valves">Not Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_valves" value="na" name="hydraulic_valves">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulic_valves_notes" name="hydraulic_valves_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Hoses</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulic_hoses" value="on" name="hydraulic_hoses">Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_hoses" value="off" name="hydraulic_hoses">Not Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_hoses" value="na" name="hydraulic_hoses">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulic_hoses_notes" name="hydraulic_hoses_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Pistons</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulic_pistons" value="on" name="hydraulic_pistons">Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_pistons" value="off" name="hydraulic_pistons">Not Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_pistons" value="na" name="hydraulic_pistons">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulic_pistons_notes" name="hydraulic_pistons_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Oil Level</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulic_oillevel" value="on" name="hydraulic_oillevel">Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_oillevel" value="off" name="hydraulic_oillevel">Not Ok</input>
			<input class="notesbox" type="radio" id="hydraulic_oillevel" value="na" name="hydraulic_oillevel">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulic_oillevel_notes" name="hydraulic_oillevel_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Heating</i></b></td>
	</tr>
	<tr>
		<td>Top Pltn</td>
		<td>
			<input class="notesbox" type="radio" id="heating_toppltn" value="on" name="heating_toppltn">Ok</input>
			<input class="notesbox" type="radio" id="heating_toppltn" value="off" name="heating_toppltn">Not Ok</input>
			<input class="notesbox" type="radio" id="heating_toppltn" value="na" name="heating_toppltn">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heating_toppltn_notes" name="heating_toppltn_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Bottom Pltn</td>
		<td>
			<input class="notesbox" type="radio" id="heating_bottompltn" value="on" name="heating_bottompltn">Ok</input>
			<input class="notesbox" type="radio" id="heating_bottompltn" value="off" name="heating_bottompltn">Not Ok</input>
			<input class="notesbox" type="radio" id="heating_bottompltn" value="na" name="heating_bottompltn">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heating_bottompltn_notes" name="heating_bottompltn_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Extruder</td>
		<td>
			<input class="notesbox" type="radio" id="heating_extruder" value="on" name="heating_extruder">Ok</input>
			<input class="notesbox" type="radio" id="heating_extruder" value="off" name="heating_extruder">Not Ok</input>
			<input class="notesbox" type="radio" id="heating_extruder" value="na" name="heating_extruder">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heating_extruder_notes" name="heating_extruder_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Injection</td>
		<td>
			<input class="notesbox" type="radio" id="heating_injection" value="on" name="heating_injection">Ok</input>
			<input class="notesbox" type="radio" id="heating_injection" value="off" name="heating_injection">Not Ok</input>
			<input class="notesbox" type="radio" id="heating_injection" value="na" name="heating_injection">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heating_injection_notes" name="heating_injection_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Oil Level</td>
		<td>
			<input class="notesbox" type="radio" id="heating_oillevel" value="on" name="heating_oillevel">Ok</input>
			<input class="notesbox" type="radio" id="heating_oillevel" value="off" name="heating_oillevel">Not Ok</input>
			<input class="notesbox" type="radio" id="heating_oillevel" value="na" name="heating_oillevel">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heating_oillevel_notes" name="heating_oillevel_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Pnuematics</i></b></td>
	</tr>
	<tr>
		<td>Air Pressure</td>
		<td>
			<input class="notesbox" type="radio" id="pnuematic_airpressure" value="on" name="pnuematic_airpressure">Ok</input>
			<input class="notesbox" type="radio" id="pnuematic_airpressure" value="off" name="pnuematic_airpressure">Not Ok</input>
			<input class="notesbox" type="radio" id="pnuematic_airpressure" value="na" name="pnuematic_airpressure">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="pnuematic_airpressure_notes" name="pnuematic_airpressure_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Gate Speed (Up & Down)</td>
		<td>
			<input class="notesbox" type="radio" id="pnuematic_gatespeed" value="on" name="pnuematic_gatespeed">Ok</input>
			<input class="notesbox" type="radio" id="pnuematic_gatespeed" value="off" name="pnuematic_gatespeed">Not Ok</input>
			<input class="notesbox" type="radio" id="pnuematic_gatespeed" value="na" name="pnuematic_gatespeed">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="pnuematic_gatespeed_notes" name="pnuematic_gatespeed_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Safety</i></b></td>
	</tr>
	<tr>
		<td>Gate Nudge Bar</td>
		<td>
			<input class="notesbox" type="radio" id="safety_gatenudgebar" value="on" name="safety_gatenudgebar">Ok</input>
			<input class="notesbox" type="radio" id="safety_gatenudgebar" value="off" name="safety_gatenudgebar">Not Ok</input>
			<input class="notesbox" type="radio" id="safety_gatenudgebar" value="na" name="safety_gatenudgebar">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="safety_gatenudgebar_notes" name="safety_gatenudgebar_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Emergency Stops</td>
		<td>
			<input class="notesbox" type="radio" id="safety_emergencystop" value="on" name="safety_emergencystop">Ok</input>
			<input class="notesbox" type="radio" id="safety_emergencystop" value="off" name="safety_emergencystop">Not Ok</input>
			<input class="notesbox" type="radio" id="safety_emergencystop" value="na" name="safety_emergencystop">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="safety_emergencystop_notes" name="safety_emergencystop_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Clamp Safety</td>
		<td>
			<input class="notesbox" type="radio" id="safety_clampsafety" value="on" name="safety_clampsafety">Ok</input>
			<input class="notesbox" type="radio" id="safety_clampsafety" value="off" name="safety_clampsafety">Not Ok</input>
			<input class="notesbox" type="radio" id="safety_clampsafety" value="na" name="safety_clampsafety">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="safety_clampsafety_notes" name="safety_clampsafety_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td><b><i>Additional Checks</i></b></td>
	</tr>
	<tr>
		<td>Column Nuts</td>
		<td>
			<input class="notesbox" type="radio" id="additional_columnnuts" value="on" name="additional_columnnuts">Ok</input>
			<input class="notesbox" type="radio" id="additional_columnnuts" value="off" name="additional_columnnuts">Not Ok</input>
			<input class="notesbox" type="radio" id="additional_columnnuts" value="na" name="additional_columnnuts">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="additional_columnnuts_notes" name="additional_columnnuts_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Encoder Belts</td>
		<td>
			<input class="notesbox" type="radio" id="additional_encodebelts" value="on" name="additional_encodebelts">Ok</input>
			<input class="notesbox" type="radio" id="additional_encodebelts" value="off" name="additional_encodebelts">Not Ok</input>
			<input class="notesbox" type="radio" id="additional_encodebelts" value="na" name="additional_encodebelts">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="additional_encodebelts_notes" name="additional_encodebelts_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Platen Parallelism</td>
		<td>
			<input class="notesbox" type="radio" id="additional_platenparellelism" value="on" name="additional_platenparellelism">Ok</input>
			<input class="notesbox" type="radio" id="additional_platenparellelism" value="off" name="additional_platenparellelism">Not Ok</input>
			<input class="notesbox" type="radio" id="additional_platenparellelism" value="na" name="additional_platenparellelism">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="additional_platenparellelism_notes" name="additional_platenparellelism_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Comments</td>
		<td colspan=3>
			<textarea id="comments" name="comments" cols=80 rows=5></textarea>
		</td>
	</tr>
</table>

<?php 
	function convertValue($str) {
		if ($str == 1) {
			return "on";
		}
		
		if ($str == 0) {
			return "off";
		}
		
		if ($str == 2) {
			return "na";
		}
	}
	
	function load($id) {
		$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}repchecklist A
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

		$sql = "SELECT *, DATE_FORMAT(inspectiondate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}repchecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#additional_platenparellelism_notes").val("<?php echo $member['additional_platenparellelism_notes']; ?>");
				$("#additional_encodebelts_notes").val("<?php echo $member['additional_encodebelts_notes']; ?>");
				$("#additional_columnnuts_notes").val("<?php echo $member['additional_columnnuts_notes']; ?>");
				$("#safety_clampsafety_notes").val("<?php echo $member['safety_clampsafety_notes']; ?>");
				$("#safety_emergencystop_notes").val("<?php echo $member['safety_emergencystop_notes']; ?>");
				$("#safety_gatenudgebar_notes").val("<?php echo $member['safety_gatenudgebar_notes']; ?>");
				$("#pnuematic_gatespeed_notes").val("<?php echo $member['pnuematic_gatespeed_notes']; ?>");
				$("#pnuematic_airpressure_notes").val("<?php echo $member['pnuematic_airpressure_notes']; ?>");
				$("#heating_oillevel_notes").val("<?php echo $member['heating_oillevel_notes']; ?>");
				$("#heating_injection_notes").val("<?php echo $member['heating_injection_notes']; ?>");
				$("#heating_extruder_notes").val("<?php echo $member['heating_extruder_notes']; ?>");
				$("#heating_bottompltn_notes").val("<?php echo $member['heating_bottompltn_notes']; ?>");
				$("#heating_toppltn_notes").val("<?php echo $member['heating_toppltn_notes']; ?>");
				$("#hydraulic_oillevel_notes").val("<?php echo $member['hydraulic_oillevel_notes']; ?>");
				$("#hydraulic_pistons_notes").val("<?php echo $member['hydraulic_pistons_notes']; ?>");
				$("#hydraulic_hoses_notes").val("<?php echo $member['hydraulic_hoses_notes']; ?>");
				$("#hydraulic_valves_notes").val("<?php echo $member['hydraulic_valves_notes']; ?>");

				$('input:radio[name=additional_platenparellelism][value=<?php echo convertValue($member['additional_platenparellelism']); ?>]').click();				
				$('input:radio[name=additional_encodebelts][value=<?php echo convertValue($member['additional_encodebelts']); ?>]').click();				
				$('input:radio[name=additional_columnnuts][value=<?php echo convertValue($member['additional_columnnuts']); ?>]').click();				
				$('input:radio[name=safety_clampsafety][value=<?php echo convertValue($member['safety_clampsafety']); ?>]').click();				
				$('input:radio[name=safety_emergencystop][value=<?php echo convertValue($member['safety_emergencystop']); ?>]').click();				
				$('input:radio[name=safety_gatenudgebar][value=<?php echo convertValue($member['safety_gatenudgebar']); ?>]').click();				
				$('input:radio[name=pnuematic_gatespeed][value=<?php echo convertValue($member['pnuematic_gatespeed']); ?>]').click();				
				$('input:radio[name=pnuematic_airpressure][value=<?php echo convertValue($member['pnuematic_airpressure']); ?>]').click();				
				$('input:radio[name=heating_oillevel][value=<?php echo convertValue($member['heating_oillevel']); ?>]').click();				
				$('input:radio[name=heating_injection][value=<?php echo convertValue($member['heating_injection']); ?>]').click();				
				$('input:radio[name=heating_extruder][value=<?php echo convertValue($member['heating_extruder']); ?>]').click();				
				$('input:radio[name=heating_bottompltn][value=<?php echo convertValue($member['heating_bottompltn']); ?>]').click();				
				$('input:radio[name=heating_toppltn][value=<?php echo convertValue($member['heating_toppltn']); ?>]').click();				
				$('input:radio[name=hydraulic_oillevel][value=<?php echo convertValue($member['hydraulic_oillevel']); ?>]').click();				
				$('input:radio[name=hydraulic_pistons][value=<?php echo convertValue($member['hydraulic_pistons']); ?>]').click();				
				$('input:radio[name=hydraulic_hoses][value=<?php echo convertValue($member['hydraulic_hoses']); ?>]').click();				
				$('input:radio[name=hydraulic_valves][value=<?php echo convertValue($member['hydraulic_valves']); ?>]').click();				
<?php
			}
		}
	}
?>
