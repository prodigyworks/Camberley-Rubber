<?php 
	require_once("system-db.php"); 
	
	start_db();

	$sql = "SELECT A.formname, A.type
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE A.id = {$_GET['id']}";
	
	$result = mysql_query($sql);
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$formname = $member['formname'];
			$type = $member['type'];
		}
	}
	
	if ($type == "F" || $type == "M") {
		$sql = "SELECT A.id
				FROM {$_SESSION['DB_PREFIX']}subcategory A
				WHERE A.categoryid = {$_GET['id']}
				AND A.type = 'A'";
				
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
				$id = $member['id'];
				
				header("location: m.checklist.php?id=$id&headerid={$_GET['id']}");
				exit();
			}
			
		} else {
			logError($sql . " - " . mysql_error());
		}
	}
	
	require_once("system-mobileheader.php"); 
?>
<style>
	td {
		padding: 10px;
		box-shadow: 10px 10px 5px #888888;
		border-radius: 25px;
	}
	
	td a {
		text-decoration: none;
		font-weight: bold;
		color: black;
	}
	
	tr td:first-child:hover {
		color: white;
		background-color: red ! important;
	}
	
	tr {
	}
	
	tr:nth-child(even) {
		background: #CCC;
	}
	
	tr:nth-child(odd) {
		background: #EEE;
	}
</style>
<center>
	<div class="upabit">
		<a href="m.categories.php">
			<img alt="" src="images/back.png" height=30 />
		</a>
	</div>
</center>
<div class="centerform">
<center>
	<table width='70%' style="text-align:left" cellpadding=10>
<?php 
	$sql = "SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(NOW(), '%d %M %Y') AS due
			FROM {$_SESSION['DB_PREFIX']}checklist A
			INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
			ON B.id = A.subcategoryid
			INNER JOIN {$_SESSION['DB_PREFIX']}category C
			ON C.id = B.categoryid
			AND C.sequence = 'D'
			WHERE B.categoryid = {$_GET['id']} 
			AND A.datestamp = CURDATE()
			UNION ALL
			SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(DATE(NOW() + INTERVAL (7 - DAYOFWEEK(NOW())) DAY), '%d %M %Y') AS due
			FROM {$_SESSION['DB_PREFIX']}checklist A
			INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
			ON B.id = A.subcategoryid
			INNER JOIN {$_SESSION['DB_PREFIX']}category C
			ON C.id = B.categoryid
			AND C.sequence = 'W'
			WHERE B.categoryid = {$_GET['id']} 
			AND YEAR(A.datestamp) = YEAR(CURDATE())
			AND WEEK(A.datestamp) = WEEK(CURDATE())
			UNION ALL
			SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(LAST_DAY(NOW()), '%d %M %Y') AS due
			FROM {$_SESSION['DB_PREFIX']}checklist A
			INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
			ON B.id = A.subcategoryid
			INNER JOIN {$_SESSION['DB_PREFIX']}category C
			ON C.id = B.categoryid
			AND C.sequence = 'M'
			WHERE B.categoryid = {$_GET['id']} 
			AND YEAR(A.datestamp) = YEAR(CURDATE())
			AND MONTH(A.datestamp) = MONTH(CURDATE())
			ORDER BY id";
	
	$result = mysql_query($sql);
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
		    if ($member['status'] == 'N') {
?>
		<tr class="seperator">
			<td onclick="navigate('m.checklist.php?id=<?php echo $member['id']; ?>')">
				<?php echo $member['name']; ?>
			</td>
			<td><?php echo $member['location']; ?></td>
		</tr>
<?php		
		    }
		}
	}
?>
	</table>
</center>
</div>
<?php 
	include("system--mobilefooter.php"); 
?>

