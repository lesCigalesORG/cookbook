<?php

class CommentsController extends AppController
{
  var $name = 'Comments';

  function add($articleID)
  {
    $this->set('articleID', $articleID);

    if (! empty($this->data)) {
      // If user is logged in, we dont need info like name, website, or CAPTCHA!
      // otherwise.. we do!

      
//       pr($this->data);

      if (! empty($this->data['Comment']['name'])) {
        $this->data['Comment']['article_id'] = $articleID;
        $this->Comment->save($this->data);

        $this->cleanIndex();
        // delete article then redirect to it
//         $this->redirect(env('HTTP_REFERER'));
      }
    }
  }

}
