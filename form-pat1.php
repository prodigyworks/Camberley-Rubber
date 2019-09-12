<?php require_once("system-db.php"); ?>
<style>
	.hidden {
		display: none;
	}
</style>
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
		<td colspan=4>
			<hr />
		</td>
	</tr>
	<tr>
		<td>PAT (1 Year)</td>
		<td>
			<input class="notesbox" type="radio" id="pat1" value="on" name="pat1">Ok</input>
			<input class="notesbox" type="radio" id="pat1" value="off" name="pat1">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="pat1_notes" name="pat1_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr class='pat3 hidden'>
		<td>PAT (3 Year)</td>
		<td>
			<input class="notesbox" type="radio" id="pat3" value="on" name="pat3">Ok</input>
			<input class="notesbox" type="radio" id="pat3" value="off" name="pat3">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="pat3_notes" name="pat3_notes" cols=60 rows=5></textarea>
		</td>
	</tr>
	<tr class='pat5 hidden'>
		<td>PAT (5 Year)</td>
		<td>
			<input class="notesbox" type="radio" id="pat5" value="on" name="pat5">Ok</input>
			<input class="notesbox" type="radio" id="pat5" value="off" name="pat5">Not Ok</input>
		</td>
		<td colspan=2 class="notes">
			<textarea id="pat5_notes" name="pat5_notes" cols=60 rows=5></textarea>
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
				FROM {$_SESSION['DB_PREFIX']}patchecklist A
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
				FROM {$_SESSION['DB_PREFIX']}patchecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#pat1_notes").val("<?php echo mysql_escape_string($member['pat1_notes']); ?>");
				$("#pat3_notes").val("<?php echo mysql_escape_string($member['pat3_notes']); ?>");
				$("#pat5s_notes").val("<?php echo mysql_escape_string($member['pat5_notes']); ?>");
				
				$('input:radio[name=pat1][value=<?php echo $member['pat1'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=pat3][value=<?php echo $member['pat3'] == 1 ? "on" : "off"; ?>]').click();
				$('input:radio[name=pat5][value=<?php echo $member['pat5'] == 1 ? "on" : "off"; ?>]').click();
				
<?php
			}
		}
	}
?>
<script>
	$(document).ready(
			function() {
<?php				
		$sql = "SELECT startdate, id
				FROM {$_SESSION['DB_PREFIX']}category A
				WHERE A.name = 'PAT'";
					
		$result = mysql_query($sql);
		$today = strtotime("now");
		
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				$origstartdate = strtotime($member['startdate']);
				$startdate = strtotime($member['startdate']);
				$hid = $member['id'];
					
				for (; ;) {
					$fromdate = $startdate;
					$todate = strtotime("+3 year",  $startdate);
		
					if ($startdate <= $today && $todate >= $today) {
						$sql = "SELECT A.id
								FROM {$_SESSION['DB_PREFIX']}patchecklist A
								INNER JOIN {$_SESSION['DB_PREFIX']}checklist B
								ON B.id = A.checklistid
								INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
								ON C.id = B.subcategoryid
								INNER JOIN {$_SESSION['DB_PREFIX']}category D
								ON D.id = C.categoryid
								WHERE D.id = $hid
								AND C.type = 'A'";
							
						$itemresult = mysql_query($sql);
							
						if ($itemresult) {
							$found = false;
		
							while (($itemmember = mysql_fetch_assoc($itemresult))) {
								$found = true;
									
								break;
							}
		
							if (! $found) {
?>
			$(".pat3").show();
<?php								
							}
								
						} else {
							logError($sql . " " . mysql_error());
						}
							
						break;
					}
		
					$startdate = $todate;
				}
				
				$startdate = $origstartdate;

				for (; ;) {
					$fromdate = $startdate;
					$todate = strtotime("+5 year",  $startdate);
				
					if ($startdate <= $today && $todate >= $today) {
						$sql = "SELECT A.id
								FROM {$_SESSION['DB_PREFIX']}patchecklist A
								INNER JOIN {$_SESSION['DB_PREFIX']}checklist B
								ON B.id = A.checklistid
								INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
								ON C.id = B.subcategoryid
								INNER JOIN {$_SESSION['DB_PREFIX']}category D
								ON D.id = C.categoryid
								WHERE D.id = $hid
								AND C.type = 'A'";
						
						$itemresult = mysql_query($sql);
							
						if ($itemresult) {
							$found = false;
				
							while (($itemmember = mysql_fetch_assoc($itemresult))) {
								$found = true;
									
								break;
							}
				
							if (! $found) {
?>
			$(".pat5").show();
<?php								
							}
												
						} else {
							logError($sql . " " . mysql_error());
						}
							
						break;
					}
		
					$startdate = $todate;
				}
			}
		
		} else {
			logError($sql . " " . mysql_error());
		}
		
?>
			}
		);
</script>		

