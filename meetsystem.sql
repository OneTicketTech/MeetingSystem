-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2015 at 02:33 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `meetsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent`
--

CREATE TABLE `absent` (
  `abuid` int(11) NOT NULL,
  `abalnum` int(11) NOT NULL,
  `abmonth` int(11) NOT NULL,
  `abltnum` int(11) NOT NULL,
  `abatnum` int(11) NOT NULL,
  `ababnum` int(11) NOT NULL,
  `ablvnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absent`
--

INSERT INTO `absent` (`abuid`, `abalnum`, `abmonth`, `abltnum`, `abatnum`, `ababnum`, `ablvnum`) VALUES
(1, 2, 10, 0, 0, 0, 0),
(2, 5, 9, 0, 0, 0, 0),
(3, 5, 10, 0, 0, 0, 0),
(1, 6, 6, 0, 0, 0, 0),
(5, 10, 10, 0, 0, 0, 0),
(5, 10, 10, 0, 0, 0, 0),
(6, 6, 10, 0, 0, 0, 0),
(7, 15, 10, 0, 0, 0, 0),
(8, 3, 10, 0, 0, 0, 0),
(9, 1, 10, 0, 0, 0, 0),
(10, 5, 10, 0, 0, 0, 0),
(2, 10, 12, 1, 12, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
`id` int(11) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `pwd`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
`aid` int(11) NOT NULL,
  `aname` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`aid`, `aname`) VALUES
(1, '开发部'),
(2, '财务部');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
`eid` int(11) NOT NULL,
  `euid` int(11) NOT NULL,
  `ebt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `eet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `etype` int(11) NOT NULL COMMENT '外出等类别',
  `emanage` int(11) NOT NULL COMMENT '高管',
  `econtent` varchar(140) NOT NULL,
  `eremind` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `euid`, `ebt`, `eet`, `etype`, `emanage`, `econtent`, `eremind`) VALUES
(1, 1, '2015-12-08 16:57:13', '2015-12-09 03:00:00', 0, 0, '', 0),
(2, 1, '2015-12-08 16:58:13', '2015-12-09 03:00:00', 0, 0, '', 0),
(3, 4, '2015-12-09 16:18:01', '2015-12-09 03:00:00', 1, 1, '', 0),
(4, 1, '2015-12-09 16:57:00', '2015-12-09 16:57:00', 0, 1, 'asfdjsa;lf', 30);

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
`mid` int(11) NOT NULL,
  `muid` int(11) NOT NULL COMMENT 'creater',
  `mplanbt` timestamp NULL DEFAULT NULL,
  `mplanet` timestamp NULL DEFAULT NULL,
  `mactbt` timestamp NULL DEFAULT NULL,
  `mactet` timestamp NULL DEFAULT NULL,
  `mrid` int(11) NOT NULL,
  `mremind` int(11) NOT NULL,
  `mchecktype` int(11) NOT NULL COMMENT '0 = location 1 = qrcode',
  `mmembernum` int(11) NOT NULL,
  `mconfirm` int(11) NOT NULL COMMENT '高层=1',
  `mattach` mediumtext NOT NULL,
  `mstate` int(11) NOT NULL COMMENT 'draft = 0 发布=1',
  `mcreatet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mpass` int(11) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mscore` int(11) DEFAULT NULL,
  `mfilename` varchar(30) NOT NULL,
  `mfiletime` timestamp NULL DEFAULT NULL,
  `mapartment` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`mid`, `muid`, `mplanbt`, `mplanet`, `mactbt`, `mactet`, `mrid`, `mremind`, `mchecktype`, `mmembernum`, `mconfirm`, `mattach`, `mstate`, `mcreatet`, `mpass`, `mname`, `mscore`, `mfilename`, `mfiletime`, `mapartment`) VALUES
(1, 1, '2015-10-10 02:10:10', '2015-10-10 02:10:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 20, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, 'test', NULL, '', NULL, 0),
(2, 2, '2015-10-10 02:10:10', '2015-10-10 02:10:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 20, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test2', NULL, '', NULL, 0),
(3, 2, '2015-10-11 02:10:10', '2015-10-11 02:10:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 20, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test3', NULL, '', NULL, 0),
(4, 2, '2015-10-11 02:10:10', '2015-10-11 02:10:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 20, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test3', NULL, '', NULL, 0),
(5, 1, '2015-12-02 00:00:00', '2015-12-03 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 30, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, 'haha', NULL, '', NULL, 0),
(6, 1, '2015-12-02 00:00:00', '2015-12-03 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 30, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, 'haha', NULL, '', NULL, 0),
(7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 0, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '', NULL, '', NULL, 0),
(8, 1, '2014-09-09 02:10:10', '2014-10-10 02:10:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, '', NULL, '', NULL, 0),
(9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 19, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, '', NULL, '', NULL, 0),
(10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 21, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '', 10, '', NULL, 0),
(11, 1, '2015-12-24 01:03:00', '2015-12-07 15:00:00', '0000-00-00 00:00:00', '2015-12-15 15:53:14', 1, 33, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '123123', 70, '', '2015-12-06 07:00:00', 1),
(12, 3, '2015-12-23 23:00:00', '2015-12-31 01:00:00', '0000-00-00 00:00:00', '2015-12-13 07:23:27', 2, 19, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'douwo', 70, '', NULL, 0),
(13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '', NULL, '', NULL, 0),
(14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 20, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '', NULL, '', NULL, 0),
(15, 1, '2015-10-10 02:10:10', '0000-00-00 00:00:00', NULL, NULL, 2, 30, 0, 0, 0, '', 0, '0000-00-00 00:00:00', 0, 'testfordraft', NULL, '', NULL, 0),
(16, 1, '2015-10-10 02:10:10', '2015-10-10 02:10:10', NULL, NULL, 2, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'testfordraft', NULL, '', NULL, 0),
(17, 1, '2015-12-23 23:00:00', '2015-12-31 01:00:00', NULL, NULL, 2, 30, 1, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '123123', NULL, '', NULL, 0),
(18, 1, '2015-10-09 16:00:00', '2015-10-10 16:00:00', NULL, NULL, 2, 30, 1, 0, 1, '', 1, '0000-00-00 00:00:00', 0, 'test', NULL, '', NULL, 1),
(19, 1, '2015-10-09 16:00:00', '2015-10-09 16:00:00', NULL, NULL, 2, 30, 1, 0, 1, '', 1, '0000-00-00 00:00:00', 0, 'upload', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-06 12:36:59', 1),
(20, 1, '2015-12-23 23:00:00', '2015-12-05 15:00:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '123123', NULL, '', NULL, 2),
(21, 1, '2015-12-23 23:00:00', '2015-12-05 15:00:00', NULL, NULL, 1, 30, 1, 0, 0, '', 1, '0000-00-00 00:00:00', 0, '123123', NULL, '', NULL, 2),
(22, 1, '2015-12-07 10:49:00', '2015-12-07 13:49:00', NULL, NULL, 2, 20, 1, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'wfnuser', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-07 10:49:45', 1),
(23, 1, '2015-12-13 15:22:00', '2015-12-13 15:40:00', NULL, NULL, 1, 20, 1, 0, 1, '', 1, '0000-00-00 00:00:00', 0, 'hahahah', NULL, '', NULL, 1),
(24, 1, '2015-12-13 16:18:00', '2015-12-14 02:18:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:19:33', 1),
(25, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:24:52', 1),
(26, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:28:47', 1),
(27, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:36:54', 1),
(28, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:38:51', 1),
(29, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:41:10', 1),
(30, 1, '2015-12-13 16:24:00', '2015-12-13 17:24:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'uplaod2', NULL, 'CodeIgniter-3.0.2.zip', '2015-12-13 15:41:13', 1),
(31, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:41:54', 1),
(32, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:42:09', 1),
(33, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:44:22', 1),
(34, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:58:51', 1),
(35, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:59:00', 1),
(36, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:59:38', 1),
(37, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 15:59:41', 1),
(38, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:08:21', 1),
(39, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:08:44', 1),
(40, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:10:05', 1),
(41, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:10:26', 1),
(42, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:14:12', 1),
(43, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:18:15', 1),
(44, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:19:30', 1),
(45, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:19:48', 1),
(46, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:23:28', 1),
(47, 1, '2015-12-13 16:41:00', '2015-12-13 17:41:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload3', NULL, 'p643047600.jpg', '2015-12-13 16:23:45', 1),
(48, 1, '2015-12-13 17:23:00', '2015-12-13 18:23:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload', NULL, 'p643047600.jpg', '2015-12-13 16:24:07', 1),
(49, 1, '2015-12-13 17:32:00', '2015-12-13 18:32:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'ghjgkj', NULL, 'p643047600.jpg', '2015-12-13 16:33:09', 1),
(50, 1, '2015-12-13 17:32:00', '2015-12-13 18:32:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'ghjgkj', NULL, 'p643047600.jpg', '2015-12-13 16:41:22', 1),
(51, 1, '2015-12-13 17:32:00', '2015-12-13 18:32:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'ghjgkj', NULL, 'p643047600.jpg', '2015-12-13 16:50:15', 1),
(52, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(53, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(54, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(55, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(56, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(57, 1, '2015-12-14 16:52:00', '2015-12-14 17:52:00', NULL, NULL, 1, 80, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'hjhl', NULL, '', NULL, 1),
(58, 1, '2015-12-13 18:00:00', '2015-12-14 17:00:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'upload', NULL, '', NULL, 1),
(59, 1, '2015-12-14 17:02:00', '2015-12-14 17:02:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test', NULL, '', NULL, 1),
(60, 1, '2015-12-14 17:04:00', '2015-12-14 17:04:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test', NULL, 'p643047600.jpg', '2015-12-13 17:04:59', 1),
(61, 1, '2015-12-14 17:04:00', '2015-12-14 17:04:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test', NULL, 'p643047600.jpg', '2015-12-13 17:07:50', 1),
(62, 1, '2015-12-14 17:08:00', '2015-12-14 17:08:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'test', NULL, 'p643047600.jpg', '2015-12-13 17:08:57', 1),
(63, 1, '2015-12-14 18:27:00', '2015-12-13 17:27:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'newupload', NULL, 'p643047600.jpg', '2015-12-13 17:28:12', 1),
(64, 1, '2015-12-14 17:29:00', '0000-00-00 00:00:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'adfj;ljdf', NULL, 'p643047600.jpg', '2015-12-13 17:29:39', 1),
(65, 1, '2015-12-14 17:29:00', '0000-00-00 00:00:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'adfj;ljdf', NULL, 'p643047600.jpg', '2015-12-13 17:30:28', 1),
(66, 1, '2015-12-14 17:31:00', '2015-12-15 17:31:00', NULL, NULL, 1, 30, 0, 0, 0, '', 1, '0000-00-00 00:00:00', 0, 'postfinishe', NULL, '12monkey.jpg', '2015-12-13 17:32:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetmember`
--

CREATE TABLE `meetmember` (
`mmid` int(11) NOT NULL,
  `mmmid` int(11) NOT NULL,
  `mmuid` int(11) NOT NULL,
  `mmissponser` int(11) NOT NULL,
  `mmchecked` int(11) NOT NULL,
  `mmchecktime` timestamp NULL DEFAULT NULL,
  `mmleave` int(11) NOT NULL COMMENT 'apply=1',
  `mmattend` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetmember`
--

INSERT INTO `meetmember` (`mmid`, `mmmid`, `mmuid`, `mmissponser`, `mmchecked`, `mmchecktime`, `mmleave`, `mmattend`) VALUES
(1, 11, 2, 0, 0, NULL, 0, 1),
(2, 11, 8, 0, 0, NULL, 0, 1),
(3, 11, 3, 0, 0, NULL, 1, 0),
(5, 11, 1, 0, 1, '2015-12-15 15:53:15', 1, 0),
(6, 2, 1, 0, 0, NULL, 1, 0),
(7, 4, 1, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
`msgid` int(11) NOT NULL,
  `msgtype` int(11) NOT NULL COMMENT '1 for delay;2 for cancel;3 for leave;',
  `msgmid` int(11) NOT NULL,
  `msgtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `msguid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`msgid`, `msgtype`, `msgmid`, `msgtime`, `msguid`) VALUES
(1, 2, 2, '2015-12-06 14:48:30', 0),
(2, 1, 11, '2015-12-06 14:48:30', 0),
(3, 1, 2, '2015-12-06 14:48:49', 0),
(4, 1, 5, '2015-12-06 14:48:49', 0),
(5, 3, 11, '2015-12-06 14:48:30', 0),
(6, 1, 11, '2015-12-07 11:50:24', 1),
(7, 1, 11, '2015-12-07 11:58:49', 1),
(8, 1, 11, '2015-12-07 11:59:06', 1),
(9, 1, 11, '2015-12-07 12:01:18', 1),
(10, 3, 11, '2015-12-07 12:42:21', 1),
(11, 3, 11, '2015-12-07 12:42:48', 1),
(12, 3, 11, '2015-12-07 12:43:13', 1),
(13, 3, 11, '2015-12-07 12:43:49', 1),
(14, 3, 12, '2015-12-07 12:47:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
`rid` int(11) NOT NULL,
  `rname` varchar(15) NOT NULL,
  `rpeople` int(11) NOT NULL,
  `rmedia` int(11) NOT NULL,
  `rprojection` int(11) NOT NULL,
  `raddr` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `rname`, `rpeople`, `rmedia`, `rprojection`, `raddr`) VALUES
(1, '6楼1号会议室', 0, 0, 0, '交通大学'),
(2, '5楼1号会议室', 0, 0, 0, '困死了'),
(3, '5楼9号会议室', 50, 1, 1, '累累累...');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
`uid` int(11) NOT NULL,
  `uname` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `uabsentnum` int(11) NOT NULL,
  `ulatenum` int(11) NOT NULL,
  `ulatest` int(11) NOT NULL COMMENT 'lateorabsent'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `type`, `uabsentnum`, `ulatenum`, `ulatest`) VALUES
(1, 'wfnuser', 1, 0, 0, 0),
(2, 'test', 0, 15, 0, 15),
(3, 'wfnuser4', 1, 8, 0, 8),
(4, 'test4', 1, 0, 0, 2),
(5, 'wfnuser1', 1, 0, 0, 0),
(6, 'test2', 0, 0, 0, 3),
(7, 'wfnuser3', 0, 0, 0, 0),
(8, 'test3', 0, 11, 0, 11),
(9, 'mark', 0, 0, 0, 0),
(10, 'mark2', 0, 0, 0, 0),
(11, 'mark22', 0, 0, 0, 0),
(12, 'turkey', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
 ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `meetmember`
--
ALTER TABLE `meetmember`
 ADD PRIMARY KEY (`mmid`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
 ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `meetmember`
--
ALTER TABLE `meetmember`
MODIFY `mmid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
MODIFY `msgid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;