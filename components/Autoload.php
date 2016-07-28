<?php

function __autoload($className)
{
    // Массив папок, в которых могут находиться необходимые классы
    $paths = array(
        '/models/',
        '/components/',
        '/controllers/',
        '/configs/'
    );

    foreach ($paths as $path) {
        $pathToClass = ROOT . $path . $className . '.php';
        if (is_file($pathToClass)) {
            include_once $pathToClass;
        }
    }
}