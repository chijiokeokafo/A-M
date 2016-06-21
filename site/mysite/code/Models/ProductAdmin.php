<?php

class ProductAdmin extends ModelAdmin {
  private static $managed_models = array(
    'Product'
  );

  private static $url_segment = 'products-admin';

  private static $menu_title = 'Products Admin';

  public function getEditForm($id = null, $fields = null) {
      $form = parent::getEditForm($id, $fields);
      $gridField = $form->Fields()->fieldByName($this->sanitiseClassName($this->modelClass));
      $gridField->getConfig()->addComponent(new GridFieldOrderableRows('Sort'));
      return $form;
  }

  public function getList(){
    $list = parent::getList();
    $user = Member::currentUser();

    if($user->inGroup('product-user')){
      if($this->modelClass == 'Product'){
        $list = Product::get()->filter(array('ID' => $user->ProductID));
      }
    }
    return $list;
  }
}