<?php
class Media extends Page {
	private static $db = array(
    'MediaOne' => 'Text', 
    'MediaTwo' => 'Text'
  );

    function getCMSFields() {

      $fields = parent::getCMSFields();        
      $fields->addFieldToTab('Root.Main', new TextField('MediaOne', 'Video Like 1'), 'Content'); 
      $fields->addFieldToTab('Root.Main', new TextField('MediaTwo', 'Video Link 2'), 'Content');
      $fields->removeFieldFromTab("Root.Content.Main","Content");

      return $fields;

    }
}

class Media_Controller extends Page_Controller {

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
?>