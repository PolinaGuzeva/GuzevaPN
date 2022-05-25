-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 26 2022 г., 00:45
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guzeva_pn`
--

-- --------------------------------------------------------

--
-- Структура таблицы `competitions_id`
--

CREATE TABLE `competitions_id` (
  `id` int NOT NULL,
  `competitions` text NOT NULL,
  `prize_winners_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `competitions_id`
--

INSERT INTO `competitions_id` (`id`, `competitions`, `prize_winners_id`) VALUES
(1, 'Волгоградский марафон-2018', 1),
(2, 'Волгоградский марафон-2019', 2),
(3, 'Волгоградский марафон-2020', 3),
(4, 'Волгоградский марафон-2021', 4),
(5, 'Волгоградский марафион-2022', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `prize_winners_id`
--

CREATE TABLE `prize_winners_id` (
  `id` int NOT NULL,
  `sportsman_1` text NOT NULL,
  `sportsman_2` text NOT NULL,
  `sportsman_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `prize_winners_id`
--

INSERT INTO `prize_winners_id` (`id`, `sportsman_1`, `sportsman_2`, `sportsman_3`) VALUES
(1, 'Иван Иванов Иванович', 'Журавлева Марина Алексеевна', 'Пономарев Михаил Юрьевич'),
(2, 'Умницын Юрий Павлович', 'Пономарев Михаил Юрьевич', 'Шмарин Василий Сергеевич'),
(3, 'Иван Иванов Иванович', 'Приходько Николай Сергеевич', 'Пономарев Михаил Юрьевич'),
(4, 'Калинина Ольга Артуровна', 'Новосельцева Евгения Андреевна', 'Иван Иванов Иванович'),
(5, 'Журавлева Марина Алексеевна', 'Новосельцева Евгения Андреевна', 'Умницын Юрий Павлович');

-- --------------------------------------------------------

--
-- Структура таблицы `result_id`
--

CREATE TABLE `result_id` (
  `id` int NOT NULL,
  `sportsman_id` int NOT NULL,
  `competitions_id` int NOT NULL,
  `result` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `result_id`
--

INSERT INTO `result_id` (`id`, `sportsman_id`, `competitions_id`, `result`) VALUES
(1, 1, 1, '02:12:07'),
(2, 2, 1, '02:15:30'),
(3, 3, 1, '02:21:52'),
(6, 5, 1, '02:27:45'),
(6, 5, 2, '02:10:59'),
(7, 3, 2, '02:13:07'),
(8, 6, 2, '02:20:34'),
(9, 2, 2, '02:15:34'),
(11, 1, 3, '02:16:32'),
(12, 4, 3, '02:20:27'),
(13, 3, 3, '02:27:05'),
(14, 6, 3, '02:35:07'),
(15, 8, 4, '02:09:50'),
(16, 7, 4, '02:11:05'),
(17, 1, 4, '02:16:47'),
(18, 2, 4, '02:17:01'),
(19, 3, 4, '02:19:27'),
(20, 2, 5, '02:14:36'),
(21, 7, 5, '02:15:27'),
(22, 5, 5, '02:17:16'),
(23, 3, 5, '02:19:57'),
(24, 6, 5, '02:22:33');

-- --------------------------------------------------------

--
-- Структура таблицы `sportsman_id`
--

CREATE TABLE `sportsman_id` (
  `id` int NOT NULL,
  `FIO` text NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` varchar(50) NOT NULL,
  `creating_record` datetime NOT NULL,
  `passport_number` varchar(50) NOT NULL,
  `result` time NOT NULL,
  `biography` text,
  `video_presentation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sportsman_id`
--

INSERT INTO `sportsman_id` (`id`, `FIO`, `e_mail`, `telephone`, `date_of_birth`, `age`, `creating_record`, `passport_number`, `result`, `biography`, `video_presentation`) VALUES
(1, 'Иван Иванов Иванович', 'ivan@mail.ru', '79048661898', '1997-05-20', '25', '2022-05-25 20:47:42', '1803 789099', '02:16:07', 'Воспитанник тольяттинской СДЮШОР № 3 «Лёгкая атлетика», тренерами были М. Чечун, В. Матрин.', 'есть'),
(2, 'Журавлева Марина Алексеевна', 'm_zhuravl@gmail.com', '79563334589', '2002-05-15', '20', '2022-05-25 20:58:39', '1803 768940', '02:16:16', 'Окончила Московский Государственный Университет, факультет программирования.  Бег – это хобби для хорошего настроения.\r\n', 'есть'),
(3, 'Пономарев Михаил Юрьевич', 'ponomarMih@mail.ru', '89048931233', '2002-07-18', '20', '2022-05-25 21:04:01', '1889 786598', '02:18:30', 'Мастер спорта, бронзовый призер чемпионата России по марафону и также третий на Московском марафоне этого года.', 'нет'),
(4, 'Приходько Николай Сергеевич', 'pr54hod@yandex.ru', '79048669977', '1999-08-23', '22', '2022-05-25 21:08:32', '1878 732902', '02:19:13', 'В отборочном на Олимпийские игры, Николай одержал уверенную победу, был включён в состав сборной. Cтал 22-м (8.29,72).\r\nВ 2013 году занял 4-е место на командном чемпионате Европы в британском Гейтсхеде.\r\nСезон 2014 года марафон в Хьюстоне (2:14.02). ', 'нет'),
(5, 'Умницын Юрий Павлович', 'ymnits@mail.ru', '79048664512', '2001-03-19', '21', '2022-05-25 21:21:29', '1803 732904', '02:21:03', 'Cпециалист по бегу на длинные дистанции и марафону. Выступаю на профессиональном уровне с 2004 года, чемпион России в марафоне и полумарафоне, призёр ряда крупных забегов на шоссе, участник чемпионата мира в Дохе. Представлял Удмуртию и Москву. Мастер спорта России международного класса.', 'есть'),
(6, 'Шмарин Василий Сергеевич', '123_smarin@mail.ru', '79030331234', '1998-09-26', '24', '2022-05-25 22:52:11', '1723 789099', '02:30:50', 'В 2014 году стал шестым на марафоне в Анси (2:17:33) и пятым на марафоне в Подгорице (2:21:55).\r\nВ 2015 году занял 16-е место на Варшавском марафоне (2:14:57), финишировал пятым на чемпионате России по полумарафону в Новосибирске (1:06:35).\r\nВ 2016 году был четвёртым на Волгоградском марафоне памяти Бориса Гришаева (2:14:49), третьим на Новосибирском полумарафоне (1:05:28), одержал победу на Московском марафоне, установив при этом рекорд трассы и свой личный рекорд — 2:13:42.\r\nВ 2017 году показал третий результат на Сочинском полумарафоне (1:04:43), с результатом 2:15:32', 'нет'),
(7, 'Новосельцева Евгения Андреевна', 'novosel671@mail.ru', '79048931289', '2002-11-26', '20', '2022-05-25 23:28:49', '1803 737643', '02:20:58', 'Провожу тренировки в Киргизии. Тренер — Татьяна Жиркова.\r\n\r\nВ Катаре на предолимпийском первенстве мира в сентябре 2019 года в очень тяжёлых условиях была на двадцать втором месте в марафоне. Она показала время 2:52:46.', 'есть'),
(8, 'Калинина Ольга Артуровна', 'kl4839@mail.ru', '79048634265', '2001-10-09', '21', '2022-05-25 23:34:05', '1723 781234', '02:22:13', 'Воспитанница спортивной школы олимпийского резерва Петрозаводска.\r\nПервая на чемпионате России по горному бегу.', 'нет');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `competitions_id`
--
ALTER TABLE `competitions_id`
  ADD PRIMARY KEY (`id`,`prize_winners_id`),
  ADD KEY `prize_winners_id` (`prize_winners_id`);

--
-- Индексы таблицы `prize_winners_id`
--
ALTER TABLE `prize_winners_id`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `result_id`
--
ALTER TABLE `result_id`
  ADD PRIMARY KEY (`id`,`sportsman_id`,`competitions_id`),
  ADD KEY `sportsman_id` (`sportsman_id`),
  ADD KEY `competitions_id` (`competitions_id`);

--
-- Индексы таблицы `sportsman_id`
--
ALTER TABLE `sportsman_id`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `competitions_id`
--
ALTER TABLE `competitions_id`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `result_id`
--
ALTER TABLE `result_id`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `sportsman_id`
--
ALTER TABLE `sportsman_id`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `competitions_id`
--
ALTER TABLE `competitions_id`
  ADD CONSTRAINT `competitions_id_ibfk_1` FOREIGN KEY (`prize_winners_id`) REFERENCES `prize_winners_id` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `result_id`
--
ALTER TABLE `result_id`
  ADD CONSTRAINT `result_id_ibfk_1` FOREIGN KEY (`sportsman_id`) REFERENCES `sportsman_id` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `result_id_ibfk_2` FOREIGN KEY (`competitions_id`) REFERENCES `competitions_id` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
