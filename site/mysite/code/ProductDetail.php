<?php

class ProductDetail extends Page {

  private static $db = array(
    'ProductName' => 'Text',
    'Description' => 'HTMLText'
    // 'Sort' => 'Int'
  );

  // private static $has_one = array(
  //   'ProductImage1' => 'Image',
  //   'ProductImage2' => 'Image',
  //   'ProductImage3' => 'Image',
  //   'ProductImage4' => 'Image'

  // );

  private static $has_many = array(
    'CarouselItems' => 'ProductGalleryItem'
  );

  // private static $summary_fields = array(
  //     'ProductName', 'ProductImage1'
  // );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $member = Member::currentUser();

    $fields->addFieldToTab('Root.Main', new TextField('ProductName', 'Product Name'));
    $fields->addFieldToTab('Root.Main', new HTMLEditorField('Description', 'Product Description'));

    $this->createGalleryFields($fields, array(
      'Slides' => 'CarouselItems',
      'ExistingSlides' => $this->CarouselItems()
    ));

    // $fields->addFieldToTab('Root.Main', new LiteralField('', '<h2>Product Images (610x440 px)</h2>'));

    // $fields->addFieldToTab('Root.Main', new UploadField('ProductImage1', 'Product Image 1'));
    // $fields->addFieldToTab('Root.Main', new UploadField('ProductImage2', 'Product Image 2'));
    // $fields->addFieldToTab('Root.Main', new UploadField('ProductImage3', 'Product Image 3'));
    // $fields->addFieldToTab('Root.Main', new UploadField('ProductImage4', 'Product Image 4'));

    // $fields->removeFieldFromTab('Root.Main', 'Sort');
    $fields->removeFieldFromTab("Root.Content.Main","Content");
    
    return $fields;
  }

  public function getList(){
    $list = parent::getList();
    $user = Member::currentUser();

    // if($user->inGroup('location-user')){
    //   if($this->modelClass == 'LocationDetail'){
    //     $list = LocationDetail::get()->filter(array('ID' => $user->LocationID));
    //   }
    // }
    return $list;
  }

  // public function Link() {
  //   return $this->ProductDetail()->Link('show/'.$this->ID);
  // }

}
