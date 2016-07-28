<?php include ROOT . "/views/layouts/header.php" ?>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <?php foreach ($this->categories as $category): ?>
                        <a href="/catalog/<?= $category['id'] ?>" class="list-group-item"><?= $category['name'] ?></a>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-9">
                <?php if ($result): ?>
                    <p>Заказ оформлен. Мы Вам перезвоним.</p>
                <?php else: ?>
                    <p>Итого: <?php echo $totalPrice; ?> руб.</p><br/>
                    <div class="col-sm-4">
                        <?php if (isset($errors) && is_array($errors)): ?>
                            <ul>
                                <?php foreach ($errors as $error): ?>
                                    <li><?php echo $error; ?></li>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif; ?>
                        <p>Для оформления заказа заполните форму. Наш менеджер свяжется с Вами по телефону.</p>
                        <div>
                            <form action="#" method="post">

                                <p>Ваша имя</p>
                                <input type="text" name="userName" placeholder="" value="<?= $userName ?>"/>

                                <p>Номер телефона</p>
                                <input type="text" name="userPhone" placeholder="" value="<?= $userPhone ?>"/>

                                <p>Комментарий к заказу</p>
                                <input type="text" name="userComment" placeholder="Сообщение"
                                       value="<?= $userComment ?>"/>

                                <br/>
                                <br/>
                                <input type="submit" name="submit" class="btn btn-default" value="Оформить"/>
                            </form>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>

<?php include ROOT . "/views/layouts/footer.php" ?>