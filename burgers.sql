-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 30 2018 г., 11:56
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `burgers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `korp` varchar(255) NOT NULL,
  `kvart` varchar(255) NOT NULL,
  `etaj` varchar(255) NOT NULL,
  `komment` varchar(255) NOT NULL,
  `oplata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `street`, `house`, `korp`, `kvart`, `etaj`, `komment`, `oplata`) VALUES
(12, 1, 'Егор', 'ddsd', '1', '2', '3', '4', '555', 'on'),
(13, 1, 'Егор', 'ddsd', '1', '2', '3', '4', '555', 'on'),
(14, 38, 'Питер', 'солонище', '3', '2', '4', '22', 'ывававу', 'on'),
(15, 38, 'Питер', 'солонище', '3', '2', '4', '22', 'ывававу', 'on'),
(16, 38, 'Питер', 'солонище', '3', '2', '4', '22', 'ывававу', 'on'),
(17, 38, 'Питер', 'солонище', '3', '2', '4', '22', 'ывававу', 'on'),
(22, 39, 'Зоя', 'Полевая', '24', '2', '2', '5', 'коммент', 'on'),
(23, 39, 'Зоя', 'Полевая', '24', '2', '2', '5', 'коммент', 'on'),
(24, 39, 'Зоя', 'Полевая', '24', '2', '2', '5', 'коммент', 'on'),
(25, 40, 'Алеша', 'дворовая', '65', '4', '5', '6', '4455', 'on'),
(26, 40, 'Алеша', 'дворовая', '65', '4', '5', '6', '4455', 'on'),
(27, 41, 'Юля', 'ул. Кошевая', '22', '3', '4', '2', '22', 'on'),
(28, 41, 'Юля', 'ул. Кошевая', '22', '3', '4', '2', '22', 'on'),
(29, 41, 'Юля', 'ул. Кошевая', '22', '3', '4', '2', '22', 'on'),
(30, 42, 'Степа', 'sddf', '2', '2', '2', '2', 'коммент', ''),
(32, 43, 'Тамара', 'Осипенко', '5', '3', '4', '3', '333', 'on'),
(33, 43, 'Тамара', 'Осипенко', '5', '3', '4', '3', '333', 'on'),
(34, 43, 'Тамара', 'Осипенко', '5', '3', '4', '3', '333', 'on'),
(66, 1, 'фф', 'qq', 'q', 'q', 'q', 'q', 'q', 'on'),
(67, 1, 'фф', 'qq', 'q', 'q', 'q', 'q', 'q', 'on'),
(68, 1, 'фф', 'qq', 'q', 'q', 'q', 'q', 'q', 'on'),
(69, 1, 'фф', 'qq', 'q', 'q', 'q', 'q', 'q', 'on'),
(70, 49, 'Джулия', 'джули', '1', '1', '1', '1', '111', 'on'),
(71, 49, 'Джулия', 'джули', '1', '1', '1', '1', '111', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `mail`, `tel`) VALUES
(1, 'Nik', 'konverts@mail.ru', '6848481'),
(2, 'Артем', 'artemiy4', '54515154151'),
(3, 'user444', 'user444@mail.ru', '361127'),
(4, 'в', 'ы', 'ф'),
(5, 'user195', 'user195@mail.ru', '374187'),
(6, 'user294', 'user294@mail.ru', '17594'),
(7, 'user278', 'user278@mail.ru', '320648'),
(8, 'user438', 'user438@mail.ru', '495678'),
(9, '4881', '785378352@mail.ru', '+7 (755) 273 88 69'),
(10, 'Кузя', 'sdadsd@mail.ru', '+7 (536) 783 58 73'),
(11, 'Кузя', 'sdadsd@mail.ru', '+7 (536) 783 58 73'),
(12, 'Филип', '45454@mail.ru', '+7 (481) 468 1_ __'),
(36, '', '', ''),
(37, 'Александр', 'alewx@mail.ru', '+7 (777) 777 77 77'),
(38, 'Питер', 'kosdjd@mail.ru', '+7 (422) 561 71 87'),
(39, 'Зоя', 'zoia@mail.ru', '+7 (456) 426 89 87'),
(40, 'Алеша', 'kool@mail.ru', '+7 (614) 654 51 54'),
(41, 'Юля', 'iulia@mail.ru', '+7 (451) 148 74 14'),
(42, 'Степа', 'jhds@mail.ru', '+7 (768) 219 49 18'),
(43, 'Тамара', 'tamara@mail.ru', '+7 (254) 924 52 21'),
(44, 'Stepa    ', 'tamarad@mail.ru', '+7 (434) 565 34 31'),
(45, 'Равлик', 'jljknjs@mail.ru', '+7 (785) 678 68 79'),
(46, 'Тима', 'tim@mail.ru', '+7 (786) 578 68 96'),
(47, 'Анна-Мария', 'anmar@mail.ru', '+7 (352) 641 41 42'),
(48, 'Ольга', 'olga@mail.ru', '+7 (888) 888 88 88'),
(49, 'Джулия', 'djulia@mail.ru', '+7 (777) 777 77 77');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
