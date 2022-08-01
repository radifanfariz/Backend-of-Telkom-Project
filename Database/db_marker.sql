-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 02:27 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_marker`
--

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `distance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`distance`) VALUES
('12'),
('no'),
('no'),
('no'),
('no'),
('no'),
('no'),
('why'),
('2.177527768412055'),
('2.177527768412055'),
('2.177527768412055'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929'),
('3.5929');

-- --------------------------------------------------------

--
-- Table structure for table `t_marker`
--

CREATE TABLE `t_marker` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `is_total` varchar(50) DEFAULT NULL,
  `is_service` varchar(50) DEFAULT NULL,
  `is_avai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_marker`
--

INSERT INTO `t_marker` (`id`, `nama`, `lat`, `lng`, `is_total`, `is_service`, `is_avai`) VALUES
(1, 'odp1', 3.5955263, 98.6504628, '8', '7', '1'),
(2, 'odp2', 3.567896, 98.6648528, '8', '8', '0'),
(3, 'odp3', 3.5791977, 98.6633087, '8', '0', '8'),
(4, 'odp4', 3.600401, 98.6531527, '16', '14', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
