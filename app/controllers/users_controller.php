<?php

class UsersController extends AppController
{
  var $name = 'Users';
  var $components = array('ImageResize');
  var $helpers = array('Link');

  function login()
  {
    if ($this->Session->check('User.id')) {
      $this->redirect('/users/settings');
    }

    if (! empty($this->data)) {
      if (($user = $this->User->login($this->data['User']['username'], $this->data['User']['password']))) {
        unset($user['User']['password']);
        $this->Session->write('User', $user['User']);
        $this->Session->setFlash('Successfully logged in!');
        $this->redirect('/users/settings');
      } else {
        // Error message
        $this->Session->setFlash('Identification failed');
      }
    }

  }


  function logout() {
    $this->Session->delete('User');
    $this->redirect('/users/login');
  }


  function settings()
  {
    $this->loadModel('Article');
    $this->forceIdentification();
    $userID = $this->Session->read('User.id');

    if (! empty($this->data)) {
      $data = array('id' => $userID, 'name' => $this->data['User']['name']);
      $this->User->save($data);
      $this->Session->setFlash('Nickname saved');

      // If picture exists, save and resize it
      if (! empty($this->data['User']['picture'])) {
        $file = $this->data['User']['picture'];
        $filename = APP . 'webroot/p/user-' . $userID . '.png';
        $thumb = APP . 'webroot/p/user-thumb-' . $userID . '.png';
        move_uploaded_file($file['tmp_name'], $filename);
        copy($filename, $thumb);
        $image = $this->ImageResize->resize($filename, 150, 150);
        $this->ImageResize->resize($thumb, 75, 75);
      }

    } else {
      $this->data['User']['name'] = $this->User->field('name', array('id' => $userID));
    }

    $conditions = array('conditions' => array('Article.user_id' => $userID),
                        'order' => array('Article.id' => 'desc')
    );
    $this->set('articles', $this->Article->find('all', $conditions));
  }


  function index()
  {
    $this->User->bindModel(array('hasMany' => array('Article' => array('order' => array('id' => 'desc')))));
    $users = $this->User->find('all');
    $this->set('users', $users);
  }

  
}
