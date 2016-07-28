<?php

class Controller
{
    public $categories;

    /**
     * Нужен для получения категорий товаров
     * Controller constructor.
     */
    public function __construct()
    {
        $this->categories = Category::getCategories();
    }
}