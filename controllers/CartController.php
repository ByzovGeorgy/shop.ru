<?php

class CartController extends Controller
{

    /**
     * Добавляет товар в корзину при помощи Ajax(main.js)
     * @param integer $id <p>id товара</p>
     * @return bool
     */
    public function actionAddProductInCart($id)
    {
        Cart::addProduct($id);
        return true;
    }

    /**
     * Удаляет товар из корзины по id
     * @param integer $id <p>id товара</p>
     * @return bool
     */
    public function actionDelete($id)
    {
        Cart::deleteProduct($id);
        header("Location: /cart");
        return true;
    }

    /**
     * Action для страницы "Корзина"
     * @return bool
     */
    public function actionIndex()
    {
        $productsInCart = Cart::getProducts();
        if ($productsInCart) {
            $productsIds = array_keys($productsInCart);
            $products = Product::getProductsById($productsIds);
            $totalPrice = Cart::getTotalPrice($products);
        }

        require_once ROOT . '/views/cart/index.php';
        return true;
    }

    /**
     * Action для страницы "Оформление покупки"
     */
    /* public function actionCheckout()
     {
         // Получием данные из корзины
         $productsInCart = Cart::getProducts();
 
         // Если товаров нет, отправляем пользователи искать товары на главную
         if ($productsInCart == false) {
             header("Location: /");
         }
 
         // Список категорий для левого меню
         $categories = Category::getCategoriesList();
 
         // Находим общую стоимость
         $productsIds = array_keys($productsInCart);
         $products = Product::getProdustsByIds($productsIds);
         $totalPrice = Cart::getTotalPrice($products);
 
         // Количество товаров
         $totalQuantity = Cart::countItems();
 
         // Поля для формы
         $userName = false;
         $userPhone = false;
         $userComment = false;
 
         // Статус успешного оформления заказа
         $result = false;
 
         // Проверяем является ли пользователь гостем
         if (!User::isGuest()) {
             // Если пользователь не гость
             // Получаем информацию о пользователе из БД
             $userId = User::checkLogged();
             $user = User::getUserById($userId);
             $userName = $user['name'];
         } else {
             // Если гость, поля формы останутся пустыми
             $userId = false;
         }
 
         // Обработка формы
         if (isset($_POST['submit'])) {
             // Если форма отправлена
             // Получаем данные из формы
             $userName = $_POST['userName'];
             $userPhone = $_POST['userPhone'];
             $userComment = $_POST['userComment'];
 
             // Флаг ошибок
             $errors = false;
 
             // Валидация полей
             if (!User::checkName($userName)) {
                 $errors[] = 'Неправильное имя';
             }
             if (!User::checkPhone($userPhone)) {
                 $errors[] = 'Неправильный телефон';
             }
 
 
             if ($errors == false) {
                 // Если ошибок нет
                 // Сохраняем заказ в базе данных
                 $result = Order::save($userName, $userPhone, $userComment, $userId, $productsInCart);
 
                 if ($result) {
                     // Если заказ успешно сохранен
                     // Оповещаем администратора о новом заказе по почте
                     $adminEmail = 'php.start@mail.ru';
                     $message = '<a href="http://digital-mafia.net/admin/orders">Список заказов</a>';
                     $subject = 'Новый заказ!';
                     mail($adminEmail, $subject, $message);
 
                     // Очищаем корзину
                     Cart::clear();
                 }
             }
         }
 
         // Подключаем вид
         require_once(ROOT . '/views/cart/checkout.php');
         return true;
     }*/

}
