<?php

/**
 * Created by Chris on 9/29/2014 3:52 PM.
 */
require_once 'app/application.php';

$user = new User();
$user->logout();

Redirect::to('index.php');
