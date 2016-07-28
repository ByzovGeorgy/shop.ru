<?php

class OrderController extends Controller
{
    /**
     * Action подтверждения заказака
     * @return bool
     */
    public function actionConfirm()
    {
        $productsInCart = Cart::getProducts();

        $productsId = array_keys($productsInCart);
        $products = Product::getProductsById($productsId);
        $totalPrice = Cart::getTotalPrice($products);

        $userName = false;
        $userPhone = false;
        $userComment = false;
        $result = false;

        if (isset($_POST['submit'])) {
            $userName = $_POST['userName'];
            $userPhone = $_POST['userPhone'];
            $userComment = $_POST['userComment'];
            $userId = false;
            if (User::isLogged()) {
                $userId = User::checkLogged();
                $user = User::getUserById($userId);
                $userName = $user['name'];
            }

            $errors = false;
            if (!User::checkName($userName)) {
                $errors[] = 'Неправильное имя';
            }
            if (!User::checkPhone($userPhone)) {
                $errors[] = 'Неправильный телефон';
            }

            if ($errors == false) {
                $result = Order::save($userName, $userPhone, $userComment, $userId, $productsInCart);
                if ($result) {
                    Cart::clear();
                }
            }
        }
        require_once(ROOT . '/views/order/confirm.php');
        return true;
    }
}