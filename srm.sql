-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2020 at 03:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srm`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_Id` varchar(32) NOT NULL,
  `assignment_Name` text NOT NULL,
  `assignment_Words` text NOT NULL,
  `assignment_Enddate` text NOT NULL,
  `assignment_Cost` text NOT NULL,
  `assignment_Status` text NOT NULL,
  `subject_Id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_Id`, `assignment_Name`, `assignment_Words`, `assignment_Enddate`, `assignment_Cost`, `assignment_Status`, `subject_Id`) VALUES
('ASS10001', '', '', '', '', '', 'SUB10001');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_Id` varchar(32) NOT NULL,
  `country_Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_Id`, `country_Name`) VALUES
('AUS', 'Australiaa');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_Id` varchar(32) NOT NULL,
  `course_Name` text NOT NULL,
  `course_Duration` text NOT NULL,
  `university_Id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_Id`, `course_Name`, `course_Duration`, `university_Id`) VALUES
('CRC10001', 'Management', '8 Weeks ', 'UNI1006');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` varchar(32) NOT NULL,
  `FirstName` text NOT NULL,
  `SecondName` text NOT NULL,
  `FatherName` text NOT NULL,
  `Phone` text NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `ZipCode` text NOT NULL,
  `EmployeeRole` text NOT NULL,
  `EmployeeManager` text NOT NULL,
  `UserName` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeId`, `FirstName`, `SecondName`, `FatherName`, `Phone`, `Email`, `Address`, `City`, `State`, `ZipCode`, `EmployeeRole`, `EmployeeManager`, `UserName`, `Password`) VALUES
('1700', '', '', '', '', '', '', '', '', '', '', '', 'user', 'password'),
('1702', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_Id` varchar(32) NOT NULL,
  `student_Id` varchar(32) NOT NULL,
  `subject_Id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_Id` varchar(32) NOT NULL,
  `student_Name` text NOT NULL,
  `student_Email` text NOT NULL,
  `student_Phone` text NOT NULL,
  `student_UserId` text NOT NULL,
  `student_Password` text NOT NULL,
  `student_University` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_Id`, `student_Name`, `student_Email`, `student_Phone`, `student_UserId`, `student_Password`, `student_University`) VALUES
('STU10001', 'vinay', '', '', 'vinay', 'kumar', 'UNI1006');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_Id` varchar(32) NOT NULL,
  `subject_Name` text NOT NULL,
  `subject_Duration` text NOT NULL,
  `subject_Type` text NOT NULL,
  `course_Id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_Id`, `subject_Name`, `subject_Duration`, `subject_Type`, `course_Id`) VALUES
('SUB10001', '', '', '', 'CRC10001');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_Id` varchar(32) NOT NULL,
  `university_Name` text NOT NULL,
  `university_Location` text NOT NULL,
  `university_Country` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`university_Id`, `university_Name`, `university_Location`, `university_Country`) VALUES
('UNI1006', 'Trine', 'location', 'AUS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_Id`),
  ADD KEY `subject_Id` (`subject_Id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_Id`),
  ADD KEY `university_Id` (`university_Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_Id`),
  ADD KEY `student_Id` (`student_Id`),
  ADD KEY `subject_Id` (`subject_Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_Id`),
  ADD KEY `student_University` (`student_University`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_Id`),
  ADD KEY `course_Id` (`course_Id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_Id`),
  ADD KEY `countyrFK1` (`university_Country`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`subject_Id`) REFERENCES `subject` (`subject_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`university_Id`) REFERENCES `university` (`university_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`student_Id`) REFERENCES `student` (`student_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`subject_Id`) REFERENCES `subject` (`subject_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_University`) REFERENCES `university` (`university_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course_Id`) REFERENCES `course` (`course_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `countyrFK1` FOREIGN KEY (`university_Country`) REFERENCES `country` (`country_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`university_Country`) REFERENCES `country` (`country_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
