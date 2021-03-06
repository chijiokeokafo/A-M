<?php
class Contact extends Page {

	private static $db = array(
		'PhoneNumber' => 'Text', 
		'Email' => 'Text'
	);

	private static $has_one = array(
		'Mugshot' => 'Image',
  
	);

	function getCMSFields() {

		$fields = parent::getCMSFields();        
    $fields->addFieldToTab('Root.Main', new TextField('PhoneNumber', 'Phone Number'), 'Content'); 
    $fields->addFieldToTab('Root.Main', new TextField('Email', 'Contact Email'), 'Content'); 
    $fields->addFieldToTab('Root.Main', new UploadField('Mugshot', 'Upload Mugshot (300px x 400px)'), 'Content');
    $fields->removeFieldFromTab("Root.Content.Main","Content");

    return $fields;

	}

}
class Contact_Controller extends Page_Controller {

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