<?php
	require_once('checklistlib.php');

	class CoolingCheckListReport extends CheckListReport {
		
		function getTitle() {
			return "Cooling Tower\nWeekly Check";
		}

		function __construct($orientation, $metric, $size, $id) {
			start_db();

	        parent::__construct($orientation, $metric, $size);

			try {
				$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
						FROM {$_SESSION['DB_PREFIX']}coolingtowerschecklist A
						WHERE A.checklistid = $id
						ORDER BY A.id
						LIMIT 1";
				$result = mysql_query($sql);
		
				if ($result) {
					while (($member = mysql_fetch_assoc($result))) {
						$originaldate = $member['inspectiondate'];
						$originaluserid = $member['metacreateduserid'];
					}
					
				} else {
					logError("$sql - " . mysql_error());
				}
				
				$sql =  "SELECT
						 A.*,
						 B.location, B.name AS subcategoryname,
						 C.name AS categoryname,
						 D.fullname,
						 E.fullname AS createdbyname,
						 DATE_FORMAT(A.inspectiondate, '%d/%m/%Y %H:%i:%s') AS inspectiondate,
						 DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%I') AS metacreateddate
						 FROM  {$_SESSION['DB_PREFIX']}coolingtowerschecklist A
						 INNER JOIN {$_SESSION['DB_PREFIX']}checklist AA
						 ON AA.id = A.checklistid
						 INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
						 ON B.id = AA.subcategoryid
						 INNER JOIN {$_SESSION['DB_PREFIX']}category C
						 ON C.id = B.categoryid
						 INNER JOIN {$_SESSION['DB_PREFIX']}members D
						 ON D.member_id = A.inspectionuserid
						 INNER JOIN {$_SESSION['DB_PREFIX']}members E
						 ON E.member_id = $originaluserid
						 WHERE A.checklistid = $id
						 ORDER BY A.id DESC
						 LIMIT 1";
				$result = mysql_query($sql);

				if ($result) {
					while (($this->headermember = mysql_fetch_assoc($result))) {
						$this->dynamicY = $this->newPage();

			            $this->addText( 15, 29, "Created Date", 10, 4, 'B');
						$this->addText( 60, 29, $originaldate, 10, 4, '');
						$this->addText( 100, 29, "Created By", 10, 4, 'B');
						$this->addText( 130, 29, $this->headermember['createdbyname'], 10, 4, '');

			            $this->addText( 15, 34, "Date", 10, 4, 'B');
						$this->addText( 60, 34, $this->headermember['inspectiondate'], 10, 4, '');
						$this->addText( 100, 34, "Inspected By", 10, 4, 'B');
						$this->addText( 130, 34, $this->headermember['fullname'], 10, 4, '');

						$this->Line( 15, 39, 195, 39);

			            $this->addText(15, 44, "Meter Reading", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, 44, $this->headermember['meterreading'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "1. PH", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['pump1ph'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "2. TDS", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, "System : " .  $this->headermember['pump2tdssystem'] . " Make Up : " . $this->headermember['pump2tdsmakeup'], 10, 4, '') + 4;

			            if ($this->headermember['pump3dipslide'] == "2") {
			            	$pump3dipslide = "2";

			            } else if ($this->headermember['pump3dipslide'] == "5") {
			            	$pump3dipslide = "5";

			            } else if ($this->headermember['pump3dipslide'] == "4") {
			            	$pump3dipslide = "4";

			            } else if ($this->headermember['pump3dipslide'] == "3") {
			            	$pump3dipslide = "3";

			            } else {
			            	$pump3dipslide = "";
			            }

			            $newDynamicY = $this->addText(15, $this->dynamicY, "3. Dipslide (cfu/ml)", 10, 4, 'B') + 4;

			            if ($pump3dipslide != "") {
				            $newDynamicY = $this->addText(100, $this->dynamicY, "10", 10, 4, '') + 4;
				            $this->addText(105, $this->dynamicY, $pump3dipslide, 7, 2, '');
						}

						$this->dynamicY = $newDynamicY;

			            if ($this->headermember['pump4suspendedmatter'] == "T") {
			            	$pump4suspendedmatter = "Turbid";

			            } else if ($this->headermember['pump4suspendedmatter'] == "C") {
			            	$pump4suspendedmatter = "Cloudy";

			            } else if ($this->headermember['pump4suspendedmatter'] == "H") {
			            	$pump4suspendedmatter = "Hazy";

			            } else if ($this->headermember['pump4suspendedmatter'] == "R") {
			            	$pump4suspendedmatter = "Clear";

			            } else {
			            	$pump4suspendedmatter = "";
			            }

			            $this->addText(15, $this->dynamicY, "4. Suspended Matter (Visual)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $pump4suspendedmatter, 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "5. Pond Temp (Degrees Celcius)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['pump5pondtemp'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "6. System Pressure (Bar)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['pump6systempressure'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "7. Hardness (PPM)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['hardness'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "8. Bromine (PPM)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['bromine'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "9. C16 (Ltrs)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['c16'], 10, 4, '') + 4;

			            $this->addText(15, $this->dynamicY, "10. C31 (Ltrs)", 10, 4, 'B');
			            $this->dynamicY = $this->addText(100, $this->dynamicY, $this->headermember['c31'], 10, 4, '') + 4;

						$this->addText( 15, $this->dynamicY, "Comments", 10, 4, 'B');
						$this->dynamicY = $this->addText( 100, $this->dynamicY, $this->headermember['comments'], 10, 4, '') + 4;

			            if ($this->headermember['correction_notes'] != null && $this->headermember['correction_notes'] != "") {
							$this->addText( 15, $this->dynamicY, "Correction Notes", 10, 4, 'B');
							$this->dynamicY = $this->addText( 100, $this->dynamicY, $this->headermember['correction_notes'], 10, 4, '');
			            }

			            $this->dynamicY = $this->addText( 15, $this->dynamicY + 10, "SIGNED", 10, 4, 'B') + 2;


						$this->DynamicImage($this->headermember['signatureid'], 15, $this->dynamicY, 30);
					}

				} else {
					logError($sql . " - " . mysql_error());
				}

			} catch (Exception $e) {
				logError($e->getMessage());
			}

			$this->AliasNbPages();
		}
	}
?>