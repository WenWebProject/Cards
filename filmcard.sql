-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-12-17 21:03:33
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
-- 表的结构 `filmcard`
--

CREATE TABLE `filmcard` (
  `film_id` int(11) NOT NULL,
  `film_title` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `director` varchar(255) NOT NULL,
  `bewertung` varchar(255) NOT NULL,
  `image1_path` varchar(255) NOT NULL,
  `image2_path` varchar(255) NOT NULL,
  `image3_path` varchar(255) NOT NULL,
  `trailer_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `filmcard`
--

INSERT INTO `filmcard` (`film_id`, `film_title`, `year`, `director`, `bewertung`, `image1_path`, `image2_path`, `image3_path`, `trailer_path`) VALUES
(1, 'Star Wars: The Rise of Skywalker', 2019, 'Jeffrey Jacob Abrams', '4.5', './img/StarWars_1.jpg', './img/StarWars_2.jpg', './img/StarWars_3.jpg', './img/Star_Wars.mp4'),
(2, 'Harry Potter and the Sorcerer\'s Stone', 2001, 'Chris Columbus', '4.8', './img/HarryPotter_1.jpg', './img/HarryPotter_2.jpg', './img/HarryPotter_3.jpg', './img/HarryPotter.mp4'),
(3, 'Titanic', 1997, 'James Cameron', '4.8', './img/Titanic_4.jpg', './img/Titanic_2.jpg', './img/Titanic_3.jpg', './img/Titanic.mp4');

--
-- 转储表的索引
--

--
-- 表的索引 `filmcard`
--
ALTER TABLE `filmcard`
  ADD PRIMARY KEY (`film_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `filmcard`
--
ALTER TABLE `filmcard`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
