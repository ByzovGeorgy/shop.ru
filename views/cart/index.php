<?php include ROOT . "/views/layouts/header.php" ?>\
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
                <h2 class="title text-center">Моя корзина</h2>
                <hr>
                <?php if ($productsInCart): ?>
                    <p>Вы выбрали такие товары:</p>
                    <table class="table-bordered table-striped table">
                        <tr>
                            <th>Название</th>
                            <th>Стомость, $</th>
                            <th>Количество, шт</th>
                            <th>Удалить</th>
                        </tr>
                        <?php foreach ($products as $product): ?>
                            <tr>
                                <td>
                                    <a href="/product/<?= $product['id'] ?>">
                                        <?= $product['name'] ?>
                                    </a>
                                </td>
                                <td><?= $product['price'] ?></td>
                                <td><?= $productsInCart[$product['id']] ?></td>
                                <td>
                                    <a href="/cart/delete/<?= $product['id'] ?>">
                                         <span class="glyphicon glyphicon-minus center"
                                               aria-hidden="true">
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        <tr>
                            <td colspan="3">Общая стоимость, руб.:</td>
                            <td><?= $totalPrice ?></td>
                        </tr>
                    </table>
                    <a class="btn btn-default" href="/order/confirm"> Оформить заказ</a>
                <?php else: ?>
                    <p>Корзина пуста</p>
                    <a class="btn btn-default" href="/">Вернуться к покупкам</a>
                <?php endif; ?>
            </div>
        </div>
    </div>
<?php include ROOT . "/views/layouts/footer.php" ?>