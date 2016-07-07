<?php

class ProductCarouselItem extends DataObject {

    private static $db = array(
        'ImageAlt' => 'Varchar(300)',
        'SortOrder' => 'Int'
    );

    private static $has_one = array(
        'Image' => 'Image',
        'Page' => 'Page'
    );

    private static $has_many = array(
    );

    private static $summary_fields = array(
        'Preview' => 'Preview'
  );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeFieldFromTab('Root.Main', 'SortOrder');
        $fields->removeFieldFromTab('Root.Main', 'PageID');

        return $fields;
    }

    public function getPreview(){
        return DBField::create_field('HTMLVarchar', '<img src="'.$this->Image()->SetSize(100,100)->URL.'">');
    }

}