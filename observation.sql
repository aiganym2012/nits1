-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 13 2023 г., 07:52
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `proj2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `observation`
--

CREATE TABLE `observation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `sealevel` mediumblob DEFAULT NULL,
  `seahigh` mediumblob DEFAULT NULL,
  `period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `observation`
--

INSERT INTO `observation` (`id`, `name`, `date`, `time`, `sealevel`, `seahigh`, `period`) VALUES
(1, 'Жанбай', '2023-04-13', '15:00:00', NULL, NULL, 10);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `observation`
--
ALTER TABLE `observation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `observation`
--
ALTER TABLE `observation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
