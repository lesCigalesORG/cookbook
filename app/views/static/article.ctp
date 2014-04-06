<h1><?php echo $article['Article']['name']; ?></h1>

<div id="article">
<?php
$this->pageTitle = $article['Article']['name'];

$content = $article['Article']['content'];
$content = $document->parse($content);
echo $content;
?>
</div>

<br class="clear" />

<?php
$image = '/img/user-default.png';
if (file_exists(WWW_ROOT . 'p/user-' . $user['User']['id'] . '.png')) {
  $image = '/p/user-' . $user['User']['id'] . '.png';
}
?>

<div class="user">
  <img src="<?php echo $image; ?>" />
  <span class="name">Auteur: <?php echo $user['User']['name']; ?></span> <?php echo sizeof($user['Article']); ?> contribution(s).<br />
  <ul>
  <?php
  $count = 0;
  foreach ($user['Article'] as $a) {
    if ($count >= 3) { break; }
    echo '<li>', $html->link($a['name'], '/a/'.$link->gen($a['id'], $a['name'])), '</li>';
    $count++;
  }
  ?></ul>
</div>

<br class="clear" />

<h1>Comments</h1>

<?php
foreach ($article['Comment'] as $comment) {
// pr($comment);
  $content = $comment['content'];
  $content = $document->parse($content, true);

  echo '<div class="comment">';
  echo '<a class="comment" name="comment_', $comment['id'], '"></a>';
  echo '<p>';
  echo '<b>'.$comment['name'].' a écrit: </b> '.$content;


  echo '</p></div>';
}
?>

<h2>Add a comment</h2>
<?php
echo $form->create('Comment', array('url' => '/comments/add/'.$article['Article']['id']));
echo $form->input('Comment.content', array('rows' => 2));
echo $form->end('Add comment');


