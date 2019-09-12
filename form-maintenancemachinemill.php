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
		<td>Mill</td>
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
		<td>Lubricate Quill Down feed (light Oil) 5-10 drops</td>
		<td>
			<input class="notesbox" type="radio" id="lubircatequill" value="on" name="lubircatequill">Ok</input>
			<input class="notesbox" type="radio" id="lubircatequill" value="off" name="lubircatequill">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="lubircatequill_notes" name="lubircatequill_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Bearing block (light oil) 5-10 drops</td>
		<td>
			<input class="notesbox" type="radio" id="bearingblock" value="on" name="bearingblock">Ok</input>
			<input class="notesbox" type="radio" id="bearingblock" value="off" name="bearingblock">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="bearingblock_notes" name="bearingblock_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Hi-Low gear mechanism (Grease)</td>
		<td>
			<input class="notesbox" type="radio" id="hilowgear" value="on" name="hilowgear">Ok</input>
			<input class="notesbox" type="radio" id="hilowgear" value="off" name="hilowgear">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="hilowgear_notes" name="hilowgear_notes" cols=60 rows=5></textarea>
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
				FROM {$_SESSION['DB_PREFIX']}maintenancemachinechecklist A
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
				FROM {$_SESSION['DB_PREFIX']}maintenancemachinechecklist
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);

		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#lubircatequill_notes").val("<?php echo mysql_escape_string($member['lubircatequill_notes']); ?>");
				$("#bearingblock_notes").val("<?php echo mysql_escape_string($member['bearingblock_notes']); ?>");
				$("#hilowgear_notes").val("<?php echo mysql_escape_string($member['hilowgear_notes']); ?>");
				
				$('input:radio[name=lubircatequill][value=<?php echo $member['lubircatequill'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=bearingblock][value=<?php echo $member['bearingblock'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=hilowgear][value=<?php echo $member['hilowgear'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
