<?php

class DB
{
    private static $instance;
    private static $pdo;
    private static $params;

    private function __construct()
    {
        $dbConfigPath = ROOT . "/configs/database.json";
        try {
            self::$params = $this->decodeJsonFile($dbConfigPath);

            $dsn = "mysql:host=" . self::$params['host'] . ";dbname=" . self::$params['dbname'];
            self::$pdo = isset(self::$params['passwd']) ?
                new PDO($dsn, self::$params['username'], self::$params['passwd']) :
                new PDO($dsn, self::$params['username']);
            self::$pdo->exec("set names utf8");
        } catch (Exception $e) {
            throw new Exception("Не удалось подключиться к бд:" . $e);
        }
    }

    public static function getConnection()
    {
        if (is_null(self::$instance)) {
            self::$instance = new self;
        }
        return self::$pdo;
    }

    private static function decodeJsonFile($file)
    {
        return json_decode(file_get_contents($file), true);
    }
}