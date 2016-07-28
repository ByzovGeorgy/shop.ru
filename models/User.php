<?php

class User
{

    public static function registration($name, $email, $password)
    {
        $password=password_hash($password,PASSWORD_DEFAULT);
        $db = Db::getConnection();

        $sql = 'INSERT INTO user (name, email, password) '
            . 'VALUES (:name, :email, :password)';

        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
        $result->bindParam(':password', $password, PDO::PARAM_STR);
        return $result->execute();
    }


    /**
     * Проверяет, существует ли пользователь с заданными $email и $password
     * @param string $email
     * @param string $password
     * @return mixed : integer user id or false
     */
    public static function checkEmailAndPassword($email, $password)
    {

        $db = Db::getConnection();

        $sql = 'SELECT * FROM user WHERE email = :email';

        $result = $db->prepare($sql);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
        $result->execute();
        $user = $result->fetch();

        $passwordIsCorrect= password_verify($password,$user['password']);
        if ($user && $passwordIsCorrect) {
            return $user['id'];
        }
        return false;
    }

    /**
     * Запоминаем пользователя в сессии
     * @param integer $userId
     */
    public static function auth($userId)
    {
        $_SESSION['user'] = $userId;
        return true;
    }

    /**
     * Возвращает идентификатор пользователя, если он авторизирован.
     * Иначе перенаправляет на страницу входа
     * @return string Имя пользователя
     */
    public static function checkLogged()
    {
        if (isset($_SESSION['user'])) {
            return $_SESSION['user'];
        }

        header("Location: /user/login");
    }

    /**
     * Проверяет, авторизован ли пользователь
     * @return boolean
     */
    public static function isLogged()
    {
        if (isset($_SESSION['user'])) {
            return true;
        }
        return false;
    }

    /**
     * Проверяет имя: не меньше, чем 3 символа
     * @param string $name
     * @return boolean Результат выполнения метода
     */
    public static function checkName($name)
    {
        if (strlen($name) >= 3) {
            return true;
        }
        return false;
    }

    /**
     * Проверяет телефон: не меньше, чем 5 символов
     * @param string $phone
     * @return boolean
     */
    public static function checkPhone($phone)
    {
        if (strlen($phone) >= 5) {
            return true;
        }
        return false;
    }

    /**
     * Проверяет пароль: не меньше, чем 6 символов
     * @param string $password
     * @return boolean
     */
    public static function checkPassword($password)
    {
        if (strlen($password) >= 6) {
            return true;
        }
        return false;
    }

    /**
     * Проверяет email
     * @param string $email
     * @return boolean
     */
    public static function validateEmail($email)
    {
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return true;
        }
        return false;
    }

    /**
     * Проверяет, не занят ли email другим пользователем
     * @param type $email
     * @return boolean
     */
    public static function checkEmailExists($email)
    {
        $db = Db::getConnection();
        $sql = 'SELECT COUNT(*) FROM user WHERE email = :email';
        $result = $db->prepare($sql);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
        $result->execute();

        if ($result->fetchColumn())
            return true;
        return false;
    }

    /**
     * Возвращает пользователя с указанным id
     * @param integer $id
     * @return array
     */
    public static function getUserById($id)
    {
        $db = Db::getConnection();

        $sql = 'SELECT * FROM user WHERE id = :id';
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        return $result->fetch();
    }
}
