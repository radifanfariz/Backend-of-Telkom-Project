-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 09:07 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mytools`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_collections`
--

CREATE TABLE `t_collections` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(50) NOT NULL,
  `service_number` varchar(50) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `photo_url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_collections`
--

INSERT INTO `t_collections` (`id`, `timestamp`, `userid`, `service_number`, `cust_name`, `alamat`, `status`, `keterangan`, `lat`, `lng`, `photo_url`) VALUES
(1, '2020-05-14 06:16:52', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', '98.8229093', '1.6904597', 'Test'),
(2, '2020-05-14 06:19:15', 'Test 2', 'Test', 'Test', 'Test', 'Test', 'Test', '98.8229093', '1.6904597', 'Test'),
(3, '2020-05-14 06:24:14', '08116091965', '', 'testtesttest', '', 'Collected', '', '98.8229093', '1.6904597', 'mytools/_uploads/20200514_01241415894374541967.jpg'),
(4, '2020-05-14 13:13:06', '08116091965', '232323', 'testtesttest', 'jl.santuy', 'OnProgress', 'santuy cuy', '98.8229093', '1.6904597', 'mytools/_uploads/20200514_08130615894619859943.jpg'),
(5, '2020-05-14 13:14:04', '08116091965', '1234567890', 'berhasil', 'jl.kebersamaan', 'Collected', 'sans aja', '1.6908135', '98.8232009', 'mytools/_uploads/20200515_12144615895196869351.jpg'),
(6, '2020-05-14 13:26:50', '08116091965', '', 'testtesttest', '', 'OnProgress', '', '1.6907888', '98.8232128', 'mytools/_uploads/20200514_08265015894628103019.jpg'),
(7, '2020-05-14 13:27:22', '08116091965', '', 'testtesttest', '', 'OnProgress', '', '1.6907895', '98.8232089', 'mytools/_uploads/20200514_08272215894628429254.jpg'),
(8, '2020-05-14 13:41:01', '08116091965', '', 'testtesttest', '', 'OnProgress', '', '1.6909664', '98.8232383', 'mytools/_uploads/20200514_08410115894636618042.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_collections`
--
ALTER TABLE `t_collections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_collections`
--
ALTER TABLE `t_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
