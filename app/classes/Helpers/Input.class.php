<?php
/**
 * Created by Chris on 9/29/2014 3:55 PM.
 */

class Input {
    public static function exists($type = 'post') {
        switch($type) {
            case 'post':
                return (!empty(HTTP::$POST)) ? true : false;
                break;
            case 'get':
                return (!empty(HTTP::$GET)) ? true : false;
                break;
            default:
                return false;
                break;
        }
    }

    public static function get($item) {
        if(isset(HTTP::$POST[$item])) {
            return HTTP::$POST[$item];
        } else if(isset(HTTP::$GET[$item])) {
            return HTTP::$GET[$item];
        }

        return '';
    }
}