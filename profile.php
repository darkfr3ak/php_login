<?php

/**
 * Created by Chris on 9/29/2014 3:52 PM.
 */
require_once 'app/application.php';

if (!$username = Input::get('user')) {
    Redirect::to('index.php');
} else {
    $user = new User($username);

    if (!$user->exists()) {
        Redirect::to(404);
    } else {
        $data = $user->data();
        $templum->setVar('name', escape($data->name));
        $templum->setVar('email', escape($data->email));
    }
}
$tpl = $templum->template('profile');
print($tpl->render());
