-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 04:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obcsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 792088021, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-05 12:05:09'),
(2, 'Gideon', 'Momo', 724796200, 'koechgideon10@gmail.com', '[???.??H.m????', '2024-07-16 22:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `NameOfMother` varchar(120) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `NameOfMother`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(6, 5, '522292844', '2023-05-17', 'Male', 'ian Ronoh', 'Nairobi', 'Daniel waweru', 'Caroline Boit', '109 kericho', '109 kericho', 792088021, 'danielwaweru9632@gmail.com', '2024-06-29 16:02:56', 'wait to get your cert', 'Verified', '2024-06-29 16:06:01'),
(7, 5, '471169726', '2024-07-10', 'Female', 'debra Cherotich', 'Nairobi', 'Ria AMoh', 'Yolo namu', '119 kericho', '149 kericho', 765679856, 'gideonkoech188@gmail.com', '2024-07-08 10:34:50', NULL, NULL, NULL),
(8, 6, '306107356', '2024-07-11', 'Female', 'Brain', 'Rongai ', 'walter', 'Martha', '109 kericho', '109 kericho', 792088021, 'wewerudeniel.gmail.com', '2024-07-11 17:02:41', NULL, NULL, NULL),
(9, 5, '912581834', '2024-07-18', 'Female', 'Roberto Viona', 'Kirinyanga county', 'Bett Albert', 'Lucy Muthoni', 'Kiambu ', '112 Kiambu', 786567893, 'LucyMuthoni@gmail.com', '2024-07-18 02:29:09', 'Good', 'Verified', '2024-07-18 02:32:18'),
(10, 5, '392339117', '2024-07-24', 'Male', 'Gideon Koech', 'Nairobi', 'Mary Mwaura', 'Joy Kamau', '109 kericho', '109 kericho', 792088021, 'wewerudeniel@gmail.com', '2024-07-24 08:46:23', NULL, NULL, NULL),
(11, 8, '896737163', '2024-08-08', 'Female', 'sylvia Wangari', 'Kisii', 'Albert Kamau', 'Wambui Lucy', 'kisii', '45 kisii', 788997850, 'wambuilucy@gmail.com', '2024-08-08 13:24:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(5, 'Gideon', 'Koech', 792088021, '109 kericho', '64f20037b952c6ba042a243efa7b47a3', '2024-06-29 15:57:37'),
(6, 'tATA', 'Manu', 724796200, '11 MOLO', 'a87ff679a2f3e71d9181a67b7542122c', '2024-07-11 16:59:02'),
(7, 'Mutheu', 'Alfred', 789467803, '778 Kiambuu', '0eff8466357d72cb1e3d7a801c567aef', '2024-07-18 02:31:22'),
(8, 'Mark', 'Ian', 722334456, 'Markian@gmail.com', 'd1af90699f2a2c983e6ccb7bee874414', '2024-08-08 11:56:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
