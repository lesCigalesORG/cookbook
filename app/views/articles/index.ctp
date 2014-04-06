<div id="leftnav">
<?php

$limit = round(sizeof($articles) / 2);
$count = 0;
foreach ($categories as $k => $categoryName) {

  if (! isset($rightnav) && $count >= $limit) {
    $rightnav = true;
    ?></div><div id="rightnav"><?php
  }

  $list = '';
  foreach ($articles as $a) {
    if ($k == $a['Article']['category_id']) {
      $path = $link->gen($a['Article']['id'], $a['Article']['name']);
      $view = $html->link($a['Article']['name'], '/a/'.$path);
      $edit = $html->link('edit', '/articles/edit/'.$a['Article']['id']);
      $list .= '<li>'. $view. '</li>';
      $count++;
    }
  }

  if (! empty($list)) {
    echo '<div class="blocks">';
    echo '<h3 class="title">', $categoryName, '</h3><ul>';
    echo $list;
    echo '<ul></div>';
  }
}
?></div>
<?php
