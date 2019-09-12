<?php
	require_once('checklistlib.php');

	class MaintenanceReport extends CheckListReport {
		
		function getTitle() {
			return "Maintenance Machines";
		}

		function __construct($orientation, $metric, $size, $id) {
			start_db();

	        parent::__construct($orientation, $metric, $size);

			try {
				$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
						FROM {$_SESSION['DB_PREFIX']}maintenancemachinechecklist A
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
						 FROM  {$_SESSION['DB_PREFIX']}maintenancemachinechecklist A
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

						$this->addText( 15, 39, "Category", 10, 4, 'B');
						$this->addText( 60, 39, $this->headermember['subcategoryname'], 10, 4, '');
						$this->addText( 100, 39, "Location", 10, 4, 'B');
						$this->addText( 130, 39, $this->headermember['location'], 10, 4, '');
						
						$this->Line( 15, 44, 195, 44);
						
						if ($this->headermember['maintenancetype'] == "B") {
							$this->dynamicY = $this->checkNotes2("Face Shield", "faceshield", 48, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Tool Rest", "toolrest", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Wheel Damage", "wheeldamage", $this->dynamicY, $this->headermember, 40);
								
						} else if ($this->headermember['maintenancetype'] == "S") {
							$this->dynamicY = $this->checkNotes2("Flame Detector", "flamedetector", 48, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Dielectric Level probes", "dielectric", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Lubrication of X,Y & Z axis", "lubricationaxis", $this->dynamicY, $this->headermember, 40);
								
						} else if ($this->headermember['maintenancetype'] == "L") {
							$this->dynamicY = $this->checkNotes2("Coolant", "coolant", 48, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Slideway Oil", "slidewayoil", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Headstock Oil Sump Level", "manuallubeslideways", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Manual Lubrication of Slideways", "manuallubeslideways", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Grease the Chuck", "greasechuck", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Check Coolant Condition", "checkcoolant", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Clean guard slideway tracks", "cleanguardways", $this->dynamicY, $this->headermember, 40);
								
						} else if ($this->headermember['maintenancetype'] == "M") {
							$this->dynamicY = $this->checkNotes2("Lubricate Quill Down feed (light Oil) 5-10 drops", "lubircatequill", 48, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Bearing block (light oil) 5-10 drops", "bearingblock", $this->dynamicY, $this->headermember, 40);
							$this->dynamicY = $this->checkNotes2("Hi-Low gear mechanism (Grease)", "hilowgear", $this->dynamicY, $this->headermember, 40);
							}
						
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