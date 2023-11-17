-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 03:03 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `addresss` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `companyname`, `addresss`, `email`, `mobile`, `password`) VALUES
(8, 'google', 'hyederabad', 'sureshdevasani123@gmail.com', '8688550595', 8721),
(9, 'facebook', 'mumbai', 'sureshdevasani123@gmail.com', '8688550595', 8878),
(10, 'infosys', 'mumbai', 'sureshdevasani123@gmail.com', '8688550595', 6675),
(13, 'Htc', 'hyderabad', 'htc@gmail.com', '7897897890', 8762),
(14, 'Gvg', 'madhapur', 'gvg@gmail.com', '9000000000', 9107),
(15, 'Wiprocareer', 'hyderabad', 'wipro@gmail.com', '9876567890', 4567);

-- --------------------------------------------------------

--
-- Table structure for table `companyrecruit`
--

CREATE TABLE IF NOT EXISTS `companyrecruit` (
  `id` int(11) NOT NULL,
  `cid` varchar(5) NOT NULL,
  `recruitmentdate` varchar(50) NOT NULL,
  `vacancy` varchar(100) NOT NULL,
  `percentage` varchar(100) NOT NULL,
  `jobrole` varchar(50) NOT NULL,
  `package` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyrecruit`
--

INSERT INTO `companyrecruit` (`id`, `cid`, `recruitmentdate`, `vacancy`, `percentage`, `jobrole`, `package`, `year`, `status`) VALUES
(6, '10', '14-3-2019', '10', '70', 'coding', '3.6 lpa', '2018', 1),
(8, '9', '14-3-2019', '10', '70', 'developer', '3.6 lpa', '2018', 1),
(9, '8', '27-7-109', '20', '60', 'traier', '2lpa', '2019', 0),
(10, '8', 'hhhh', 'dfdf', 'sdd', 'dsd', 'dfdf', '0898', 0),
(11, '14', '2019-03-29', '10', '60', 'Analyst', '1.5k p.a', '2016', 0),
(12, '14', '2019-03-30', '20', '80', 'Software', '2.5 lk p.a', '2015', 0),
(13, '15', '2019-10-01', '5', '65', 'software ', '3.5', '2019', 0),
(14, '15', '1997-08-07', '4', '70', 'software ', '7.5', '2019', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recuritment`
--

CREATE TABLE IF NOT EXISTS `recuritment` (
  `idd` int(10) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `recruitmentdate` varchar(100) NOT NULL,
  `rpercentage` varchar(100) NOT NULL,
  `jobrole` varchar(150) NOT NULL,
  `package` varchar(100) NOT NULL,
  `id` varchar(50) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recuritment`
--

INSERT INTO `recuritment` (`idd`, `companyid`, `companyname`, `recruitmentdate`, `rpercentage`, `jobrole`, `package`, `id`, `student_name`, `status`) VALUES
(2, '11', 'Gvg', '2019-03-29', '60', 'Analyst', '1.5k p.a', '29', 'Akhil', '0'),
(3, '12', 'Gvg', '2019-03-30', '80', 'Software', '2.5 lk p.a', '22', 'Sana', '1'),
(4, '13', 'Wiprocareer', '2019-10-01', '65', 'software ', '3.5', '22', 'Sana', '0'),
(5, '13', 'Wiprocareer', '2019-10-01', '65', 'software ', '3.5', '40', 'Prathitha', '1'),
(6, '13', 'Wiprocareer', '2019-10-01', '65', 'software ', '3.5', '40', 'Prathitha', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `hallticket` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `addresss` varchar(100) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `percentage` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `password` int(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sname`, `hallticket`, `mobile`, `email`, `gender`, `addresss`, `branch`, `percentage`, `year`, `password`, `status`) VALUES
(17, 'reeshma', '537', '8688550595', 'sureshdevasani123@gmail.com', 'female', 'gayathriagar, 1-5-521/12/A', 'cse', 0, '2019', 3275, 1),
(19, 'abc', '530', '8688550595', 'sureshdevasani530@gmail.com', 'male', 'laxminagar, 1-5-521/12/A', 'eee', 0, '2014', 7239, 2),
(21, 'nikill', '595', '9704685812', 'sureshdevasani123@gmail.com', 'male', 'gayathriagar, 1-5-521/12/A', 'cse b', 0, '2019', 5655, 2),
(22, 'Sana', '8909', '7890788989', 'sana@gmail.com', 'female', 'knr', 'cse', 80, '2016', 7637, 1),
(29, 'Akhil', '10TR1A1209', '8998998990', 'vasudha.coign@gmail.com', 'male', 'Karimnagar', 'CSE', 60, '2017', 7257, 1),
(30, 'Sathish', '10TR1A1222', '9889889880', 'vasudha.coign@gmail.com', 'female', 'Karimanagr', 'CSE', 80, '2016', 1666, 0),
(33, 'Sai', '10TR1A122', '8099999999', 'vasu.ashu60@gmail.com', 'female', 'Knr 90', 'EEE', 85, '2016', 1300, 0),
(35, 'Srini', '10TR1A1224', '8099999999', 'vasu.ashu60@gmail.com', 'Female', 'Knr98', 'ECE', 80, '2015', 5202, 0),
(40, 'Prathitha', '16271A05E3', '9876543210', 'prathithareddy999@gmail.com', 'female', 'karimnagar', 'Cse', 75, '2019', 2963, 1),
(41, 'Karthik', '16271A05D4', '8074163844', 'karthik.f07@gmail.com', 'male', 'karimnagar', 'Cse', 78, '2019', 5386, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL,
  `sid` int(10) NOT NULL,
  `task` varchar(50) NOT NULL,
  `taskans` varchar(40) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `sid`, `task`, `taskans`, `sname`, `cname`, `status`) VALUES
(1, 0, 'bkhkgkhg', '', 'abc', 'facebook', 0),
(2, 0, 'hjhhkjk', '', 'reeshma', 'facebook', 0),
(3, 0, 'aptitude', '', 'abc', 'facebook', 0),
(4, 0, 'python', '', 'nikill', 'google', 0),
(5, 0, 'gd', '', 'nikill', 'facebook', 0),
(7, 0, 'hjhkj,h', '', 'abc', 'facebook', 0),
(8, 0, 'selfintroduction', '', 'reeshma', 'facebook', 0),
(9, 0, 'helloo', '', 'reeshma', 'facebook', 0),
(10, 40, 'C', 'gg', 'Prathitha', 'Wiprocareer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tpo_reg`
--

CREATE TABLE IF NOT EXISTS `tpo_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `campus` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpo_reg`
--

INSERT INTO `tpo_reg` (`id`, `name`, `email`, `password`, `mobile`, `campus`) VALUES
(27, 'jits', 'jits@gmail.com', '12345', '454548', 'Jits College of Engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyrecruit`
--
ALTER TABLE `companyrecruit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recuritment`
--
ALTER TABLE `recuritment`
  ADD PRIMARY KEY (`idd`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tpo_reg`
--
ALTER TABLE `tpo_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `companyrecruit`
--
ALTER TABLE `companyrecruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `recuritment`
--
ALTER TABLE `recuritment`
  MODIFY `idd` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tpo_reg`
--
ALTER TABLE `tpo_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
