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
		<td>Lathe</td>
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
		<td>Coolant</td>
		<td>
			<input class="notesbox" type="radio" id="coolant" value="on" name="coolant">Ok</input>
			<input class="notesbox" type="radio" id="coolant" value="off" name="coolant">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="coolant_notes" name="coolant_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Slideway Oil</td>
		<td>
			<input class="notesbox" type="radio" id="slidewayoil" value="on" name="slidewayoil">Ok</input>
			<input class="notesbox" type="radio" id="slidewayoil" value="off" name="slidewayoil">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="slidewayoil_notes" name="slidewayoil_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Headstock Oil Sump Level</td>
		<td>
			<input class="notesbox" type="radio" id="headstockoilsumplevel" value="on" name="headstockoilsumplevel">Ok</input>
			<input class="notesbox" type="radio" id="headstockoilsumplevel" value="off" name="headstockoilsumplevel">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="headstockoilsumplevel_notes" name="headstockoilsumplevel_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Manual Lubrication of Slideways</td>
		<td>
			<input class="notesbox" type="radio" id="manuallubeslideways" value="on" name="manuallubeslideways">Ok</input>
			<input class="notesbox" type="radio" id="manuallubeslideways" value="off" name="manuallubeslideways">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="manuallubeslideways_notes" name="manuallubeslideways_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Check Oil flow at Headstock Sight Glass</td>
		<td>
			<input class="notesbox" type="radio" id="checkoilheadstock" value="on" name="checkoilheadstock">Ok</input>
			<input class="notesbox" type="radio" id="checkoilheadstock" value="off" name="checkoilheadstock">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="checkoilheadstock_notes" name="checkoilheadstock_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Grease the Chuck</td>
		<td>
			<input class="notesbox" type="radio" id="greasechuck" value="on" name="greasechuck">Ok</input>
			<input class="notesbox" type="radio" id="greasechuck" value="off" name="greasechuck">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="greasechuck_notes" name="greasechuck_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Check Coolant Condition</td>
		<td>
			<input class="notesbox" type="radio" id="checkcoolant" value="on" name="checkcoolant">Ok</input>
			<input class="notesbox" type="radio" id="checkcoolant" value="off" name="checkcoolant">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="checkcoolant_notes" name="checkcoolant_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Clean guard slideway tracks</td>
		<td>
			<input class="notesbox" type="radio" id="cleanguardways" value="on" name="cleanguardways">Ok</input>
			<input class="notesbox" type="radio" id="cleanguardways" value="off" name="cleanguardways">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="cleanguardways_notes" name="cleanguardways_notes" cols=60 rows=5></textarea>
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
				$("#coolant_notes").val("<?php echo mysql_escape_string($member['coolant_notes']); ?>");
				$("#slidewayoil_notes").val("<?php echo mysql_escape_string($member['slidewayoil_notes']); ?>");
				$("#headstockoilsumplevel_notes").val("<?php echo mysql_escape_string($member['headstockoilsumplevel_notes']); ?>");
				$("#manuallubeslideways_notes").val("<?php echo mysql_escape_string($member['manuallubeslideways_notes']); ?>");
				$("#checkoilheadstock_notes").val("<?php echo mysql_escape_string($member['checkoilheadstock_notes']); ?>");
				$("#greasechuck_notes").val("<?php echo mysql_escape_string($member['greasechuck_notes']); ?>");
				$("#checkcoolant_notes").val("<?php echo mysql_escape_string($member['checkcoolant_notes']); ?>");
				$("#cleanguardways_notes").val("<?php echo mysql_escape_string($member['cleanguardways_notes']); ?>");
				
				$('input:radio[name=coolant][value=<?php echo $member['coolant'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=slidewayoil][value=<?php echo $member['slidewayoil'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=headstockoilsumplevel][value=<?php echo $member['headstockoilsumplevel'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=manuallubeslideways][value=<?php echo $member['manuallubeslideways'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=checkoilheadstock][value=<?php echo $member['checkoilheadstock'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=greasechuck][value=<?php echo $member['greasechuck'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=checkcoolant][value=<?php echo $member['checkcoolant'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=cleanguardways][value=<?php echo $member['cleanguardways'] == 1 ? "on" : "off"; ?>]').click();
<?php
			}
		}
	}
?>
