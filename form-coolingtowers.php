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
		<td colspan=4>
			<hr />
		</td>
	</tr>
	<tr>
		<td>Meter Reading</td>
		<td>
			<input type="text" id="meterreading" name="meterreading" value="<?php echo $member['meterreading']; ?>" size=20></input>
		</td>
	</tr>
	<tr>
		<td>1. PH</td>
		<td>
			<input type="text" id="pump1ph" name="pump1ph" value="<?php echo $member['pump1ph']; ?>" size=20></input>
		</td>
	</tr>
	<tr>
		<td>2. TDS</td>
		<td colspan=3>
			<label>System</label>
			<input type="text" id="pump2tdssystem" name="pump2tdssystem" value="<?php echo $member['pump2tdssystem']; ?>" size=20></input>
			<label>&nbsp;&nbsp;&nbsp;&nbsp;Make Up</label>
			<input type="text" id="pump2tdsmakeup" name="pump2tdsmakeup" value="<?php echo $member['pump2tdsmakeup']; ?>" size=20></input>
		</td>
	</tr>
	<tr>
		<td>3. Dipslide (cfu/ml)</td>
		<td>
			<SELECT id="pump3dipslide" name="pump3dipslide">
				<OPTION value="0"></OPTION>
				<OPTION value="5" style="background-color: red;">10&#x2075;</OPTION>
				<OPTION value="4" style="background-color: orange;">10&#x2074;</OPTION>
				<OPTION value="3" style="background-color: lime;">10&#x00B3;</OPTION>
				<OPTION value="2" style="background-color: darkgreen;">10&#x00B2;</OPTION>
			</SELECT>
		</td>
	</tr>
	<tr>
		<td>4. Suspended Matter (Visual)</td>
		<td>
			<SELECT id="pump4suspendedmatter" name="pump4suspendedmatter">
				<OPTION value="0"></OPTION>
				<OPTION value="T" style="background-color: red;">Turbid</OPTION>
				<OPTION value="C" style="background-color: orange;">Cloudy</OPTION>
				<OPTION value="H" style="background-color: lime;">Hazy</OPTION>
				<OPTION value="R" style="background-color: darkgreen;">Clear</OPTION>
			</SELECT>
		</td>
	</tr>
	<tr>
		<td>5. Pond Temp (Degrees Celcius)</td>
		<td>
			<input type="text" id="pump5pondtemp" name="pump5pondtemp" value="<?php echo $member['pump5pondtemp']; ?>" size=15></input>
		</td>
	</tr>
	<tr>
		<td>6. System Pressure (Bar)</td>
		<td>
			<input type="text" id="pump6systempressure" name="pump6systempressure" value="<?php echo $member['pump6systempressure']; ?>" size=15></input>
		</td>
	</tr>
	<tr>
		<td>7. Hardness (PPM)</td>
		<td>
			<input type="number" id="hardness" name="hardness" value="<?php echo $member['hardness'] ?>" size=15></input>
		</td>
	</tr>
	<tr>
		<td>8. Bromine (PPM)</td>
		<td>
			<input type="text" id="bromine" name="bromine" value="<?php echo $member['bromine'] ?>" size=15></input>
		</td>
	</tr>
	<tr>
		<td>9. 47X2 (Ltrs)</td>
		<td>
			<input type="text" id="c16" name="c16" value="<?php echo $member['c16'] ?>" size=15></input>
		</td>
	</tr>
	<tr>
		<td>10. 3201 (Ltrs)</td>
		<td>
			<input type="text" id="c31" name="c31" value="<?php echo $member['c31'] ?>" size=15></input>
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
				FROM {$_SESSION['DB_PREFIX']}coolingtowerschecklist A
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
				FROM {$_SESSION['DB_PREFIX']}coolingtowerschecklist 
				WHERE checklistid = $id
				ORDER BY id DESC
				LIMIT 1";
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
?>	
				$("#comments").val("<?php echo mysql_escape_string($member['comments']); ?>");
				$("#meterreading").val("<?php echo $member['meterreading']; ?>");
				$("#pump6systempressure").val("<?php echo $member['pump6systempressure']; ?>");
				$("#pump5pondtemp").val("<?php echo $member['pump5pondtemp']; ?>");
				$("#pump4suspendedmatter").val("<?php echo $member['pump4suspendedmatter']; ?>");
				$("#pump3dipslide").val("<?php echo $member['pump3dipslide']; ?>");
				$("#pump2tdssystem").val("<?php echo $member['pump2tdssystem']; ?>");
				$("#pump2tdsmakeup").val("<?php echo $member['pump2tdsmakeup']; ?>");
				$("#pump1ph").val("<?php echo $member['pump1ph']; ?>");
				$("#bromine").val("<?php echo $member['bromine']; ?>");
				$("#hardness").val("<?php echo $member['hardness']; ?>");
				$("#c16").val("<?php echo $member['c16']; ?>");
				$("#c31").val("<?php echo $member['c31']; ?>");
<?php
			}
		}
	}
?>
