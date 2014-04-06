<?php

class GeshiHelper extends AppHelper
{
  function hl($source, $language) {

    if (! isset($this->geshi)) {
      require_once APP . 'vendors/geshi/geshi.php';
      $this->geshi = new Geshi();
    }

    $this->geshi->set_source($source);
    $this->geshi->set_language($language);
    $this->geshi->enable_line_numbers(GESHI_NORMAL_LINE_NUMBERS);
    $this->geshi->enable_line_numbers(GESHI_FANCY_LINE_NUMBERS);

    return $this->geshi->parse_code();
  }

}
