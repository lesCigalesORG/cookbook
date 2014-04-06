<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>Documentation lesCigales.ORG
  <?php if (isset($this->pageTitle)) { echo ' - ', $this->pageTitle; } ?></title>
	<?php
    echo $this->Html->css('layout');
    echo $this->Html->css('beige');
		echo $scripts_for_layout;
	?>
</head>
<body>
<div class="header">
  <div class="spacer">
    <h1><a href="/">Documentation lesCigales.ORG</a></h1>
    <span>Documentation officielle de l'hébergeur <a href="http://www.lescigales.org/" target="_blank">http://www.lescigales.org/</a></span>
    <span>Posez vos questions sur le forum de discussion: <a href="http://forum.lescigales.org/" target="_blank">http://forum.lescigales.org/</a></span>
  </div>
</div>
<div class="header_menu">
  <div class="spacer">
    <ul class="menu">
      <li><?php echo $html->link('Home', '/'); ?></li>
      <li><?php echo $html->link('Contributors', '/users'); ?></li>
      <li><?php echo $html->link('Create an article', '/articles/create'); ?></li>
      <li><?php echo $html->link('Categories', '/categories'); ?></li>
      <li><?php echo $html->link('Preferences', '/users/settings'); ?></li>
      <li><?php echo $html->link('Login', '/users/login'); ?></li>
      <li><?php echo $html->link('Logout', '/users/logout'); ?></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="spacer">
  <?php echo $this->Session->flash(); ?>
  <?php echo $content_for_layout; ?>
  </div>
</div>

<!-- <div id="footer"> -->
<!--   <div class="spacer"></div> -->
<!-- </div> -->
<?php echo $this->element('sql_dump'); ?>
<?php if (Configure::read('debug') > 0): ?>
<a href="https://github.com/lesCigalesORG/cookbook"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/a6677b08c955af8400f44c6298f40e7d19cc5b2d/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677261795f3664366436642e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png"></a>
<?php endif; ?>
</body>
</html>