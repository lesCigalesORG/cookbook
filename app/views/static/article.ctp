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


