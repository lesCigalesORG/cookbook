<?php

class ArticlesController extends AppController
{
  var $name = 'Articles';
  var $helpers = array('Link');

  // not used anymore
  function index()
  {
    $options = array('order' => array('category_id' => 'asc'));

    $this->set('categories', $this->Article->Category->find('list'));
    $this->set('articles', $this->Article->find('all', $options));
  }

  function create()
  {
    $this->forceIdentification();

    if (! empty($this->data)) {
      if (empty($this->data['Article']['name'])) {
        $this->Article->invalidate('name', 'Cannot be empty');
      } else {
        $this->data['Article']['user_id'] = $this->Session->read('User.id');
        $this->Article->save($this->data);
        $this->cleanIndex();
      }
    }
    $this->set('categories', $this->Article->Category->find('list'));
//     $this->set('articles', $this->Article->find('all'));
  }

  function edit($articleID) {
    $this->forceIdentification();

    $article = $this->Article->findById($articleID);
    if (empty($article)) {
      return $this->Session->setFlash('This article does not exist');
    }
    if ($this->Session->read('User.id') != $article['Article']['user_id']) {
      return $this->Session->setFlash('This article does not belong to you');
    }

    $this->set('categories', $this->Article->Category->find('list'));

    $this->Article->initializeRevisions();

    $this->Article->id = $articleID;
    $history = $this->Article->revisions();
    pr($history);

    if (! empty($this->data)) {
      $this->data['Article']['id'] = $articleID;
      $this->Article->save($this->data);
      // delete the cache on disk:
      $name = $this->Article->generateName($articleID);
      $file = APP.'webroot/a/'.$name;
      if (file_exists($file)) {
        unlink(APP.'webroot/a/'.$name);
      }
      $this->cleanIndex();

    } else {
      $this->data = $article;
    }
  }

  // not used anymore
  function view($name) {
    pr("generating article $name");

    // Get the ID (or get the name in DB?)
    $article = explode('-', $name);
    
    $articleID = $article[0];
    $article = $this->Article->findById($articleID);

    $this->set('article', $article);
  }
}

