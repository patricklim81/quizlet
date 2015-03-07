-- phpMyAdmin SQL Dump
-- version 4.3.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 07, 2015 at 12:09 PM
-- Server version: 5.6.22-log
-- PHP Version: 5.5.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizlet`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE IF NOT EXISTS `choices` (
  `id` int(100) NOT NULL,
  `question_number` int(100) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'True'),
(2, 1, 0, 'False'),
(3, 2, 1, 'True'),
(4, 2, 0, 'False'),
(5, 3, 0, 'True'),
(6, 3, 1, 'False'),
(7, 4, 1, 'True'),
(8, 4, 0, 'False'),
(9, 5, 1, 'China'),
(10, 5, 0, 'Russia'),
(11, 6, 1, 'Uranus'),
(12, 6, 0, 'Saturn'),
(13, 7, 1, 'True'),
(14, 7, 0, 'False'),
(15, 8, 0, 'True'),
(16, 8, 1, 'False'),
(17, 9, 1, 'True'),
(18, 9, 0, 'False'),
(19, 10, 0, 'True'),
(20, 10, 1, 'False'),
(21, 11, 1, 'Palpitine'),
(22, 11, 0, 'Skywalker'),
(23, 12, 1, 'Shirley Eaton'),
(24, 12, 0, 'Emma Watson'),
(25, 13, 1, 'Jack Sparrow'),
(26, 13, 0, 'Captain Jack'),
(27, 14, 1, 'Nibble'),
(28, 14, 0, 'Nano Byte'),
(29, 15, 1, 'Graphical User Interface'),
(30, 15, 0, 'Graphical Utility Input'),
(31, 16, 1, '$5 bill'),
(32, 16, 0, '$20 bill'),
(33, 17, 1, 'Second'),
(34, 17, 0, 'Third'),
(35, 18, 1, 'Joan of Arc'),
(36, 18, 0, 'Nancy Botwin'),
(37, 19, 1, 'Olaf Palme'),
(38, 19, 0, 'Stefan Lofven'),
(39, 20, 1, 'West Point'),
(40, 20, 0, 'USNA'),
(41, 21, 1, 'Jupiter'),
(42, 21, 0, 'Saturn'),
(43, 22, 1, 'Oxygen'),
(44, 22, 0, 'Carbon'),
(45, 23, 1, 'Hinduism'),
(46, 23, 0, 'Buddhism'),
(47, 24, 1, 'KDKA'),
(48, 24, 0, 'KDCB'),
(49, 25, 1, 'Mitch Lucker'),
(50, 25, 0, 'Adam Warren'),
(51, 26, 1, 'Helios the Greek Sun God'),
(52, 26, 0, 'Alexander the Great of Macedonia'),
(53, 27, 1, 'Rapier'),
(54, 27, 0, 'Saber'),
(55, 28, 1, 'Australia and England'),
(56, 28, 0, 'Afghanistan and India'),
(57, 29, 1, 'Antarctica'),
(58, 29, 0, 'Australia'),
(59, 30, 1, 'Uranus'),
(60, 30, 0, 'Jupiter'),
(61, 31, 1, 'Five'),
(62, 31, 0, 'Three'),
(63, 32, 1, 'Michigan'),
(64, 32, 0, 'Wisconsin'),
(65, 33, 1, 'Edible seaweed'),
(66, 33, 0, 'Sliced cucumber'),
(67, 34, 1, 'Iceland'),
(68, 34, 0, 'Canada'),
(69, 35, 1, 'Thomas Edison'),
(70, 35, 0, 'Nikola Tesla'),
(71, 36, 1, 'Australia'),
(72, 36, 0, 'South America'),
(73, 37, 1, 'Consumer reports'),
(74, 37, 0, 'Men’s fitness'),
(75, 38, 1, 'The Trans-Siberian Railway'),
(76, 38, 0, 'JSC Russian Railway'),
(77, 39, 0, 'Seven'),
(78, 39, 1, 'Ten'),
(79, 40, 0, 'True'),
(80, 40, 1, 'False'),
(81, 41, 1, 'True'),
(82, 41, 0, 'False'),
(83, 42, 0, 'True'),
(84, 42, 1, 'False'),
(85, 43, 0, 'True'),
(86, 43, 1, 'False'),
(87, 44, 1, 'True'),
(88, 44, 0, 'False'),
(89, 45, 1, 'True'),
(90, 45, 0, 'False'),
(91, 46, 0, 'True'),
(92, 46, 1, 'False'),
(93, 47, 1, 'True'),
(94, 47, 0, 'False'),
(95, 48, 0, 'True'),
(96, 48, 1, 'False'),
(97, 49, 1, 'True'),
(98, 49, 0, 'False'),
(99, 50, 0, 'True'),
(100, 50, 1, 'False');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `question_number` int(100) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'The pressure inside of a Champagne bottle is greater than the pressure inside of an automobile tire. '),
(2, 'The continent of Africa is so large that it is capable of holding Europe, The US, India, and China within it. '),
(3, 'The Nazi party created the Swastika. '),
(4, 'There are only three countries in the world which are completely surrounded by another country. '),
(5, 'What is the largest country in the world?'),
(6, 'What was the first planet to be discovered under a telescope, in 1781? '),
(7, 'Typing the word ‘Typewriter’ on a keyboard uses only the top row of keys. '),
(8, '95% of statistics are completely made up.'),
(9, 'There is always superman memorabilia  somewhere in every episode of Seinfeld.'),
(10, 'Peanuts are not one of the ingredients used to make dynamite. '),
(11, 'In the movie Star Wars, what is the Emperors last name? '),
(12, 'What actress in the film Goldfinger was painted gold? '),
(13, 'What was Johnny Depp’s character name in the film Pirates of The Caribbean?  '),
(14, 'What is half of a Byte (4 bits) called? '),
(15, 'What does the acronym GUI stand for? '),
(16, 'Which U.S. paper currency has the shortest life span, roughly 15 months? '),
(17, 'Due to the population problem in China, married couples lose various government benefits after the birth of which child? '),
(18, 'May 14th is a national holiday in France in order to celebrate which woman? '),
(19, 'What was the name of the Swedish leader who was assassinated in the streets of Stockholm in 1987? '),
(20, 'The United States government keeps its supply of Silver at which military academy?'),
(21, 'Which planet in our solar system has exactly one ring? '),
(22, 'What element is found in the greatest percentages in the human body? '),
(23, 'The mental and physical exercise known as yoga evolves from what religion? '),
(24, 'Which Pittsburgh radio station was the first to broadcast in the U.S.?'),
(25, 'What is the name of the vocalist from the band Suicide Silence who died in a motorcycle accident in 2012? '),
(26, 'Which real world leader was the Colossus of Rhodes modeled after? '),
(27, 'Which is not a modern sword used in the sport of Fencing? '),
(28, 'Which countries participated in the first official international cricket match that was held in 1844? '),
(29, 'Which continent has the fewest flowering plants?'),
(30, 'What was the first planet to be discovered via telescope in 1781? '),
(31, 'How many U.S. states border The Gulf of Mexico? '),
(32, 'Which Great Lake state has more shoreline than the entire U.S. Atlantic Seaboard? '),
(33, 'What is sushi traditionally wrapped with? '),
(34, 'Which country has more tractors per capita? '),
(35, 'Who averaged one patent for every three weeks of his life?'),
(36, 'What continent is cut into two equal halves by the Tropic of Capricorn?'),
(37, 'What magazine boast the slogan “Test, Inform, Protect.”?'),
(38, 'What railway linked Moscow and Irkutsk in 1900? '),
(39, 'What is the minimum number of musicians a band has to have in order to be considered a “Big Band”? '),
(40, 'Chuck Norris actually doesn’t have a black belt. '),
(41, 'The Wild Turkey was almost the United States’ national bird. '),
(42, 'There are more McDonald’s than public libraries in the United States. '),
(43, 'The first Baseball game was played in Cooperstown, New York. '),
(44, 'Blue jeans were invented by Levi Strauss.'),
(45, 'The color Orange is named after the fruit.'),
(46, 'George Washington actually had wooden teeth. '),
(47, 'Some turtles can breathe through their butts. '),
(48, 'Mark Twain invented the elastic waistband. '),
(49, 'Google was originally called “Backrub”. '),
(50, 'You cannot die from drinking too much water.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
