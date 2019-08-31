-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 12:22 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack`
--

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(11) NOT NULL,
  `instrumentid` int(11) NOT NULL,
  `model` text NOT NULL,
  `instrumentname` text NOT NULL,
  `category` text NOT NULL,
  `dateacquired` text NOT NULL,
  `estimatedvalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `instrumentid`, `model`, `instrumentname`, `category`, `dateacquired`, `estimatedvalue`) VALUES
(1, 1, 'DLL', 'Guitar', 'String', 'June 10, 2019', 1000),
(2, 2, 'DLL', 'Violin', 'String', 'June 10, 2019', 1000),
(3, 3, 'DLE', 'Maraccass', 'Drum', 'June 8, 2019', 1000),
(4, 4, 'DLA', 'Flute', 'Blow', 'June 8, 2019', 1000),
(5, 5, 'DLA', 'Trumpet', 'Blow', 'June 7, 2019', 1000),
(6, 6, 'DLL', 'Bass', 'Drum', 'June 7, 2019', 1000),
(7, 7, 'DLA', 'Saxophone', 'Blow', 'avail', 1000),
(8, 8, 'DDL', 'Maraccass', 'Shake', 'avail', 1000),
(9, 9, 'DDL', 'Tambourine', 'Shake', 'avail', 1000),
(10, 10, 'DDA', 'Piano', 'Press', 'avail', 1000),
(11, 11, 'DLL', 'Ukelele', 'String', 'avail', 1000),
(12, 12, 'DLL', 'Electric Guitar', 'String', 'avail', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `studfname` text NOT NULL,
  `studmname` text NOT NULL,
  `studlname` text NOT NULL,
  `address` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentid`, `studfname`, `studmname`, `studlname`, `address`) VALUES
(1, 1, 'Santino', 'Santos', 'Arevalo', 'Argao,Cebu'),
(2, 2, 'Anna', 'Cruz', 'Banatero', 'Sibonga,Cebu'),
(3, 3, 'Blue', 'Boyd', 'Lacson', 'Bogo, Cebu');

-- --------------------------------------------------------

--
-- Table structure for table `student_instrument`
--

CREATE TABLE `student_instrument` (
  `id` int(11) NOT NULL,
  `checkoutdate` text NOT NULL,
  `checkindate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_instrument`
--

INSERT INTO `student_instrument` (`id`, `checkoutdate`, `checkindate`) VALUES
(1, 'June 10, 2019', 'July 1, 2019'),
(2, 'June 8, 2019', 'July 2, 2019'),
(3, 'June 7, 2019', 'July 3, 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_instrument`
--
ALTER TABLE `student_instrument`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_instrument`
--
ALTER TABLE `student_instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
