<?php

class CategoriesController extends AppController
{
  var $name = 'Categories';


  function index()
  {
    $this->forceIdentification();

    if (! empty($this->data) && ! empty($this->data['Category']['name'])) {
      if ($this->Category->find('count', array('conditions' => array('name' => $this->data['Category']['name'])))) {
        $this->Category->invalidate('name', 'This category already exists');
      } else {
        $this->Category->save($this->data);
      }
    }

    $this->set('categories', $this->Category->find('all'));
  }

}
