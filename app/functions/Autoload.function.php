<?php

/**
 * @author Bhargav Vadher - 2010-10-12
 *
 * An AutoLoader class for ANY level of files in
 * a project hierarchy
 *
 */
define('__ROOT', 'app/classes') . '/';
define('DS', DIRECTORY_SEPARATOR);
define('PS', PATH_SEPARATOR);

class Autoloader {

    private static $__loader;

    // ----- The awesome constructor ----- //
    private function __construct() {
        spl_autoload_register(array($this, 'autoLoad'));
    }

    // ----- The fire up call for an autoloader ----- //
    public static function init() {
        if (self::$__loader == NULL) {
            self::$__loader = new self();
        }

        return self::$__loader;
    }

    // ----- The autoloder registered function ----- //
    public function autoLoad($class) {
        $exts = array('.php', '.class.php', '.inc');

        spl_autoload_extensions("'" . implode(',', $exts) . "'");
        set_include_path(get_include_path() . PATH_SEPARATOR . __ROOT);

        foreach ($exts as $extention) {
            if (is_readable($path = __ROOT . $class . $extention)) {
                require_once $path;
                return TRUE;
            }
        }
        self::recursiveAutoLoad($class, __ROOT);
    }

    // ----- Recursive autoLoader, only called from autoLoder function ----- //
    private static function recursiveAutoLoad($class, $path) {
        if (is_dir($path)) {
            if (($handle = opendir($path)) !== FALSE) {
                while (( $resource = readdir($handle) ) !== FALSE) {
                    if (($resource == '..') OR ( $resource == '.')) {
                        continue;
                    }

                    if (is_dir($dir = $path . DS . $resource)) {
                        self::recursiveAutoLoad($class, $dir);
                    } else if (is_readable($file = $path . DS . $resource)) {
                        require_once $file;
                    }
                }
                closedir($handle);
            }
        }
    }

}
