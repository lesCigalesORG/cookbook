
<div id="loginform">

<h1>Identification</h1>
<p class="subtitle">Identifiez vous avec votre compte du control panel</p>


<?php
echo $form->create('User');
echo $form->input('User.username', array('label' => 'Username<span class="small">Celui du control panel</span>'));
echo $form->input('User.password', array('label' => 'Password<span class="small">Min. 8 caractères</span>'));
echo $form->end('Authenticate');
?>

</div>
