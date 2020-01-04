-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 11:28 AM
-- Server version: 5.7.14-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmvc_example`
--

-- --------------------------------------------------------

--
-- Table structure for table `mlogin`
--

CREATE TABLE `mlogin` (
  `ID` int(11) NOT NULL,
  `PARENT_ID` bigint(20) NOT NULL,
  `USER_NAME` text NOT NULL,
  `USER_PASS` text NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT '1:Deleted, 2:Logined, 3:Logout, 4:closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mlogin`
--

INSERT INTO `mlogin` (`ID`, `PARENT_ID`, `USER_NAME`, `USER_PASS`, `STATUS`) VALUES
(1004, 1006, 'xzc', 'c', 0),
(1005, 1007, 'mandal', '12345', 0),
(1006, 1008, 'jeet', '12345', 0),
(1007, 1009, 'uttam', '12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT '1:Deleted',
  `CREATED_ON` datetime NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `BROWSER_NAME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`ID`, `NAME`, `CODE`, `STATUS`, `CREATED_ON`, `CREATED_BY`, `BROWSER_NAME`) VALUES
(1006, 'xzcxz', 'x131805', 0, '2019-09-03 13:18:05', NULL, 'Google Chrome 76.0.3809.132'),
(1007, 'Dinesh Mandal', 'DM055410', 0, '2019-09-04 05:54:10', NULL, 'Google Chrome 76.0.3809.132'),
(1008, 'Ranjeet Sahu', 'RS060302', 0, '2019-09-04 06:03:02', NULL, 'Google Chrome 76.0.3809.132'),
(1009, 'Uttam Swamy', 'US061447', 0, '2019-09-04 06:14:47', NULL, 'Google Chrome 76.0.3809.132');

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `ID` bigint(20) NOT NULL,
  `PARENT_ID` bigint(20) NOT NULL,
  `FATHER_NAME` text,
  `MOTHER_NAME` text,
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT '1:DELETED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_2`
--

INSERT INTO `table_2` (`ID`, `PARENT_ID`, `FATHER_NAME`, `MOTHER_NAME`, `STATUS`) VALUES
(1004, 1006, 'xzc', 'xc', 0),
(1005, 1007, 'Amal Mandal', 'Geeta Mandal', 0),
(1006, 1008, 'g', 'g', 0),
(1007, 1009, 'a', 'a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_3`
--

CREATE TABLE `table_3` (
  `ID` bigint(20) NOT NULL,
  `PARENT_ID` bigint(20) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `JOINING_DATE` datetime DEFAULT NULL,
  `PERMANENT_ADDRESS` text,
  `TEMPORARY_ADDRESS` text,
  `GENDER` varchar(64) DEFAULT NULL,
  `EMAIL` text,
  `MOBILE` bigint(20) DEFAULT NULL,
  `ALTERNATE_MOBILE` bigint(20) DEFAULT NULL,
  `PAN` varchar(128) DEFAULT NULL,
  `AADHAR` bigint(20) DEFAULT NULL,
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT '1:DELETED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_3`
--

INSERT INTO `table_3` (`ID`, `PARENT_ID`, `AGE`, `DATE_OF_BIRTH`, `JOINING_DATE`, `PERMANENT_ADDRESS`, `TEMPORARY_ADDRESS`, `GENDER`, `EMAIL`, `MOBILE`, `ALTERNATE_MOBILE`, `PAN`, `AADHAR`, `STATUS`) VALUES
(1004, 1006, 3, NULL, '2019-09-03 13:18:05', 'cxv', 'cxv', 'male', '', 0, 0, '', 0, 0),
(1005, 1007, 27, NULL, '2019-09-04 05:54:11', 'kota raipur', 'kota raipur', 'male', '', 9754829788, 0, '', 0, 0),
(1006, 1008, 29, NULL, '2019-09-04 06:03:02', 'g', 'g', 'female', 'jeet@gmail.com', 9852364789, 0, '', 0, 0),
(1007, 1009, 36, NULL, '2019-09-04 06:14:48', 'a', 'a', 'male', 'uttam.swamy@gmail.com', 9874563245, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_5`
--

CREATE TABLE `table_5` (
  `id` int(11) NOT NULL,
  `name` text,
  `email` text,
  `passport` text,
  `phone` text,
  `fax` text,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_5`
--

INSERT INTO `table_5` (`id`, `name`, `email`, `passport`, `phone`, `fax`, `address`) VALUES
(1, 'DInesh Mandal', 'mandald123@gmail.com1', 'xvc', '987452136', 'zxc', 'zxczxc'),
(2, 'Gurdeep SIngh', 'deep.singh1014@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(3, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(4, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(5, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(6, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(7, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(8, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(9, 'DInesh Mandal', 'mandald76@gmail.com', 'xvc', '987452136', 'zxc', 'zxczxc'),
(10, 'Gurdeep SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc'),
(11, 'AAA SIngh\r\n', 'mandald76@gmail.com', 'xvc', '2332323255', 'zxc', 'zxczxc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mlogin`
--
ALTER TABLE `mlogin`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD UNIQUE KEY `PARENT_ID` (`ID`,`PARENT_ID`) USING BTREE,
  ADD KEY `PARENT_ID_2` (`PARENT_ID`);

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PARENT_ID` (`ID`,`PARENT_ID`),
  ADD KEY `PARENT_ID_2` (`PARENT_ID`);

--
-- Indexes for table `table_3`
--
ALTER TABLE `table_3`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PARENT_ID` (`ID`,`PARENT_ID`),
  ADD KEY `PARENT_ID_2` (`PARENT_ID`);

--
-- Indexes for table `table_5`
--
ALTER TABLE `table_5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mlogin`
--
ALTER TABLE `mlogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT for table `table_3`
--
ALTER TABLE `table_3`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT for table `table_5`
--
ALTER TABLE `table_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mlogin`
--
ALTER TABLE `mlogin`
  ADD CONSTRAINT `mLogin_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `table_1` (`ID`) ON DELETE NO ACTION;

--
-- Constraints for table `table_2`
--
ALTER TABLE `table_2`
  ADD CONSTRAINT `table_2_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `table_1` (`ID`) ON DELETE NO ACTION;

--
-- Constraints for table `table_3`
--
ALTER TABLE `table_3`
  ADD CONSTRAINT `table_3_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `table_1` (`ID`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
