<?php
/**
  * Generates static files for all the content of the website
  */
class StaticController extends AppController
{
  var $name = 'Static';
  var $uses = array('Article', 'User');
  var $helpers = array('Geshi', 'Link', 'Document');

  function article($name) {
    $article = explode('-', $name);
    $articleID = $article[0];
    $article = $this->Article->findById($articleID);
    $this->set('article', $article);

    $this->name = $this->Article->genName($articleID, $article['Article']['name']);
    if ($this->name != $name) {
      $this->redirect('/a/'.$this->name);
    }

    $this->User->bindModel(array('hasMany' => array('Article' => array('order' => array('id' => 'desc')))));
    $this->set('user', $this->User->findById($article['Article']['user_id']));
  }

  /** Generate the static version of the index page (originally /articles/index) */
  function index() {
    $options = array('order' => array('category_id' => 'asc'));
    $this->set('categories', $this->Article->Category->find('list'));
    $this->set('articles', $this->Article->find('all', $options));
  }

  function afterFilter() {
    $this->_display();

    if ($this->params['action'] == 'index') {
      $fp = fopen(APP.'webroot/index.html', 'w');
    } elseif ($this->params['action'] == 'article') {
      $fp = fopen(APP.'webroot/a/' . $this->name, 'w');
    }
    fwrite($fp, $this->output);
    fclose($fp);
  }

  function _display() {
    ?><div class="notification">Current page was statically cached</div><?php
  }

}
