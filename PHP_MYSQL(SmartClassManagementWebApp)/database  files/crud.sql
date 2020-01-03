-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 07:41 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser` (IN `user_id` INT(11))  BEGIN   
           DELETE FROM users WHERE id = user_id;  
           END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser` (IN `firstName` VARCHAR(250), `lastName` VARCHAR(250), `audio` VARCHAR(250), `smartboards` VARCHAR(250))  BEGIN  
                INSERT INTO users(first_name, last_name, audio,smart_boards) VALUES (firstName, lastName,audio,smartboards);   
                END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectUser` ()  BEGIN  
      SELECT * FROM users ORDER BY id DESC;  
      END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser` (IN `user_id` INT(11), `firstName` VARCHAR(250), `lastName` VARCHAR(250), `audio` VARCHAR(250), `smartboards` VARCHAR(250))  BEGIN   
                UPDATE users SET first_name = firstName, last_name = lastName, audio = audio, smart_boards = smartboards
                WHERE id = user_id;  
                END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `whereUser` (IN `user_id` INT(11))  BEGIN   
      SELECT * FROM users WHERE id = user_id;  
      END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `audio` varchar(250) NOT NULL,
  `smart_boards` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `audio`, `smart_boards`) VALUES
(24, 'aaaa', 'sss', '', ''),
(29, 'qqq`q`', 'qqq', '', ''),
(26, 'BBB', 'BBBBB', '', ''),
(27, 'aaaaa', 'aaaaa', 'aaaaa', ''),
(30, 'nn', 'nn', '', ''),
(31, 'bbb', 'bbb', '', ''),
(36, 'hahaha', 'hhqh', 'hhhhhhhhhhs', 'ssssddd'),
(33, 'vvv', 'vv', 'vv', ''),
(38, 'asas', 'sasa', 'sasa', 'aasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
