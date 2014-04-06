
<h1>Categories</h1>

<?php
if (! empty($categories)) {
  ?><ul><?php
  foreach ($categories as $c) {
    echo '<li>', $c['Category']['name'], '</li>';
  }
  ?></ul><?php
}


echo $form->create('Category', array());
echo $form->input('Category.name');
echo $form->end('Add this category');


