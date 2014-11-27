<?php

require_once 'app/application.php';
$user = new User(); //Current

if (Session::exists('home')) {
    echo '<p>' . Session::flash('home') . '</p>';
}

$tpl = $templum->template('messages');
print($tpl->render());
