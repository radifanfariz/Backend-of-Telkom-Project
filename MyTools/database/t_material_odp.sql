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
-- Table structure for table `t_material_odp`
--

CREATE TABLE `t_material_odp` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qrcode` varchar(100) NOT NULL,
  `jlh_soc` int(11) NOT NULL,
  `jlh_s_clamp` int(11) NOT NULL,
  `jlh_clamp_ring` int(11) NOT NULL,
  `eviden_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_material_odp`
--

INSERT INTO `t_material_odp` (`id`, `timestamp`, `qrcode`, `jlh_soc`, `jlh_s_clamp`, `jlh_clamp_ring`, `eviden_img`) VALUES
(1, '2020-05-28 11:42:27', 'http://en.m.wikipedia.org', 4, 3, 5, 'mytools/_uploads/20200528_06422615906661459724.jpg'),
(2, '2020-05-28 12:24:28', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07242815906686686983.jpg'),
(3, '2020-05-28 12:27:30', 'http://en.m.wikipedia.org', 1, 4, 4, 'mytools/_uploads/20200528_07273015906688508153.jpg'),
(4, '2020-05-28 12:30:12', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07301215906690125335.jpg'),
(5, '2020-05-28 12:31:41', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07314115906691019273.jpg'),
(6, '2020-05-28 12:36:23', 'http://en.m.wikipedia.org', 3, 3, 3, 'mytools/_uploads/20200528_07362315906693830902.jpg'),
(7, '2020-05-28 12:39:36', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07393615906695769610.jpg'),
(8, '2020-05-28 12:42:03', 'http://en.m.wikipedia.org', 4, 4, 4, 'mytools/_uploads/20200528_07420315906697233423.jpg'),
(9, '2020-05-28 12:44:39', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07443915906698799632.jpg'),
(10, '2020-05-28 12:51:01', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07510115906702611521.jpg'),
(11, '2020-05-28 12:55:50', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07555015906705508499.jpg'),
(12, '2020-05-28 12:57:23', 'http://en.m.wikipedia.org', 1, 1, 1, 'mytools/_uploads/20200528_07572315906706435410.jpg'),
(13, '2020-05-28 13:00:15', 'http://en.m.wikipedia.org', 2, 2, 2, 'mytools/_uploads/20200528_08001515906708151701.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_material_odp`
--
ALTER TABLE `t_material_odp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_material_odp`
--
ALTER TABLE `t_material_odp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
