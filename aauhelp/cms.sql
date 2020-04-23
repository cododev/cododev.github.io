-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2020 at 10:23 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(21) NOT NULL,
  `password` varchar(21) NOT NULL,
  `updationDate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin', '39-12-2019 02:18:16'),
(2, 'admin2', 'admin', '29-11-2019 02:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'KoFA', 'This categories is all about students portal', '2019-12-04 07:33:33', NULL),
(8, 'Examinations', 'Describes exam starting and ending dates\r\n', '2019-12-04 09:19:09', NULL),
(9, 'Resumption', 'Indicates when school resumes', '2019-12-04 09:20:20', NULL),
(10, 'Admission', 'This describes the entry mode of Ambrose Alli University', '2019-12-10 08:55:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(9, 32, 'in process', 'ok', '2019-12-04 07:53:55'),
(10, 35, 'in process', 'The tuition fee for computer science is #124,250.\r\n', '2019-12-04 09:00:20'),
(11, 39, 'in process', 'Hello Eva!\r\nExam starts 12th Dec 2019.\r\nThank you.', '2019-12-04 09:34:51'),
(12, 38, 'in process', 'School resumes activity 15 Jan 2019', '2019-12-04 09:37:09'),
(13, 3, 'in process', 'okay', '2019-12-05 15:21:47'),
(14, 5, 'in process', 'Dear Codo!\r\nWe will resolve this problem shortyly', '2019-12-05 15:24:43'),
(15, 3, 'closed', 'Now you can log in', '2019-12-05 16:29:38'),
(16, 5, 'closed', 'Thank you', '2019-12-06 08:00:47'),
(17, 7, 'in process', 'We have received your request. We will process it.\r\nThank you', '2019-12-06 20:12:25'),
(18, 7, 'closed', 'Dear Emman\r\nYour password has been reset as EMMY\r\nNow you can log in', '2019-12-06 20:15:46'),
(19, 10, 'in process', 'Hi Eva!\nThank you for writing to us. We have received you complaint. We will work on it shortly.', '2019-12-06 21:29:25'),
(20, 10, 'closed', 'Good news Eva!\r\nYour the password to your ID E123 has been reset to Eva222. Now you can log in.\r\n\r\nThank you for using AAU HELPDESK!\r\nAny other complain? do well to lodge it.', '2019-12-06 21:35:15'),
(21, 11, 'in process', 'Hello Coraggio!\r\nWe have received your complaint. We will process it immediately.', '2019-12-07 02:25:34'),
(22, 12, 'in process', 'Thank you for contacting us. We will resolve your complaint soon!', '2019-12-09 21:59:17'),
(23, 12, 'closed', 'Hello! Your password has been reset to dav222', '2019-12-09 22:00:55'),
(24, 13, 'in process', 'Thank you for contacting us.\r\nWe have received your complain, we will work on it shortly.', '2019-12-10 08:53:15'),
(25, 14, 'in process', 'Hi Davison! we have received your request. We will work or it shortly.', '2019-12-11 13:05:54'),
(26, 14, 'closed', 'Sorry for the inconveniences, now you can make your payment.\r\nThank you', '2019-12-11 13:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'FCT'),
(16, 'Gombe'),
(17, 'Imo'),
(18, 'Jigawa'),
(19, 'Kaduna'),
(20, 'Kano'),
(21, 'Katsina'),
(22, 'Kebbi'),
(23, 'Kogi'),
(24, 'Kwara'),
(25, 'Lagos'),
(26, 'Nasarawa'),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau'),
(33, 'Rivers'),
(34, 'Sokoto'),
(35, 'Taraba'),
(36, 'Yobe'),
(37, 'Zamfara');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online SHopping', '2017-03-28 07:11:07', ''),
(2, 1, 'E-wllaet', '2017-03-28 07:11:20', ''),
(3, 3, 'Status', '2019-12-01 00:40:16', NULL),
(4, 3, 'Clearance Requested', '2019-12-01 00:40:31', NULL),
(5, 7, 'Unable to login', '2019-12-04 07:33:48', NULL),
(6, 7, 'Payment errors', '2019-12-04 07:34:17', NULL),
(7, 7, 'Course form issues', '2019-12-04 07:35:45', NULL),
(8, 4, 'Undergraduate (FULL TIME)', '2019-12-04 07:37:51', NULL),
(9, 4, 'Diploma', '2019-12-04 07:38:01', NULL),
(10, 4, 'Direct Entry', '2019-12-04 07:38:10', NULL),
(11, 3, 'Requirements', '2019-12-04 07:38:24', NULL),
(13, 8, 'Starting date', '2019-12-04 09:19:43', NULL),
(14, 8, 'Ending date', '2019-12-04 09:19:54', NULL),
(15, 9, 'Date', '2019-12-04 09:20:32', NULL),
(16, 9, 'Date', '2019-12-04 09:22:25', NULL),
(17, 10, 'Requirements', '2019-12-10 08:56:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintDetails`, `complaintFile`, `status`, `lastUpdationDate`) VALUES
(3, 8, 7, 'Course form issues', 'wwwwwwwwww', '', 'closed', '2019-12-05 16:29:38'),
(5, 14, 7, 'Unable to login', 'Am unable to log in my portal.\r\nMy ID is w54', '', 'closed', '2019-12-06 21:13:02'),
(7, 12, 7, 'Unable to login', 'Am unable to log in', '', 'closed', '2019-12-06 20:15:46'),
(8, 12, 7, 'Payment errors', 'Help out', '', NULL, '0000-00-00 00:00:00'),
(9, 14, 9, 'Date', 'When sefhsrfhsoiruf', '', NULL, '0000-00-00 00:00:00'),
(10, 9, 7, 'Unable to login', 'Hello, am unable to login in\r\nMy ID is E123.', '', 'closed', '2019-12-06 21:35:15'),
(11, 10, 7, 'Unable to login', 'Hello! My name is Coraggio. \r\nAm having issues trying to access my Portal.\r\nMy ID is E10000.', '', 'in process', '2019-12-07 02:25:34'),
(12, 8, 7, 'Unable to login', 'Hello! MY name is Davison. Am unable to login to my portal. My ID is E10000.', '', 'closed', '2019-12-09 22:00:55'),
(13, 8, 7, 'Course form issues', 'Hello, I have paid my tuition fee but am unable to register my courses. \r\nMy ID is E2222.', '', 'in process', '2019-12-10 08:53:15'),
(14, 8, 7, 'Payment errors', 'Am unable to book my accommodation. My ID is E4444 ', '', 'closed', '2019-12-11 13:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(35, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 15:04:10', '', 1),
(38, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 15:06:55', '', 1),
(39, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 15:26:14', '', 1),
(42, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 15:58:29', '29-11-2019 09:29:20 PM', 1),
(43, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 15:59:26', '29-11-2019 09:35:56 PM', 1),
(44, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 16:06:04', '29-11-2019 09:49:29 PM', 1),
(46, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-29 16:21:16', '', 1),
(51, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-01 00:12:04', '01-12-2019 05:51:09 AM', 1),
(52, 5, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-01 00:22:37', '', 1),
(53, 0, 'coraggiolk@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-01 14:34:43', '', 0),
(54, 0, 'coraggiokjhff@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-01 14:35:12', '', 0),
(61, 0, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:18:27', '', 0),
(64, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:26:14', '03-12-2019 08:01:24 PM', 1),
(65, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:33:42', '03-12-2019 08:03:46 PM', 1),
(66, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:34:56', '03-12-2019 08:04:59 PM', 1),
(67, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:35:07', '03-12-2019 08:05:11 PM', 1),
(68, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:45:36', '03-12-2019 08:15:40 PM', 1),
(69, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 14:49:29', '03-12-2019 08:19:32 PM', 1),
(70, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 15:02:51', '03-12-2019 08:32:56 PM', 1),
(71, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 19:43:41', '', 1),
(72, 0, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 19:44:52', '', 0),
(73, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 19:44:59', '04-12-2019 01:15:49 AM', 1),
(74, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 19:46:05', '04-12-2019 01:16:10 AM', 1),
(75, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 22:02:49', '04-12-2019 03:40:14 AM', 1),
(76, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-03 22:11:43', '04-12-2019 01:11:58 PM', 1),
(77, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 07:42:14', '04-12-2019 01:47:04 PM', 1),
(78, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 08:17:11', '04-12-2019 01:47:23 PM', 1),
(79, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 08:17:34', '', 1),
(80, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 08:38:14', '', 1),
(81, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 08:39:18', '', 1),
(82, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 08:42:42', '', 1),
(83, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:10:45', '', 1),
(84, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:24:05', '04-12-2019 02:59:07 PM', 1),
(85, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:29:15', '04-12-2019 02:59:19 PM', 1),
(86, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:29:40', '04-12-2019 03:02:22 PM', 1),
(87, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:32:31', '04-12-2019 03:07:20 PM', 1),
(88, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:37:27', '', 1),
(89, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:38:01', '', 1),
(90, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 09:39:21', '', 1),
(91, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:17:25', '05-12-2019 12:53:03 AM', 1),
(92, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:23:12', '05-12-2019 12:54:27 AM', 1),
(93, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:24:36', '05-12-2019 12:57:24 AM', 1),
(94, 7, 'Peter@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:27:34', '05-12-2019 01:00:56 AM', 1),
(95, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:32:20', '05-12-2019 01:25:14 AM', 1),
(96, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 19:56:39', '05-12-2019 01:38:40 AM', 1),
(97, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 20:08:57', '05-12-2019 02:06:48 AM', 1),
(98, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 20:37:47', '05-12-2019 02:22:17 AM', 1),
(99, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-04 20:52:28', '', 1),
(100, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:02:23', '05-12-2019 01:38:16 PM', 1),
(101, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:08:32', '05-12-2019 01:40:34 PM', 1),
(102, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:10:46', '', 1),
(103, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:18:11', '', 1),
(104, 0, '', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:24:59', '', 0),
(105, 0, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:25:29', '', 0),
(106, 0, '', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:33:36', '', 0),
(107, 0, '', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:34:44', '05-12-2019 08:14:52 PM', 0),
(108, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:38:32', '05-12-2019 02:12:30 PM', 1),
(109, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 08:42:48', '05-12-2019 04:19:14 PM', 1),
(110, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 10:49:24', '05-12-2019 04:25:38 PM', 1),
(111, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 10:55:48', '', 1),
(112, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 12:51:42', '05-12-2019 07:06:59 PM', 1),
(113, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 13:37:13', '05-12-2019 07:10:24 PM', 1),
(114, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 13:40:36', '05-12-2019 07:18:54 PM', 1),
(115, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 13:49:03', '05-12-2019 07:23:05 PM', 1),
(116, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 13:53:15', '', 1),
(117, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 14:45:05', '05-12-2019 08:29:28 PM', 1),
(118, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 14:59:37', '', 1),
(119, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 15:02:28', '', 1),
(120, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 15:09:26', '05-12-2019 08:42:43 PM', 1),
(121, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 15:16:38', '05-12-2019 08:52:56 PM', 1),
(122, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 15:23:05', '05-12-2019 09:58:05 PM', 1),
(123, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-05 16:28:13', '', 1),
(124, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 07:59:29', '06-12-2019 01:34:18 PM', 1),
(125, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 08:04:53', '06-12-2019 02:49:40 PM', 1),
(126, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 09:19:55', '06-12-2019 02:59:40 PM', 1),
(127, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 09:29:52', '', 1),
(128, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 20:07:24', '', 1),
(129, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 20:08:43', '', 1),
(130, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 20:10:02', '', 1),
(131, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 20:30:42', '', 1),
(132, 12, 'emma@me.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 20:30:43', '07-12-2019 02:41:54 AM', 1),
(133, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 21:12:24', '', 1),
(134, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 21:12:25', '', 1),
(135, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 21:12:26', '07-12-2019 02:43:58 AM', 1),
(136, 9, 'eva@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-06 21:23:11', '07-12-2019 03:05:58 AM', 1),
(137, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-07 01:36:29', '07-12-2019 08:01:12 AM', 1),
(138, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-07 02:31:23', '07-12-2019 08:01:26 AM', 1),
(139, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-07 08:55:09', '', 1),
(140, 10, 'coraggio@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-07 09:49:36', '07-12-2019 03:22:53 PM', 1),
(141, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-07 14:11:00', '', 1),
(142, 14, 'codo@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-09 06:55:37', '09-12-2019 12:53:19 PM', 1),
(143, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-09 21:53:21', '', 1),
(144, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-10 08:48:43', '', 1),
(145, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-10 10:43:57', '', 1),
(146, 8, 'davison@aauekpoma.edu.ng', '127.0.0.1\0\0\0\0\0\0\0', '2019-12-11 13:01:20', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `updationDate`, `status`) VALUES
(8, 'Davison', 'davison@aauekpoma.edu.ng', 'davison', 8074387880, '15 Peter Imemesi, Trinity Estate, Satellite town.', 'Lagos', 'Nigeria', 0, 'bc9306e7398ee4cf30a85dd6bc0989eb.jpg', '2019-12-03 22:16:28', 1),
(9, 'Eva', 'eva@aauekpoma.edu.ng', 'eva', 8055178250, 'Ekpoma', 'Edo', 'Nigeria', 0, 'd6c76ad032ed23a7dc48591dc04e8fa9.png', '2019-12-04 09:25:31', 1),
(10, 'Coraggio', 'coraggio@gmail.com', 'coraggio', 8101538420, 'No 15, PH', 'Rivers', 'Nigeria', 0, '3ee0a9c7a02cf66d3292695ca8de0597.jpg', '2019-12-07 01:46:22', 1),
(11, 'Ose', 'ose@gmail.com', 'ose', 8147528211, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(12, 'emma', 'emma@me.com', 'emma', 7045144984, 'Obaseki lane', 'Edo', 'Nigeria', 0, NULL, '2019-12-06 09:33:08', 1),
(14, 'codo', 'codo@gmail.com', 'codo', 8179865433, NULL, NULL, NULL, NULL, 'bc9306e7398ee4cf30a85dd6bc0989eb.jpg', '2019-12-05 08:40:38', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
