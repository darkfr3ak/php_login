<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Theme
 *
 * @author darkfr3ak
 */
class Theme {

    private static $theme = "default";
    private static $admin_theme = "admin_default";
    private static $themePath = "extensions/themes/";
    private static $adminThemePath = "extensions/themes/";
    private static $db;
    private static $instance;

    private function __construct() {

    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new self;
        }
        return self::$instance;
    }

    public function setTheme($theme = "") {
        self::$theme = $theme;
    }

    public static function getTheme() {
        return self::$theme;
    }

    public static function getThemePath() {
        if (file_exists("extensions/themes/" . self::$theme . "/")) {
            return "extensions/themes/" . self::$theme . "/";
        } else {
            return "../extensions/themes/" . self::$theme . "/";
        }
    }

    public static function setAdminTheme($theme = "") {
        self::$admin_theme = $theme;
    }

    public static function getAdminTheme() {
        return self::$admin_theme;
    }

    public static function getAdminThemePath() {
        if (file_exists(self::$adminThemePath)) {
            return self::$adminThemePath . self::$admin_theme . "/";
        } else {
            return "../" . self::$adminThemePath . self::$admin_theme . "/";
        }
    }

    public static function setAdminThemePath($path = '') {
        self::$adminThemePath = $path;
    }

}
