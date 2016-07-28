<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <title>Магазин</title>
</head>
<body>

<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-4 logo">
                <a href="/"><img src="/assets/images/logo.png" alt="" class="img-responsive"/></a>
            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <div>
                    <h2><span class="glyphicon glyphicon-envelope text-center"
                              aria-hidden="true">sonissd@gmail.com</span></h2>
                </div>
                <div>
                    <h2><span class="glyphicon glyphicon-phone" aria-hidden="true">8-325-4325-523-432</span></h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/">Главная</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">Каталог <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <?php foreach ($this->categories as $category): ?>
                                    <li><a href="/catalog/<?= $category['id'] ?>"><?= $category['name'] ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/cart">Корзина</a></li>
                        <?php if (User::isLogged()): ?>
                            <li><a href="/user/logout/">Выход</a></li>
                        <?php else: ?>
                            <li><a href="/user/login/">Вход</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>