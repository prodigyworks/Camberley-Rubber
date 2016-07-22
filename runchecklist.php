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