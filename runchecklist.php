<?php
	require_once("system-db.php");
	
	start_db();

	/* Daily */
	checkPeriod(
		   "SELECT A.id 
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE A.sequence = 'D'
			AND A.id NOT IN (
				SELECT C.categoryid 
				FROM {$_SESSION['DB_PREFIX']}checklist B
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
				ON C.id = B.subcategoryid
				WHERE B.datestamp = CURDATE()
				AND C.type = 'A'
			)"
		);

	/* Weekly */
	checkPeriod(
		   "SELECT A.id 
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE A.sequence = 'W'
			AND A.id NOT IN (
				SELECT C.categoryid 
				FROM {$_SESSION['DB_PREFIX']}checklist B
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
				ON C.id = B.subcategoryid
				WHERE YEAR(B.datestamp) = YEAR(NOW())
				AND WEEK(B.datestamp) = WEEK(NOW())
				AND C.type = 'A'
			)"
		);

	/* Monthly */
	checkPeriod(
		   "SELECT A.id 
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE A.sequence = 'M'
			AND A.id NOT IN (
				SELECT C.categoryid 
				FROM {$_SESSION['DB_PREFIX']}checklist B
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
				ON C.id = B.subcategoryid
				WHERE YEAR(B.datestamp) = YEAR(NOW())
				AND MONTH(B.datestamp) = MONTH(NOW())
				AND C.type = 'A'
			)"
		);
	
	$sql = "SELECT id, startdate, sequence, name
			FROM {$_SESSION['DB_PREFIX']}category A
			WHERE sequence IN ( 'Y', '6', '3', '5')";
			
	$result = mysql_query($sql);
	$today = strtotime("now");
	
	if ($result) {
		while (($member = mysql_fetch_assoc($result))) {
			$startdate = strtotime($member['startdate']);
			$id = $member['id'];
			$sequence = $member['sequence'];
			
			if ($sequence == "Y") {
				$calc = "+1 year";

			} else if ($sequence == "6") {
				$calc = "+6 months";

			} else if ($sequence == "3") {
				$calc = "+3 years";

			} else if ($sequence == "5") {
				$calc = "+5 years";
						
			} else {
				continue;
			}
			
			echo "<h1>Name : $name Seq : $sequence</h1>";
			
			for (; ;) {
				$fromdate = $startdate;
				$todate = strtotime($calc,  $startdate);
				
				echo "Today [$today] - FROM " . date("Y-m-d", $fromdate) . " - " . date("Y-m-d", $todate);
				 
				if ($startdate <= $today && $todate >= $today) {
					echo " - BREAK<br>";
					
					$sql = "SELECT B.id
							FROM {$_SESSION['DB_PREFIX']}checklist B
							INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
							ON C.id = B.subcategoryid
							INNER JOIN {$_SESSION['DB_PREFIX']}category D
							ON D.id = C.categoryid
							WHERE D.id = $id
							AND C.type = 'A'";
					
					$itemresult = mysql_query($sql);
					
					if ($itemresult) {
						$found = false;
						
						while (($itemmember = mysql_fetch_assoc($itemresult))) {
							echo "FOUND : {$itemmember['id']}<br>";
							$found = true;
							
							break;
						}
						
						if (! $found) {
							populateCheckList($id);
						}
					
					} else {
						logError($sql . " " . mysql_error());
					}
					
					break;
				}
				
				echo "<br>";
				
				$startdate = $todate;
			}
		}
		
	} else {
		logError($sql . " " . mysql_error());
	}
			
	mysql_query("COMMIT");
	
	function checkPeriod($qry) {
		$result = mysql_query($qry);
		
		//Check whether the query was successful or not
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				echo "<div>None found {$member['id']}</div>";
				
				populateCheckList($member['id']);
			}
			
		} else {
			logError($qry . " - " . mysql_error());
		}
	}
	
	function populateCheckList($categoryid) {
		$qry = "SELECT A.* 
				FROM {$_SESSION['DB_PREFIX']}subcategory A
				WHERE A.categoryid = $categoryid
				AND A.type = 'A'";
		$result = mysql_query($qry);
		
		//Check whether the query was successful or not
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				echo "<div>None found {$member['id']} {$member['name']}</div>";
				
				$sql = "INSERT INTO {$_SESSION['DB_PREFIX']}checklist
						(
							subcategoryid, datestamp, status, notes
						)
						VALUES
						(
							{$member['id']}, CURDATE(), 'N', '' 
						)";
				
				if (! mysql_query($sql)) {
					logError($sql . " - " . mysql_error());
				}
			}

		} else {
			logError($qry . " - " . mysql_error());
		}
	}
?>