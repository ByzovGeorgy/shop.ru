<?php

class Category
{
    public static function getCategories()
    {
        $db = DB::getConnection();

        $query = 'SELECT * FROM category';
        $result = $db->prepare($query);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        $categories = array();
        for ($i = 0; $row = $result->fetch(); $i++) {
            $categories[$i]['id'] = $row['id'];
            $categories[$i]['name'] = $row['name'];
        }
        return $categories;

    }
}