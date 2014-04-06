<?php

class AppController extends Controller {

  var $uses = array('Article', 'User', 'Comment');

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


  /** Generate list of last 5 elements for the footer */
  function beforeFilter() {

    $this->set('lastarticles', $this->Article->last5());
    $this->set('lastusers', $this->User->last5());
    $this->set('lastcomments', $this->Comment->last5());

  }

}
