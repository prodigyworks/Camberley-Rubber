<?php
	include("system-header.php");
?>
<style>
	.dashboard {
		padding: 10px;
	}
	
	div.content {
		background-color: #FFDDCC;
	}
	
	.categoryheader {
		font-size:15px;
		font-family: "Trebuchet MS", Helvetica, sans-serif;
		font-weight: normal;
		line-height: 20px;
		color: blue;
		padding:2px;
		border-bottom: 1px solid #CCCCCC;
	}
	
	.subcategories {
	    display: none;
		padding-left:20px;
		padding-bottom:10px;
	}
</style>
<script>
function hideShow(element) {
	var div = $(element).parent().next();

	if (div.attr("closed") == "true") {
		$(element).attr("src", "images/minus.gif");
		div.attr("closed", "false");
		div.slideDown();

	} else {
		$(element).attr("src", "images/plus.gif");
		div.attr("closed", "true");
		div.slideUp();
	}
}
</script>
<h4>Dashboard</h4>
<hr />
<div class="dashboard">
<?php	
	$submittedCategories = array();
	$qry = "SELECT A.* 
			FROM {$_SESSION['DB_PREFIX']}category A
			ORDER BY A.name";
	$result = mysql_query($qry);
	
	//Check whether the query was successful or not
	if ($result) {
		while (($member = mysql_fetch_assoc($result))) {
?>
<div class="categoryheader" id="cat_id<?php echo $member['id']; ?>">
<img src="images/plus.gif" onclick='hideShow(this)' />
<?php echo $member['name']; ?>
</div>
<div class="subcategories" closed='true' >
	<table width='100%'>
<?php			
            $submitted = false;

			$qry = "SELECT A.status, B.id, B.name, B.location, DATE_FORMAT(NOW(), '%d %M %Y') AS due
					FROM {$_SESSION['DB_PREFIX']}checklist A
					INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
					ON B.id = A.subcategoryid
					INNER JOIN {$_SESSION['DB_PREFIX']}category C
					ON C.id = B.categoryid
					AND C.sequence = 'D'
					WHERE B.categoryid = {$member['id']} 
					AND A.datestamp = CURDATE()
					AND B.type = 'A'
					UNION ALL
					SELECT A.status, B.id, B.name, B.location, DATE_FORMAT(DATE(NOW() + INTERVAL (7 - DAYOFWEEK(NOW())) DAY), '%d %M %Y') AS due
					FROM {$_SESSION['DB_PREFIX']}checklist A
					INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
					ON B.id = A.subcategoryid
					INNER JOIN {$_SESSION['DB_PREFIX']}category C
					ON C.id = B.categoryid
					AND C.sequence = 'W'
					WHERE B.categoryid = {$member['id']} 
					AND YEAR(A.datestamp) = YEAR(CURDATE())
					AND WEEK(A.datestamp) = WEEK(CURDATE())
					AND B.type = 'A'
					UNION ALL
					SELECT A.status, B.id, B.name, B.location, DATE_FORMAT(LAST_DAY(NOW()), '%d %M %Y') AS due
					FROM {$_SESSION['DB_PREFIX']}checklist A
					INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
					ON B.id = A.subcategoryid
					INNER JOIN {$_SESSION['DB_PREFIX']}category C
					ON C.id = B.categoryid
					AND C.sequence = 'M'
					WHERE B.categoryid = {$member['id']} 
					AND YEAR(A.datestamp) = YEAR(CURDATE())
					AND MONTH(A.datestamp) = MONTH(CURDATE())
					AND B.type = 'A'";
			$itemresult = mysql_query($qry);
			
			//Check whether the query was successful or not
			if ($itemresult) {
				while (($itemmember = mysql_fetch_assoc($itemresult))) {
				    if ($itemmember['status'] == 'N') {
?>
		<tr>
			<td width='40%'><?php echo $itemmember['name']; ?></td>
			<td width='40%'><?php echo $itemmember['location']; ?></td>
			<td width='20%'><?php echo $itemmember['due']; ?></td>
		</tr>
<?php					
                    } else {
                        if (! $submitted) {
                            array_push($submittedCategories, "cat_id" . $member['id']);
                        }
                        
                        $submitted = true;
                    }
				}
				
			} else {
				logError($qry . " - " . mysql_error());
			}
?>
	</table>	
</div>

<?php
		}
	}
?>
</div>
<style>
<?php
    foreach ($submittedCategories as $cat) {
        echo "#$cat ";
?> {
	color: green ! important;
}
<?php
    }
?>
</style>
<?php
	include("system-footer.php");
?>