-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 09:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Subhadeep Paul', 'admin', 7980314116, 'subhadeep2040@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-05 06:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `VisitorName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Apartment` varchar(120) NOT NULL,
  `Floor` varchar(120) NOT NULL,
  `WhomtoMeet` varchar(120) DEFAULT NULL,
  `ReasontoMeet` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(255) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `VisitorName`, `MobileNumber`, `Address`, `Apartment`, `Floor`, `WhomtoMeet`, `ReasontoMeet`, `EnterDate`, `remark`, `outtime`) VALUES
(1, 'John', 9879798777, 'C-126, Kamalroad Reliance fresh', '220', '2nd floor, C-wing', 'Mr. Birijesh', 'Deliver Product', '2019-07-12 06:11:53', 'OK.', '2019-07-12 15:39:46'),
(2, 'Yogesh Kumar', 6444464646, 'Harikesh Nagar Delhi', '310', '3 rd floor', 'Alok Kumar', 'Relative', '2019-06-27 06:41:05', 'OK', '2019-07-12 15:39:40'),
(3, 'Test', 4646464444, 'Sample Test', '302', '3rd floor', 'Sanchana', 'Some Paper work', '2019-04-03 06:42:40', 'ok', '2019-07-12 15:39:35'),
(4, 'New User', 1234567890, 'New Delhi India', '1234', '10', 'Abc', 'Personal', '2019-07-12 15:52:09', 'Out', '2019-07-12 15:52:28'),
(5, 'Amit', 1908621561, 'Aligarh Uttar Pradesh 201301', '1234', '12', 'Anuj kumar', 'Personal', '2019-07-12 15:56:42', 'Out', '2019-07-12 15:57:02'),
(6, 'nirmal', 1234567890, 'saltlake', '26/3', '1', 'family', 'family reason', '2020-05-05 14:27:10', 'ok ok', '2020-05-05 14:27:46'),
(7, 'Subhadeep', 8900006578, 'kolkata', '26/3', '1', 'family', 'family reason', '2020-05-05 15:54:28', 'its good', '2020-05-05 18:06:02'),
(8, 'sonali', 1234567890, 'saltalke', '26/3', '1', 'family', 'family reason', '2020-05-05 17:51:55', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
