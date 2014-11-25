<?php

/**
 * Created by Chris on 9/29/2014 3:53 PM.
 */
require_once 'app/application.php';

$user = new User();

if (!$user->isLoggedIn()) {
    Redirect::to('index.php');
}

$templum->setVar('email', escape($user->data()->email));
$templum->setVar('name', escape($user->data()->name));

if (Input::exists()) {
    if (Token::check(Input::get('token'))) {
        $validate = new Validate();
        $validation = $validate->check(HTTP::$POST, array(
            'name' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            )
        ));

        if ($validate->passed()) {
            try {
                $user->update(array(
                    'name' => Input::get('name'),
                    'email' => Input::get('email')
                ));
                $from = "darkfr3ak@freenet.de";

                $to = Input::get('email');

                $smtp->SendMessage(
                        $from, array(
                    $to
                        ), array(
                    "From: $from",
                    "To: $to",
                    "Subject: Testing Manuel Lemos' SMTP class",
                    "Date: " . strftime("%a, %d %b %Y %H:%M:%S %Z")
                        ), "Hello $to,\n\nIt is just to let you know that your details have been updated.\n\nBye.\n");

                Session::flash('home', 'Your details have been updated.');
                Redirect::to('index.php');
            } catch (Exception $e) {
                die($e->getMessage());
            }
        } else {
            foreach ($validate->errors() as $error) {
                echo $error, '<br>';
            }
        }
    }
}

$tpl = $templum->template('profile_edit');
print($tpl->render());
