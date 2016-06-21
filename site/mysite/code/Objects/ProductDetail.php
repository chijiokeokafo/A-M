<?php

class ProductDetail extends DataObject {

  private static $db = array(
    'ProductName' => 'Text',
    'Description' => 'HTMLText'
  );

  private static $has_one = array(
    'ProductImage1' => 'Image',
    'ProductImage2' => 'Image',
    'ProductImage3' => 'Image',
    'ProductImage4' => 'Image',
    'Type' => 'SiteTree'

  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $member = Member::currentUser();

    $fields->removeFieldFromTab('Root.Main', 'Sort');
    
    return $fields;
  }

}