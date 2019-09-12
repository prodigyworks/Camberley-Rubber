<?php
	require_once('system-db.php');
	require_once('pdfreport.php');
	require_once("simple_html_dom.php");

	class CheckListReport extends PDFReport {
		public $dynamicY;
		private $headermember = null;

		function getTitle() {
			return "Check List";
		}

		function newPage() {
            $this->AddPage();;
			$this->addText( 83, 7, $this->getTitle(), 16, 6, 'B') + 5;
			
			$this->Image("images/logomain.png", 170, 1);

			$this->dynamicY = 29;
			
			return $this->dynamicY;
		}

		function checkNotes($label, $name, $y, $member, $offset = 0) {
			if ($y > 270) {
				$y = $this->newPage();
			}

            $this->addText( 15, $y, $label, 10, 4, 'B');

            if ($member[$name] == 1) {
	            $this->addText( 60 + $offset, $y, "Yes", 10, 4, '');

			} else if ($member[$name] == 2) {
	            $this->addText( 60 + $offset, $y, "N/A", 10, 4, '');

	        } else {
	            $this->addText( 60 + $offset, $y, "No Faults Found", 10, 4, '');
	        }

            if ($member[$name] == 1) {
	            $newY = $this->addText( 100 + $offset, $y, $member[$name . "_notes"] . " ", 10, 4, '', 200- $offset) + 4;

            } else {
	            $newY = $this->addText( 100 + $offset, $y, " ", 10, 4, '') + 4;
			}

			return $newY;
		}

		function checkNotes3($label, $name, $y, $member, $offset = 0) {
			if ($y > 270) {
				$y = $this->newPage();
			}

			$this->addText( 15, $y, $label, 10, 4, 'B');

			if ($member[$name] == 0) {
				$this->addText( 60 + $offset, $y, "Fault Found", 10, 4, '');

			} else if ($member[$name] == 2) {
				$this->addText( 60 + $offset, $y, "N/A", 10, 4, '');

			} else {
				$this->addText( 60 + $offset, $y, "No Faults Found", 10, 4, '');
			}

			if ($member[$name] == 0) {
				$newY = $this->addText( 100 + $offset, $y, $member[$name . "_notes"] . " ", 10, 4, '', 200) + 4;

			} else {
				$newY = $this->addText( 100 + $offset, $y, " ", 10, 4, '') + 4;
			}

			return $newY;
		}

		function checkNotes2($label, $name, $y, $member, $offset = 0) {
			if ($y > 270) {
				$y = $this->newPage();
			}
			
            $this->addText( 15, $y, $label, 10, 4, 'B');

            if ($member[$name] == 1) {
	            $this->addText( 60 + $offset, $y, "Ok", 10, 4, '');

			} else if ($member[$name] == 2) {
	            $this->addText( 60 + $offset, $y, "N/A", 10, 4, '');

	        } else {
	            $this->addText( 60 + $offset, $y, "Not Ok", 10, 4, '');
	        }

            if ($member[$name] == 0) {
	            $newY = $this->addText( 100 + $offset, $y, $member[$name . "_notes"] . " ", 10, 4, '', 100 - $offset) + 4;

            } else {
	            $newY = $this->addText( 100 + $offset, $y, " ", 10, 4, '') + 4;
			}
			
			return $newY;
		}
	}
	?>