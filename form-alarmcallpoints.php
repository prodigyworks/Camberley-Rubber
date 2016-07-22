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
	</tr>
	<tr>
		<td>Inspected By</td>
		<td>
			<input readonly value="<?php echo GetUserName(); ?>" size=30></input>
			<input id="inspectionuserid" name="inspectionuserid" type="hidden" value="<?php echo getLoggedOnMemberID(); ?>"></input>
			<input id="subcategoryid" name="subcategoryid" type="hidden" value="<?php echo $_GET['id']; ?>"></input>
			
		</td>
	</tr>
	<tr>
		<td colspan=4>
			<hr />
		</td>
	</tr>
<?php 
	$datetime1 = new DateTime(date("Y-m-d"));
	$datetime2 = new DateTime(getSiteConfigData()->checkpointstartdate);
	$interval = $datetime1->diff($datetime2);
	$weeknumber = (intval($interval->format('%a days') / 7) % 13) + 1;

	$sql = "SELECT id, name, location 
			FROM {$_SESSION['DB_PREFIX']}subcategory
			WHERE type = 'M'
			AND categoryid = {$_GET['headerid']}
			AND SUBSTRING(name, 3) = $weeknumber";
	$result = mysql_query($sql);
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
?>
	<tr>
		<td><?php echo $member['name'] . " ( " . $member['location'] . ")"; ?></td>
		<td>
			<input class="notesbox" type="radio" id="faultsfound" value="off" name="faultsfound">Yes</input>
			<input class="notesbox" type="radio" id="faultsfound" value="on" name="faultsfound">No</input>
			<input type="hidden" id="cpid" value="<?php echo $member['id']; ?>" name="cpid"></input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="faultsfound_notes" name="faultsfound_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
<?php 
		}
	
	} else {
		logError($sql . " - " . mysql_error());
	}
?>
</table>

<?php 
	function load($id) {
		$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}alarmschecklist A
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
				FROM {$_SESSION['DB_PREFIX']}alarmschecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$('input:radio[name=faultsfound][value=<?php echo $member['faultsfound'] == 1 ? "on" : "off"; ?>]').click();
				$("#faultsfound_notes").val("<?php echo mysql_escape_string($member['faultsfound_notes']); ?>");
<?php
			}
		}
	}
?>
