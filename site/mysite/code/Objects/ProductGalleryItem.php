<?php
  class ProductGalleryItem extends DataObject {

    private static $db = array (
      'Link' => 'Varchar(255)',
      'AltText' => 'Varchar(255)',
      'SortOrder' => 'Int'
    );

    private static $has_one = array (
      'Image' => 'Image',
      'Page' => 'ProductDetail'
    );

    private static $summary_fields = array( 
      'Preview' => 'Preview'
    ); 

    private static $default_sort='SortOrder';

    public function getCMSFields() {
      $fields = parent::getCMSFields();

      $Image = new UploadField( 'Image' , 'Image (610 x 450)');
      $Image->getValidator()->allowedExtensions = array( 'jpeg', 'jpg', 'png' );
      $Image->setFolderName('Uploads/Carousel');
      $fields->addFieldToTab( "Root.Main", $Image);
      
      $fields->addFieldToTab('Root.Main', new HiddenField('PageID'));
      $fields->addFieldToTab('Root.Main', new HiddenField('SortOrder'));

      $fields->addFieldToTab('Root.Main', new TextField('Link', 'Link'));
      $fields->addFieldToTab('Root.Main', new TextField('AltText', 'Image Alternate Text'));

      return $fields;
    }

    public function getHeadline(){
        return $this->HeadlineEN;
    }

    public function getLink(){
        return $this->Link;
    }

    public function getAlt(){
        return $this->AltText;
    }

    public function getCTA(){
        return $this->CTAEN;
    }

    public function getPreview(){
        return DBField::create_field('HTMLVarchar', '<img src="'.$this->Image()->URL.'" style="max-width: 200px; width: 100%;"/>');
    }

    protected function onAfterWrite() {
      parent::onAfterWrite();
      if($this->SortOrder == 0) {
          $prevSortOrder = DB::query("SELECT MAX(SortOrder) FROM ProductGalleryItem")->value();
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

    // public function canView($member = null) {
    //    return true;
    // }
    // public function canEdit($member = null) {
    //     return true;
    // }
    // public function canDelete($member = null) {
        
    //     return true;
    // }
    // public function canCreate($member = null) {
        
    //     return true;
    // }
    }