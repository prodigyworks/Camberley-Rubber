<?php
	require_once("system-db.php"); 
	
	function checkForFaults($checklistid) {
		$sql = "SELECT 
				DATE_FORMAT(A.inspecteddatetime, '%d/%m/%Y %H:%I') AS inspecteddatetime,
				B.name AS subcategoryname, B.type, 
				C.name AS categoryname,
				D.fullname
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}members D
				ON D.member_id = A.inspectedby
				WHERE A.id = $checklistid
				AND A.status = 'F'";
		
		$result = mysql_query($sql);
		
		//Check whether the query was successful or not
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				$fullname = $member['fullname'];
				$datestamp = $member['inspecteddatetime'];
				
				if ($member['type'] == "C") {
					$category = $member['categoryname'] . " / " . $member['subcategoryname'];

				} else {
					$category = $member['categoryname'];
				}
				
				$message = "<p>A fault has been found for $category by $fullname at $datestamp</p>";
				
				sendRoleMessage("FAULT", "Fault Found", $message);
			}
			
		} else {
			logError($qry . " - " . mysql_error());
		}
	}
	
	function getAssociatedCheckList($subcategoryid) {
		if ($_GET['hid']) {
			return $_GET['hid'];
		}
		
		/* Daily */
		$id = checkPeriod(
			   "SELECT A.id 
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				WHERE A.subcategoryid = $subcategoryid
				AND C.sequence = 'D'
				AND A.datestamp = CURDATE()"
			);
			
		if ($id != null) {
			return $id;
		}
	
		/* Weekly */
		$id = checkPeriod(
			   "SELECT A.id 
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				WHERE A.subcategoryid = $subcategoryid
				AND C.sequence = 'W'
				AND YEAR(A.datestamp) = YEAR(NOW())
				AND WEEK(A.datestamp) = WEEK(NOW())"
			);
			
		if ($id != null) {
			return $id;
		}
	
		/* Monthly */
		$id = checkPeriod(
			   "SELECT A.id 
				FROM {$_SESSION['DB_PREFIX']}checklist A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.id = A.subcategoryid
				INNER JOIN {$_SESSION['DB_PREFIX']}category C
				ON C.id = B.categoryid
				WHERE A.subcategoryid = $subcategoryid
				AND C.sequence = 'M'
				AND YEAR(A.datestamp) = YEAR(NOW())
				AND MONTH(A.datestamp) = MONTH(NOW())"
			);

		if ($id != null) {
			return $id;
		}
		
		$sql = "SELECT A.id, A.startdate, A.sequence, A.name
				FROM {$_SESSION['DB_PREFIX']}category A
				INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				ON B.categoryid = A.id
				WHERE B.id = $subcategoryid
				AND A.sequence IN ( 'Y', '6', '3', '5')";
			
		$result = mysql_query($sql);
		$today = strtotime("now");
		$id = null;
		
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				$startdate = strtotime($member['startdate']);
				$hid = $member['id'];
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
					
				for (; ;) {
					$fromdate = $startdate;
					$todate = strtotime("+ 1 year",  $startdate);
		
					if ($startdate <= $today && $todate >= $today) {
						$sql = "SELECT B.id
								FROM {$_SESSION['DB_PREFIX']}checklist B
								INNER JOIN {$_SESSION['DB_PREFIX']}subcategory C
								ON C.id = B.subcategoryid
								INNER JOIN {$_SESSION['DB_PREFIX']}category D
								ON D.id = C.categoryid
								WHERE D.id = $hid
								AND C.id = $subcategoryid
								AND C.type = 'A'";
							
						$itemresult = mysql_query($sql);
							
						if ($itemresult) {
							$found = false;
		
							while (($itemmember = mysql_fetch_assoc($itemresult))) {
								$found = true;
								$id = $itemmember['id'];
								
								break;
							}
		
							if (! $found) {
								$id = null;
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
		
		return $id;
	}
	
	function checkPeriod($qry) {
		$id = null;
		$result = mysql_query($qry);
		
		//Check whether the query was successful or not
		if ($result) {
			while (($member = mysql_fetch_assoc($result))) {
				$id = $member['id'];
			}
			
		} else {
			logError($qry . " - " . mysql_error());
		}
		
		return $id;
	}
	
	function saveImage() {
		if (! isset($_SESSION) || getLoggedOnMemberID() == 0) {
		    	
			header("location: timeout.php");
			exit();
		}
		
		try {
			$img = null;
			
			if (isset($_POST['output']) && $_POST['output'] != "") {
				$img = sigJsonToImage(
						$_POST['output'], 
						array(
							    'imageSize' => array(298, 155)
							    ,'bgColour' => array(0xff, 0xff, 0xff)
							    ,'penWidth' => 2
							    ,'penColour' => array(0x14, 0x53, 0x94)
							    ,'drawMultiplier'=> 12
							)
					);
			
			} else {
				// Create the image
				$img = imagecreatetruecolor(200, 40);
				
				// Create some colors
				$white = imagecolorallocate($img, 255, 255, 255);
				$grey = imagecolorallocate($img, 128, 128, 128);
				$black = imagecolorallocate($img, 0, 0, 0);
				imagefilledrectangle($img, 0, 0, 199, 39, $white);
				
				// The text to draw
				$text = $_POST['name'];
				// Replace path by your own font path
				$font = 'build/journal.ttf';
				
				// Add some shadow to the text
				imagettftext($img, 20, 0, 11, 21, $grey, $font, $text);
				
				// Add the text
				imagettftext($img, 20, 0, 10, 20, $black, $font, $text);
				
				// Using imagepng() results in clearer text compared with imagejpeg()
			}
			
			ob_start();
			imagepng($img);
			$imgstring = ob_get_contents(); 
	        ob_end_clean();
			
			$escimgstring = mysql_escape_string($imgstring);
			$id = $_POST['signatureid'];
			
			$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}images 
					(
					mimetype, name, image, createddate
					) 
					VALUES 
					(
					'image/png', 'Signture $id', '$escimgstring', NOW()
					)";
			$result = mysql_query($qry);
			$signatureid = mysql_insert_id();
			
			file_put_contents("uploads/signature_" . $signatureid . ".png", $imgstring);
			
			if (! $result) {
				logError($qry . " - " . mysql_error());
			}
    	
		} catch (Exception $e) {
			logError("Signing image: " . $e->getMessage(), false);
			return 0;
		}
		
		return $signatureid;
	}
?>