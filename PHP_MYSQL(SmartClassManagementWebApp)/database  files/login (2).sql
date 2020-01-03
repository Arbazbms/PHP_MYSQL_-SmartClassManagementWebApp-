-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 07:42 PM
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
(7, 'aaaaaaa   --  aaaaaaaa - --  ccccccccccccccccc', '#008000', '2019-01-24 09:00:00', '2019-01-24 09:30:00', 'aaaaaaaa', 'ccccccccccccccccc'),
(8, 'ada   --  saif   --  aa', '', '2019-01-25 11:30:00', '2019-01-25 12:00:00', 'saif', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_code`, `item_description`, `item_price`) VALUES
(1, 'Grease', 'HP38AST', 'General purpose Grease', '50'),
(2, 'Adhesive Epoxy', 'AS38DM33', 'Sealing epoxy', '20'),
(3, 'Connector 2 Way', 'PH848383', 'To be used for power supply connection in ABB Molding Machine', '500'),
(4, 'Laser Sensor', 'D383', 'Laser sensor for cutting machine', '10'),
(5, 'Power Supply 24V', 'D098', '24 Volt power supply for meter unit packing dept', '5'),
(6, 'V Belt 4', 'S34', 'V Belt for motor coupling drive used in milling machine, cutting machine, vibrator, seprator', '30'),
(7, 'Pressure Sensor', 'P38AST-3938B', 'Pressure sensor 4-20mA unit for storage tanks', '6'),
(8, 'LED Light Bulb', 'L24V3', '\n  LED ights', '100'),
(9, 'Item 1', 'Code1', 'Description1', '10'),
(10, 'Item 2', 'Code 2', 'Description 2', '20'),
(11, 'Item 3Â ', 'Code 3Â ', 'Description 3Â ', '30'),
(12, 'aaa', 'aa', 'a', 'aa'),
(13, 'fg', 'dfg', 'dgdfgdg', 'dgdfg');

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
('aaa', 'aaa@gmail.com', '123123'),
('apsar', 'apsarcs@gmail.com', '963852741'),
('arbaz ahmed', 'arbazcs786@gmail.com', 'admin'),
('gowtham', 'gowthamsubramani30.gk@gmail.com', '12345678'),
('jayanth', 'jayanth@gmail.com', 'admin'),
('junaid', 'junaid@gmail.com', 'junaid'),
('madiha', 'madiha11@gmail.com', '123456'),
('madiha', 'madiha21@gmail.com', '123'),
('saif', 'saif786@gmail.com', '12345'),
('ullas', 'ullas@gmail.com', 'ullu'),
('vijay', 'vijay@gmail.com', '123456'),
('virat', 'virat01@gmail.com', '789456');

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
(10, 'vv   --  aaa   --  vv', '', '2019-01-27 08:30:00', '2019-01-27 11:00:00', 'aaa', 'vv');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room2`
--
ALTER TABLE `room2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room3`
--
ALTER TABLE `room3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
