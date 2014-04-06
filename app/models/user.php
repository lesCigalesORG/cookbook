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

  // Just to generate a random entry for dump .. not used in web app:
  function _generateMD5Salt()
  {
    $MD5Salt = '$1$';
    /* We are supposed to fill the salt with 8 characters for MD5 */
    $chars = "0123456789abcdefghijklmopqrstuvwxyz";
    for ($i = 0; $i < 8; $i++)
      {
          $MD5Salt .= $chars[rand(0, strlen($chars)-1)];
      }
    $MD5Salt .= '$';
    return $MD5Salt;
  }
  function encrypt($string)
  {
    /* If MD5 is not present on the system, exit with an error */
    if (CRYPT_MD5 !== 1) {
      die("You need to support CRYPT_MD5");
    }
    $MD5Salt = $this->_generateMD5Salt();
    $encrypted = crypt($string, $MD5Salt);

    return $encrypted;
  }
}
