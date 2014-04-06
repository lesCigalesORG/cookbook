<h1>Contributors</h1>
<div id="leftnav">
<?php
$limit = round(sizeof($users) / 2);

$total = 0;
foreach ($users as $user) {
  if (sizeof($user['Article'])) {
    $total++;
  }
}
$limit = round($total / 2);
$usercount = 0;

foreach ($users as $user) {
  if (! isset($rightnav) && $usercount >= $limit) {
    $rightnav = true;
    ?></div><div id="rightnav"><?php
  }

  $u = $user['User'];

  $name = (! empty($u['name']) ? $u['name'] : $u['username']);
  $num = sizeof($user['Article']);

  if ($num == 0) {
    continue;
  }

  ?>
  <div class="user">
    <img src="/p/user-<?php echo $u['id']; ?>.png" />
    <span class="name"><?php echo $name; ?></span> <?php echo $num; ?> contribution(s).<br />
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

  <?php
  $usercount++;
}
?></div>
