<?php 
	require_once("system-db.php");
	start_db();
	
	$changeset = -1;
	
	try {
		mysql_query("BEGIN");
		
		try {
			$qry = "SELECT changeset FROM {$_SESSION['DB_PREFIX']}siteconfig";
			$result = mysql_query($qry);
			
			//Check whether the query was successful or not
			if ($result) {
				if (mysql_num_rows($result) == 1) {
					$member = mysql_fetch_assoc($result);
			
					$changeset = $member['changeset'];
				}
			}
			
		} catch (Exception $eee) {
			$changeset = -1;
		}
		
		
		change(1, "ALTER TABLE camberley_siteconfig ADD COLUMN changeset INT NULL DEFAULT NULL ;");
		change(2, "ALTER TABLE camberley_subcategory ADD COLUMN formname VARCHAR(100) NULL DEFAULT NULL ;");
		change(3, "ALTER TABLE camberley_subcategory ADD COLUMN formpostname VARCHAR(100) NULL DEFAULT NULL ;");
		
		$categoryid = addCategory(4, "Broadoak", "M", "M", "form-broadoak.php", "form-broadoakpost.php", "report-broadoak.php", date("Y-m-d"), 0);
		
		addSubCategory(5, $categoryid, "PRESS 2", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(6, $categoryid, "PRESS 3", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(7, $categoryid, "PRESS 4", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(8, $categoryid, "PRESS 5", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(9, $categoryid, "PRESS 6", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(10, $categoryid, "PRESS 7", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(11, $categoryid, "PRESS 8", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(12, $categoryid, "PRESS 9", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(13, $categoryid, "PRESS 10", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(14, $categoryid, "PRESS 11", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(15, $categoryid, "PRESS 12", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(16, $categoryid, "PRESS 13", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(17, $categoryid, "PRESS 14", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(18, $categoryid, "PRESS 15", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(19, $categoryid, "PRESS 16", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		addSubCategory(20, $categoryid, "PRESS 1", "WORKSHOP", "A", "form-broadoakpress.php", "form-broadoakpresspost.php");
		
		addSubCategory(21, $categoryid, "WOOD LATHE", "WORKSHOP", "A", "form-broadoakwoodlathe.php", "form-broadoakwoodlathepost.php");

		addSubCategory(22, $categoryid, "SHOT BLAST", "WORKSHOP", "A", "form-broadoakshotblast.php", "form-broadoakshotblastpost.php");

		addSubCategory(23, $categoryid, "SMALL MARKLE", "WORKSHOP", "A", "form-broadoaksmallmerkle.php", "form-broadoaksmallmerklepost.php");

		addSubCategory(24, $categoryid, "BIG MARKLE", "WORKSHOP", "A", "form-broadoakbigmerkle.php", "form-broadoakbigmerklepost.php");
		
		$categoryid = addCategory(25, "Emergency Lights Discharge", "Y", "M", "form-eldischarge.php", "form-eldischargepost.php", "report-eldischarge.php", date("Y-m-d"), 0);
		
		addSubCategory(26, $categoryid, "Check List", "Check List", "A", "", "");
		
		$categoryid = addCategory(125, "PAT", "Y", "C", "form-pat1.php", "form-pat1post.php", "report-pat1.php", date("Y-m-d"), 0);
		addSubCategory(126, $categoryid, "Check List", "Check List", "A", "", "");
		
		$categoryid = addCategory(228, "Maintenance Machines", "M", "M", "form-maintenancemachine.php", "form-maintenancemachinepost.php", "report-maintenancemachine.php", date("Y-m-d"), 0);
		
		addSubCategory(229, $categoryid, "LATHE 1", "**** Unknown ****", "A", "form-maintenancemachinelathe.php", "form-maintenancemachinelathepost.php");
		addSubCategory(230, $categoryid, "LATHE 2", "**** Unknown ****", "A", "form-maintenancemachinelathe.php", "form-maintenancemachinelathepost.php");
		addSubCategory(231, $categoryid, "MILL 1", "**** Unknown ****", "A", "form-maintenancemachinemill.php", "form-maintenancemachinemillpost.php");
		addSubCategory(232, $categoryid, "MILL 2", "**** Unknown ****", "A", "form-maintenancemachinemill.php", "form-maintenancemachinemillpost.php");
		addSubCategory(233, $categoryid, "BENCH GRINDERS", "**** Unknown ****", "A", "form-maintenancemachinebench.php", "form-maintenancemachinebenchpost.php");
		addSubCategory(234, $categoryid, "SPARK ERODER", "**** Unknown ****", "A", "form-maintenancemachinespark.php", "form-maintenancemachinesparkpost.php");
		
		change(241, "UPDATE camberley_category SET type = 'C' WHERE name IN ('Broadoak', 'Emergency Lights Discharge', 'Maintenance Machines');");
		change(242, "UPDATE camberley_category SET type = 'F' WHERE name IN ('Emergency Lights Discharge');");
		
		change(250, "CREATE TABLE IF NOT EXISTS camberley_broadoakchecklist (
						id INT(11) NOT NULL AUTO_INCREMENT,
						checklistid INT(11) NOT NULL,
						inspectiondate DATETIME NOT NULL,
						inspectionuserid INT(11) NOT NULL,
						signatureid INT(11) NOT NULL,
						hydraulichoses INT(11) NOT NULL,
						hydraulicvalves INT(11) NOT NULL,
						hydrauliccylinders INT(11) NOT NULL,
						lightguard INT(11) NOT NULL,
						frame INT(11) NOT NULL,
						heaterstopplaten INT(11) NOT NULL,
						heatersbottomplaten INT(11) NOT NULL,
						timeclock INT(11) NOT NULL,
						heatersbottomplaten_notes TEXT NOT NULL,
						heaterstopplaten_notes TEXT NOT NULL,
						timeclock_notes TEXT NOT NULL,
						frame_notes TEXT NOT NULL,
						lightguard_notes TEXT NOT NULL,
						hydrauliccylinders_notes TEXT NOT NULL,
						hydraulicvalves_notes TEXT NOT NULL,
						hydraulichoses_notes TEXT NOT NULL,
						correction_notes TEXT NOT NULL,
						comments TEXT NOT NULL,
						metacreateduserid INT(11) NULL DEFAULT NULL,
						metamodifieduserid INT(11) NULL DEFAULT NULL,
						metacreateddate DATETIME NULL DEFAULT NULL,
						metamodifieddate DATETIME NULL DEFAULT NULL,
						PRIMARY KEY (id),
						INDEX checklistid (checklistid)
					)
					COLLATE='latin1_swedish_ci'
					ENGINE=InnoDB
					ROW_FORMAT=COMPACT
					AUTO_INCREMENT=7");
		
		change(270, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN electrics INT NULL DEFAULT NULL ;");
		change(280, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN electrics_notes TEXT NULL DEFAULT NULL ;");
		change(290, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN airsupply TEXT NULL DEFAULT NULL ;");
		change(300, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN airsupply_notes TEXT NULL DEFAULT NULL ;");
		change(410, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN filters INT NULL DEFAULT NULL ;");
		change(420, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN filters_notes TEXT NULL DEFAULT NULL ;");
		change(460, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN cyclone INT NULL DEFAULT NULL ;");
		change(470, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN cyclone_notes TEXT NULL DEFAULT NULL ;");

		change(480, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN emergencystops INT NULL DEFAULT NULL ;");
		change(490, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN emergencystops_notes TEXT NULL DEFAULT NULL ;");
		change(500, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN fingerguards INT NULL DEFAULT NULL ;");
		change(510, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN fingerguards_notes TEXT NULL DEFAULT NULL ;");
		change(520, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN mechanics INT NULL DEFAULT NULL ;");
		change(530, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN mechanics_notes TEXT NULL DEFAULT NULL ;");
		
		change(540, "CREATE TABLE IF NOT EXISTS camberley_elchecklist (
						id INT(11) NOT NULL AUTO_INCREMENT,
						checklistid INT(11) NOT NULL,
						inspectiondate DATETIME NOT NULL,
						inspectionuserid INT(11) NOT NULL,
						signatureid INT(11) NOT NULL,
						pass INT(11) NOT NULL,
						pass_notes TEXT NOT NULL,
						correction_notes TEXT NOT NULL,
						comments TEXT NOT NULL,
						metacreateduserid INT(11) NULL DEFAULT NULL,
						metamodifieduserid INT(11) NULL DEFAULT NULL,
						metacreateddate DATETIME NULL DEFAULT NULL,
						metamodifieddate DATETIME NULL DEFAULT NULL,
						PRIMARY KEY (id),
						INDEX checklistid (checklistid)
					)
					COLLATE='latin1_swedish_ci'
					ENGINE=InnoDB
					ROW_FORMAT=COMPACT
					AUTO_INCREMENT=4");
		
		change(550, "CREATE TABLE IF NOT EXISTS camberley_patchecklist (
						id INT(11) NOT NULL AUTO_INCREMENT,
						checklistid INT(11) NOT NULL,
						inspectiondate DATETIME NOT NULL,
						inspectionuserid INT(11) NOT NULL,
						signatureid INT(11) NOT NULL,
						year1 INT(11) NOT NULL,
						year3 INT(11) NOT NULL,
						year5 INT(11) NOT NULL,
						year1_notes TEXT NOT NULL,
						year3_notes TEXT NOT NULL,
						year5_notes TEXT NOT NULL,
						correction_notes TEXT NOT NULL,
						comments TEXT NOT NULL,
						metacreateduserid INT(11) NULL DEFAULT NULL,
						metamodifieduserid INT(11) NULL DEFAULT NULL,
						metacreateddate DATETIME NULL DEFAULT NULL,
						metamodifieddate DATETIME NULL DEFAULT NULL,
						PRIMARY KEY (id),
						INDEX checklistid (checklistid)
					)
					COLLATE='latin1_swedish_ci'
					ENGINE=InnoDB
					ROW_FORMAT=COMPACT
					AUTO_INCREMENT=4");
		
		change(560, "CREATE TABLE IF NOT EXISTS camberley_maintenancemachinechecklist (
						id INT(11) NOT NULL AUTO_INCREMENT,
						checklistid INT(11) NOT NULL,
						inspectiondate DATETIME NOT NULL,
						inspectionuserid INT(11) NOT NULL,
						signatureid INT(11) NOT NULL,
						coolant INT(11) NOT NULL,
						slidewayoil INT(11) NOT NULL,
						headstockoilsumplevel INT(11) NOT NULL,
						manuallubeslideways INT(11) NOT NULL,
						greasechuck INT(11) NOT NULL,
						checkcoolant INT(11) NOT NULL,
						cleanguardways INT(11) NOT NULL,
						coolant_notes TEXT NOT NULL,
						slidewayoil_notes TEXT NOT NULL,
						headstockoilsumplevel_notes TEXT NOT NULL,
						manuallubeslideways_notes TEXT NOT NULL,
						greasechuck_notes TEXT NOT NULL,
						checkcoolant_notes TEXT NOT NULL,
						cleanguardways_notes TEXT NOT NULL,
						correction_notes TEXT NOT NULL,
						comments TEXT NOT NULL,
						metacreateduserid INT(11) NULL DEFAULT NULL,
						metamodifieduserid INT(11) NULL DEFAULT NULL,
						metacreateddate DATETIME NULL DEFAULT NULL,
						metamodifieddate DATETIME NULL DEFAULT NULL,
						PRIMARY KEY (id),
						INDEX checklistid (checklistid)
					)
					COLLATE='latin1_swedish_ci'
					ENGINE=InnoDB
					ROW_FORMAT=COMPACT
					AUTO_INCREMENT=5");
		
		change(570, "ALTER TABLE camberley_maintenancemachinechecklist
						ADD COLUMN lubircatequill INT(11) NOT NULL AFTER cleanguardways,
						ADD COLUMN bearingblock INT(11) NOT NULL AFTER lubircatequill,
						ADD COLUMN hilowgear INT(11) NOT NULL AFTER bearingblock,
						ADD COLUMN hilowgear_notes TEXT NOT NULL AFTER correction_notes,
						ADD COLUMN bearingblock_notes TEXT NOT NULL AFTER hilowgear_notes,
						ADD COLUMN lubircatequill_notes TEXT NOT NULL AFTER bearingblock_notes");
		
		change(580, "ALTER TABLE camberley_maintenancemachinechecklist
						ADD COLUMN faceshield INT(11) NOT NULL ,
						ADD COLUMN toolrest INT(11) NOT NULL ,
						ADD COLUMN wheeldamage INT(11) NOT NULL ,
						ADD COLUMN wheeldamage_notes TEXT NOT NULL ,
						ADD COLUMN toolrest_notes TEXT NOT NULL ,
						ADD COLUMN faceshield_notes TEXT NOT NULL ");

		change(590, "ALTER TABLE camberley_maintenancemachinechecklist
						ADD COLUMN flamedetector INT(11) NOT NULL ,
						ADD COLUMN dielectric INT(11) NOT NULL ,
						ADD COLUMN lubricationaxis INT(11) NOT NULL ,
						ADD COLUMN lubricationaxis_notes TEXT NOT NULL ,
						ADD COLUMN dielectric_notes TEXT NOT NULL ,
						ADD COLUMN flamedetector_notes TEXT NOT NULL ");


		change(600, "ALTER TABLE camberley_maintenancemachinechecklist
						ADD COLUMN checkoilheadstock INT(11) NOT NULL ,
						ADD COLUMN checkoilheadstock_notes TEXT NOT NULL ");
		
		change(610, "UPDATE camberley_category SET type = 'F' WHERE name = 'PAT'");
		
		change(620, "ALTER TABLE camberley_broadoakchecklist ADD COLUMN broadoaktype VARCHAR(1) NULL ");
		change(630, "ALTER TABLE camberley_maintenancemachinechecklist ADD COLUMN maintenancetype VARCHAR(1) NULL ");
		
		mysql_query("UPDATE camberley_siteconfig SET changeset = $changeset;");
		mysql_query("COMMIT");
		
	} catch (Exception $e) {
		echo "EXCEPT:{$e->getMessage()}<br>";
		
		logError($e->getMessage());
	}
	
	function addCategory($sequence, $name, $seq, $type, $formname, $postformname, $reportname, $startdate, $imageid) {
		change($sequence, "INSERT INTO camberley_category
					(
						name, status, type, formname, postformname, reportname, sequence, startdate, imageid,
						metacreateddate, metacreateduserid, metamodifieddate, metamodifieduserid
					)
					VALUES
					(
						'$name', 'S', '$type', '$formname', '$postformname', '$reportname', '$seq', '$startdate', $imageid,
						NOW(), 1, NOW(), 1
					)");
		
		return mysql_insert_id();
	}

	function addSubCategory($sequence, $categoryid, $name, $location, $type, $formname, $formpostname) {
		change($sequence, "INSERT INTO camberley_subcategory
				(
					categoryid, name, location, type, formname, formpostname,
					metacreateddate, metacreateduserid, metamodifieddate, metamodifieduserid
				)
				VALUES
				(
					$categoryid, '$name', '$location', '$type', '$formname', '$formpostname',
					NOW(), 1, NOW(), 1
				)");
	}
	
	function change($sequence, $sql, $values = array()) {
		global $changeset;
		
		try {
			if ($sequence > $changeset) {
				echo "$sequence: $sql<br>";

				if (! mysql_query($sql)) {
					echo mysql_error();
				
				} else {
					$changeset = $sequence;
				}
			}
			
		} catch (Exception $e) {
			echo "<div>$sequence: Error [{$e->getMessage()}</div>";
		}
	}
?>