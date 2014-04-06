<?php

class ImageResizeComponent extends Object {
    // Resize any specified jpeg, gif, or png image
    // doesnt respect aspect ratio!
    function resize($imagePath, $destinationWidth, $destinationHeight) 
    {
      // The file has to exist to be resized
      if(! file_exists($imagePath)) {
        $this->_error('The requested file does not exist.');
      }
      // Gather some info about the image
      $imageInfo = getimagesize($imagePath);
      
      // Find the intial size of the image
      $sourceWidth = $imageInfo[0];
      $sourceHeight = $imageInfo[1];
      echo "source width: $sourceWidth - height: $sourceHeight<br />";
      
      // Find the mime type of the image
      $mimeType = $imageInfo['mime'];
      
      // Create the destination for the new image
      $destination = imagecreatetruecolor($destinationWidth, $destinationHeight);

      // Now determine what kind of image it is and resize it appropriately
      if($mimeType == 'image/jpeg' || $mimeType == 'image/pjpeg') {
          $source = imagecreatefromjpeg($imagePath);
//       imagejpeg($destination, $imagePath);
      } else if($mimeType == 'image/gif') {
          $source = imagecreatefromgif($imagePath);
/*          imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
          imagegif($destination, $imagePath);*/
      } else if($mimeType == 'image/png' || $mimeType == 'image/x-png') {
          $source = imagecreatefrompng($imagePath);
/*          imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
          imagepng($destination, $imagePath);*/
      } else {
          $this->_error('This image type is not supported.');
      }
      imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
      imagepng($destination, $imagePath);
      
      // Free up memory
      imagedestroy($source);
      imagedestroy($destination);
    }
    
    // Outputs errors...
    function _error($message) {
        trigger_error('The file could not be resized for the following reason: ' . $message);
    }
} 