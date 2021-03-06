<?php

/**
 * Created by Chris on 9/29/2014 3:52 PM.
 */
require_once 'app/application.php';

if (!$profile = Input::get('user')) {
    Redirect::to('index.php');
} else {
    $user = new User($profile);

    if (!$user->exists()) {
        Redirect::to(404);
    } else {
        $data = $user->data();
        $userinfo = $user->getUserInfo();

        $friend = Friends::getInstance();
        $friend::getAllFriends();
        $templum->setVar("friendsCount", count($friend::getAllFriends()));
        $friends = $friend::getAllFriends();
        $templum->setVar('friends', $friends);
        $templum->setVar('uname', escape($data->username));
        $templum->setVar('name', escape($data->name));
        $templum->setVar('email', escape($data->email));
        $templum->setVar('bio', escape($userinfo->info_bio));
        $templum->setVar('picture', escape($userinfo->info_picture));
    }
}
$tpl = $templum->template('profile');
print($tpl->render());
