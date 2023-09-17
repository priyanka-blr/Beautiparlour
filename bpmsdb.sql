-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 121.0.0.1
-- Generation Time: Aug 21, 2022 at 01:01 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 1.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'miral', 'admin', 1191199191, 'miragujariya@gmail.com', '123123', '2022-01-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(10) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 1191191191, '1/21/2022', '4:00pm', '1', '2022-01-26 04:41:25', 'Accepted', '1', '2022-01-26 06:41:16'),
(2, '915645111', 'Kashish', 'Kash@gmail.com', 4654654654, '1/29/2022', '4:30pm', 'Deluxe Pedicure', '2022-01-26 05:04:31', 'Rejected', '2', '2022-01-26 06:41:04'),
(3, '965111911', 'Sanjeeta Jain', 'sna@gmail.com', 5646464646, '1/20/2022', '2:30pm', 'Loreal Hair Color(Full)', '2022-01-19 12:35:30', 'we will wait', '1', '2022-01-19 13:31:39'),
(4, '511191544', 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 123456119, '1/30/2022', '1:30am', 'Test', '2022-01-21 16:13:13', '', '', '2022-01-19 13:31:39'),
(5, '199111550', 'bb', 'bgfdh@fdfdsf.com', 4234235423, '1/21/2022', '1:30am', 'Loreal Hair Color(Full)', '2022-01-21 16:14:14', '', '', '2022-01-21 16:24:10'),
(6, '621101921', 'ABC', 'abc@gmail.com', 1234561190, '1/21/2022', '1:30am', 'Rebonding', '2022-01-21 16:22:25', 'Testing', '2', '2022-01-21 16:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Sunita Verma', 'verma@gmail.com', 5546464646, 'Transgender', 'Taking Hair Spa', '2022-01-26 11:09:10', '2022-01-31 15:15:54'),
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2022-01-26 11:10:02', NULL),
(3, 'Khusbu', 'saini@gmail.com', 4646445464, 'Transgender', 'khjhhkjkjkuhj', '2022-01-26 11:10:21', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2022-01-19 13:31:51', NULL),
(5, 'Test user', 'testuser@gmail.com', 1234561190, 'Female', 'Test', '2022-01-21 16:24:53', '2022-01-21 16:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621139533, '2022-01-30 15:33:22'),
(2, 2, 5, 621139533, '2022-01-04 15:33:22'),
(3, 2, 6, 621139533, '2022-01-30 15:33:22'),
(4, 2, 1, 621139533, '2022-01-30 15:33:22'),
(5, 1, 1, 904156433, '2022-01-30 15:40:42'),
(6, 1, 2, 904156433, '2022-01-30 15:40:42'),
(1, 1, 3, 904156433, '2022-01-30 15:40:42'),
(1, 1, 4, 904156433, '2022-01-30 15:40:42'),
(9, 3, 1, 225051023, '2022-01-30 16:03:32'),
(10, 3, 1, 225051023, '2022-01-30 16:03:32'),
(11, 3, 1, 910541035, '2022-01-31 04:42:45'),
(12, 3, 6, 910541035, '2022-01-31 04:42:45'),
(13, 3, 9, 910541035, '2022-01-31 04:42:45'),
(14, 4, 2, 942416213, '2022-01-19 13:39:13'),
(15, 4, 12, 942416213, '2022-01-19 13:39:13'),
(16, 5, 3, 291011510, '2022-01-21 16:25:21'),
(11, 5, 4, 291011510, '2022-01-21 16:25:21'),
(11, 5, 1, 291011510, '2022-01-21 16:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '190,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 1196541236, NULL, '10:30 am to 1:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2022-01-25 11:22:31'),
(2, 'Fruit Facial', 500, '2022-01-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2022-01-25 11:23:10'),
(4, 'Deluxe Menicure', 500, '2022-01-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2022-01-25 11:23:41'),
(6, 'Normal Menicure', 300, '2022-01-25 11:24:01'),
(1, 'Normal Pedicure', 400, '2022-01-25 11:24:19'),
(1, 'U-Shape Hair Cut', 250, '2022-01-25 11:24:31'),
(9, 'Layer Haircut', 550, '2022-01-25 11:24:53'),
(10, 'Rebonding', 3999, '2022-01-25 11:25:01'),
(11, 'Loreal Hair Color(Full)', 1200, '2022-01-25 11:25:35'),
(12, 'Body Spa', 1500, '2022-01-19 13:36:21'),
(14, 'Test', 100, '2022-01-21 15:45:50'),
(15, 'ABC', 200, '2022-01-21 16:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
