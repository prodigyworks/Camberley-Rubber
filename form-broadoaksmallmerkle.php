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
		<td>Small Merkle</td>
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
		<td>Emergency Stops</td>
		<td>
			<input class="notesbox" type="radio" id="emergencystops" value="on" name="emergencystops">Ok</input>
			<input class="notesbox" type="radio" id="emergencystops" value="off" name="emergencystops">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="emergencystops_notes" name="emergencystops_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Finger Guards</td>
		<td>
			<input class="notesbox" type="radio" id="fingerguards" value="on" name="fingerguards">Ok</input>
			<input class="notesbox" type="radio" id="fingerguards" value="off" name="fingerguards">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="fingerguards_notes" name="fingerguards_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Mechanics</td>
		<td>
			<input class="notesbox" type="radio" id="mechanics" value="on" name="mechanics">Ok</input>
			<input class="notesbox" type="radio" id="mechanics" value="off" name="mechanics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="mechanics_notes" name="mechanics_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Electrics</td>
		<td>
			<input class="notesbox" type="radio" id="electrics" value="on" name="electrics">Ok</input>
			<input class="notesbox" type="radio" id="electrics" value="off" name="electrics">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="electrics_notes" name="electrics_notes" cols=60 rows=5></textarea>
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
				FROM {$_SESSION['DB_PREFIX']}broadoakchecklist A
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
				FROM {$_SESSION['DB_PREFIX']}broadoakchecklist
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);

		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#electrics_notes").val("<?php echo mysql_escape_string($member['electrics_notes']); ?>");
				$("#emergencystops_notes").val("<?php echo mysql_escape_string($member['emergencystops_notes']); ?>");
				$("#mechanics_notes").val("<?php echo mysql_escape_string($member['mechanics_notes']); ?>");
				$("#fingerguards_notes").val("<?php echo mysql_escape_string($member['fingerguards_notes']); ?>");
				$('input:radio[name=electrics][value=<?php echo $member['electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=emergencystops][value=<?php echo $member['emergencystops'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=mechanics][value=<?php echo $member['mechanics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=fingerguards][value=<?php echo $member['fingerguards'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
