<?php

/**
 * Created by Chris on 9/29/2014 3:58 PM.
 */
session_start();
header("Content-type:text/html; charset=utf-8");

require_once 'functions/Sanitize.function.php';
require 'functions/Autoload.function.php';
Autoloader::init();

include "app/config/SMTP.config.php";
include "app/config/Global.config.php";

if (Cookie::exists(Config::get('remember/cookie_name')) && !Session::exists(Config::get('sessions/session_name'))) {
    $hash = Cookie::get(Config::get('remember/cookie_name'));
    $hashCheck = DB::getInstance()->get('users_session', array('hash', '=', $hash));

    if ($hashCheck->count()) {
        $user = new User($hashCheck->first()->user_id);
        $user->login();
    }
}
HTTP::init();
$theme = Theme::getInstance();
$theme::setTheme("default");

$user = new User();
$appTitle = 'Hello World';
$is_logged_in = 'no';
$is_admin = 'no';
$username = '';
if ($user->isLoggedIn()) {
    $is_logged_in = "yes";
    $username = escape($user->data()->username);
    if ($user->hasPermission('admin')) {
        $is_admin = 'yes';
    }
}
$templum = new Templum($theme::getThemePath(), array(
    'appTitle' => $appTitle,
    'themepath' => $theme::getThemePath(),
    'logged_in' => $is_logged_in,
    'username' => $username,
    'is_admin' => $is_admin
        ));
