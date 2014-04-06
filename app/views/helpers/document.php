<?php

class DocumentHelper extends AppHelper
{
  var $helpers = array('Geshi', 'Html');

  /**
    * $content    Content to be parsed
    * $comment    If its a comment, set to true (allow to change behaviour in comments)
    */
  function parse($content, $comment = false)
  {
    // Search for all code in the article:
    $codeHolder = array();
    while (preg_match("/code=(.*)\n(.*)endcode/sU", $content, $m)) {
      $codeHolder[] = '<fieldset><legend>Code</legend>' . $this->Geshi->hl(trim($m[2]), $m[1]) . '</fieldset>';
      $content = preg_replace("/code=(.*)\n(.*)endcode/sU", '###CODE###', $content, 1);
    }

    // Search for links
    $linksHolder = array();
    while (preg_match("/(http:\/\/[^\n\"' ]*)/", $content, $m)) {
      if ($comment == false) {
        $options = array('target' => '_blank');
      } else {
        $options = array('target' => '_blank', 'rel' => 'nofollow');
      }
      $linksHolder[] = $this->Html->link($m[1], $m[1], $options);
      $content = preg_replace("/(http:\/\/[^\n\"' ]*)/", '###LINK###', $content, 1);
    }
    // Format the rest of the article:
    $content = htmlentities($content, ENT_QUOTES, 'utf-8');
    $content = nl2br($content);

    // Replace html tags
    if ($comment == false) {
      $content = preg_replace('/(h[1-4])=(.*)/', '<$1>$2</$1>', $content);
    }

    // Now reinsert the parsed data:
    for ($i = 0; isset($linksHolder[$i]); $i++) {
      $content = preg_replace('/###LINK###/', $linksHolder[$i], $content, 1);
    }
    for ($i = 0; isset($codeHolder[$i]); $i++) {
      $content = preg_replace('/###CODE###/', $codeHolder[$i], $content, 1);
    }

    return $content;
  }

}

