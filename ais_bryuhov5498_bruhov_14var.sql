-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Май 29 2024 г., 16:31
-- Версия сервера: 8.0.29
-- Версия PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ais_bryuhov5498_bruhov_14var`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Answer_option`
--

CREATE TABLE `Answer_option` (
  `ID` int NOT NULL COMMENT 'Id варианта ответа',
  `Answer` varchar(1000) NOT NULL COMMENT 'Содержание ответа',
  `ID_Question_Test` int NOT NULL COMMENT 'ID вопроса',
  `Rigth_answer` int NOT NULL COMMENT 'Верный вариант'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Answer_option`
--

INSERT INTO `Answer_option` (`ID`, `Answer`, `ID_Question_Test`, `Rigth_answer`) VALUES
(1, 'Уходит в пятки\r\n', 1, 1),
(2, 'Вылезает на лоб\r\n', 1, 0),
(3, 'Встает дыбом\r\n', 1, 0),
(4, 'Поет\r\n', 1, 0),
(5, 'Книга\r\n', 2, 0),
(6, 'Интернет', 2, 0),
(7, 'Кино\r\n', 2, 0),
(8, 'Спорт', 2, 0),
(9, 'Хлебу', 3, 0),
(10, 'Кексу', 3, 0),
(11, 'Бублику', 3, 0),
(12, 'Прянику', 3, 1),
(13, 'Грибы', 4, 0),
(14, 'Петрушка', 4, 0),
(15, 'Яблоки', 4, 1),
(16, 'Клубника\r\n', 4, 0),
(17, 'Хвостом', 5, 0),
(18, 'Языком', 5, 1),
(19, 'Глазами', 5, 0),
(20, 'Слюной', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Answer_students`
--

CREATE TABLE `Answer_students` (
  `ID` int NOT NULL COMMENT 'ID ответа участника',
  `ID_Answer` int DEFAULT NULL COMMENT 'ID варианта ответа',
  `ID_sudents` int NOT NULL COMMENT 'ID участника'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Answer_students`
--

INSERT INTO `Answer_students` (`ID`, `ID_Answer`, `ID_sudents`) VALUES
(1, 1, 1),
(2, 5, 1),
(3, 9, 1),
(4, 13, 1),
(5, 17, 1),
(6, 2, 2),
(7, 6, 2),
(8, NULL, 2),
(9, NULL, 2),
(10, NULL, 2),
(11, 3, 3),
(12, 7, 3),
(13, 11, 3),
(14, 15, 3),
(15, 19, 3),
(16, 4, 4),
(17, 8, 4),
(18, 12, 4),
(19, 16, 4),
(20, 20, 4),
(21, 1, 5),
(22, 5, 5),
(23, 9, 5),
(24, 13, 5),
(25, 17, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Group_student`
--

CREATE TABLE `Group_student` (
  `ID` int NOT NULL COMMENT 'Id группы',
  `Name` varchar(200) NOT NULL COMMENT 'Наименование группы',
  `spec` varchar(50) NOT NULL COMMENT 'Специальность'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Group_student`
--

INSERT INTO `Group_student` (`ID`, `Name`, `spec`) VALUES
(1, '1L', 'Лингвистика'),
(2, '1M', 'Менеджмент');

-- --------------------------------------------------------

--
-- Структура таблицы `Question`
--

CREATE TABLE `Question` (
  `ID` int NOT NULL COMMENT 'id вопроса',
  `content` text NOT NULL COMMENT 'Содержание вопроса'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Question`
--

INSERT INTO `Question` (`ID`, `content`) VALUES
(1, 'Что делает душа, когда ей страшно?'),
(2, 'Какой из этих способов проведения досуга самый древний?'),
(3, 'Чему в Туле установлен памятник?'),
(4, 'В блюде немецкой кухни «Небо и земля» картофель — это земля. А что символизирует небеса?'),
(5, 'Чем способен «стрелять» хамелеон?');

-- --------------------------------------------------------

--
-- Структура таблицы `Question_Test`
--

CREATE TABLE `Question_Test` (
  `ID` int NOT NULL,
  `ID_Question` int NOT NULL,
  `ID_test` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Question_Test`
--

INSERT INTO `Question_Test` (`ID`, `ID_Question`, `ID_test`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Students`
--

CREATE TABLE `Students` (
  `ID` int NOT NULL COMMENT 'ID студента',
  `FIO` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL COMMENT 'ФИО',
  `ID_group` int DEFAULT NULL COMMENT 'ID Группы'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='Список студентов';

--
-- Дамп данных таблицы `Students`
--

INSERT INTO `Students` (`ID`, `FIO`, `ID_group`) VALUES
(1, 'Фёдор Петров Глебович\r\n', 1),
(2, 'Александр Соболев Кириллович\r\n', 1),
(3, 'Виктор Пономарев Александрович\r\n', 2),
(4, 'Дмитрий Вишневский Львович\r\n', 2),
(5, 'Владимир Андреев Даниилович\r\n', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Test`
--

CREATE TABLE `Test` (
  `ID` int NOT NULL COMMENT 'id теста',
  `Number_Test` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `Test`
--

INSERT INTO `Test` (`ID`, `Number_Test`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Answer_option`
--
ALTER TABLE `Answer_option`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Rigth_answer` (`Rigth_answer`),
  ADD KEY `Answer_option_ibfk_2` (`ID_Question_Test`);

--
-- Индексы таблицы `Answer_students`
--
ALTER TABLE `Answer_students`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Answer` (`ID_Answer`),
  ADD KEY `ID_sudents` (`ID_sudents`);

--
-- Индексы таблицы `Group_student`
--
ALTER TABLE `Group_student`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Question_Test`
--
ALTER TABLE `Question_Test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Question` (`ID_Question`),
  ADD KEY `ID_test` (`ID_test`);

--
-- Индексы таблицы `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_group` (`ID_group`);

--
-- Индексы таблицы `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Answer_option`
--
ALTER TABLE `Answer_option`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Id варианта ответа', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `Group_student`
--
ALTER TABLE `Group_student`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Id группы', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Question`
--
ALTER TABLE `Question`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'id вопроса', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Question_Test`
--
ALTER TABLE `Question_Test`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `Students`
--
ALTER TABLE `Students`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'ID студента', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Test`
--
ALTER TABLE `Test`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'id теста', AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Answer_option`
--
ALTER TABLE `Answer_option`
  ADD CONSTRAINT `Answer_option_ibfk_2` FOREIGN KEY (`ID_Question_Test`) REFERENCES `Question` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Answer_students`
--
ALTER TABLE `Answer_students`
  ADD CONSTRAINT `Answer_students_ibfk_1` FOREIGN KEY (`ID_Answer`) REFERENCES `Answer_option` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Answer_students_ibfk_3` FOREIGN KEY (`ID_sudents`) REFERENCES `Students` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Question_Test`
--
ALTER TABLE `Question_Test`
  ADD CONSTRAINT `Question_Test_ibfk_1` FOREIGN KEY (`ID_test`) REFERENCES `Test` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Question_Test_ibfk_2` FOREIGN KEY (`ID_Question`) REFERENCES `Question` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Students`
--
ALTER TABLE `Students`
  ADD CONSTRAINT `Students_ibfk_1` FOREIGN KEY (`ID_group`) REFERENCES `Group_student` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
