<?php
class ProductDetail extends Page {

  private static $db = array(
    'ProductName' => 'Text',
    'Description' => 'HTMLText',
    'isFabric' => 'Boolean', 
    'FabricLinkOne' => 'Text', 
    'FabricLinkTwo' => 'Text', 
    'FabricLinkThree' => 'Text'
  );

  private static $summary_fields = array( 
    'isFabric' => 'Fabric'
  );

  private static $has_one = array(
    'ProductTileImage' => 'Image'
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
    $fields->addFieldToTab('Root.Main', new UploadField('ProductTileImage','Upload Product Tile Image (300px x 200px)'), 'Description');
    $fields->addFieldToTab('Root.Main', new LiteralField('', '<h2>Check if product has suggested fabrics.</h2>'), 'Description');
    $fields->addFieldToTab('Root.Main', new CheckboxField("isFabric", "Fabric Buttons"), 'Description');
    $fields->addFieldToTab('Root.Main', new LiteralField('', '<h2>Links (http://.....)</h2>'), 'Description');
    $fields->addFieldToTab('Root.Main', new TextField('FabricLinkOne', 'Link to Suggested Fabric 1'), 'Description');
    $fields->addFieldToTab('Root.Main', new TextField('FabricLinkTwo', 'Link to Suggested Fabric 2'), 'Description');
    $fields->addFieldToTab('Root.Main', new TextField('FabricLinkThree', 'Link to Suggested Fabric 3'), 'Description');
    
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