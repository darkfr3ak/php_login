<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Messages.class
 *
 * @author darkfr3ak
 */
class Messages {

    private static $db;
    private static $instance;
    private static $messages = array();
    private static $user;

    private function __construct() {
        self::$db = DB::getInstance();
        $user = new User();
        self::$user = $user->data()->id;
    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new self;
        }
        return self::$instance;
    }

    public static function sendMessage($messageData = array()) {
        if (!self::$db->insert('messages', $messageData)) {
            throw new Exception('Sorry, there was a problem sending your Message!');
        }
    }

    public static function getMessages($type = 'new') {

    }

    public static function getMessage($messageID) {

    }

    public static function deleteMessage($messageID) {

    }

    public static function markRead($message) {

    }

}
