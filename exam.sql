-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 08:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `c_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`c_id`, `course_name`, `course_status`) VALUES
(1, 'HTML', 1),
(2, 'CSS', 1),
(3, 'PHP', 1),
(4, 'C LANGUAGE', 1),
(5, 'C++', 1),
(6, 'JAVA', 1),
(7, 'Javascript', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_report`
--

CREATE TABLE `exam_report` (
  `id` int(11) NOT NULL,
  `ans` text NOT NULL,
  `t_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `check_ans` text NOT NULL,
  `right_ans` int(11) NOT NULL,
  `wrong_ans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_report`
--

INSERT INTO `exam_report` (`id`, `ans`, `t_id`, `s_id`, `check_ans`, `right_ans`, `wrong_ans`) VALUES
(1, '[\"a-1\",\"b-2\",\"c-3\",\"d-4\",\"b-5\",\"c-6\",\"b-7\"]', 7, 3, '{\"1\":\"W\",\"2\":\"R\",\"3\":\"W\",\"4\":\"R\",\"5\":\"W\",\"6\":\"W\",\"7\":\"R\"}', 3, 4),
(3, '[\"c-1\",\"b-2\",\"b-3\",\"d-4\",\"b-5\",\"a-6\",\"d-7\"]', 7, 5, '{\"1\":\"R\",\"2\":\"R\",\"3\":\"R\",\"4\":\"R\",\"5\":\"W\",\"6\":\"W\",\"7\":\"W\"}', 4, 3),
(4, '[\"c-1\",\"b-2\",\"b-3\",\"d-4\",\"d-5\",\"d-6\",\"a-7\"]', 7, 1, '{\"1\":\"R\",\"2\":\"R\",\"3\":\"R\",\"4\":\"R\",\"5\":\"R\",\"6\":\"R\",\"7\":\"R\"}', 7, 0),
(5, '[\"a-1\",\"b-2\",\"c-3\",\"d-4\",\"c-5\",\"c-6\",\"b-7\"]', 7, 1, '{\"1\":\"W\",\"2\":\"R\",\"3\":\"W\",\"4\":\"R\",\"5\":\"W\",\"6\":\"W\",\"7\":\"R\"}', 3, 4),
(7, '[\"a-1\",\"a-2\",\"b-3\",\"c-4\",\"b-5\",\"b-6\",\"a-7\"]', 7, 1, '{\"1\":\"W\",\"2\":\"W\",\"3\":\"R\",\"4\":\"W\",\"5\":\"W\",\"6\":\"W\",\"7\":\"W\"}', 1, 6),
(8, '[\"a-8\"]', 3, 1, '{\"8\":\"W\"}', 0, 1),
(9, '[\"b-8\"]', 3, 1, '{\"8\":\"W\"}', 0, 1),
(10, '[\"c-8\"]', 3, 1, '{\"8\":\"W\"}', 0, 1),
(11, '[\"d-8\"]', 3, 1, '{\"8\":\"R\"}', 1, 0),
(12, '[\"a-1\",\"a-2\",\"b-3\",\"c-4\",\"b-5\",\"d-6\",\"a-7\"]', 7, 1, '{\"1\":\"R\",\"2\":\"R\",\"3\":\"R\",\"4\":\"R\",\"5\":\"R\",\"6\":\"R\",\"7\":\"R\"}', 2, 5),
(13, '[\"a-8\"]', 3, 1, '{\"8\":\"W\"}', 0, 1),
(14, '[\"a-1\",\"b-2\",\"c-3\",\"d-4\",\"b-5\",\"a-6\",\"b-7\"]', 7, 1, '{\"1\":\"W\",\"2\":\"R\",\"3\":\"W\",\"4\":\"R\",\"5\":\"W\",\"6\":\"W\",\"7\":\"R\"}', 3, 4),
(15, '[\"b-1\",\"c-2\",\"d-3\",\"b-4\",\"c-5\",\"b-6\",\"b-7\"]', 7, 1, '{\"1\":\"W\",\"2\":\"W\",\"3\":\"W\",\"4\":\"W\",\"5\":\"W\",\"6\":\"W\",\"7\":\"R\"}', 1, 6),
(16, '[\"a-1\",\"b-2\",\"c-3\",\"a-4\",\"c-5\",\"a-6\",\"b-7\"]', 7, 1, '{\"1\":\"W\",\"2\":\"R\",\"3\":\"W\",\"4\":\"W\",\"5\":\"W\",\"6\":\"W\",\"7\":\"R\"}', 2, 5),
(17, '[\"b-9\"]', 9, 1, '{\"9\":\"R\"}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `options` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `course_id`, `topic_id`, `question`, `options`, `ans`) VALUES
(1, 4, 7, 'What is the purpose of conditional statements in C programming?', 'To perform mathematical calculations,To declare variables,To make decisions based on certain conditions,To execute code repeatedly', 'c'),
(2, 4, 7, 'Which keyword is used to define a conditional statement in C?', ' switch,if,while,for', 'b'),
(3, 4, 7, 'Which one is the syntax of an if statement along with its body in C', 'if (condition), if (condition) { },if condition,if { }', 'b'),
(4, 4, 7, 'Which is the syntax of an if-else statement in C?', ' if { } else { },if condition else,if (condition) { },if (condition) { } else { }', 'd'),
(5, 4, 7, 'Which statement is used check multiple conditions in C?', 'if-else,if(condition),switch case,if-else ladder', 'd'),
(6, 4, 7, 'Which one is the correct syntax for an if-else ladder in C?', 'if (condition) { } else if (condition) { },if (condition) { } else { } elseif (condition) { },if (condition) { } elseif (condition) { } else { },if (condition) { } else if (condition) { } else { }', 'd'),
(7, 4, 7, 'Which statement handle multiple conditions in C?', 'if-else ladder,switch case,if,if-else', 'b'),
(8, 2, 3, 'how many times of loop ?', 'nested if,nested if,nested if,nested if', 'd'),
(9, 4, 9, 'do while loop is', 'entry control loop,exit control loop,infinity loop,none of above', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `topic_tbl`
--

CREATE TABLE `topic_tbl` (
  `t_id` int(11) NOT NULL,
  `topic_name` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `topic_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic_tbl`
--

INSERT INTO `topic_tbl` (`t_id`, `topic_name`, `course_id`, `topic_status`) VALUES
(2, 'table layout', 1, 1),
(3, 'header', 2, 1),
(7, 'control statement', 4, 1),
(8, 'while loop', 4, 1),
(9, 'do while loop', 4, 1),
(11, 'for loop', 4, 1),
(12, 'array', 4, 1),
(13, 'string', 4, 1),
(14, 'udf', 4, 1),
(15, 'class object', 5, 1),
(16, 'inheritance', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `exam_id` text NOT NULL,
  `exam_attend` text NOT NULL,
  `running_exam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `name`, `email`, `password`, `course_id`, `status`, `exam_id`, `exam_attend`, `running_exam`) VALUES
(1, 'ravi mukeshbhai jasoliya', 'jasoliyaravi@gmail.com', '123', 4, 0, '', ',7,3,9', ''),
(2, 'jaydip thummar', 'admin@gmail.com', 'admin', 4, 0, '', ',7,8', ''),
(3, 'talaviya hemali nitinbhai', 'hemalitalaviya2@gmail.com', '123', 4, 0, '', ',7', ''),
(4, 'Jay Rameshbhai Koladiya', 'development.pdf@gmail.com', '123', 4, 0, '', ',7', ''),
(5, 'rk kr rkr', 'rk@gmail.com', '123', 4, 0, '', ',7', ''),
(6, 'Mishal D Amipara', 'cdmi@gmail.com', '123123', 4, 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `exam_report`
--
ALTER TABLE `exam_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `topic_tbl`
--
ALTER TABLE `topic_tbl`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_report`
--
ALTER TABLE `exam_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `topic_tbl`
--
ALTER TABLE `topic_tbl`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
