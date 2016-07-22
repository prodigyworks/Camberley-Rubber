<?php
	require_once("crud.php");
	
	class CheckListCrud extends Crud {
		
		/* Post header event. */
		public function postHeaderEvent() {
			createDocumentLink();
		}
		
		public function postScriptEvent() {
?>
			function editDocuments(node) {
				viewDocument(node, "addcustomerdocument.php", node, "customerdocs", "customerid");
			}
			
			function printReport(node) {
				window.open("checklistreport.php?id=" + node);
			}
	
<?php			
		}
	}
	
	$crud = new CheckListCrud();
	$crud->dialogwidth = 650;
	$crud->title = "Check Lists";
	$crud->allowEdit = false;
	$crud->allowView = false;
	$crud->allowAdd = false;
	$crud->allowRemove = false;
	$crud->table = "{$_SESSION['DB_PREFIX']}checklist";
	$crud->sql = "SELECT A.*, B.name AS subcategoryname, B.location, C.name AS categoryname, D.fullname
				  FROM  {$_SESSION['DB_PREFIX']}checklist A
				  INNER JOIN {$_SESSION['DB_PREFIX']}subcategory B
				  ON B.id = A.subcategoryid
				  INNER JOIN {$_SESSION['DB_PREFIX']}category C
				  ON C.id = B.categoryid
				  INNER JOIN {$_SESSION['DB_PREFIX']}members D
				  ON D.member_id = A.inspectedby
				  WHERE A.status = 'F'
				  ORDER BY A.inspecteddatetime DESC";
	$crud->columns = array(
			array(
				'name'       => 'id',
				'viewname'   => 'uniqueid',
				'length' 	 => 6,
				'showInView' => false,
				'filter'	 => false,
				'bind' 	 	 => false,
				'editable' 	 => false,
				'pk'		 => true,
				'label' 	 => 'ID'
			),
			array(
				'name'       => 'categoryname',
				'length' 	 => 30,
				'editable'	 => false,
				'bind'		 => false,
				'label' 	 => 'Category'
			),			
			array(
				'name'       => 'subcategoryname',
				'length' 	 => 30,
				'editable'	 => false,
				'bind'		 => false,
				'label' 	 => 'Name'
			),			
			array(
				'name'       => 'location',
				'length' 	 => 30,
				'editable'	 => false,
				'bind'		 => false,
				'label' 	 => 'Location'
			),			
			array(
				'name'       => 'inspecteddatetime',
				'length' 	 => 19,
				'datatype'   => 'datetime',
				'label' 	 => 'Inspected Date'
			),			
			array(
				'name'       => 'fullname',
				'length' 	 => 30,
				'label' 	 => 'Inspected By'
			)
		);

	$crud->subapplications = array(
			array(
				'title'		  => 'Documents',
				'imageurl'	  => 'images/document.gif',
				'script' 	  => 'editDocuments'
			),
			array(
				'title'		  => 'Print',
				'imageurl'	  => 'images/print.png',
				'script' 	  => 'printReport'
			)
		);
		
	$crud->run();
?>
