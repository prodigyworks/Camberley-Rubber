<?php 
	include("system-mobileheader.php"); 
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
	$sql = "SELECT A.*, B.categoryid, B.name AS subcategoryname, 
			B.location, C.name AS categoryname, D.fullname,
			DATE_FORMAT(inspecteddatetime, '%d %M %Y %H:%I') AS inspecteddatetime
		    FROM  {$_SESSION['DB_PREFIX']}checklist A
		  	INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
		  	ON B.id = A.subcategoryid
		  	INNER JOIN {$_SESSION['DB_PREFIX']}category C
		  	ON C.id = B.categoryid
		  	INNER JOIN {$_SESSION['DB_PREFIX']}members D
		  	ON D.member_id = A.inspectedby
		  	WHERE A.status = 'F'
		  	ORDER BY A.inspecteddatetime DESC";
	
	$result = mysql_query($sql);
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
?>
		<tr class="seperator">
			<td onclick="navigate('m.checklist.php?id=<?php echo $member['subcategoryid']; ?>&headerid=<?php echo $member['categoryid']; ?>&hid=<?php echo $member['id']; ?>')">
				<?php echo $member['categoryname']; ?>
			</td>
			<td><?php echo $member['subcategoryname']; ?></td>
			<td><?php echo $member['location']; ?></td>
			<td><?php echo $member['fullname']; ?></td>
			<td><?php echo $member['inspecteddatetime']; ?></td>
		</tr>
<?php		
		}
		
	} else {
		logError($sql . " - " . mysql_error());
	}
?>
	</table>
</center>
</div>
<?php 
	include("system--mobilefooter.php"); 
?>

