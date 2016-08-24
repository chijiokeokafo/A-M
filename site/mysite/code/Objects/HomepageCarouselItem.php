<?php
	class HomepageCarouselItem extends DataObject {

		private static $db = array (
			'LinkEN' => 'Varchar(255)',
			'AltEN' => 'Varchar(255)',
			'ExternalLink' => 'Boolean',
      'SortOrder' => 'Int'
		);

		private static $has_one = array (
			'DesktopImage' => 'Image',
			'Page' => 'Home'
		);

		private static $summary_fields = array( 
			'Preview' => 'Preview'
		); 

		private static $default_sort='SortOrder';

		public function getCMSFields() {
			$fields = parent::getCMSFields();

			$Image = new UploadField( 'DesktopImage' , 'Image (910px x 650px)');
			$Image->getValidator()->allowedExtensions = array( 'jpeg', 'jpg', 'png' );
			$Image->setFolderName('Uploads/Carousel');
			$fields->addFieldToTab( "Root.Main", $Image);
			
			$fields->addFieldToTab('Root.Main', new HiddenField('PageID'));
			$fields->addFieldToTab('Root.Main', new HiddenField('SortOrder'));

			$fields->addFieldToTab('Root.Main', new TextField('LinkEN', 'Link'));
			$fields->addFieldToTab('Root.Main', new TextField('AltEN', 'Image Alternate Text'));
			$fields->addFieldToTab('Root.Main', new CheckboxField('ExternalLink', 'Open link in new window'));

			return $fields;
	    }

	    public function getPreview(){
	    	return DBField::create_field('HTMLVarchar', '<img src="'.$this->DesktopImage()->URL.'" style="max-width: 200px; width: 100%;"/>');
	    }

	    protected function onAfterWrite() {
	        parent::onAfterWrite();
	        if($this->SortOrder == 0) {
	            $prevSortOrder = DB::query("SELECT MAX(SortOrder) FROM HomepageCarouselItem")->value();
	            if($prevSortOrder > 0) {
	                $sort = ++$prevSortOrder;
	                $this->SortOrder = $sort;
	                $this->write();
	            } else {
	                $this->SortOrder = 1;
	                $this->write();
	            }
	        }
	    }

	}
