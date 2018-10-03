-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 12:07 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hits_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
CREATE TABLE IF NOT EXISTS `batch` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `batch_code` varchar(4) NOT NULL,
  `batch_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cdp`
--

DROP TABLE IF EXISTS `cdp`;
CREATE TABLE IF NOT EXISTS `cdp` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `semester_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `period` varchar(3) NOT NULL,
  `topic` varchar(200) NOT NULL,
  `pertaining_co` varchar(3) NOT NULL,
  `pertaining_btl` varchar(3) NOT NULL,
  `tlo` varchar(200) NOT NULL,
  `method_activity` varchar(100) NOT NULL,
  `assessment_tlo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

DROP TABLE IF EXISTS `co`;
CREATE TABLE IF NOT EXISTS `co` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `co_range` varchar(3) NOT NULL,
  `co_outcome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`id`, `faculty_code`, `depart_code`, `programme_code`, `course_code`, `co_range`, `co_outcome`) VALUES
(1, 'BMA123', 'bca', 'SE12', 'CO-1', '10', 'Define and understand the main concepts and terms of Data Mining and data warehousing.'),
(2, 'BMA123', 'bca', 'DS12', 'CO-2', '10', 'Demonstrate their ability to conduct data extraction, transformation and loading (ETL)'),
(3, 'BMA126', 'BCA', 'OS12', 'CO-3', '10', 'Compare and Contrast the dominant data mining algorithms.'),
(5, 'BMA123', 'BCA', 'MS12', 'CO-4', '10', 'Evaluate and Select appropriate data mining algorithm for analytical applications and analyze the results generated.'),
(6, 'BMA126', 'BCA', '21', 'CO-5', '10', ' understand the process required to construct data warehouse.'),
(7, 'BMA123', 'BCA', '21', 'CO-6', '10', 'Identify various business applications of data mining and obtain Hands-on Experience with some popular data mining tool'),
(43, 'BMA126', 'BCA', 'MA', 'MA234', '10', 'Maths1'),
(44, 'BMA123', 'bca', 'OS12', '1290', '10', 'Teach Operating system\r\n'),
(41, 'BMA126', '111', '11', '111', '111', '111');

-- --------------------------------------------------------

--
-- Table structure for table `coursedel`
--

DROP TABLE IF EXISTS `coursedel`;
CREATE TABLE IF NOT EXISTS `coursedel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodno` int(11) NOT NULL,
  `faculty_code` varchar(10) NOT NULL,
  `topic` varchar(250) NOT NULL,
  `co` varchar(250) NOT NULL,
  `tlo` varchar(250) NOT NULL,
  `activities` text NOT NULL,
  `assesment` varchar(250) NOT NULL,
  `btl` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedel`
--

INSERT INTO `coursedel` (`id`, `periodno`, `faculty_code`, `topic`, `co`, `tlo`, `activities`, `assesment`, `btl`) VALUES
(16, 1, 'BMA123', '1', '1', '1', '1', '1', '1'),
(15, 2, 'BMA123', 'Algorithm Design', '03', '05', 'Experience', 'nothing', 'nothing'),
(14, 2, 'BMA123', 'Algorithm Design', '03', '05', 'Experience', 'nothing', 'nothing'),
(13, 2, 'BMA123', 'Algorithm Design', '03', '05', 'Experience', 'nothing', 'nothing'),
(12, 1, 'BMA123', 'Data Structure', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `facultyid` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `facultyname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `passreset` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `facultyid`, `faculty_code`, `password`, `emailid`, `facultyname`, `designation`, `department`, `gender`, `passreset`) VALUES
(1, '12', 'BMA123', '098f6bcd4621d373cade4e832627b4f6', 'test@gmail.com', 'test', 'IT', 'bca', 'mal', 0),
(2, '11', '', '5a105e8b9d40e1329780d62ea2265d8a', 'manju@gmail.com', 'Manjunath', 'IT', 'bca', 'male', 0),
(3, '14351005', '', '78976d7431641792274dc6fc5649985e', 'manjunathpoilath@gmail.com', 'Manjunath', 'IT', 'BCA', 'Male', 0),
(4, '14351001', 'BMA126', '20d0e9e7de9be38250005ea21426e1c8', 'manjunathpv@outlook.com', 'Arjun S', 'IT', 'ECE', 'Female', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mark_entry`
--

DROP TABLE IF EXISTS `mark_entry`;
CREATE TABLE IF NOT EXISTS `mark_entry` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `batch_code` varchar(4) NOT NULL,
  `semester_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `assesmenttype_code` varchar(3) NOT NULL,
  `roll_no` varchar(15) NOT NULL,
  `qes_no` varchar(3) NOT NULL,
  `co_code` varchar(3) NOT NULL,
  `btl_code` varchar(3) NOT NULL,
  `max_alloted` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peo`
--

DROP TABLE IF EXISTS `peo`;
CREATE TABLE IF NOT EXISTS `peo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `peo_code` varchar(3) NOT NULL,
  `peo_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
CREATE TABLE IF NOT EXISTS `po` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) DEFAULT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `po_outcome` varchar(3) NOT NULL,
  `po_code` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`id`, `faculty_code`, `depart_code`, `programme_code`, `po_outcome`, `po_code`) VALUES
(1, NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE IF NOT EXISTS `programme` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `programme_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qp_set`
--

DROP TABLE IF EXISTS `qp_set`;
CREATE TABLE IF NOT EXISTS `qp_set` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `semester_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `assesmenttype_code` varchar(3) NOT NULL,
  `qes_no` varchar(3) NOT NULL,
  `co_code` varchar(3) NOT NULL,
  `btl_code` varchar(3) NOT NULL,
  `max_mark` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `sem_code` varchar(4) NOT NULL,
  `sem_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `roll_number` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `semester_code` varchar(4) NOT NULL,
  `batch_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `section_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` varchar(3) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `sem_code` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `course_code`, `course_name`, `credit`, `depart_code`, `programme_code`, `sem_code`) VALUES
(1, '1234', 'Software Engineering', '6', 'bca', 'SE12', '6'),
(2, '5678', 'Data Structure', '20', 'bca', 'DS12', '1'),
(12, '1212', 'Operating System', '10', 'bca', 'OS12', '123'),
(4, '123', 'Microprocessor', '12', '12', 'MS12', '12');

-- --------------------------------------------------------

--
-- Table structure for table `workload`
--

DROP TABLE IF EXISTS `workload`;
CREATE TABLE IF NOT EXISTS `workload` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) NOT NULL,
  `depart_code` varchar(4) NOT NULL,
  `programme_code` varchar(4) NOT NULL,
  `sem_code` varchar(4) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `batch_code` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workload`
--

INSERT INTO `workload` (`id`, `faculty_code`, `depart_code`, `programme_code`, `sem_code`, `course_code`, `batch_code`) VALUES
(1, 'BMA123', 'bca', 'SE12', '6', '1234', '6'),
(3, 'BMA123', 'bca', 'DS12', '1', '5678', '1'),
(4, 'BMA123', 'bca', 'OS12', '6', '1212', '12'),
(10, 'mmaamm', '23', '0', '0', '0', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
