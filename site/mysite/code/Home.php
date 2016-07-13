<?php
class Home extends Page {

	private static $db = array(
	    'Headline' => 'Text'
	);
	private static $has_many = array(
	'HomepageCarouselItems' => 'HomepageCarouselItem'
	
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$conf=GridFieldConfig_RecordEditor::create(10);
	$conf->addComponent(new GridFieldOrderableRows('SortOrder'));
	$fields->addFieldToTab('Root.Main', new TextField('Headline', 'Headline'));
	$fields->removeFieldFromTab('Root.Main', 'Content');
	$fields->addFieldToTab('Root.HomepageCarousel', new GridField('HomepageCarouselItems', 'HomepageCarouselItems', $this->HomepageCarouselItems(), $conf));
			return $fields;
	}
	public function canView($member = null) {
		$user = Member::currentUser();
		if(!$user) return true;
		if($user->inGroup('manager')){
			return false;
		}
		return true;
	}
	public function canEdit($member = null) {
		$user = Member::currentUser();
		if(!$user) return false;
		if($user->inGroup('manager')){
			return false;
		}
		return true;
	}
	public function canDelete($member = null) {
		$user = Member::currentUser();
		if(!$user) return false;
		if($user->inGroup('manager')){
			return false;
		}
		return true;
	}
	public function canCreate($member = null) {
		$user = Member::currentUser();
		if(!$user) return false;
		if($user->inGroup('manager')){
			return false;
		}
		return true;
	}
}
class Home_Controller extends Page_Controller {
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