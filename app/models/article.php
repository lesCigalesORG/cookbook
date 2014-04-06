<?php

class Article extends AppModel
{
  var $name = 'Article';
  var $hasMany = array('Comment');
  var $belongsTo = array('Category'); //, 'User');
  var $actsAs = array('Revision');

  function generateName($articleID)
  {
    $articleName = $this->field('name', array('id' => $articleID));
    $name = strtolower($articleName);
    $name = remove_accent($name);
    $name = preg_replace('/[^a-z0-9. ]/', '', $name);
    $name = preg_replace('/[ ]+/', '-', $name);
    $final = $articleID . '-' . $name . '.html';
    return $final;
  }


  function genName($articleID, $articleName) {
    $name = strtolower($articleName);
    $name = remove_accent($name);
    $name = preg_replace('/[^a-z0-9. ]/', '', $name);
    $name = preg_replace('/[ ]+/', '-', $name);
    $final = $articleID . '-' . $name . '.html';
    return $final;
  }

  function last5() {
    $articles = $this->find('all', array('fields' => array('id', 'name'), 
      'order' => array('Article.id' => 'desc'), 'limit' => 5));

    for ($i = 0; isset($articles[$i]); $i++) {
      $articles[$i]['Article']['path'] =
        $this->genName($articles[$i]['Article']['id'], $articles[$i]['Article']['name']);
    }
    return $articles;
  }


}
