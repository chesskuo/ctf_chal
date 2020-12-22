-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： db
-- 產生時間： 2020 年 12 月 21 日 09:03
-- 伺服器版本： 10.5.5-MariaDB-1:10.5.5+maria~focal
-- PHP 版本： 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `labs`
--
CREATE DATABASE IF NOT EXISTS `labs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `labs`;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `flag` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `flag`) VALUES
(1, 'chess', 'ch3ss1sh4nds0me', NULL),
(2, 'halloworld', '1234567890', NULL),
(3, 'roy', '9876543210', NULL),
(4, 'mask', 'olaolaolaola', NULL),
(5, 'admin', 'jkl;fdsauiopewr', 'NISRA{gr34t_un10n_b4s3d}'),
(6, 'guest', 'guest', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 資料庫： `top_secret`
--
CREATE DATABASE IF NOT EXISTS `top_secret` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `top_secret`;

-- --------------------------------------------------------

--
-- 資料表結構 `flag`
--

CREATE TABLE `flag` (
  `str1` char(16) NOT NULL,
  `str2` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `flag`
--

INSERT INTO `flag` (`str1`, `str2`) VALUES
('NISRA{another_da', 'tabase}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE USER 'labs'@'%' IDENTIFIED BY 'labs';GRANT SELECT ON *.* TO 'labs'@'%';
