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

<div id="footer">
  <div class="spacer">
      <div id="footer_col">
        <h4>Latest articles</h4>
        <ul>
        <?php
        foreach ($lastarticles as $l) {
          echo '<li>', $html->link($l['Article']['name'], '/a/'.$l['Article']['path']), '</li>';
        }
        ?>
        </ul>
      </div>
      <div id="footer_col">
        <h4>Latest comments</h4>
        <ul>
        <?php
        foreach ($lastcomments as $l) {
          echo '<li>', $html->link(substr($l['Comment']['content'], 0, 30), 
            '/a/'.$l['Article']['path'].'#comment_'.$l['Comment']['id']), '</li>';
        }
        ?>
        </ul>
      </div>
      <div id="footer_col">
        <h4>Latest members</h4>
        <ul>
        <?php
        foreach ($lastusers as $l) {
//           echo '<li>', $html->link($l['User']['name'], '/u/'.$l['User']['id']), '</li>';
          echo '<li>', $l['User']['name'], '</li>';
        }
        ?>
        </ul>
      </div>
     </div>
		</div>
<!-- 	</div> -->
	<?php echo $this->element('sql_dump'); ?>
</body>
</html>