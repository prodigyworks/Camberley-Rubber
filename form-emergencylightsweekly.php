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
	<tr>
		<td><b><i>Faults Found</i></b></td>
	</tr>
<?php
	$sql = "SELECT * 
			FROM {$_SESSION['DB_PREFIX']}subcategory 
			WHERE categoryid  = {$_GET['headerid']}
			AND type = 'M'
			ORDER BY id";
	$result = mysql_query($sql); 
	
	if ($result) {
		while (($member = mysql_fetch_assoc($result))) {
?>
	<tr>
		<td><?php echo $member['location'] . " ( " . $member['name'] . " )";?></td>
		<td>
			<input class="notesbox" type="radio" id="<?php echo strtolower($member['name']);?>" value="off" name="<?php echo strtolower($member['name']);?>">Yes</input>
			<input class="notesbox" type="radio" id="<?php echo strtolower($member['name']);?>" value="on" name="<?php echo strtolower($member['name']);?>">No</input>
		</td>
		<td colspan=2 class="notes">
			<input type="hidden" id="<?php echo strtolower($member['name']);?>_location" name="<?php echo strtolower($member['name']);?>_location" value="<?php echo $member['location'] . " ( " . $member['name'] . " )"; ?>" />
			<textarea id="<?php echo strtolower($member['name']);?>_notes" name="<?php echo strtolower($member['name']);?>_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
<?php			
		}
	}
?>
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
				FROM {$_SESSION['DB_PREFIX']}lightschecklist A
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

		$sql = "SELECT A.metacreateduserid, A.comments, B.name, B.fault, B.fault_notes,
				DATE_FORMAT(A.inspectiondate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
				FROM {$_SESSION['DB_PREFIX']}lightschecklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}lightschecklistitem B
				ON B.lightchecklistid = A.id
				WHERE A.checklistid = $id";
		$first = true;	
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
				if ($first) {
					$first = false;
?>
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
<?php
				}
?>	
				
				$('input:radio[name=<?php echo $member['name']; ?>][value=<?php echo $member['fault'] == 0 ? "on" : "off"; ?>]').click();				
				$("#<?php echo $member['name']; ?>_notes").val("<?php echo $member['fault_notes']; ?>");
<?php
			}
			
		} else {
			logError($sql . " - " . mysql_error());
		}
	}
?>
