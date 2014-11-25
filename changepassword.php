<?php

/**
 * Created by Chris on 9/29/2014 3:53 PM.
 */
require_once 'app/application.php';

$user = new User();
if (!$user->isLoggedIn()) {
    Redirect::to('index.php');
}

if (Input::exists()) {
    if (Token::check(Input::get('token'))) {
        $validate = new Validate();
        $validation = $validate->check(HTTP::$POST, array(
            'current_password' => array(
                'required' => true,
                'min' => 6
            ),
            'password1' => array(
                'required' => true,
                'min' => 6
            ),
            'password2' => array(
                'required' => true,
                'min' => 6,
                'matches' => 'password1'
            )
        ));
    }

    if ($validate->passed()) {
        if (Hash::make(Input::get('current_password'), $user->data()->salt) !== $user->data()->password) {
            echo 'Your current password is wrong.';
        } else {
            $salt = Hash::salt(32);
            $user->update(array(
                'password' => Hash::make(Input::get('password1'), $salt),
                'salt' => $salt
            ));

            Session::flash('home', 'Your password has been changed!');
            Redirect::to('index.php');
        }
    } else {
        foreach ($validate->errors() as $error) {
            echo $error, '<br>';
        }
    }
}

$tpl = $templum->template('change_pw');
print($tpl->render());
