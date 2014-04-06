<h1>Create an article</h1>

<?php
echo $form->create('Article', array('url' => '/articles/create'));
echo $form->input('Article.category_id');
echo $form->input('Article.name');
echo $form->input('Article.content', array('rows' => 20));
echo $form->end('Create');
?><h2>Adding files</h2><?php
echo $form->create('File', array('url' => '/files/upload'));
echo $form->file('File.path');
echo $form->end('Upload file');