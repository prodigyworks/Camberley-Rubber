<?php 
	include("system-mobileheader.php"); 
	
	function showHistory($member) {
		if (isset($_GET['hid'])) {
?>
	<tr>
		<td>Originally Created</td>
		<td>
			<input id="originaldate" name="originaldate" readonly value="" size=15></input>
		</td>
		<td>Originally Inspected By</td>
		<td>
			<input readonly id="originalinspectedbyid" name="originalinspectedbyid" value="" size=30></input>
		</td>
	</tr>
<?php			
		}
	}
	
?>
	<center>
		<div class="upabit">
			<a href="m.categories.php">
				<img alt="" src="images/back.png" height=30 />
			</a>
		</div>
	</center>
	<div class="checklist">
<?php 
	$sql = "SELECT A.*, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y') AS metacreateddate, B.formname AS mainforname, B.postformname, B.name AS categoryname
			FROM {$_SESSION['DB_PREFIX']}subcategory A
			INNER JOIN {$_SESSION['DB_PREFIX']}category B
			ON B.id = A.categoryid
			WHERE A.id = {$_GET['id']}";
	
	$result = mysql_query($sql);
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
			if (isset($_GET['hid'])) {
?>	
		<form method="post" enctype="multipart/form-data" action="<?php echo $member['postformname'] . "?hid=" . $_GET['hid']; ?>">
				
<?php
			} else {
				if ($member['formpostname'] != null && $member['formpostname'] != "") {
?>
		<form method="post" enctype="multipart/form-data" action="<?php echo $member['formpostname']; ?>">
<?php
				} else {
?>
		<form method="post" enctype="multipart/form-data" action="<?php echo $member['postformname']; ?>">
<?php
				}
			}
?>	
			<div class="mobiletitle"><?php echo $member['categoryname']; ?></div>

<?php
			if ($member['formname'] != null && $member['formname'] != "") {
				include($member['formname']);
				
			} else {
				include($member['mainforname']);
			}
		}
	}
?>
		<br>
		<hr />
<?php 
	if (isset($_GET['hid'])) {
?>
		<br>
		<table cellspacing=10>
			<tr>
				<td>Complete Job</td>
				<td>
					<input type="checkbox" id="jobstatus" name="jobstatus" />
				</td>
			</tr>
			<tr>
				<td>Notes</td>
				<td>
					<textarea id="correction_notes" name="correction_notes" cols=60 rows=6></textarea>
				</td>
			</tr>
		</table>
		<br>
		<hr>
		<br>
<?php		
	}

	require_once('signature.php');

	addSignatureForm();
?>
		<br>
		<br>
		<br>
		<input type="submit" />
		<br>
		<br>
	</form>
</div>
<script>
	$(document).ready(
			function() {
		      	$('.sigPad').signaturePad(
		      			{
		      				drawBezierCurves:true,
		      				validateFields: false
		      			}
					);
				
				$(".notesbox").change(
						function() {
							if ($(this).val() == "off") {
								$(this).parent().next().show();
								
							} else {
								$(this).parent().next().find("textarea").val("");
								$(this).parent().next().hide();
							}
						}
					);
				
<?php 
	if (isset($_GET['hid'])) {
		load($_GET['hid']);
	}
?>
			}
		);
</script>
<?php 
	include("system--mobilefooter.php"); 
?>

