<?php
	require_once("crud.php");
	
	class ProductCrud extends Crud {
		
		/* Post header event. */
		public function postHeaderEvent() {
			createDocumentLink();
		}
		
		public function postScriptEvent() {
?>
			function editDocuments(node) {
				viewDocument(node, "addsubcategorydocument.php", node, "subcategorydocs", "subcategoryid");
			}
	
<?php			
		}
	}
	
	$crud = new ProductCrud();
	$crud->dialogwidth = 740;
	$crud->title = "Sub Categories";
	$crud->table = "{$_SESSION['DB_PREFIX']}subcategory";
	$crud->sql = "SELECT A.*, B.name AS categoryname
				  FROM {$_SESSION['DB_PREFIX']}subcategory A
				  INNER JOIN {$_SESSION['DB_PREFIX']}category B
				  ON B.id = A.categoryid
				  WHERE A.categoryid = {$_GET['id']}
				  ORDER BY A.name";
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
				'name'       => 'categoryid',
				'length' 	 => 10,
				'default'	 => $_GET['id'],
				'editable'	 => false,
				'showInView' => false,
				'label' 	 => 'Category'
			),			
			array(
				'name'       => 'categoryname',
				'length' 	 => 40,
				'editable'	 => false,
				'bind'		 => false,
				'label' 	 => 'Category'
			),			
			array(
				'name'       => 'name',
				'length' 	 => 40,
				'label' 	 => 'Name'
			),			
			array(
				'name'       => 'location',
				'length' 	 => 40,
				'label' 	 => 'Location'
			),			
			array(
				'name'       => 'type',
				'length' 	 => 12,
				'type'       => 'COMBO',
				'options'    => array(
						array(
							'value'		=> "A",
							'text'		=> 'Auto'
						),
						array(
							'value'		=> "M",
							'text'		=> 'Manual'
						)
					),
				'label' 	 => 'Type'
			),			
			array(
				'name'       => 'imageid',
				'type'		 => 'IMAGE',
				'required'   => false,
				'length' 	 => 35,
				'showInView' => false,
				'label' 	 => 'Image'
			)
		);

	$crud->subapplications = array(
			array(
				'title'		  => 'Documents',
				'imageurl'	  => 'images/document.gif',
				'script' 	  => 'editDocuments'
			)
		);
		
	$crud->run();
?>
