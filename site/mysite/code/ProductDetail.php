<?php
class ProductDetail extends Page {

  private static $db = array(
    'ProductName' => 'Text',
    'Description' => 'HTMLText',
  );

  private static $has_many = array(
  'ProductGalleryItems' => 'ProductGalleryItem'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $conf=GridFieldConfig_RecordEditor::create(10);
    $conf->addComponent(new GridFieldOrderableRows('SortOrder'));
    $fields->removeFieldFromTab('Root.Main', 'Content');
    $fields->addFieldToTab('Root.Main', new TextField('ProductName', 'Product Name'));
    $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description', 'Product Description'));
    $fields->addFieldToTab('Root.ProductGallery', new GridField('ProductGalleryItems', 'ProductGalleryItems', $this->ProductGalleryItems(), $conf));
    
    return $fields;
  }
}

class ProductDetail_Controller extends Page_Controller {
  /**
  * An array of actions that can be accessed via a request. Each array element should be an action name, and the
  * permissions or conditions required to allow the user to access it.
  *
  * <code>
  * array (
  *     'action', // anyone can access this action
  *     'action' => true, // same as above
  *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
  *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
  * );
  * </code>
  *
  * @var array
  */
  private static $allowed_actions = array (
  );

  public function init() {
    parent::init();
    // You can include any CSS or JS required by your project here.
    // See: http://doc.silverstripe.org/framework/en/reference/requirements
  }
}