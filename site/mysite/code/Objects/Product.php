<?php

class Product extends DataObject {

  private static $db = array(
    'ProductName' => 'Text',
    'Description' => 'HTMLText',
    'Sort' => 'Int'
  );

  private static $has_one = array(
    'ProductImage1' => 'Image',
    'ProductImage2' => 'Image',
    'ProductImage3' => 'Image',
    'ProductImage4' => 'Image',
    'Category' => 'SiteTree'

  );

  private static $summary_fields = array(
      'ProductName', 'Description'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $member = Member::currentUser();

    $fields->addFieldToTab('Root.Product', new TextField('ProductName', 'Product Name'));
    $fields->addFieldToTab('Root.Product', new HTMLEditorField('Description', 'Product Description'));

    $fields->addFieldToTab('Root.Product', new UploadField('ProductImage1', 'Product Image 1'));
    $fields->addFieldToTab('Root.Product', new UploadField('ProductImage2', 'Product Image 2'));
    $fields->addFieldToTab('Root.Product', new UploadField('ProductImage3', 'Product Image 3'));
    $fields->addFieldToTab('Root.Product', new UploadField('ProductImage4', 'Product Image 4'));

    $fields->removeFieldFromTab('Root.Main', 'Sort');
    
    return $fields;
  }

}

