<?php
	require_once('checklistlib.php');

	class ServiceCheckListReport extends CheckListReport {
		
		function getTitle() {
			return "Services";
		}

		function __construct($orientation, $metric, $size, $id) {
			start_db();
				
	        parent::__construct($orientation, $metric, $size);
			
			try {
				$sql = "SELECT A.metacreateduserid, DATE_FORMAT(A.metacreateddate, '%d/%m/%Y %H:%i:%s') AS inspectiondate
						FROM {$_SESSION['DB_PREFIX']}servicechecklist A
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
						 FROM  {$_SESSION['DB_PREFIX']}servicechecklist A
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

						$this->dynamicY = $this->addText(15, 44, "Large Mill", 10, 4, 'BUI') + 2;
			            $this->dynamicY = $this->checkNotes2("Emergency Stops < 1/8 Rev", "large_emerstops", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Grease", "large_grease", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Electrics", "large_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Cooling", "large_cooling", $this->dynamicY, $this->headermember, 40);

						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Small Mill", 10, 4, 'BUI') + 2;
			            $this->dynamicY = $this->checkNotes2("Emergency Stops < 1/8 Rev", "small_emerstops", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Grease", "small_grease", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Electrics", "small_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Cooling", "small_cooling", $this->dynamicY, $this->headermember, 40);
						
						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Merkle", 10, 4, 'BUI') + 2;
			            $this->dynamicY = $this->checkNotes2("Emergency Stops", "merkle_emerstops", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Finger Guard Front", "merkle_fingerguardfront", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Mechanics", "merkle_mechanics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Finger Guard Rear", "merkle_fingerguardrear", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Electrics", "merkle_electrics", $this->dynamicY, $this->headermember, 40);

			            
			            
			            
			            
			            
			            
			            
						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Tool Room", 10, 4, 'BUI') + 2;
			            $this->dynamicY = $this->checkNotes2("Electrics", "tool_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Air supply", "tool_airsupply", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Filters", "tool_filters", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Cyclone", "tool_cyclone", $this->dynamicY, $this->headermember, 40);
			            
						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Turbex", 10, 4, 'BUI') + 2;
			            $this->dynamicY = $this->checkNotes2("Water Supply", "turbex_water", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Air supply", "turbex_airsupply", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Electrics", "turbex_electrics", $this->dynamicY, $this->headermember, 40);
			            
						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Spray Shop", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Shot Blast #1", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Electrics", "shotblast1_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Air supply", "shotblast1_airsupply", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Filters", "shotblast1_filters", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Cyclone", "shotblast1_cyclone", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Shot Blast #2", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Electrics", "shotblast2_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Air supply", "shotblast2_airsupply", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Filters", "shotblast2_filters", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Cyclone", "shotblast2_cyclone", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Dry Booth 1", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Electrics", "washbooth_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Drive Belt", "washbooth_watersupply", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Frame", "washbooth_frame", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Dry Booth 2", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Electrics", "drybooth_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Drive Belt", "drybooth_drivebelt", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Frame", "drybooth_frame", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Agitator", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Electrics", "agitator_electrics", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Chains", "agitator_chains", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Grease", "agitator_grease", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Chemical Store", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Chemical Bund", "chemical_bund", $this->dynamicY, $this->headermember, 40);
						
			            $this->dynamicY = $this->addText(15, $this->dynamicY + 4, "Racking", 10, 4, 'BUI') + 2;
						$this->dynamicY = $this->checkNotes2("Safety Lock", "racking_safetylock", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Floor Bolts", "racking_floorbolts", $this->dynamicY, $this->headermember, 40);
						$this->dynamicY = $this->checkNotes2("Load Markings", "racking_loadmarkings", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Support Beams", "racking_supportbeams", $this->dynamicY, $this->headermember, 40);
			            $this->dynamicY = $this->checkNotes2("Uprights", "racking_uprights", $this->dynamicY, $this->headermember, 40);
						
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