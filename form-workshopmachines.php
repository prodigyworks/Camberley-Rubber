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
		<td>Press Number</td>
		<td>
			<input id="pressnumber" name="pressnumber" readonly value="<?php echo $member['name']; ?>" size=30></input>
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
		<td>Hydraulic Hoses</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulichoses" value="on" name="hydraulichoses">Ok</input>
			<input class="notesbox" type="radio" id="hydraulichoses" value="off" name="hydraulichoses">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulichoses_notes" name="hydraulichoses_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Hydraulic Valves</td>
		<td>
			<input class="notesbox" type="radio" id="hydraulicvalves" value="on" name="hydraulicvalves">Ok</input>
			<input class="notesbox" type="radio" id="doohydraulicvalvesrseal" value="off" name="hydraulicvalves">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydraulicvalves_notes" name="hydraulicvalves_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Hydraulic Cylinders</td>
		<td>
			<input class="notesbox" type="radio" id="hydrauliccylinders" value="on" name="hydrauliccylinders">Ok</input>
			<input class="notesbox" type="radio" id="hydrauliccylinders" value="off" name="hydrauliccylinders">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hydrauliccylinders_notes" name="hydrauliccylinders_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Frame</td>
		<td>
			<input class="notesbox" type="radio" id="frame" value="on" name="frame">Ok</input>
			<input class="notesbox" type="radio" id="frame" value="off" name="frame">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="frame_notes" name="frame_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Heaters (Top Platen):</td>
		<td>
			<input class="notesbox" type="radio" id="heaterstopplaten" value="on" name="heaterstopplaten">Ok</input>
			<input class="notesbox" type="radio" id="heaterstopplaten" value="off" name="heaterstopplaten">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heaterstopplaten_notes" name="heaterstopplaten_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Heaters (Bottom Platen):</td>
		<td>
			<input class="notesbox" type="radio" id="heatersbottomplaten" value="on" name="heatersbottomplaten">Ok</input>
			<input class="notesbox" type="radio" id="heatersbottomplaten" value="off" name="heatersbottomplaten">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="heatersbottomplaten_notes" name="heatersbottomplaten_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Time Clock</td>
		<td>
			<input class="notesbox" type="radio" id="timeclock" value="on" name="timeclock">Ok</input>
			<input class="notesbox" type="radio" id="timeclock" value="off" name="timeclock">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="timeclock_notes" name="timeclock_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Light Guard</td>
		<td>
			<input class="notesbox" type="radio" id="lightguard" value="on" name="lightguard">Ok</input>
			<input class="notesbox" type="radio" id="lightguard" value="off" name="lightguard">Not Ok</input>
			<input class="notesbox" type="radio" id="lightguard" value="na" name="lightguard">N/A</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="lightguard_notes" name="lightguard_notes" cols=60 rows=5></textarea>
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
	function load($id) {
		$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}workshopchecklist A
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
				FROM {$_SESSION['DB_PREFIX']}workshopchecklist
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);

		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#hydraulichoses_notes").val("<?php echo mysql_escape_string($member['hydraulichoses_notes']); ?>");
				$("#hydraulicvalves_notes").val("<?php echo mysql_escape_string($member['hydraulicvalves_notes']); ?>");
				$("#hydrauliccylinders_notes").val("<?php echo mysql_escape_string($member['hydrauliccylinders_notes']); ?>");
				$("#frame_notes").val("<?php echo mysql_escape_string($member['frame_notes']); ?>");
				$("#lightguard_notes").val("<?php echo mysql_escape_string($member['lightguard_notes']); ?>");
				$("#timeclock_notes").val("<?php echo mysql_escape_string($member['timeclock_notes']); ?>");
				$("#heaterstopplaten_notes").val("<?php echo mysql_escape_string($member['heaterstopplaten_notes']); ?>");
				$("#heatersbottomplaten_notes").val("<?php echo mysql_escape_string($member['heatersbottomplaten_notes']); ?>");

<?php
				if ($member['lightguard'] == 1) {
					$lightguard = "on";

				} else if ($member['lightguard'] == 2) {
					$lightguard = "na";

				} else {
					$lightguard = "off";
				}
?>
				$('input:radio[name=hydraulichoses][value=<?php echo $member['hydraulichoses'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=hydraulicvalves][value=<?php echo $member['hydraulicvalves'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=hydrauliccylinders][value=<?php echo $member['hydrauliccylinders'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=frame][value=<?php echo $member['frame'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=lightguard][value=<?php echo $lightguard; ?>]').click();
				$('input:radio[name=timeclock][value=<?php echo $member['timeclock'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=heaterstopplaten][value=<?php echo $member['heaterstopplaten'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=heatersbottomplaten][value=<?php echo $member['heatersbottomplaten'] == 1 ? "on" : "off"; ?>]').click();
				
<?php
			}
		}
	}
?>
