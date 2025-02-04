-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Jan 26, 2025 at 06:18 PM
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
-- Database: `webcw`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `FirstName` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`FirstName`, `Surname`, `Address`) VALUES
('Bill', 'Gates', 'Maitidevi, Kathmandu'),
('Elon', 'Musk', 'Putalisadak, Kathmandu'),
('Kamala', 'Harris', 'Kapan, Kathmandu'),
('Saanvi', 'Bhatta', 'Baneshwor, Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `arcademachine`
--

CREATE TABLE `arcademachine` (
  `MachineNumber` int(11) NOT NULL,
  `Game` varchar(50) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arcademachine`
--

INSERT INTO `arcademachine` (`MachineNumber`, `Game`, `Year`, `Floor`) VALUES
(23, 'COC', 2010, 1),
(45, 'Spiderman', 2016, 2),
(1234, 'PUBG', 2004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `SessionNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Member` varchar(1) DEFAULT NULL,
  `Fee` varchar(10) DEFAULT NULL,
  `PrePaid` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`SessionNumber`, `CustomerName`, `Date`, `Member`, `Fee`, `PrePaid`) VALUES
(1, 'Saanvi Bhatta', '2024-07-22', 'Y', 'NA', 'N'),
(1, 'Bill Gates', '2024-07-22', 'N', '1500', 'N'),
(1, 'Elon Musk', '2024-07-22', 'Y', '1000', 'Y'),
(1, 'Jack Ma', '2024-08-25', 'N', '1500', 'N'),
(2, 'Kamala Harris', '2024-07-22', 'Y', '1000', 'N'),
(4, 'Rishi Sunak', '2024-07-05', 'Y', '1000', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `Name` varchar(100) DEFAULT NULL,
  `PEGI` varchar(10) DEFAULT NULL,
  `Console` varchar(50) DEFAULT NULL,
  `ConsoleQTY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`Name`, `PEGI`, `Console`, `ConsoleQTY`) VALUES
('Elden Ring: Shadow of the Erdtree', 'PG', 'Xbox 360', 3),
('Final Fantasy VII Rebirth', 'PG', 'PS3', 2),
('Destiny 2: The Final Shape', 'PG', 'PS2', 3),
('Tekken 8', 'PG', 'PS3', 2),
('Persona 3 Reload', 'PG', 'Nintendo 64', 2),
('Cavern of Dreams', '15', 'Nintendo Switch', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `FirstName` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `MemberType` varchar(20) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FirstName`, `Surname`, `MemberType`, `JoinDate`, `DateOfBirth`) VALUES
('Bill', 'Gates', 'Premium', '2024-07-06', '2001-10-12'),
('Elon', 'Musk', 'Premium', '2024-03-28', '2003-07-20'),
('Kamala', 'Harris', 'Standard', '2024-01-05', '1973-05-01'),
('Saanvi', 'Bhatta', 'Standard', '2024-01-01', '2015-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `MemberType` varchar(20) NOT NULL,
  `MembershipFee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`MemberType`, `MembershipFee`) VALUES
('Premium', 20000),
('Standard', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `SessionNumber` int(11) NOT NULL,
  `SessionDay` varchar(10) DEFAULT NULL,
  `SessionStartTime` time DEFAULT NULL,
  `SessionEndTime` time DEFAULT NULL,
  `SessionType` varchar(20) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`SessionNumber`, `SessionDay`, `SessionStartTime`, `SessionEndTime`, `SessionType`, `Floor`, `Price`) VALUES
(1, 'Sunday', '09:00:00', '21:00:00', 'Free', 1, 1500),
(2, 'Sunday', '09:00:00', '21:00:00', 'Free', 2, 2000),
(3, 'Saturday', '09:00:00', '21:00:00', 'Free', 1, 1500),
(4, 'Friday', '18:00:00', '22:00:00', 'Special', 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsoles`
--

CREATE TABLE `sessionconsoles` (
  `SessionNumber` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Console` varchar(50) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsoles`
--

INSERT INTO `sessionconsoles` (`SessionNumber`, `Date`, `Console`, `QTY`) VALUES
(1, '2024-07-22', 'PS2', 2),
(2, '2024-07-22', 'PS3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffName` varchar(50) DEFAULT NULL,
  `SessionNumber` int(11) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffName`, `SessionNumber`, `Role`) VALUES
('Sagar Aryal', 1, 'Cafe'),
('Bikesh Khagdi', 1, 'Maintenance'),
('Saroj Sapkota', 1, 'Counter'),
('Jonathan Shrestha', 2, 'Counter'),
('Rohan Chaudhary', 2, 'Maintenance'),
('Rajeev Karmacharya', 2, 'Cafe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`FirstName`,`Surname`);

--
-- Indexes for table `arcademachine`
--
ALTER TABLE `arcademachine`
  ADD PRIMARY KEY (`MachineNumber`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD KEY `SessionNumber` (`SessionNumber`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`FirstName`,`Surname`),
  ADD KEY `MemberType` (`MemberType`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`MemberType`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`SessionNumber`);

--
-- Indexes for table `sessionconsoles`
--
ALTER TABLE `sessionconsoles`
  ADD KEY `SessionNumber` (`SessionNumber`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD KEY `SessionNumber` (`SessionNumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`FirstName`,`Surname`) REFERENCES `customer` (`FirstName`, `Surname`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`SessionNumber`) REFERENCES `session` (`SessionNumber`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`MemberType`) REFERENCES `membership` (`MemberType`);

--
-- Constraints for table `sessionconsoles`
--
ALTER TABLE `sessionconsoles`
  ADD CONSTRAINT `sessionconsoles_ibfk_1` FOREIGN KEY (`SessionNumber`) REFERENCES `session` (`SessionNumber`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`SessionNumber`) REFERENCES `session` (`SessionNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
