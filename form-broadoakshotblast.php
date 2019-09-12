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
		<td>Shot Blast</td>
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
		<td>Air Supply</td>
		<td>
			<input class="notesbox" type="radio" id="airsupply" value="on" name="airsupply">Ok</input>
			<input class="notesbox" type="radio" id="airsupply" value="off" name="airsupply">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="airsupply_notes" name="airsupply_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Filters</td>
		<td>
			<input class="notesbox" type="radio" id="filters" value="on" name="filters">Ok</input>
			<input class="notesbox" type="radio" id="filters" value="off" name="filters">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="filters_notes" name="filters_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Cyclone</td>
		<td>
			<input class="notesbox" type="radio" id="cyclone" value="on" name="cyclone">Ok</input>
			<input class="notesbox" type="radio" id="cyclone" value="off" name="cyclone">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="cyclone_notes" name="cyclone_notes" cols=60 rows=5></textarea>
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
				$("#airsupply_notes").val("<?php echo mysql_escape_string($member['airsupply_notes']); ?>");
				$("#cyclone_notes").val("<?php echo mysql_escape_string($member['cyclone_notes']); ?>");
				$("#filters_notes").val("<?php echo mysql_escape_string($member['filters_notes']); ?>");
				$('input:radio[name=electrics][value=<?php echo $member['electrics'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=airsupply][value=<?php echo $member['airsupply'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=cyclone][value=<?php echo $member['cyclone'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=filters][value=<?php echo $member['filters'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
