<?php
	include("system-header.php"); 
	
	$substringstart = 0;
	
	function startsWith($Haystack, $Needle){
	    // Recommended version, using strpos
	    return strpos($Haystack, $Needle) === 0;
	}
	
	if (isset($_FILES['locationfile']) && $_FILES['locationfile']['tmp_name'] != "") {
		if ($_FILES["locationfile"]["error"] > 0) {
			echo "Error: " . $_FILES["locationfile"]["error"] . "<br />";
			
		} else {
		  	echo "Upload: " . $_FILES["locationfile"]["name"] . "<br />";
		  	echo "Type: " . $_FILES["locationfile"]["type"] . "<br />";
		  	echo "Size: " . ($_FILES["locationfile"]["size"] / 1024) . " Kb<br />";
		  	echo "Stored in: " . $_FILES["locationfile"]["tmp_name"] . "<br>";
		}
		
		$categoryid = $_POST['categoryid'];
		$row = 1;
		
		if (($handle = fopen($_FILES['locationfile']['tmp_name'], "r")) !== FALSE) {
		    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
		        $num = count($data);
		        $index = 0;
		        
		        if ($row++ < 4) {
		        	continue;
		        }
		        
		        $num = mysql_escape_string($data[$index++]);
		        $name = $num . ". " . mysql_escape_string($data[$index++]);
		        $location = mysql_escape_string($data[$index++]);
		        $type = "M";
		        
		        if ($data[1] != "") {
		        	echo "<div>Name / Location: $name / $location / $type</div>";
		        	
					$qry = "INSERT INTO {$_SESSION['DB_PREFIX']}subcategory
							(
								categoryid, name, location, type
							) 
							VALUES 
							(
								$categoryid, '$name', '$location', '$type'
							)";
							
					$result = mysql_query($qry);
					
		        	if (! $result) {
						if (mysql_errno() != 1062) {
							logError($qry . " - " . mysql_error());
						}
		        	}
		        }
		    }
		    
		    fclose($handle);
			echo "<h1>" . $row . " downloaded</h1>";
		}
	}
	
	if (! isset($_FILES['locationfile'])) {
?>	
		
<form class="contentform" method="post" enctype="multipart/form-data" onsubmit="return askPassword()">
	<label>Upload customer CSV file </label>
	
	<?php createCombo("categoryid", "id", "name", "{$_SESSION['DB_PREFIX']}category")?>
	
	<input type="file" name="locationfile" id="locationfile" /> 
	
	<br />
	 	
	<div id="submit" class="show">
		<input type="submit" value="Upload" />
	</div>
</form>
<?php
	}
	
	include("system-footer.php"); 
?>