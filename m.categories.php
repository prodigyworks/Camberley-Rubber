<?php 
	include("system-mobileheader.php"); 
	
	function getRemainingCheckLists($id) {
		$rows = 0;
		$sql = "SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(NOW(), '%d %M %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = 'D'
				WHERE B.categoryid = $id
				AND A.datestamp = CURDATE()
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(DATE(NOW() + INTERVAL (7 - DAYOFWEEK(NOW())) DAY), '%d %M %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = 'W'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND WEEK(A.datestamp) = WEEK(CURDATE())
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(NOW(),'31 Dec %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = 'Y'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND MONTH(A.datestamp) = MONTH(CURDATE())
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 3 YEAR),'31 Dec %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = '3'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND MONTH(A.datestamp) = MONTH(CURDATE())
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 5 YEAR),'31 Dec %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = '5'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND MONTH(A.datestamp) = MONTH(CURDATE())
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(LAST_DAY(NOW()), '%d %M %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = 'M'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND MONTH(A.datestamp) = MONTH(CURDATE())
				AND B.type = 'A'
				UNION ALL
				SELECT B.id, A.status, B.name, B.location, DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 6 MONTH), '%d %M %Y') AS due
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				AND C.sequence = '6'
				WHERE B.categoryid = $id
				AND YEAR(A.datestamp) = YEAR(CURDATE())
				AND MONTH(A.datestamp) = MONTH(CURDATE())
				AND B.type = 'A'
				ORDER BY name";
		
		$result = mysql_query($sql);
		
		if($result) {
			while (($member = mysql_fetch_assoc($result))) {
			    if ($member['status'] == 'N') {
			    	$rows++;
			    }
			}
			
		} else {
			logError(mysql_error() . " $sql");
		}
		
		return $rows;
	}
?>
	<form class="centerform">
		<center>
		<table cellspacing=20>
<?php 
	$sql = "SELECT A.* 
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE status = 'S'
			ORDER BY A.name";
	
	$result = mysql_query($sql);
	$row = 0;
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$name = mysql_escape_string($member['name']);
			
			if (($row % 3) == 0) {
				if ($row > 0) {
?>
			</tr>
<?php
				}
?>
			<tr>
<?php
			}
			
			$row++;
			
			if (getRemainingCheckLists($member['id']) == 0) {
?>
				<td class="category disabled">
					<div style="word-wrap: break-word;"><?php echo $name; ?></div>
				</td>
<?php
			} else {
?>
				<td class="category" onclick="navigate('m.subcategories.php?id=<?php echo $member['id']; ?>')">
					<div style="word-wrap: break-word;"><?php echo $name; ?></div>
				</td>
<?php
			}
		}
		
	} else {
		logError($sql . " - " . mysql_error());
	}
	
?>
			</tr>
<?php
	$sql = "SELECT A.* 
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE status = 'R'
			ORDER BY A.name";
	
	$result = mysql_query($sql);
	$row = 0;
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$name = mysql_escape_string($member['name']);
			
?>
			<tr>
				<td colspan=4 class="rectangle" onclick="navigate('m.subcategories.php?id=<?php echo $member['id']; ?>')">
					<div style="word-wrap: break-word;"><?php echo $name; ?></div>
				</td>
			</tr>
<?php
		}
		
	} else {
		logError($sql . " - " . mysql_error());
	}
	
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
	$row = 0;
	
	if($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$rows = 1;
			break;
		}
		
	} else {
		logError($sql . " - " . mysql_error());
	}
	
	if ($rows == 1) {
?>
			<tr>
				<td colspan=4 class="faults" >
					<div onclick="navigate('m.faults.php')">Faults</div>
				</td>
			</tr>
<?php 
	}
?>
		</table>
		</center>
	</form>
</div>
<?php include("system--mobilefooter.php"); ?>

