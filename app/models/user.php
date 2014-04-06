<?php

class User extends AppModel
{
  var $name = 'User';
  var $useDbConfig = 'default';

  function login($username, $plainPassword)
  {
    // Get account from local database
    $password = $this->field('password', array('username' => $username));

    if (empty($password)) {
      // Get account from control panel database
      $this->useDbConfig = 'controlpanel';
      $password = $this->field('password', array('username' => $username));
      $updateLocalDB = true;
    }

    $this->useDbConfig = 'default';

    // Check password
    $pass = crypt($plainPassword, $password);
    if ($pass != $password) {
      return false;
    }

    if (isset($updateLocalDB)) {
      // Update local DB (duH!)
      $data = array('username' => $username, 'password' => $pass);
      $this->create($data);
      $this->save();
    }

    return $this->find(array('username' => $username));
  }

  function last5() {
    $users = $this->find('all', array('fields' => array('id', 'name'), 
      'order' => array('User.id' => 'desc'), 'limit' => 5));

/*    for ($i = 0; isset($articles[$i]); $i++) {
      $articles[$i]['Article']['path'] =
        $this->genName($articles[$i]['Article']['id'], $articles[$i]['Article']['name']);
    }*/
    return $users;
  }


}
