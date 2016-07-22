<?php
	require_once('checklistlib.php');

	class WorkshopCheckListReport extends CheckListReport {

		function __construct($orientation, $metric, $size, $id) {
			start_db();

	        parent::__construct($orientation, $metric, $size);

			try {
				$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
						FROM {$_SESSION['DB_PREFIX']}workshopchecklist A
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
						 FROM  {$_SESSION['DB_PREFIX']}workshopchecklist A
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

			            $this->addText( 15, 39, "Press Number", 10, 4, 'B');
						$this->addText( 60, 39, $this->headermember['subcategoryname'], 10, 4, '');
						$this->addText( 100, 39, "Location", 10, 4, 'B');
						$this->addText( 130, 39, $this->headermember['location'], 10, 4, '');

						$this->Line( 15, 44, 195, 44);

			            $this->dynamicY = $this->checkNotes2("Hydraulic Hoses", "hydraulichoses", 49, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Hydraulic Valves", "hydraulicvalves", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Hydraulic Cylinders", "hydrauliccylinders", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Frame", "frame", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Heaters (Top Platen):", "heaterstopplaten", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Heaters (Bottom Platen):", "heatersbottomplaten", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Time Clock", "timeclock", $this->dynamicY, $this->headermember);
			            $this->dynamicY = $this->checkNotes2("Light Guard", "lightguard", $this->dynamicY, $this->headermember);
						
			            $this->addText( 15, $this->dynamicY, "Comments", 10, 4, 'B');
						$this->dynamicY = $this->addText( 60, $this->dynamicY, $this->headermember['comments'], 10, 4, '') + 4;
			            
			            if ($this->headermember['correction_notes'] != null && $this->headermember['correction_notes'] != "") {
							$this->addText( 15, $this->dynamicY, "Correction Notes", 10, 4, 'B');
							$this->dynamicY = $this->addText( 60, $this->dynamicY, $this->headermember['correction_notes'], 10, 4, '');
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