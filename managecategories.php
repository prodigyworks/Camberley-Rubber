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
				viewDocument(node, "addproductdocument.php", node, "productdocs", "productid");
			}
	
<?php			
		}
	}
	
	$crud = new ProductCrud();
	$crud->dialogwidth = 740;
	$crud->title = "Categories";
	$crud->table = "{$_SESSION['DB_PREFIX']}category";
	$crud->sql = "SELECT A.* 
				  FROM  {$_SESSION['DB_PREFIX']}category A
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
				'name'       => 'name',
				'length' 	 => 40,
				'unique'	 => true,
				'label' 	 => 'Name'
			),			
			array(
				'name'       => 'formname',
				'length' 	 => 38,
				'label' 	 => 'Form Name'
			),			
			array(
				'name'       => 'postformname',
				'length' 	 => 38,
				'label' 	 => 'Post Form Name'
			),			
			array(
				'name'       => 'reportname',
				'length' 	 => 38,
				'label' 	 => 'Report Name'
			),			
			array(
				'name'       => 'startdate',
				'length' 	 => 15,
				'datatype'	 => 'date',
				'label' 	 => 'Start Date'
			),			
			array(
				'name'       => 'sequence',
				'length' 	 => 12,
				'type'       => 'COMBO',
				'options'    => array(
						array(
							'value'		=> "D",
							'text'		=> 'Daily'
						),
						array(
							'value'		=> "W",
							'text'		=> 'Weekly'
						),
						array(
							'value'		=> "M",
							'text'		=> 'Monthly'
						),
						array(
							'value'		=> "6",
							'text'		=> '6 Monthly'
						),
						array(
							'value'		=> "Y",
							'text'		=> 'Yearly'
						),
						array(
							'value'		=> "3",
							'text'		=> '3 Yearly'
						),
						array(
							'value'		=> "5",
							'text'		=> '5 Yearly'
						)
					),
				'label' 	 => 'Sequence'
			),			
			array(
				'name'       => 'status',
				'length' 	 => 12,
				'type'       => 'COMBO',
				'options'    => array(
						array(
							'value'		=> "S",
							'text'		=> 'Square'
						),
						array(
							'value'		=> "R",
							'text'		=> 'Rectangle'
						)
					),
				'label' 	 => 'Shape'
			),			
			array(
				'name'       => 'type',
				'length' 	 => 12,
				'type'       => 'COMBO',
				'options'    => array(
						array(
							'value'		=> "F",
							'text'		=> 'Form'
						),
						array(
							'value'		=> "C",
							'text'		=> 'Categories'
						),
						array(
							'value'		=> "M",
							'text'		=> 'Mixed'
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
				'title'		  => 'Sub Categories',
				'imageurl'	  => 'images/document.gif',
				'application' => 'managesubcategories.php'
			)
		);
		
	$crud->run();
?>
