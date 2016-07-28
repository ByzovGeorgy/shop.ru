<?php

ini_set('display_errors', 1);
ini_set('error_reporting', -1);

define('ROOT', __DIR__);
require_once ROOT.'/components/Autoload.php';

session_start();

$router = new Router();
$router->Run();