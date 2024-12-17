-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-12-17 21:02:46
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `citycard`
--

CREATE TABLE `citycard` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `einwohner` varchar(255) NOT NULL,
  `bewertung` varchar(255) NOT NULL,
  `city_description` text NOT NULL,
  `image1_path` varchar(255) NOT NULL,
  `image2_path` varchar(255) NOT NULL,
  `image3_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `citycard`
--

INSERT INTO `citycard` (`city_id`, `city_name`, `country`, `einwohner`, `bewertung`, `city_description`, `image1_path`, `image2_path`, `image3_path`) VALUES
(1, 'Berlin', 'Germany', '3,8 Millionen Einwohnern', '4.2', 'Berlin, capital city of Germany. The city lies at the heart of the North German Plain, athwart an east-west commercial and geographic axis that helped make it the capital of the kingdom of Prussia and then, from 1871, of a unified Germany.', './img/berlin_1.jpg', './img/berlin_2.jpg', './img/berlin_3.jpg'),
(2, 'Rom', 'Italy', '7 Millionen Einwohnern', '4.4', 'ROM, is a type of computer memory that can only be read from, not written to. It is a type of storage that contains data that can\'t be changed or modified. ROM retains its contents even after the power to the device it\'s installed in has been turned off.', './img/Rom_1.jpg', './img/Rom_2.jpg', './img/Rom_3.jpg'),
(3, 'New York', 'USA', '20 Millionen Einwohnern', '4.6', 'New York is composed of five boroughs – Brooklyn, the Bronx, Manhattan, Queens and Staten Island - is home to 8.4 million people who speak more than 200 languages, hail from every corner of the globe, and, together, are the heart and soul of the most dynamic city in the world.', './img/NewYork_1.jpeg', './img/NewYork_2.jpeg', './img/NewYork_3.jpg');

--
-- 转储表的索引
--

--
-- 表的索引 `citycard`
--
ALTER TABLE `citycard`
  ADD PRIMARY KEY (`city_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `citycard`
--
ALTER TABLE `citycard`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
