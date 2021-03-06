-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 05 2016 г., 17:13
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ноутбуки'),
(2, 'Компьютеры'),
(3, 'Мониторы');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(2) NOT NULL,
  `price` float NOT NULL,
  `characteristics` text NOT NULL,
  `firstPage` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `characteristics`, `firstPage`, `image`) VALUES
(2, 'Ноутбук Acer Aspire E5-571-3980', 1, 30000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tIntel Core i3 4005U 1.7 \\u0413\\u0413\\u0446 2 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t4 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t500 \\u0413\\u0431\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\tDVD-Multi\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t15.6 \\u0434\\u044e\\u0439\\u043c\\u0430\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1366x768\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tIntel HD Graphics 4400\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\tUSB 2.0x2, USB 3.0, VGA (D-Sub), HDMI\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t4700 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tLinux\\n","\\u0412\\u0435\\u0441":"\\t2.5 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t381.6x256x30.3 \\u043c\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'AcerAspireE5-571-3980.png'),
(3, 'Ноутбук Acer TravelMate TMP277-MG-315E', 1, 40000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tIntel Core i3 5005U 2.0 \\u0413\\u0413\\u0446 2 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t4 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t1 \\u0422\\u0431\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\tDVD-Multi\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t17.3 \\u0434\\u044e\\u0439\\u043c\\u0430\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1600x900\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tNvidia GeForce 920M 2 \\u0413\\u0431\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\t2xUSB 2.0, 2xUSB3.0, VGA, HDMI\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t2600 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tWindows 10\\n","\\u0412\\u0435\\u0441":"\\t3.0 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t423 \\u0445 281.9 \\u0445 31.65 \\u043c\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'AcerTravelMateTMP277-MG-315E.jpg'),
(4, 'Ноутбук Asus E402SA-WX016T', 1, 35000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tIntel Celeron N3050 1.6 \\u0413\\u0413\\u0446 2 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t2 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t32 \\u0413\\u0431 SSD\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\t\\u041d\\u0435\\u0442\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t14 \\u0434\\u044e\\u0439\\u043c\\u043e\\u0432\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1366x768\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tIntel HD Graphics\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\t1xUSB 2.0, 1xUSB3.0, HDMI, VGA\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t2500 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tWindows 10\\n","\\u0412\\u0435\\u0441":"\\t1.65 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t339 x 235 x 21.9 \\u0441\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'AsusE402SA-WX016T.jpg'),
(5, 'Ноутбук Asus X550ZE-DM051H', 1, 46000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tAMD FX 7600P 2.7 \\u0413\\u0413\\u0446 4 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t8 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t1 \\u0422\\u0431\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\tDVD-Multi\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t15.6 \\u0434\\u044e\\u0439\\u043c\\u0430\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1920x1080\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tAMD Radeon R5 M230 2 \\u0413\\u0431\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\tUSB 3.0x2, VGA (D-Sub), HDMI\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t4200 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tWindows 8\\n","\\u0412\\u0435\\u0441":"\\t2.25 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t380x251x25.1 \\u043c\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'AsusX550ZE-DM051H.jpg'),
(6, 'Ноутбук Asus X555LB-XO259H', 1, 40000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tIntel Core i3 5010U 2.1 \\u0413\\u0413\\u0446 2 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t6 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t1 \\u0422\\u0431\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\tDVD-Multi\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t15.6 \\u0434\\u044e\\u0439\\u043c\\u0430\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1366x768\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tNvidia GeForce 940M 2 \\u0413\\u0431\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\tUSB 2.0, USB 3.0x2, VGA (D-Sub), HDMI\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t2200 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tWindows 8\\n","\\u0412\\u0435\\u0441":"\\t2.3 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t382x256x25.8 \\u043c\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'AsusX555LB-XO259H.jpg'),
(7, 'Ноутбук HP 15-ac135ur', 1, 38000, '{"\\u041f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440":"\\tIntel Core i3 5010U 2.1 \\u0413\\u0413\\u0446 2 \\u044f\\u0434\\u0440\\u0430\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c":"\\t6 \\u0413\\u0431\\n","\\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a":"\\t1 \\u0422\\u0431\\n","\\u041e\\u043f\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0434\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0434":"\\tDVD-Multi\\n","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t15.6 \\u0434\\u044e\\u0439\\u043c\\u0430\\n","\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430":"\\t1366x768\\n","\\u0412\\u0435\\u0431\\u043a\\u0430\\u043c\\u0435\\u0440\\u0430":"\\t\\u0434\\u0430\\n","\\u0412\\u0438\\u0434\\u0435\\u043e\\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440":"\\tNvidia GeForce 940M 2 \\u0413\\u0431\\n","\\u041a\\u043e\\u043c\\u043c\\u0443\\u043d\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438":"\\tLAN, Wi-Fi, Bluetooth\\n","\\u0418\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u044b":"\\tUSB 2.0, USB 3.0x2, VGA (D-Sub), HDMI\\n","\\u0421\\u043b\\u043e\\u0442\\u044b \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u0438\\u044f":"\\tCard Reader\\n","\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440":"\\t2200 \\u043c\\u0410\\u0447\\n","\\u041e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430":"\\tWindows 8\\n","\\u0412\\u0435\\u0441":"\\t2.3 \\u041a\\u0433\\n","\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b":"\\t382x256x25.8 \\u043c\\u043c\\n","\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f":"\\t12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432"}', 1, 'HP15-ac135ur.png');

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`) VALUES
(47, 'Георгий', '8900000000', 'привет', 6, '2016-07-06 16:29:50', '{"2":4,"3":1}'),
(48, 'Георгий', '8900000000', 'привет', 6, '2016-07-06 16:30:16', '{"2":4,"3":1}'),
(49, 'Георгий', '8900000000', '', 6, '2016-07-06 16:30:50', '{"2":5,"3":1}'),
(50, 'Георгий', '8900000000', '', 6, '2016-07-06 16:32:12', '{"2":5,"3":1}'),
(51, 'Георгий', '8900000000', '', NULL, '2016-07-06 17:11:46', '{"2":2,"3":1}'),
(52, 'Георгий', '8900000000', '', 0, '2016-07-14 14:43:40', '{"2":1}'),
(53, 'Георгий', '8900000000', '', 0, '2016-07-14 14:44:24', '{"2":1}'),
(54, 'Георгий', '8900000000', '', 0, '2016-07-28 06:33:28', '{"2":1,"3":1}');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(6, 'Георгий', 'sonissd@gmail.com', '123456'),
(7, 'Георгий', 'sonissd1@gmail.com', '123456'),
(8, 'Георгий', 'sonissd2@gmail.com', '$2y$10$ZWi/2.nrJ15qSptZwQEi/OU8PuMcAOk7SIaSDTJh7xuBqac/UI5Da');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
