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
		<td>Bench</td>
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
		<td>Face Shield present and clean</td>
		<td>
			<input class="notesbox" type="radio" id="faceshield" value="on" name="faceshield">Ok</input>
			<input class="notesbox" type="radio" id="faceshield" value="off" name="faceshield">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="faceshield_notes" name="faceshield_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Tool rest tight and correctly set</td>
		<td>
			<input class="notesbox" type="radio" id="toolrest" value="on" name="toolrest">Ok</input>
			<input class="notesbox" type="radio" id="toolrest" value="off" name="toolrest">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="toolrest_notes" name="toolrest_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Wheel damage</td>
		<td>
			<input class="notesbox" type="radio" id="wheeldamage" value="on" name="wheeldamage">Ok</input>
			<input class="notesbox" type="radio" id="wheeldamage" value="off" name="wheeldamage">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="wheeldamage_notes" name="wheeldamage_notes" cols=60 rows=5></textarea>
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
				$("#faceshield_notes").val("<?php echo mysql_escape_string($member['faceshield_notes']); ?>");
				$("#toolrest_notes").val("<?php echo mysql_escape_string($member['toolrest_notes']); ?>");
				$("#wheeldamage_notes").val("<?php echo mysql_escape_string($member['wheeldamage_notes']); ?>");
				
				$('input:radio[name=faceshield][value=<?php echo $member['faceshield'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=toolrest][value=<?php echo $member['toolrest'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=wheeldamage][value=<?php echo $member['wheeldamage'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
