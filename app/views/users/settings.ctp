
<h1>Preferences</h1>

<label>Avatar</label>
<img src="/p/user-<?php echo $this->Session->read('User.id'); ?>.png" />

<?php

echo $form->create('User', array('url' => '/users/settings', 'enctype' => 'multipart/form-data'));
echo $form->input('User.name');
echo $form->input('User.picture', array('type' => 'file'));
echo $form->end('Change your nickname');


if (! empty($articles)):
?>

<h1>Vos articles</h1>

<table>
<?php

$headers = array('id', 'category', 'name', 'edit');
echo $html->tableHeaders($headers);

foreach ($articles as $article) {
  $a = $article['Article'];
  $c = $article['Category'];

  $path = $link->gen($a['id'], $a['name']);
  $view = $html->link($a['name'], '/a/'.$path);
  $edit = $html->link('edit', '/articles/edit/'.$a['id']);


  $cells = array($a['id'], $c['name'], $view, $edit);
  echo $html->tableCells($cells);
}

?></table><?php

endif; // !empty articles

