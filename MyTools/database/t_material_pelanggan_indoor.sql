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
-- Table structure for table `t_material_pelanggan_indoor`
--

CREATE TABLE `t_material_pelanggan_indoor` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlh_roset_optic` int(11) NOT NULL,
  `jlh_soc` int(11) NOT NULL,
  `eviden_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_material_pelanggan_indoor`
--

INSERT INTO `t_material_pelanggan_indoor` (`id`, `timestamp`, `jlh_roset_optic`, `jlh_soc`, `eviden_img`) VALUES
(1, '2020-05-28 12:55:51', 1, 1, 'mytools/_uploads/20200528_07555015906705508571.jpg'),
(2, '2020-05-28 12:57:23', 1, 1, 'mytools/_uploads/20200528_07572315906706435458.jpg'),
(3, '2020-05-28 13:00:15', 3, 3, 'mytools/_uploads/20200528_08001515906708151972.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_material_pelanggan_indoor`
--
ALTER TABLE `t_material_pelanggan_indoor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_material_pelanggan_indoor`
--
ALTER TABLE `t_material_pelanggan_indoor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
