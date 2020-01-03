-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 09:49 AM
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
-- Database: `login`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser` (IN `user_id` INT(11))  BEGIN   
           DELETE FROM users WHERE id = user_id;  
           END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser` (IN `semester` VARCHAR(250), `firstName` VARCHAR(250), `lastName` VARCHAR(250), `audio` VARCHAR(250), `smartboards` VARCHAR(250), `ac` VARCHAR(250), `internet` VARCHAR(250))  BEGIN  
                INSERT INTO users(sem_s,first_name, last_name, audio,smart_boards,A_C,internet_fac) VALUES (semester,firstName, lastName,audio,smartboards,ac,internet);   
                END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectUser` ()  BEGIN  
      SELECT * FROM users ORDER BY id DESC;  
      END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser` (IN `user_id` INT(11), `semester` VARCHAR(250), `firstName` VARCHAR(250), `lastName` VARCHAR(250), `audio` VARCHAR(250), `smartboards` VARCHAR(250), `ac` VARCHAR(250), `internet` VARCHAR(250))  BEGIN   
                UPDATE users SET sem_s = semester,first_name = firstName, last_name = lastName, audio = audio, smart_boards = smartboards , A_C=ac, I_N=internet
                WHERE id = user_id;  
                END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `whereUser` (IN `user_id` INT(11))  BEGIN   
      SELECT * FROM users WHERE id = user_id;  
      END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `audi`
--

CREATE TABLE `audi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `faculty` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audi`
--

INSERT INTO `audi` (`id`, `title`, `color`, `start`, `end`, `faculty`, `description`) VALUES
(1, 'balumurugan project_class everyone should be present', '#008000', '2019-01-24 16:00:00', '2019-01-24 17:00:00', 'balumurugan', 'everyone should be present'),
(4, 'network security', '#FFD700', '2019-01-25 09:00:00', '2019-01-25 10:00:00', 'praveen k', 'compulsory all should attend'),
(7, 'aaaaaaa   --  aaaaaaaa - --  ccccccccccccccccc', '#008000', '2019-01-24 09:00:00', '2019-01-24 09:30:00', 'aaaaaaaa', 'ccccccccccccccccc'),
(8, 'ada   --  saif   --  aa', '', '2019-01-25 11:30:00', '2019-01-25 12:00:00', 'saif', 'aa'),
(14, 'CC--  arbaz ahmed   --  urgent', '#008000', '2019-02-13 10:00:00', '2019-02-13 11:00:00', 'arbaz ahmed', 'urgent'),
(15, 'ST   --  apsar   --  attend', '#FF8C00', '2019-02-13 11:00:00', '2019-02-13 12:00:00', 'apsar', 'attend'),
(16, 'NSM--  gowtham   --  urgent', '#000', '2019-02-13 12:00:00', '2019-02-13 13:00:00', 'gowtham', 'urgent'),
(17, 'ST(B3) / NS (B1)   --  aaa   --  urgent', '#FF0000', '2019-02-13 13:30:00', '2019-02-13 16:30:00', 'aaa', 'urgent'),
(18, 'CC   --  apsar   --  aaaa', '#008000', '2019-02-12 10:00:00', '2019-02-12 11:00:00', 'apsar', 'aaaa'),
(19, 'ST   --  arbaz ahmed   --  description', '#40E0D0', '2019-02-12 11:00:00', '2019-02-12 12:00:00', 'arbaz ahmed', 'aaaaa'),
(20, 'NSM   --  gowtham   --  description', '#000', '2019-02-12 12:00:00', '2019-02-12 13:00:00', 'gowtham', 'aaaaa'),
(21, 'ST(B2) / NS(B3)    --  ullas   --  description', '#FF0000', '2019-02-12 13:30:00', '2019-02-12 16:30:00', 'ullas', 'description'),
(22, 'NSM   --  arbaz ahmed   --  description', '#008000', '2019-02-11 10:00:00', '2019-02-11 11:00:00', 'arbaz ahmed', 'description'),
(23, 'ST   --  gowtham   --  description', '#40E0D0', '2019-02-11 11:00:00', '2019-02-11 12:00:00', 'gowtham', 'description'),
(24, 'CC   --  apsar   --  description', '#000', '2019-02-11 12:00:00', '2019-02-11 13:00:00', 'apsar', 'description'),
(26, 'ST(B1) / NSM(B2)   --  arbaz ahmed   --  description', '#008000', '2019-02-14 09:00:00', '2019-02-14 11:00:00', 'arbaz ahmed', 'description'),
(27, 'ST(B2) / NSM(B3)   --  gowtham   --  description', '#FF0000', '2019-02-14 11:00:00', '2019-02-14 13:00:00', 'gowtham', 'description'),
(28, 'CC   --  arbaz ahmed   --  description', '#008000', '2019-02-14 13:30:00', '2019-02-14 14:30:00', 'arbaz ahmed', 'description'),
(29, 'ST   --  apsar   --  description', '#40E0D0', '2019-02-14 14:30:00', '2019-02-14 15:30:00', 'apsar', 'description'),
(30, 'NSM   --  ullas   --  description', '#000', '2019-02-14 15:30:00', '2019-02-14 16:30:00', 'ullas', 'description'),
(31, 'CC   --  apsar   --  description', '#008000', '2019-02-15 07:30:00', '2019-02-15 08:30:00', 'apsar', 'description'),
(32, 'ST   --  arbaz ahmed   --  description', '#40E0D0', '2019-02-15 11:00:00', '2019-02-15 12:00:00', 'arbaz ahmed', 'description'),
(33, 'NSM   --  gowtham   --  description', '#000', '2019-02-15 12:00:00', '2019-02-15 13:00:00', 'gowtham', 'description'),
(35, 'project_class   --  jayanth   --  description', '#FF0000', '2019-02-16 10:00:00', '2019-02-16 13:00:00', 'jayanth', 'description'),
(36, 'PROJECT   --  jayanth   --  description', '#FF0000', '2019-02-16 13:30:00', '2019-02-16 15:30:00', 'jayanth', 'description'),
(39, 'sjp   --  apsar   --  zzzzzzzz', '#000', '2019-02-15 14:00:00', '2019-02-15 15:00:00', 'apsar', 'zzzzzzzz'),
(41, 'akshu   --  arbaz ahmed   --  yyyyyyyyyyyy', '', '2019-02-17 12:30:00', '2019-02-17 13:30:00', 'arbaz ahmed', 'yyyyyyyyyyyy'),
(42, 'ntwk   --  gowtham   --  00000000', '', '2019-02-17 13:30:00', '2019-02-17 15:00:00', 'gowtham', '00000000'),
(43, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(44, 'project_class   --  virat   --  111111111', '', '2019-02-17 15:00:00', '2019-02-17 16:30:00', 'virat', '111111111'),
(45, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(47, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(48, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(50, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(51, 'lappy', '#40E0D0', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(52, 'ada   --  aaa   --  aa', '#40E0D0', '2019-03-07 09:00:00', '2019-03-07 10:00:00', 'aaa', 'aa'),
(53, 'lappy', '#0071c5', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(54, 'cs   --  project_class   --  apsar   --  description', '#0071c5', '2019-04-04 08:00:00', '2019-04-04 09:00:00', 'apsar', 'description');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `faculty` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`, `faculty`, `description`) VALUES
(1, 'balumurugan project_class everyone should be present', '#008000', '2019-01-24 16:00:00', '2019-01-24 17:00:00', 'balumurugan', 'everyone should be present'),
(4, 'network security', '#FFD700', '2019-01-25 09:00:00', '2019-01-25 10:00:00', 'praveen k', 'compulsory all should attend'),
(7, 'aaaaaaa   --  aaaaaaaa - --  ccccccccccccccccc', '#008000', '2019-01-24 09:00:00', '2019-01-24 10:30:00', 'aaaaaaaa', 'ccccccccccccccccc'),
(8, 'ada   --  saif   --  aa', '', '2019-01-25 11:30:00', '2019-01-25 12:00:00', 'saif', 'aa'),
(14, 'CC--  arbaz ahmed   --  urgent', '#008000', '2019-02-13 10:00:00', '2019-02-13 11:00:00', 'arbaz ahmed', 'urgent'),
(15, 'ST   --  apsar   --  attend', '#FF8C00', '2019-02-13 11:00:00', '2019-02-13 12:00:00', 'apsar', 'attend'),
(16, 'NSM--  gowtham   --  urgent', '#000', '2019-02-13 12:00:00', '2019-02-13 13:00:00', 'gowtham', 'urgent'),
(17, 'ST(B3) / NS (B1)   --  aaa   --  urgent', '#FF0000', '2019-02-13 13:30:00', '2019-02-13 16:30:00', 'aaa', 'urgent'),
(18, 'CC   --  apsar   --  aaaa', '#008000', '2019-02-12 10:00:00', '2019-02-12 11:00:00', 'apsar', 'aaaa'),
(19, 'ST   --  arbaz ahmed   --  description', '#40E0D0', '2019-02-12 11:00:00', '2019-02-12 12:00:00', 'arbaz ahmed', 'aaaaa'),
(20, 'NSM   --  gowtham   --  description', '#000', '2019-02-12 12:00:00', '2019-02-12 13:00:00', 'gowtham', 'aaaaa'),
(21, 'ST(B2) / NS(B3)    --  ullas   --  description', '#FF0000', '2019-02-12 13:30:00', '2019-02-12 16:30:00', 'ullas', 'description'),
(22, 'NSM   --  arbaz ahmed   --  description', '#008000', '2019-02-11 10:00:00', '2019-02-11 11:00:00', 'arbaz ahmed', 'description'),
(23, 'ST   --  gowtham   --  description', '#40E0D0', '2019-02-11 11:00:00', '2019-02-11 12:00:00', 'gowtham', 'description'),
(24, 'CC   --  apsar   --  description', '#000', '2019-02-11 12:00:00', '2019-02-11 13:00:00', 'apsar', 'description'),
(26, 'ST(B1) / NSM(B2)   --  arbaz ahmed   --  description', '#008000', '2019-02-14 09:00:00', '2019-02-14 11:00:00', 'arbaz ahmed', 'description'),
(27, 'ST(B2) / NSM(B3)   --  gowtham   --  description', '#FF0000', '2019-02-14 11:00:00', '2019-02-14 13:00:00', 'gowtham', 'description'),
(28, 'CC   --  arbaz ahmed   --  description', '#008000', '2019-02-14 13:30:00', '2019-02-14 14:30:00', 'arbaz ahmed', 'description'),
(29, 'ST   --  apsar   --  description', '#40E0D0', '2019-02-14 14:30:00', '2019-02-14 15:30:00', 'apsar', 'description'),
(30, 'NSM   --  ullas   --  description', '#000', '2019-02-14 15:30:00', '2019-02-14 16:30:00', 'ullas', 'description'),
(31, 'CC   --  apsar   --  description', '#008000', '2019-02-15 07:30:00', '2019-02-15 08:30:00', 'apsar', 'description'),
(32, 'ST   --  arbaz ahmed   --  description', '#40E0D0', '2019-02-15 11:00:00', '2019-02-15 12:00:00', 'arbaz ahmed', 'description'),
(33, 'NSM   --  gowtham   --  description', '#000', '2019-02-15 12:00:00', '2019-02-15 13:00:00', 'gowtham', 'description'),
(35, 'project_class   --  jayanth   --  description', '#FF0000', '2019-02-16 10:00:00', '2019-02-16 13:00:00', 'jayanth', 'description'),
(36, 'PROJECT   --  jayanth   --  description', '#FF0000', '2019-02-16 13:30:00', '2019-02-16 15:30:00', 'jayanth', 'description'),
(39, 'sjp   --  apsar   --  zzzzzzzz', '#000', '2019-02-15 14:00:00', '2019-02-15 15:00:00', 'apsar', 'zzzzzzzz'),
(41, 'akshu   --  arbaz ahmed   --  yyyyyyyyyyyy', '', '2019-02-17 12:30:00', '2019-02-17 13:30:00', 'arbaz ahmed', 'yyyyyyyyyyyy'),
(42, 'ntwk   --  gowtham   --  00000000', '', '2019-02-17 13:30:00', '2019-02-17 15:00:00', 'gowtham', '00000000'),
(43, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(44, 'project_class   --  virat   --  111111111', '', '2019-02-17 15:00:00', '2019-02-17 16:30:00', 'virat', '111111111'),
(45, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(47, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(48, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(50, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(51, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(52, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(53, 'project_class   --  arbaz ahmed   --  come', '', '2019-03-09 10:00:00', '2019-03-09 11:00:00', 'arbaz ahmed', 'come'),
(54, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(55, 'project_class   --  arbaz ahmed   --  come', '', '2019-03-09 10:00:00', '2019-03-09 11:00:00', 'arbaz ahmed', 'come'),
(56, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(57, 'project_class   --  arbaz ahmed   --  come', '', '2019-03-09 10:00:00', '2019-03-09 11:00:00', 'arbaz ahmed', 'come'),
(58, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(59, 'project_class   --  arbaz ahmed   --  aaa', '#008000', '2019-03-16 09:00:00', '2019-03-16 10:00:00', 'arbaz ahmed', 'aaa'),
(60, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(61, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(62, 'aa   --  arbaz ahmed   --  des', '', '2019-03-19 08:00:00', '2019-03-19 09:00:00', 'arbaz ahmed', 'des'),
(63, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(64, 'aa   --  arbaz ahmed   --  des', '', '2019-03-19 12:00:00', '2019-03-19 16:30:00', 'arbaz ahmed', 'des'),
(65, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(66, 'project_class   --  basavaraju   --  description', '', '2019-03-23 14:00:00', '2019-03-23 18:00:00', 'basavaraju', 'description'),
(67, 'lappy', '#40E0D0', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(68, 'java   --  arbaz ahmed   --  description', '#40E0D0', '2019-03-29 08:00:00', '2019-03-29 09:00:00', 'arbaz ahmed', 'description'),
(69, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(70, 'project_class   --  basavaraju   --  urgent', '', '2019-01-21 11:00:00', '2019-01-21 13:30:00', 'basavaraju', 'urgent'),
(71, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(72, 'project_class   --  basavaraju   --  aqaa', '', '2019-04-03 08:00:00', '2019-04-03 09:00:00', 'basavaraju', 'aqaa'),
(73, 'lappy', '#FF8C00', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(74, 'hjg   --  basavaraju   --  hello', '#FF8C00', '2019-04-03 11:00:00', '2019-04-03 12:00:00', 'basavaraju', 'hello'),
(75, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(76, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(77, 'java   --  arbaz ahmed   --  hello', '#008000', '2019-04-11 07:00:00', '2019-04-11 08:00:00', 'arbaz ahmed', 'hello'),
(78, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(79, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(81, 'lappy', '#FF0000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(83, 'lappy', '', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(85, 'lappy', '#FF0000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(86, 'project_class   --  arbaz ahmed   --  urgent', '#FF0000', '2019-04-12 09:00:00', '2019-04-12 10:00:00', 'arbaz ahmed', 'urgent'),
(87, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(88, 'Arbaz   --  arbaz ahmed   --  asasa', '#008000', '2019-08-17 07:00:00', '2019-08-17 09:30:00', 'arbaz ahmed', 'asasa'),
(89, 'lappy', '#FFD700', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(90, 'yyyy   --  vvv   --  vvv', '#FFD700', '2019-08-17 11:00:00', '2019-08-17 13:30:00', 'vvv', 'vvv'),
(91, 'lappy', '#40E0D0', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(92, 'lappy', '#40E0D0', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(93, 'fff   --  jayanth   --  bmsce', '#40E0D0', '2019-09-26 06:00:00', '2019-09-26 09:30:00', 'jayanth', 'bmsce'),
(94, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(95, 'lappy', '#0071c5', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(96, 'hai   --  Kshitij   --  bye', '#0071c5', '2019-11-29 06:00:00', '2019-11-29 12:00:00', 'Kshitij', 'bye'),
(97, 'lappy', '#008000', '2019-02-17 09:00:00', '2019-02-17 10:00:00', '', ''),
(98, 'SPEED CONTROL AND BIDIRECTIONAL ROTATION CONTROL OF INDUCTION MOTOR   --  HOD   --  yaseen khan', '#008000', '2019-11-29 13:00:00', '2019-11-29 15:00:00', 'HOD', 'yaseen khan');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `email`, `password`) VALUES
('anitha', 'anitha12@gmail.com', '123456'),
('arbaz ahmed', 'arbazcs786@gmail.com', 'admin'),
('basavaraju', 'basava123@gmail.com', '9740846126'),
('hemanth', 'hemanthkumar007@gmail.com', 'hema'),
('Hemanth kumar', 'hemanthkumarvc@gmail.com', 'hemanth'),
('HOD', 'hodcs@gmail.com', 'cshod'),
('jayanth', 'jaypark@gmail.com', 'junaid'),
('junaid', 'junaid@gmail.com', 'junaid'),
('junaid', 'junaidcs@gmail.com', 'admin'),
('Kshitij', 'kshitijraman2001@gmail.com', '6362876810'),
('poojitha', 'poojitha@gmail.com ', '123456'),
('praveen Kumar', 'praveen34@gmail.com', '123456'),
('savitha', 'savitha@gmail.com', '123456'),
('sss', 'sss@gmail', 'sss'),
('thulase', 'thulase66@gmail.com', '654321'),
('vvv', 'vvv@gmail', 'vv'),
('yaseen', 'yaseen@gmail.com', 'aaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `room2`
--

CREATE TABLE `room2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `faculty` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room2`
--

INSERT INTO `room2` (`id`, `title`, `color`, `start`, `end`, `faculty`, `description`) VALUES
(1, 'balumurugan project_class everyone should be present', '#008000', '2019-01-24 16:00:00', '2019-01-24 17:00:00', 'balumurugan', 'everyone should be present'),
(4, 'network security', '#FFD700', '2019-01-25 09:00:00', '2019-01-25 10:00:00', 'praveen k', 'compulsory all should attend'),
(7, 'aaaaaaa   --  aaaaaaaa - --  ccccccccccccccccc', '#008000', '2019-01-24 09:00:00', '2019-01-24 09:30:00', 'aaaaaaaa', 'ccccccccccccccccc'),
(8, 'ada   --  saif   --  aa', '', '2019-01-25 11:30:00', '2019-01-25 12:00:00', 'saif', 'aa'),
(9, 'test   --  apsar   --  test', '#40E0D0', '2019-01-09 00:00:00', '2019-01-10 00:00:00', 'apsar', 'test'),
(10, 'vv   --  aaa   --  vv', '', '2019-01-27 08:30:00', '2019-01-27 11:00:00', 'aaa', 'vv'),
(11, 'test   --  gowtham   --  urgent', '#FF8C00', '2019-02-13 07:00:00', '2019-02-13 15:00:00', 'gowtham', 'urgent');

-- --------------------------------------------------------

--
-- Table structure for table `room3`
--

CREATE TABLE `room3` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `faculty` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room3`
--

INSERT INTO `room3` (`id`, `title`, `color`, `start`, `end`, `faculty`, `description`) VALUES
(1, 'balumurugan project_class everyone should be present', '#008000', '2019-01-24 16:00:00', '2019-01-24 17:00:00', 'balumurugan', 'everyone should be present'),
(4, 'network security', '#FFD700', '2019-01-25 09:00:00', '2019-01-25 10:00:00', 'praveen k', 'compulsory all should attend'),
(7, 'aaaaaaa   --  aaaaaaaa - --  ccccccccccccccccc', '#008000', '2019-01-24 09:00:00', '2019-01-24 09:30:00', 'aaaaaaaa', 'ccccccccccccccccc'),
(8, 'ada   --  saif   --  aa', '', '2019-01-25 11:30:00', '2019-01-25 12:00:00', 'saif', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(2, 0, 'user friendly', 'basava', '2019-04-12 04:25:54'),
(3, 0, 'HELLO THIS IS FROM ARBAZ AHMED\r\n', 'dhoni', '2019-08-16 15:51:32'),
(4, 0, 'zzzzzzz\r\n', 'zzzzz', '2019-08-16 18:50:29'),
(5, 4, 'yyyyzz', 'yyyyyzz', '2019-08-16 18:50:45'),
(6, 0, 'dddddd', 'dddddd', '2019-08-16 19:03:17'),
(7, 0, 'room1', 'room1', '2019-08-16 19:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `room` varchar(250) NOT NULL,
  `sem_s` varchar(250) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `audio` varchar(250) NOT NULL,
  `smart_boards` varchar(250) NOT NULL,
  `A_C` varchar(250) NOT NULL,
  `internet_fac` varchar(250) NOT NULL,
  `I_N` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `room`, `sem_s`, `first_name`, `last_name`, `audio`, `smart_boards`, `A_C`, `internet_fac`, `I_N`) VALUES
(61, '', '6', '60', 'YES', 'no', 'yes', 'no', 'no', ''),
(62, '', '6', '60', 'yes', 'no', 'yes', 'no', 'yes', ''),
(63, '', '1', '4', 'test', 'test', 'test', 'test', 'test', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audi`
--
ALTER TABLE `audi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `room2`
--
ALTER TABLE `room2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room3`
--
ALTER TABLE `room3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audi`
--
ALTER TABLE `audi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `room2`
--
ALTER TABLE `room2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room3`
--
ALTER TABLE `room3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
