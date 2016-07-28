<?php

class SiteController extends Controller
{
    public function actionIndex()
    {
        $products = Product::getProductsForFirstPage();

        include ROOT . '/views/site/index.php';
        return true;
    }
}