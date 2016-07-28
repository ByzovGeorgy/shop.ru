<?php

class Product
{
    /**
     * Возвращает заказы, у которых маркер 'firstPage'=1
     * @return array
     */
    public static function getProductsForFirstPage()
    {
        $db = DB::getConnection();

        $query = 'SELECT id, name, price, image FROM product WHERE firstPage = 1';
        $result = $db->prepare($query);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        $productsList = array();
        for ($i = 0; $row = $result->fetch(); $i++) {
            $productsList[$i]['id'] = $row['id'];
            $productsList[$i]['name'] = $row['name'];
            $productsList[$i]['price'] = $row['price'];
            $productsList[$i]['image'] = $row['image'];
        }
        return $productsList;
    }

    public static function getProductsByCategory($categoryId)
    {
        $db = DB::getConnection();
        $sql = 'SELECT id, name, price, image FROM product WHERE category = :categoryId ';
        $result = $db->prepare($sql);
        $result->bindParam(':categoryId', $categoryId, PDO::PARAM_INT);
        $result->execute();

        $products = array();
        for ($i = 0; $row = $result->fetch(); $i++) {
            $products[$i]['id'] = $row['id'];
            $products[$i]['name'] = $row['name'];
            $products[$i]['price'] = $row['price'];
            $products[$i]['image'] = $row['image'];
        }
        return $products;
    }

    public static function getProductsById($idsArray)
    {
        $db = Db::getConnection();
        $idsString = implode(',', $idsArray);

        $sql = "SELECT * FROM product WHERE id IN ($idsString)";
        $result = $db->query($sql);
        $result->setFetchMode(PDO::FETCH_ASSOC);

        $i = 0;
        $products = array();
        while ($row = $result->fetch()) {
            $products[$i]['id'] = $row['id'];
            $products[$i]['name'] = $row['name'];
            $products[$i]['price'] = $row['price'];
            $i++;
        }
        return $products;
    }
}