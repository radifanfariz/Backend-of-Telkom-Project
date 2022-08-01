-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 03:06 PM
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
-- Table structure for table `t_material_pelanggan_outdoor`
--

CREATE TABLE `t_material_pelanggan_outdoor` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlh_clamp_hook` int(11) NOT NULL,
  `jlh_s_clamp` int(11) NOT NULL,
  `jlh_split_stopper` int(11) NOT NULL,
  `eviden_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_material_pelanggan_outdoor`
--

INSERT INTO `t_material_pelanggan_outdoor` (`id`, `timestamp`, `jlh_clamp_hook`, `jlh_s_clamp`, `jlh_split_stopper`, `eviden_img`) VALUES
(1, '2020-05-28 12:55:51', 1, 1, 1, 'mytools/_uploads/20200528_07555015906705508571.jpg'),
(2, '2020-05-28 12:57:23', 1, 1, 1, 'mytools/_uploads/20200528_07572315906706435458.jpg'),
(3, '2020-05-28 13:00:15', 4, 3, 2, 'mytools/_uploads/20200528_08001515906708151972.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_material_pelanggan_outdoor`
--
ALTER TABLE `t_material_pelanggan_outdoor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_material_pelanggan_outdoor`
--
ALTER TABLE `t_material_pelanggan_outdoor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
