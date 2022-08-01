-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 02:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rst`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_profile`
--

CREATE TABLE `p_profile` (
  `id` int(11) NOT NULL,
  `c_profile` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `l_profile` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `d_profile` varchar(50) DEFAULT NULL,
  `nama_form` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p_profile`
--

INSERT INTO `p_profile` (`id`, `c_profile`, `l_profile`, `d_profile`, `nama_form`) VALUES
(12, '01', 'admin', 'user', '/myodp/scripts/omg/index.php'),
(13, '01', 'admin', 'myodp', '/myodp/scripts/omg/myodp_list.php'),
(14, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_1.php'),
(15, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_2.php'),
(16, '01', 'admin', 'user', '/myodp/admin/user/user_list.php'),
(17, '01', 'admin', 'profile', '/myodp/admin/param/profile_list.php'),
(18, '01', 'admin', 'myodp', '/myodp/scripts/odp/laporan_odp_witel.php'),
(19, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_3.php'),
(20, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_butuh_perawatan_witel.php'),
(21, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_perawatan_selected.php'),
(22, '01', 'admin', 'user', ' /myodp/admin/user/user_distinct_list.php'),
(23, '00', 'admin', 'myodp', '/myodp/scripts/odp/laporan_odp_witel.php'),
(24, '00', 'admin', 'myodp', '/myodp/scripts/odp/odp_butuh_perawatan_witel.php'),
(25, '00', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_1.php'),
(26, '00', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_2.php'),
(27, '00', 'admin', 'myodp', '/myodp/scripts/odp/odp_list_3.php'),
(28, '00', 'admin', 'myodp', '/myodp/scripts/odp/odp_perawatan_selected.php'),
(29, '00', 'admin', 'myodp', '/myodp/scripts/omg/myodp_list.php'),
(30, '00', 'admin', 'profile', '/myodp/admin/param/profile_list.php'),
(31, '00', 'admin', 'user', '/myodp/admin/user/user_distinct_list.php'),
(32, '00', 'admin', 'user', '/myodp/admin/user/user_list.php'),
(33, '00', 'admin', 'user', '/myodp/scripts/omg/index.php'),
(34, '01', 'admin', 'user', '/myodp/admin/user/user_distinct_list.php'),
(35, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_selected_witel_photo.php'),
(36, '01', 'admin', 'odp', '/odp/odp_butuh_perawatan_selected_witel_photo.php'),
(37, '01', 'admin', 'odp', '/myodp/scripts/odp/odp_butuh_perawatan_selected_witel_photo.php'),
(38, '01', 'admin', 'myodp', '/myodp/scripts/odp/laporan_odp_witel1.php'),
(39, '01', 'admin', 'myodp', '/myodp/scripts/odp/odp_sehat_selected.php');

-- --------------------------------------------------------

--
-- Table structure for table `p_witel`
--

CREATE TABLE `p_witel` (
  `id` int(11) DEFAULT NULL,
  `c_witel` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_witel`
--

INSERT INTO `p_witel` (`id`, `c_witel`, `witel`) VALUES
(NULL, '01', 'ACEH'),
(NULL, '02', 'MEDAN'),
(NULL, '03', 'SUMUT'),
(NULL, '04', 'SUMBAR'),
(NULL, '05', 'RIDAR'),
(NULL, '06', 'RIKEP'),
(NULL, '07', 'SUMSEL'),
(NULL, '08', 'BABEL'),
(NULL, '09', 'JAMBI'),
(NULL, '10', 'BENGKULU'),
(NULL, '11', 'LAMPUNG'),
(NULL, '12', 'REGIONAL');

-- --------------------------------------------------------

--
-- Table structure for table `t_log_mobile`
--

CREATE TABLE `t_log_mobile` (
  `id` int(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` varchar(100) NOT NULL,
  `apps_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `t_log_mobile`
--

INSERT INTO `t_log_mobile` (`id`, `timestamp`, `userid`, `apps_name`) VALUES
(13, '2021-05-26 11:51:29', '08116091965', 'myodp'),
(14, '2021-05-26 12:02:19', '08116091965', 'myodp'),
(15, '2021-05-26 12:14:04', '08116091965', 'myodp'),
(16, '2021-05-26 12:14:13', '08116091965', 'myodp'),
(17, '2021-05-26 13:12:02', '08116091965', 'myodp'),
(18, '2021-05-26 16:08:12', '08116091965', 'myodp'),
(19, '2021-05-27 04:02:42', '08116091965', 'myodp'),
(20, '2021-05-27 04:37:39', '08116091965', 'myodp'),
(21, '2021-05-27 04:39:19', '08116091965', 'myodp'),
(22, '2021-05-27 04:39:19', '08116091965', 'myodp'),
(23, '2021-05-27 06:21:47', '08116091965', 'myodp'),
(24, '2021-05-27 06:25:46', '08116091965', 'myodp'),
(25, '2021-05-27 06:31:01', '08116091965', 'myodp'),
(26, '2021-05-27 06:32:05', '08116091965', 'myodp'),
(27, '2021-05-27 06:50:13', '08116091965', 'myodp'),
(28, '2021-05-27 06:50:58', '08116091965', 'myodp'),
(29, '2021-05-27 06:52:31', '08116091965', 'myodp'),
(30, '2021-05-27 06:57:39', '08116091965', 'myodp'),
(31, '2021-05-27 07:00:29', '08116091965', 'myodp'),
(32, '2021-05-27 07:05:39', '08116091965', 'myodp'),
(33, '2021-05-27 07:07:33', '08116091965', 'myodp'),
(34, '2021-05-27 07:11:23', '08116091965', 'myodp'),
(35, '2021-05-27 07:13:15', '08116091965', 'myodp'),
(36, '2021-05-27 07:14:00', '08116091965', 'myodp'),
(37, '2021-05-27 07:15:01', '08116091965', 'myodp'),
(38, '2021-05-27 07:16:37', '08116091965', 'myodp'),
(39, '2021-05-27 07:19:05', '08116091965', 'myodp'),
(40, '2021-05-27 07:21:01', '08116091965', 'myodp'),
(41, '2021-05-27 07:22:28', '08116091965', 'myodp'),
(42, '2021-05-27 07:23:21', '08116091965', 'myodp'),
(43, '2021-05-27 07:24:18', '08116091965', 'myodp'),
(44, '2021-05-27 07:24:35', '08116091965', 'myodp'),
(45, '2021-05-27 07:25:03', '08116091965', 'myodp'),
(46, '2021-05-27 07:34:20', '08116091965', 'myodp'),
(47, '2021-05-27 07:35:42', '08116091965', 'myodp'),
(48, '2021-05-27 07:38:11', '08116091965', 'myodp'),
(49, '2021-05-27 07:38:48', '08116091965', 'myodp'),
(50, '2021-05-27 07:41:42', '08116091965', 'myodp'),
(51, '2021-05-27 07:42:19', '08116091965', 'myodp'),
(52, '2021-05-27 07:43:13', '08116091965', 'myodp'),
(53, '2021-05-27 07:44:47', '08116091965', 'myodp'),
(54, '2021-05-27 07:45:32', '08116091965', 'myodp'),
(55, '2021-05-27 07:46:08', '08116091965', 'myodp'),
(56, '2021-05-27 07:47:54', '08116091965', 'myodp'),
(57, '2021-05-27 07:49:29', '08116091965', 'myodp'),
(58, '2021-05-27 07:51:04', '08116091965', 'myodp'),
(59, '2021-05-27 07:52:12', '08116091965', 'myodp'),
(60, '2021-05-27 07:54:31', '08116091965', 'myodp'),
(61, '2021-05-27 07:54:56', '08116091965', 'myodp'),
(62, '2021-05-27 10:09:21', '08116091965', 'myodp'),
(63, '2021-05-27 10:11:43', '08116091965', 'myodp'),
(64, '2021-05-28 13:32:29', '651084', 'myodp'),
(65, '2021-05-28 13:32:32', '08116091965', 'myodp'),
(66, '2021-05-30 04:25:13', '08116091965', 'myodp'),
(67, '2021-05-30 09:42:19', '08116091965', 'myodp'),
(68, '2021-05-30 09:44:34', '08116091965', 'myodp'),
(69, '2021-05-30 09:49:14', '08116091965', 'myodp'),
(70, '2021-05-30 09:51:15', '08116091965', 'myodp'),
(71, '2021-05-30 10:11:59', '08116091965', 'myodp'),
(72, '2021-05-30 10:19:59', '08116091965', 'myodp'),
(73, '2021-05-30 11:28:21', '08116091965', 'myodp'),
(74, '2021-05-30 11:47:01', '08116091965', 'myodp'),
(75, '2021-05-30 12:36:36', '08116091965', 'myodp'),
(76, '2021-05-30 12:52:36', '08116091965', 'myodp'),
(77, '2021-05-30 13:02:44', '08116091965', 'myodp'),
(78, '2021-05-30 13:13:13', '08116091965', 'myodp'),
(79, '2021-05-30 13:31:21', '08116091965', 'myodp'),
(80, '2021-05-30 13:33:49', '08116091965', 'myodp'),
(81, '2021-05-30 13:34:52', '08116091965', 'myodp'),
(82, '2021-05-30 13:37:26', '08116091965', 'myodp'),
(83, '2021-05-30 13:38:15', '08116091965', 'myodp'),
(84, '2021-05-30 13:47:05', '08116091965', 'myodp'),
(85, '2021-05-30 13:47:31', '08116091965', 'myodp'),
(86, '2021-05-30 13:48:57', '08116091965', 'myodp'),
(87, '2021-05-30 13:49:21', '08116091965', 'myodp'),
(88, '2021-05-30 13:50:16', '08116091965', 'myodp'),
(89, '2021-05-30 13:51:33', '08116091965', 'myodp'),
(90, '2021-05-30 14:24:51', '08116091965', 'myodp'),
(91, '2021-05-30 14:25:33', '08116091965', 'myodp'),
(92, '2021-05-30 14:26:09', '08116091965', 'myodp'),
(93, '2021-05-30 14:38:57', '08116091965', 'myodp'),
(94, '2021-05-30 14:39:18', '08116091965', 'myodp'),
(95, '2021-05-30 14:41:36', '08116091965', 'myodp'),
(96, '2021-05-30 14:54:06', '08116091965', 'myodp'),
(97, '2021-05-30 15:02:28', '08116091965', 'myodp'),
(98, '2021-05-30 15:03:53', '08116091965', 'myodp'),
(99, '2021-05-30 15:04:19', '08116091965', 'myodp'),
(100, '2021-05-30 15:06:45', '08116091965', 'myodp'),
(101, '2021-05-30 15:07:25', '08116091965', 'myodp'),
(102, '2021-05-30 15:08:31', '08116091965', 'myodp'),
(103, '2021-05-30 15:11:54', '08116091965', 'myodp'),
(104, '2021-05-30 15:17:09', '08116091965', 'myodp'),
(105, '2021-05-30 15:18:35', '08116091965', 'myodp'),
(106, '2021-05-30 15:20:33', '08116091965', 'myodp'),
(107, '2021-05-30 15:21:05', '08116091965', 'myodp'),
(108, '2021-05-30 15:22:19', '08116091965', 'myodp'),
(109, '2021-05-30 15:26:30', '08116091965', 'myodp'),
(110, '2021-05-30 15:27:24', '08116091965', 'myodp'),
(111, '2021-05-30 15:28:40', '08116091965', 'myodp'),
(112, '2021-05-30 15:38:38', '08116091965', 'myodp'),
(113, '2021-05-30 15:40:25', '08116091965', 'myodp'),
(114, '2021-05-30 15:46:50', '08116091965', 'myodp'),
(115, '2021-05-30 15:47:24', '08116091965', 'myodp'),
(116, '2021-05-30 15:51:05', '08116091965', 'myodp'),
(117, '2021-05-30 15:51:19', '08116091965', 'myodp'),
(118, '2021-05-30 15:53:23', '08116091965', 'myodp'),
(119, '2021-05-30 15:54:32', '08116091965', 'myodp'),
(120, '2021-05-30 15:56:44', '08116091965', 'myodp'),
(121, '2021-05-30 15:57:02', '08116091965', 'myodp'),
(122, '2021-05-30 15:59:51', '08116091965', 'myodp'),
(123, '2021-05-30 16:00:43', '08116091965', 'myodp'),
(124, '2021-05-30 16:01:27', '08116091965', 'myodp'),
(125, '2021-05-30 16:09:27', '08116091965', 'myodp'),
(126, '2021-05-30 16:13:08', '08116091965', 'myodp'),
(127, '2021-05-30 16:18:49', '08116091965', 'myodp'),
(128, '2021-05-30 16:31:54', '08116091965', 'myodp'),
(129, '2021-05-30 16:32:22', '08116091965', 'myodp'),
(130, '2021-05-30 16:45:14', '08116091965', 'myodp'),
(131, '2021-05-30 16:45:42', '08116091965', 'myodp'),
(132, '2021-05-30 16:46:18', '08116091965', 'myodp'),
(133, '2021-05-30 16:47:06', '08116091965', 'myodp'),
(134, '2021-05-30 16:52:25', '08116091965', 'myodp'),
(135, '2021-05-30 16:53:34', '08116091965', 'myodp'),
(136, '2021-05-30 16:55:07', '08116091965', 'myodp'),
(137, '2021-05-30 17:08:07', '08116091965', 'myodp'),
(138, '2021-05-30 17:09:47', '08116091965', 'myodp'),
(139, '2021-05-30 17:10:25', '08116091965', 'myodp'),
(140, '2021-05-30 17:27:01', '08116091965', 'myodp'),
(141, '2021-05-31 01:50:30', '08116091965', 'myodp'),
(142, '2021-05-31 15:57:24', '08116091965', 'myodp'),
(143, '2021-06-02 07:06:39', '08116091965', 'myodp'),
(144, '2021-06-02 15:36:28', '08116091965', 'myodp'),
(145, '2021-06-02 15:38:37', '08116091965', 'myodp'),
(146, '2021-06-02 15:40:23', '08116091965', 'myodp'),
(147, '2021-06-02 15:45:23', '08116091965', 'myodp'),
(148, '2021-06-02 15:50:13', '08116091965', 'myodp'),
(149, '2021-06-02 15:51:27', '08116091965', 'myodp'),
(150, '2021-06-02 15:52:57', '08116091965', 'myodp'),
(151, '2021-06-02 15:53:10', '08116091965', 'myodp'),
(152, '2021-06-02 15:53:41', '08116091965', 'myodp'),
(153, '2021-06-02 15:54:44', '08116091965', 'myodp'),
(154, '2021-06-02 15:55:35', '08116091965', 'myodp'),
(155, '2021-06-02 15:56:03', '08116091965', 'myodp'),
(156, '2021-06-02 16:04:23', '08116091965', 'myodp'),
(157, '2021-06-02 16:05:58', '08116091965', 'myodp'),
(158, '2021-06-02 16:06:25', '08116091965', 'myodp'),
(159, '2021-06-02 16:06:58', '08116091965', 'myodp'),
(160, '2021-06-02 16:07:42', '08116091965', 'myodp'),
(161, '2021-06-02 22:56:47', '08116091965', 'myodp'),
(162, '2021-06-03 05:56:13', '08116091965', 'myodp'),
(163, '2021-06-05 04:23:43', '08116091965', 'myodp'),
(164, '2021-06-09 11:47:47', '08116091965', 'myodp'),
(165, '2021-06-09 11:52:03', '08116091965', 'myodp'),
(166, '2021-06-14 06:44:14', '08116091965', 'myodp'),
(167, '2021-06-14 16:02:18', '08116091965', 'myodp'),
(168, '2021-06-15 06:22:41', '08116091965', 'myodp'),
(169, '2021-06-15 07:15:23', '651084', 'myodp'),
(170, '2021-06-15 08:04:02', '651084', 'myodp');

-- --------------------------------------------------------

--
-- Table structure for table `t_odp`
--

CREATE TABLE `t_odp` (
  `noss_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `odp_index` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `odp_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `witel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sto_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cek` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loker` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_urut` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cek2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_odp`
--

INSERT INTO `t_odp` (`noss_id`, `odp_index`, `odp_name`, `latitude`, `longitude`, `witel`, `sto`, `sto_desc`, `cek`, `loker`, `no_urut`, `nik`, `nama`, `cek2`) VALUES
('410834037', 'FAX/D01/013.01', 'ODP-MDC-FAX/013', '3.597162', '98.67482', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('842370566', 'FAX/D01/014.01', 'ODP-MDC-FAX/014', '3.600152', '98.674225', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772458', 'FAY/D01/001.01', 'ODP-MDC-FAY/001', '3.598594021', '98.66725217', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772464', 'FAY/D01/002.01', 'ODP-MDC-FAY/002', '3.599043958', '98.66728811', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772926', 'FAY/D01/003.01', 'ODP-MDC-FAY/003', '3.599266997', '98.66761096', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772906', 'FAY/D01/004.01', 'ODP-MDC-FAY/004', '3.599268074', '98.66783761', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772368', 'FAY/D01/005.01', 'ODP-MDC-FAY/005', '3.599787452', '98.66788755', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772029', 'FAY/D01/006.01', 'ODP-MDC-FAY/006', '3.599892243', '98.6680258', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772943', 'FAY/D01/007.01', 'ODP-MDC-FAY/007', '3.599971284', '98.66851305', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772786', 'FAY/D01/008.01', 'ODP-MDC-FAY/008', '3.601017038', '98.66904404', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772606', 'FAY/D01/009.01', 'ODP-MDC-FAY/009', '3.600472001', '98.66904198', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069773062', 'FAY/D01/010.01', 'ODP-MDC-FAY/010', '3.599879592', '98.66902284', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772615', 'FAY/D01/011.01', 'ODP-MDC-FAY/011', '3.599264036', '98.66900596', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772620', 'FAY/D01/012.01', 'ODP-MDC-FAY/012', '3.598878159', '98.66900622', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069773051', 'FAY/D01/013.01', 'ODP-MDC-FAY/013', '3.596095548', '98.66892178', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1'),
('1069772344', 'FAY/D01/014.01', 'ODP-MDC-FAY/014', '3.595209938', '98.66808303', 'MEDAN', 'MDC', 'MEDAN CENTRUM', '1', 'TELKOM', '163', '651084', 'MEDIUM', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_odp_checked`
--

CREATE TABLE `t_odp_checked` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `odp_name` varchar(50) DEFAULT NULL,
  `odp_status` varchar(50) DEFAULT NULL,
  `current_latitude` varchar(50) DEFAULT NULL,
  `current_longitude` varchar(50) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_odp_checked`
--

INSERT INTO `t_odp_checked` (`id`, `name`, `alamat`, `odp_name`, `odp_status`, `current_latitude`, `current_longitude`, `keterangan`, `url`, `user_id`, `witel`, `timestamp`) VALUES
(827, NULL, 'HM.YAMIN NO.2', 'ODP-CTR-RAA/007', 'ODP BUTUH PERAWATAN', '3.59273', '98.6774871', 'Testing', 'r_20210429_1205171321009670.jpg', '651084', 'REGIONAL-I', '2021-04-29 05:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `t_rst`
--

CREATE TABLE `t_rst` (
  `id` int(10) NOT NULL,
  `userid` varchar(16) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `imei` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  `lgt` varchar(16) DEFAULT NULL,
  `witel` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_rst`
--

INSERT INTO `t_rst` (`id`, `userid`, `pass`, `nama`, `email`, `imei`, `nik`, `c_profile`, `flagging`, `lat`, `lgt`, `witel`) VALUES
(1882, '08116091965', 'fa845342ff04a7595e896a89c6f99274', 'Medium', 'medium@gmail.com', '567b27985bbf8915', '651084', '01', '10', '3.5927995', '98.6776245', 'REGIONAL-I');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_profile`
--
ALTER TABLE `p_profile`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `t_log_mobile`
--
ALTER TABLE `t_log_mobile`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `t_odp_checked`
--
ALTER TABLE `t_odp_checked`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `t_rst`
--
ALTER TABLE `t_rst`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_profile`
--
ALTER TABLE `p_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `t_log_mobile`
--
ALTER TABLE `t_log_mobile`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `t_odp_checked`
--
ALTER TABLE `t_odp_checked`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT for table `t_rst`
--
ALTER TABLE `t_rst`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1883;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
