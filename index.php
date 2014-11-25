<?php

/**
 * Created by Chris on 9/29/2014 3:42 PM.
 */
require_once 'app/application.php';
$user = new User(); //Current

if (Session::exists('home')) {
    echo '<p>' . Session::flash('home') . '</p>';
}

$tpl = $templum->template('index');
print($tpl->render());
