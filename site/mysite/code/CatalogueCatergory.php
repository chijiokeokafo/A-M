<?php
class CatalogueCategory extends Page {

  private static $db = array(
    'CategoryTitle' => 'Text'
  );

  private static $has_one = array(
    'CategoryImage' => 'Image',

  );

  private static $has_many = array(
    'Products' => 'Product'
  );

  private static $summary_fields = array( 
    'Preview' => 'Preview'
  );

  function getCMSFields() {

    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', new TextField('CategoryTitle', 'Category'), 'Content');
    $fields->addFieldToTab('Root.Main', new UploadField('CategoryImage', 'Upload Category Image (300px x 200px)'), 'Content');
    $fields->removeFieldFromTab("Root.Content.Main","Content");

    return $fields;

  }
}

class CatalogueCategory_Controller extends Page_Controller {

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