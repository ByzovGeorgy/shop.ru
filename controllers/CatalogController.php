<?php

class CatalogController extends Controller
{
    /**
     * Возвращает список товаров по id категории
     * @param integer $categoryId
     * @return bool
     */
    public function actionCategory($categoryId)
    {
        $products = Product::getProductsByCategory($categoryId);

        require_once(ROOT . '/views/catalog/category.php');
        return true;
    }

}
