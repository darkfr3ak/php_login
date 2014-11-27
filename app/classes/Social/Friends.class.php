<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Friends.class
 *
 * @author darkfr3ak
 */
class Friends {

    private static $db;
    private static $instance;
    private static $friends = array();
    private static $user;

    private function __construct() {
        self::$db = DB::getInstance();
        $user = new User();
        self::$user = $user->data();
        self::_loadFriends();
    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new self;
        }
        return self::$instance;
    }

    public static function addFriend($friendData = array()) {
        if (!self::$db->insert('friend_requests', $friendData)) {
            throw new Exception('Sorry, there was a problem!');
        }
    }

    public static function acceptFriend($friendID) {

    }

    public static function rejectFriend($friendID) {

    }

    public static function deleteFriend($friendID) {

    }

    public static function getAllFriends() {
        return self::$friends;
    }

    public static function getFriend($friendID) {
        
    }

    private static function _loadFriends() {
        $_friends = self::$db->query('SELECT * FROM users_friends WHERE friend_userA = ?', array(self::$user->id));
        $friends = $_friends->results();
        $friendNames = array();
        foreach ($friends as $value) {
            $friendNames[] = array(
                'id' => $value->friend_userB,
                'username' => self::_getFriendsName($value->friend_userB)->username,
                'name' => self::_getFriendsName($value->friend_userB)->name
            );
        }
        self::$friends = $friendNames;
    }

    private static function _getFriendsName($friendID) {
        $_friendName = self::$db->query('SELECT name, username FROM users WHERE id = ?', array($friendID));
        return $_friendName->first();
    }

}
