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
		<td>Ladder Number</td>
		<td>
			<input id="laddernumber" name="laddernumber" readonly value="<?php echo $member['name']; ?>" size=30></input>
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
		<td>Loose Steps / Rungs</td>
		<td>
			<input class="notesbox" type="radio" id="loosesteps" value="on" name="loosesteps">Ok</input>
			<input class="notesbox" type="radio" id="loosesteps" value="off" name="loosesteps">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="loosesteps_notes" name="loosesteps_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Broken, Cracked or Worn Steps</td>
		<td>
			<input class="notesbox" type="radio" id="brokensteps" value="on" name="brokensteps">Ok</input>
			<input class="notesbox" type="radio" id="brokensteps" value="off" name="brokensteps">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="brokensteps_notes" name="brokensteps_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Loose Rivets, Screws, Bolts or Other Parts</td>
		<td>
			<input class="notesbox" type="radio" id="looserivets" value="on" name="looserivets">Ok</input>
			<input class="notesbox" type="radio" id="looserivets" value="off" name="looserivets">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="looserivets_notes" name="looserivets_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Damaged or Worn Non-Slip Surfaces</td>
		<td>
			<input class="notesbox" type="radio" id="damagedsurfaces" value="on" name="damagedsurfaces">Ok</input>
			<input class="notesbox" type="radio" id="damagedsurfaces" value="off" name="damagedsurfaces">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="damagedsurfaces_notes" name="damagedsurfaces_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Broken or Cracked Uprights or Braces</td>
		<td>
			<input class="notesbox" type="radio" id="brokenbraces" value="on" name="brokenbraces">Ok</input>
			<input class="notesbox" type="radio" id="brokenbraces" value="off" name="brokenbraces">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="brokenbraces_notes" name="brokenbraces_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr>
		<td>Loose Damaged or Missing Feet</td>
		<td>
			<input class="notesbox" type="radio" id="loosefeet" value="on" name="loosefeet">Ok</input>
			<input class="notesbox" type="radio" id="loosefeet" value="off" name="loosefeet">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="loosefeet_notes" name="loosefeet_notes" cols=60 rows=5></textarea>
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
				FROM {$_SESSION['DB_PREFIX']}ladderchecklist A
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
				FROM {$_SESSION['DB_PREFIX']}ladderchecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$("#loosefeet_notes").val("<?php echo $member['loosefeet_notes']; ?>");
				$("#loosesteps_notes").val("<?php echo $member['loosesteps_notes']; ?>");
				$("#brokenbraces_notes").val("<?php echo $member['brokenbraces_notes']; ?>");
				$("#damagedsurfaces_notes").val("<?php echo $member['damagedsurfaces_notes']; ?>");
				$("#looserivets_notes").val("<?php echo $member['looserivets_notes']; ?>");
				$("#brokensteps_notes").val("<?php echo $member['brokensteps_notes']; ?>");

				$('input:radio[name=loosefeet][value=<?php echo $member['loosefeet'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=loosesteps][value=<?php echo $member['loosesteps'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=brokenbraces][value=<?php echo $member['brokenbraces'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=damagedsurfaces][value=<?php echo $member['damagedsurfaces'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=looserivets][value=<?php echo $member['looserivets'] == 1 ? "on" : "off"; ?>]').click();				
				$('input:radio[name=brokensteps][value=<?php echo $member['brokensteps'] == 1 ? "on" : "off"; ?>]').click();				
<?php
			}
		}
	}
?>
