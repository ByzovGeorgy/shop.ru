<?php


class Cart
{
    /**
     *  Увеличивает количество товаров в корзине по $id на 1
     * @param integer $id
     */
    public static function addProduct($id)
    {
        //$id = intval($id);
        $productsInCart = array();

        if (isset($_SESSION['productsInCart'])) {
            $productsInCart = $_SESSION['productsInCart'];
        }

        if (array_key_exists($id, $productsInCart)) {
            $productsInCart[$id]++;
        } else {
            $productsInCart[$id] = 1;
        }

        $_SESSION['productsInCart'] = $productsInCart;
    }

    /**
     * Возвращает массив с идентификаторами и количеством товаров в корзине<br/>
     * Если товаров нет, возвращает false;
     * @return mixed: boolean or array
     */
    public static function getProducts()
    {
        if (isset($_SESSION['productsInCart'])) {
            return $_SESSION['productsInCart'];
        }
        return false;
    }

    /**
     * Возвращает общую стоимость переданных товаров
     * @param array $products
     * @return integer Суммарная стоимость
     */
    public static function getTotalPrice($products)
    {
        $productsInCart = self::getProducts();
        $total = 0;
        if ($productsInCart) {
            foreach ($products as $item) {
                $total += $item['price'] * $productsInCart[$item['id']];
            }
        }

        return $total;
    }

    /**
     * Очищает корзину
     */
    public static function clear()
    {
        if (isset($_SESSION['productsInCart'])) {
            unset($_SESSION['productsInCart']);
        }
    }

    /**
     * Удаляет товар с указанным id из корзины
     * @param integer $id
     */
    public static function deleteProduct($id)
    {
        $productsInCart = self::getProducts();
        unset($productsInCart[$id]);
        $_SESSION['productsInCart'] = $productsInCart;
    }
}
//gettotalprice
