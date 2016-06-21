<?php
class Home extends Page {
		private static $has_many = array(
	'HomepageCarouselItems' => 'HomepageCarouselItem'
	
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$conf=GridFieldConfig_RecordEditor::create(10);
	$conf->addComponent(new GridFieldOrderableRows('SortOrder'));
	$fields->addFieldToTab('Root.HomepageCarousel', new GridField('HomepageCarouselItems', 'HomepageCarouselItems', $this->HomepageCarouselItems(), $conf));
	// Left Spotlight
	// $fields->addFieldToTab('Root.Spotlights', new LiteralField('', '<h2>Left Spotlight Details</h2>'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('LeftSpotlight', 'Headline'));
	// $fields->addFieldToTab('Root.Spotlights', new UploadField('LeftSpotlightImg', 'Image (438, 335)'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('LeftSpotlightAlt', 'Image Alternate Text'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('LeftSpotlightBtn', 'CTA'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('LeftSpotlightURL', 'Link'));
	// Right Spotlight
	// $fields->addFieldToTab('Root.Spotlights', new LiteralField('', '<hr><h2>Right Spotlight Details</h2>'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('RightSpotlight', 'Headline'));
	// $fields->addFieldToTab('Root.Spotlights', new UploadField('RightSpotlightImg', 'Image (438, 335)'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('RightSpotlightAlt', 'Image Alternate Text'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('RightSpotlightBtn', 'CTA'));
	// $fields->addFieldToTab('Root.Spotlights', new TextField('RightSpotlightURL', 'Link'));
	// $fields->addFieldToTab('Root.Content.Main', new UploadField('HomepageImage', 'Upload main Homepage Image'));
			// $fields->removeByName("Masthead");
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