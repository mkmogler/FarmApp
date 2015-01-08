-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2014 at 09:23 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `FarmApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `Census`
--

CREATE TABLE `Census` (
  `GroupID` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `TotalPigs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DeathType`
--

CREATE TABLE `DeathType` (
  `DeathTypeID` int(11) NOT NULL,
  `DeathTypeNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Drug`
--

CREATE TABLE `Drug` (
  `DrugID` int(11) NOT NULL,
  `DrugNum` int(11) NOT NULL,
  `Dosage` int(11) NOT NULL,
  `NumDosed` int(11) NOT NULL,
  `HospitalNum` int(11) NOT NULL,
  `WithdrawlTime` int(11) NOT NULL,
  `Notes` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `GroupID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `StartInv` int(11) NOT NULL,
  `TotalDead` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupInv`
--

CREATE TABLE `GroupInv` (
  `GroupID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `PigsIn` int(11) NOT NULL,
  `PigsOut` int(11) NOT NULL,
  `InSourceName` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Medications`
--

CREATE TABLE `Medications` (
  `RoomID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `DrugID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mortality`
--

CREATE TABLE `Mortality` (
  `MortalityID` int(11) NOT NULL,
  `DeathTypeID` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE `Room` (
  `RoomID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RoomStats`
--

CREATE TABLE `RoomStats` (
  `RoomID` int(11) NOT NULL,
  `DayDate` date NOT NULL,
  `GroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `RoomStats`
--
ALTER TABLE `RoomStats`
 ADD PRIMARY KEY (`DayDate`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
