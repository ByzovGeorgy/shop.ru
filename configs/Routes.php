<?php

class Routes
{
    private static $routes = array(
        '/order/confirm' => 'order/confirm',
        '/user/signup' => 'user/signup',
        '/user/login' => 'user/login',
        '/user/logout' => 'user/logout',
        '/cart/delete/([0-9]+)' => 'cart/delete/$1',
        '/cart/addProductInCart/([0-9]+)' => 'cart/addProductInCart/$1',
        '/cart' => 'cart/index',
        '/catalog/([0-9]+)' => 'catalog/category/$1',
        '/catalog/' => 'site/index',
        '/' => 'site/index'
    );

    public static function getRoutes()
    {
        return self::$routes;
    }
}