-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 09, 2017 at 11:23 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dartmouth_forms`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

CREATE TABLE `form_submissions` (
  `submission_ID` int(11) NOT NULL,
  `submission_fname` varchar(255) NOT NULL,
  `submission_lname` varchar(255) NOT NULL,
  `submission_form_type` varchar(20) NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_submissions`
--

INSERT INTO `form_submissions` (`submission_ID`, `submission_fname`, `submission_lname`, `submission_form_type`, `submission_time`) VALUES
(1, 'Parent', 'Test', 'parent', '2017-09-09 20:32:38'),
(2, 'Alumni', 'Test', 'alumni', '2017-09-09 20:33:00'),
(3, 'Spouse', 'Test', 'spouse', '2017-09-09 20:33:23'),
(4, 'Spouse', 'Test', 'spouse', '2017-09-09 20:50:02'),
(5, 'Spouse', 'Test', 'spouse', '2017-09-09 20:51:21'),
(6, 'Spouse', 'Test', 'spouse', '2017-09-09 20:54:46'),
(7, 'Spouse', 'Test', 'spouse', '2017-09-09 20:55:17'),
(8, 'Qu\'ote \"Test\"', '\"making\" s\'ure', 'spouse', '2017-09-09 20:57:21'),
(9, 'Qu\'ote \"Test\"', '\"making\" s\'ure', 'spouse', '2017-09-09 20:59:25'),
(10, 'Qu\'ote \"Test\"', '\"making\" s\'ure', 'spouse', '2017-09-09 21:00:30'),
(11, 'A\'ron', 'Weedalee', 'alumni', '2017-09-09 21:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `submission_data`
--

CREATE TABLE `submission_data` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  `submission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submission_data`
--

INSERT INTO `submission_data` (`id`, `name`, `value`, `submission`) VALUES
(1, 'response1', 'This', 1),
(2, 'response2', 'is', 1),
(3, 'response3', 'a', 1),
(4, 'response4', 'parent', 1),
(5, 'response5', 'form', 1),
(6, 'response6', 'test', 1),
(7, 'response1', 'This', 2),
(8, 'response2', 'is', 2),
(9, 'response3', 'a', 2),
(10, 'response4', 'test', 2),
(11, 'response5', 'of', 2),
(12, 'response6', 'the', 2),
(13, 'response7', 'alumni', 2),
(14, 'response8', 'form', 2),
(15, 'response1', 'This', 3),
(16, 'response2', 'is', 3),
(17, 'response3', 'a', 3),
(18, 'response4', 'spouse', 3),
(19, 'response5', 'test', 3),
(20, 'response1', 'This', 4),
(21, 'response1', 'This', 5),
(22, 'response1', '', 6),
(23, 'response2', '', 6),
(24, 'response3', '', 6),
(25, 'response4', '', 6),
(26, 'response5', '', 6),
(27, 'response1', 'This', 7),
(28, 'response2', 'Do \"quotes\" work', 7),
(29, 'response3', 'a', 7),
(30, 'response4', 'spouse', 7),
(31, 'response5', 'test', 7),
(32, 'response1', 'Th\'at \"Quotes\"', 8),
(33, 'response2', '\"are\" going t\'work', 8),
(34, 'response3', 'on \"every\" \'field\'', 8),
(35, 'response4', 'On \'This\' \"Form\"', 8),
(36, 'response5', 'Hope \"fully\" it\'s gonna', 8),
(37, 'response1', 'Th\'at \"Quotes\" @! îåaä ?', 9),
(38, 'response2', '\"are\" going t\'work', 9),
(39, 'response3', 'on \"every\" \'field\'', 9),
(40, 'response4', 'On \'This\' \"Form\"', 9),
(41, 'response5', 'Hope \"fully\" it\'s gonna', 9),
(42, 'response1', 'Th\'at \"Quotes\" @! îåaä ?', 10),
(43, 'response2', '\"are\" going t\'work', 10),
(44, 'response3', 'on \"every\" \'field\'', 10),
(45, 'response4', 'On \'This\' \"Form\"', 10),
(46, 'response5', 'Hope \"fully\" it\'s gonna', 10),
(47, 'response1', '\"something in quotes\"', 11),
(48, 'response2', 'Joe Beanface', 11),
(49, 'response3', 'cheesemaking', 11),
(50, 'response4', 'Cheese 101', 11),
(51, 'response5', 'farting cheese', 11),
(52, 'response6', 'swimming in cheese', 11),
(53, 'response7', 'Wisconsin', 11),
(54, 'response8', 'Cheese wrestling', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_submissions`
--
ALTER TABLE `form_submissions`
  ADD PRIMARY KEY (`submission_ID`);

--
-- Indexes for table `submission_data`
--
ALTER TABLE `submission_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_submissions`
--
ALTER TABLE `form_submissions`
  MODIFY `submission_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `submission_data`
--
ALTER TABLE `submission_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
