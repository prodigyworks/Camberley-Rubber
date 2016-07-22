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
		<td>Oven Number</td>
		<td>
			<input id="ovennumber" name="ovennumber" readonly value="<?php echo $member['name']; ?>" size=30></input>
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
		<td>Door Lock</td>
		<td>
			<input class="notesbox" type="radio" id="doorlock" value="on" name="doorlock">Ok</input>
			<input class="notesbox" type="radio" id="doorlock" value="off" name="doorlock">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="doorlock_notes" name="doorlock_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Door Seal</td>
		<td>
			<input class="notesbox" type="radio" id="doorseal" value="on" name="doorseal">Ok</input>
			<input class="notesbox" type="radio" id="doorseal" value="off" name="doorseal">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="doorseal_notes" name="doorseal_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Fan Motor</td>
		<td>
			<input class="notesbox" type="radio" id="fanmotor" value="on" name="fanmotor">Ok</input>
			<input class="notesbox" type="radio" id="fanmotor" value="off" name="fanmotor">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="fanmotor_notes" name="fanmotor_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrical Supply</td>
		<td>
			<input class="notesbox" type="radio" id="electricalsupply" value="on" name="electricalsupply">Ok</input>
			<input class="notesbox" type="radio" id="electricalsupply" value="off" name="electricalsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="electricalsupply_notes" name="electricalsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Condition Inside</td>
		<td>
			<input class="notesbox" type="radio" id="conditioninside" value="on" name="conditioninside">Ok</input>
			<input class="notesbox" type="radio" id="conditioninside" value="off" name="conditioninside">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="conditioninside_notes" name="conditioninside_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Condition Outside</td>
		<td>
			<input class="notesbox" type="radio" id="conditionoutside" value="on" name="conditionoutside">Ok</input>
			<input class="notesbox" type="radio" id="conditionoutside" value="off" name="conditionoutside">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="conditionoutside_notes" name="conditionoutside_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Set Temperature</td>
		<td>
			<input type="text" id="settemperature" name="settemperature" />
		</td>
	</tr>
	<tr>
		<td>Actual Temperature</td>
		<td>
			<input type="text" id="actualtemperature" name="actualtemperature" />
		</td>
	</tr>
</table>

<?php 
	function load($id) {
		$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}ovenchecklist A
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
				FROM {$_SESSION['DB_PREFIX']}ovenchecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$("#actualtemperature").val("<?php echo $member['actualtemperature']; ?>");
				$("#settemperature").val("<?php echo $member['settemperature']; ?>");
				$("#conditionoutside_notes").val("<?php echo $member['conditionoutside_notes']; ?>");
				$("#conditioninside_notes").val("<?php echo $member['conditioninside_notes']; ?>");
				$("#electricalsupply_notes").val("<?php echo $member['electricalsupply_notes']; ?>");
				$("#fanmotor_notes").val("<?php echo $member['fanmotor_notes']; ?>");
				$("#doorseal_notes").val("<?php echo $member['doorseal_notes']; ?>");
				$("#doorlock_notes").val("<?php echo $member['doorlock_notes']; ?>");

				$('input:radio[name=conditionoutside][value=<?php echo $member['conditionoutside'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=conditioninside][value=<?php echo $member['conditioninside'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=electricalsupply][value=<?php echo $member['electricalsupply'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=fanmotor][value=<?php echo $member['fanmotor'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=doorseal][value=<?php echo $member['doorseal'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=doorlock][value=<?php echo $member['doorlock'] == 1 ? "on" : "off"; ?>]').click();				
<?php
			}
		}
	}
?>
