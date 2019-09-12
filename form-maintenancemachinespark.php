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
		<td>Spark Eroder</td>
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
		<td>Flame detector</td>
		<td>
			<input class="notesbox" type="radio" id="flamedetector" value="on" name="flamedetector">Ok</input>
			<input class="notesbox" type="radio" id="flamedetector" value="off" name="flamedetector">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="flamedetector_notes" name="flamedetector_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Dielectric Level probes</td>
		<td>
			<input class="notesbox" type="radio" id="dielectric" value="on" name="dielectric">Ok</input>
			<input class="notesbox" type="radio" id="dielectric" value="off" name="dielectric">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="dielectric_notes" name="dielectric_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Lubrication of X,Y & Z axis</td>
		<td>
			<input class="notesbox" type="radio" id="lubricationaxis" value="on" name="lubricationaxis">Ok</input>
			<input class="notesbox" type="radio" id="lubricationaxis" value="off" name="lubricationaxis">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="lubricationaxis_notes" name="lubricationaxis_notes" cols=60 rows=5></textarea>
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
				$("#flamedetector_notes").val("<?php echo mysql_escape_string($member['flamedetector_notes']); ?>");
				$("#dielectric_notes").val("<?php echo mysql_escape_string($member['dielectric_notes']); ?>");
				$("#lubricationaxis_notes").val("<?php echo mysql_escape_string($member['lubricationaxis_notes']); ?>");
				
				$('input:radio[name=flamedetector][value=<?php echo $member['flamedetector'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=dielectric][value=<?php echo $member['dielectric'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=lubricationaxis][value=<?php echo $member['lubricationaxis'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
