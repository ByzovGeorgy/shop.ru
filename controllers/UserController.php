<?php

class UserController
{
    /**
     * Action для страницы "Регистрация"
     * @return bool
     */
    public function actionSignup()
    {
        $name = false;
        $email = false;
        $password = false;
        $result = false;

        if (isset($_POST['submit'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $errors = false;
            if (!User::checkName($name)) {
                $errors[] = 'Имя не должно быть короче 2-х символов';
            }
            if (!User::validateEmail($email)) {
                $errors[] = 'Неправильно введен email';
            }
            if (User::checkEmailExists($email)) {
                $errors[] = 'Такой email уже используется';
            }
            if (!User::checkPassword($password)) {
                $errors[] = 'Пароль не должен быть короче 6-ти символов';
            }

            if ($errors == false) {
                $result = User::registration($name, $email, $password);
            }
        }
        require_once(ROOT . '/views/user/registration.php');
        return true;
    }

    public function actionLogin()
    {
        $email = false;
        $password = false;
        $result = false;

        if (isset($_POST['submit'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            $errors = false;
            if (!User::validateEmail($email)) {
                $errors[] = 'Неправильно введен email';
            }
            if (!User::checkPassword($password)) {
                $errors[] = 'Пароль не должен быть короче 6-ти символов';
            }
            if(!isset($errors) || !is_array($errors)) {
                $userId = User::checkEmailAndPassword($email, $password);

                if ($userId == false) {
                    $errors[] = 'Неправильные данные для входа на сайт';
                } else {
                    $result = User::auth($userId);
                }
            }
        }
        require_once(ROOT . '/views/user/login.php');
        return true;
    }

    public function actionLogout()
    {
        unset($_SESSION["user"]);
        header("Location: /");
    }
}
//login