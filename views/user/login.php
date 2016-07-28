<?php include ROOT . "/views/layouts/header.php" ?>
    <div class="container">
        <div class="row">

            <div class="col-sm-4 col-sm-offset-4">
                <?php if ($result): ?>
                    <p>Вы успешно вошли.</p>
                <?php else: ?>
                    <?php if (isset($errors) && is_array($errors)): ?>
                        <ul>
                            <?php foreach ($errors as $error): ?>
                                <li> - <?php echo $error; ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>

                    <div class="login-form"><!--sign up form-->
                        <h2>Вход на сайт</h2>
                        <form action="#" method="post">
                            <p>Введите E-mail:</p>
                            <input type="email" name="email" placeholder="E-mail" value="<?php echo $email; ?>"/>
                            <p>Введите пароль</p>
                            <input type="password" name="password" placeholder="Пароль"
                                   value="<?php echo $password; ?>"/>
                            <input type="submit" name="submit" class="btn btn-default" value="Вход"/>
                        </form>
                    </div><!--/sign up form-->
                    <a class="btn btn-default btn-width-max" href="/user/signup">Авторизация</a>
                    <br/>
                    <br/>
                <?php endif; ?>
            </div>
        </div>
    </div>
<?php include ROOT . "/views/layouts/footer.php" ?>