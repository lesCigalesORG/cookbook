<?php

class AppController extends Controller {

// otherwise static controller would try to load Static model!!!
//   var $uses = array('Article', 'User');

  function forceIdentification() {
    if (! $this->Session->check('User.id')) {
      $this->Session->setFlash('You need to identity yourself first');
      $this->redirect('/users/login');
    }
  }

  function cleanIndex() {
    $filename = APP . 'webroot/index.html';
    if (file_exists($filename)) {
      unlink($filename);
    }
  }

}
