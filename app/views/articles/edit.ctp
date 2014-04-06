<?php

echo $form->create('Article', array('url' => $_SERVER['REQUEST_URI']));
echo $form->input('Article.category_id');
echo $form->input('Article.name');
echo $form->input('Article.content', array('rows' => 20));
echo $form->end('Create');