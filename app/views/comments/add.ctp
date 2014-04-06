<h1>Add your comment</h1>

<?php
echo $form->create('Comment', array('url' => '/comments/add/'.$articleID));
echo $form->input('Comment.name');
echo $form->input('Comment.content', array('rows' => 2));
echo $form->end('Add comment');
