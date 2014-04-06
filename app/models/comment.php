<?php

class Comment extends AppModel
{
  var $name = 'Comment';
  var $belongsTo = array('Article');


  function last5() {
    $comments = $this->find('all', array(
      'fields' => array('Comment.id', 'Comment.content', 'Article.id', 'Article.name'), 
      'order' => array('Comment.id' => 'desc'), 'limit' => 5));

    for ($i = 0; isset($comments[$i]); $i++) {
      $comments[$i]['Article']['path'] =
        $this->Article->genName($comments[$i]['Article']['id'], $comments[$i]['Article']['name']);
    }

    return $comments;
  }

}
