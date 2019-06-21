-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2019 at 06:29 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `email`, `password`, `image`) VALUES
(1, 'shoryagoel123', 'shorya goel', 'shorya.designoweb@gmail.com', '1234', 'tm.png');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
CREATE TABLE IF NOT EXISTS `designation` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`) VALUES
(1, 'PHP Developer'),
(2, 'Android Developer'),
(9, 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `designation` text NOT NULL,
  `dob` date NOT NULL,
  `city` text NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `temporary_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `block` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `gender`, `designation`, `dob`, `city`, `permanent_address`, `temporary_address`, `email`, `password`, `block`) VALUES
(1, 'harshit', 'Male', '1', '1998-02-12', 'Noida', 'Noida', 'Nanital', 'harshit@gmail.com', 'harshit', b'0'),
(2, 'mohit', 'Male', '1', '1994-12-12', 'Noida', 'Noida', 'Noida', 'mohit@gmail.com', 'mohit', b'0'),
(4, 'Shubham', 'Male', '9', '2019-06-08', 'Noida', 'Noida', 'Noida', 'shubham@gmail.com', 'shubham', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `body` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `body`, `create_at`) VALUES
(1, 'Fun Friday Meeting', 'meeting is scheduled on 15th june 2019', '2019-06-12 04:05:00'),
(2, 'Project Submission', 'Deadline for project submission is 17th june 2019.', '2019-06-12 05:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `to` int(100) NOT NULL,
  `by` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `subject`, `description`, `to`, `by`, `date`) VALUES
(1, 'Leave', 'sir, i want a leave on 22nd june', 1, 2, '2019-06-13 09:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `assigned_to` int(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `assigned_by` int(255) NOT NULL,
  `progress` varchar(255) NOT NULL DEFAULT 'In Progress',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `assigned_to`, `priority`, `assigned_by`, `progress`, `date`) VALUES
(1, 'Database Connectivity', 'Connect to Employee table and enter employee details and send it to admin...', 1, 'High', 2, 'Completed', '2019-06-10 18:30:00'),
(10, 'Mohit Test', 'Demo', 2, 'Low', 1, 'Completed', '2019-06-13 09:47:17'),
(9, 'TEst', 'Demo', 1, 'Medium', 2, 'Completed', '2019-06-13 09:46:29'),
(8, 'Design', 'Template design for Birthday...', 2, 'Low', 1, 'Completed', '2019-06-12 18:30:00'),
(11, 'Shubham', 'Test', 2, 'High', 4, 'Completed', '2019-06-17 07:04:44'),
(12, 'Demo', 'test', 4, 'Medium', 2, 'Completed', '2019-06-17 07:06:14'),
(13, 'Mohit ', 'Test', 2, 'High', 4, 'In Progress', '2019-06-17 12:23:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
