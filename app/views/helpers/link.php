<?php

class LinkHelper extends AppHelper
{
  /** Generate a static filename from the article name
  */
  function gen($articleID, $articleName)
  {
    $name = strtolower($articleName);
    $name = remove_accent($name);
    $name = preg_replace('/[^a-z0-9. ]/', '', $name);
    $name = preg_replace('/[ ]+/', '-', $name);
    $final = $articleID . '-' . $name . '.html';

    return $final;
  }

}
