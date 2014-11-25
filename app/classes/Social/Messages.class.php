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

    private function __construct() {
        self::$db = DB::getInstance();
    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new self;
        }
        return self::$instance;
    }

}
