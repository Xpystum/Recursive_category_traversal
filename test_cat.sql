-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 07 2023 г., 03:28
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `framework`
--

-- --------------------------------------------------------

--
-- Структура таблицы `test_cat`
--

CREATE TABLE `test_cat` (
  `id` int(9) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `test_cat`
--

INSERT INTO `test_cat` (`id`, `title`, `parent_id`) VALUES
(1, 'FORD', 0),
(2, 'MAZDA', 0),
(3, 'VOLVO', 0),
(4, 'OPEL', 0),
(5, 'SEDAN', 1),
(6, 'hetchback', 5),
(7, 'coupe', 1),
(8, 'fastback', 1),
(9, 'sedan', 2),
(10, 'cabriolet', 6),
(11, 'universal', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `test_cat`
--
ALTER TABLE `test_cat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `test_cat`
--
ALTER TABLE `test_cat`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
