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
-- Database: `db_images`
--

-- --------------------------------------------------------

--
-- Table structure for table `b_witel`
--

CREATE TABLE `b_witel` (
  `id` int(10) UNSIGNED NOT NULL,
  `witel` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `b_witel`
--

INSERT INTO `b_witel` (`id`, `witel`) VALUES
(1, 'ACEH'),
(2, 'MEDAN'),
(3, 'SUMUT'),
(4, 'SUMBAR'),
(5, 'RIDAR'),
(6, 'RIKEP'),
(7, 'SUMSEL'),
(8, 'BABEL'),
(9, 'JAMBI'),
(10, 'BENGKULU'),
(11, 'LAMPUNG'),
(12, '-'),
(13, 'TREG1');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filename2` varchar(50) DEFAULT NULL,
  `filename3` varchar(50) DEFAULT NULL,
  `filename4` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(1, '2019-06-17 18:05:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19945450', NULL, NULL, 'AURELIA SAPUTRI', 'AURELIA SAPUTRI', 'The Palace Residence Blok A No 55', '3.568398', '98.6757021', 'ODP-MDC-FJ/015', 'PANEL01', '1', '3.568398', '98.6757021', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0091EHKOVO', '-', '81265550635', '', '3.568398', '98.6757021', 'rumah besar perumahan the place no.55', 'uploads/20190617_110536.jpg.jpg', '20190617_110536.jpg', NULL, NULL, NULL, 'open'),
(27, '2019-06-19 00:27:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013838', NULL, NULL, 'mempa simatupang', 'jln ayahanda no 6', 'jln ayahanda no 6', '3.5910991', '98.6533031', 'ODP-MDC-FD/014', 'SPLITTER-01', '3', '3.5911287', '98.6531793', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00YVO155MO', 'TX00YVO155MO', '82284515244', '861930049684836', '3.591093', '98.6532635', 'baik', 'uploads/20190618_052737.jpg.jpg', '20190618_052737.jpg', NULL, NULL, NULL, 'open'),
(3, '2019-06-17 18:20:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19946958', NULL, NULL, 'irvan syahputra', 'jl sei wampu baru no 18', 'jl sei eampu baru no 18', '3.5837887', '98.6550306', 'odp-mdc-fbm/052', 'SPLITTER-02', '14', '3.5837763', '98.6551707', 'NIHIL', 'NIHIL', '', '', 'TX00LJGGRTNI', '-', '81260003335', '866949030381413', '3.5838474', '98.6548039', 'warna kuning , pagar hitam', 'uploads/20190617_112016.jpg.jpg', '20190617_112016.jpg', NULL, NULL, NULL, 'open'),
(16, '2019-06-18 23:00:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013441', NULL, NULL, 'YAZIDA ANGELINA T PARINDURI', 'JL.SAMPURNO NO.10', 'JL.SAMPURNO NO.10', '3.5998503', '98.6916677', 'ODP-MDC-FCJ/019', 'SPLITTER-01', '3', NULL, NULL, 'NIHIL', NULL, 'NIHIL', '', NULL, NULL, '82299217915', NULL, '3.6000268', '98.6915446', 'LENGKAP', 'uploads/20190618_040021.jpg.jpg', '20190618_040021.jpg', NULL, NULL, NULL, 'open'),
(7, '2019-06-17 18:44:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19941709', NULL, NULL, 'mariana', 'jl.taruma gg siti no 47', 'jl.taruma gg siti no 47', '3.5850281', '98.66862', 'ODP-MDC-FAA/026', 'SPLITTER-01', '7', '3.5850245', '98.6684142', 'NIHIL', 'NIHIL', '', '', 'TX00Q8XT3XVG', '-', '81276595573', '868174031215720', '3.5850362', '98.6686183', 'GAMBAR 1', 'uploads/20190617_114414.jpg.jpg', '20190617_114414.jpg', NULL, NULL, NULL, 'open'),
(50, '2019-06-19 23:53:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922493', '98.70307', 'warna kuning', 'uploads/20190619_045312.jpg.jpg', '20190619_045312.jpg', NULL, NULL, NULL, 'open'),
(29, '2019-06-19 00:40:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20014889', NULL, NULL, 'CESELINA', 'jln.Tampol 4 no.32A', 'jln.tampol 4 no.32A', '3.570062', '98.6800935', 'ODP-MDC-FGE/002', 'SPLITTER-01', '5', '3.570062', '98.6800935', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81375259991', '863308044028812', '3.5700967', '98.6801097', 'taman polonia 5 no.23A', 'uploads/20190618_054001.jpg.jpg', '20190618_054001.jpg', NULL, NULL, NULL, 'open'),
(32, '2019-06-19 16:56:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216672', NULL, NULL, 'ERNI OKTAVIA', 'Jl Punak Ujung No 2B', 'Jl Punak Ujung Np 2B', '3.5962339', '98.6630393', 'ODP-MDC-FFG/041', 'SPLITTER-01', '3', '3.5962857', '98.6630573', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00U9UDFHDW', 'TX00U9UDFHDW', '81274481238', '867059041727239', '3.5962317', '98.6630349', 'Foto Rumah Pelanggan', 'uploads/20190619_095613.jpg.jpg', '20190619_095613.jpg', NULL, NULL, NULL, 'open'),
(51, '2019-06-19 23:53:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922492', '98.7030701', 'warna kuning', 'uploads/20190619_045321.jpg.jpg', '20190619_045321.jpg', NULL, NULL, NULL, 'open'),
(34, '2019-06-19 17:34:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20042322', NULL, NULL, 'Putri Alaina', 'bahagia gg.sederhana', 'bahagia gg.sederhana', '3.5826704', '98.6816282', 'ODP-MDC-FAK/044', 'SPLITTER-01', '1', '3.5829043', '98.6814711', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '82212081159', '868240030864808', '3.5854956', '98.6801067', 'rumah warna orange', 'uploads/20190619_103448.jpg.jpg', '20190619_103448.jpg', NULL, NULL, NULL, 'open'),
(49, '2019-06-19 23:52:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.592245', '98.7030614', 'warna kuning', 'uploads/20190619_045248.jpg.jpg', '20190619_045248.jpg', NULL, NULL, NULL, 'open'),
(40, '2019-06-19 18:57:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19995273', NULL, NULL, 'jonson lim', 'jalan tumapel 2a', 'jalan tumapel 2a', '3.5861981', '98.6719881', 'ODP-MDC-FAA/019', 'SPLITTER-02', '6', '3.5861871', '98.6720065', 'NIHIL', 'NIHIL', '', '', 'TX00FC4HEOUN', 'TX00FC4HEOUN', '81276595573', '868174031215720', '3.5862389', '98.6719974', 'Gambar 1', 'uploads/20190619_115711.jpg.jpg', '20190619_115711.jpg', NULL, NULL, NULL, 'open'),
(42, '2019-06-19 20:10:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20054455', NULL, NULL, 'Santi Malahayati', 'jln b Katamso no 499', 'jln b Katamso no 499', '3.5639029', '98.6877378', 'ODP-MDC-FFD/048', 'SPLITTER-01', '5', '3.5639029', '98.6877378', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81265550635', '866196033440859', '3.5651447', '98.6887695', 'dibelakang toko batu nisan katamso pagar warna hitam', 'uploads/20190619_011032.jpg.jpg', '20190619_011032.jpg', NULL, NULL, NULL, 'open'),
(43, '2019-06-19 20:40:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218132', NULL, NULL, 'supiatman', 'jl.pasundang gg. sedulur no.46', 'jl. pasundan gg sedulur no. 46', '3.5941305', '98.6584227', 'ODP-MDC-FL/055', 'SPLITTER-01', '7', '3.5941305', '98.6584227', 'NIHIL', 'NIHIL', 'kosong', '', 'TX006G76AWGP', 'TX006G76AWGP', '81274481238', '869382033734098', '3.5941346', '98.6584644', 'rumah pelanggan', 'uploads/20190619_014014.jpg.jpg', '20190619_014014.jpg', NULL, NULL, NULL, 'open'),
(44, '2019-06-19 20:47:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218131', NULL, NULL, 'Tika amelia', 'jl. ayahanda no. 14B', 'jl. ayahanda no. 14B', '3.5920115', '98.6532944', 'ODP-MDC-FD/085', 'SPLITTER-01', '2', '3.5918423', '98.6538654', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00YNRRNBQ4', 'TX00YNRRNBQ4', '81274481238', '867976035108482', '3.5918419', '98.6538676', 'sebelah jl. panci', 'uploads/20190619_014756.jpg.jpg', '20190619_014756.jpg', NULL, NULL, NULL, 'open'),
(45, '2019-06-19 20:59:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20058595', NULL, NULL, 'RESNA ULI BR SARAGIH', 'MEDAN', 'JLN SINDORO NO.8', '3.5876964', '98.68705', 'ODP MDC FCY 48', 'SPLITTER-01', '2', '3.5868185', '98.6877504', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00F80TGS4K', 'TX00F80TGS4K', '82272108608', '869722032218371', '3.5867435', '98.6875398', 'RUMAH PELANGGAN', 'uploads/20190619_015925.jpg.jpg', '20190619_015925.jpg', NULL, NULL, NULL, 'open'),
(46, '2019-06-19 21:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20061750', NULL, NULL, 'DAYAT', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', '3.5833453', '98.6746695', 'ODP-MDC-FAH/055', 'SPLITTER-02', '7', '3.58345', '98.6746832', 'NIHIL', 'NIHIL', '', '', 'TX008QI4113U', 'TX00CUT6EI4J', '81276595573', '868174031215720', '3.5831523', '98.6748766', 'gambar 1', 'uploads/20190619_024614.jpg.jpg', '20190619_024614.jpg', NULL, NULL, NULL, 'open'),
(52, '2019-06-19 23:56:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP-MDC-FCA/021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5961875', '98.7005842', 'warna kuning', 'uploads/20190619_045658.jpg.jpg', '20190619_045658.jpg', NULL, NULL, NULL, 'open'),
(53, '2019-06-20 15:23:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217923', NULL, NULL, '', 'yusniwarti', 'jln.bantam no. 10', '3.6537394', '98.6848127', 'odp-mdc-FGC 040', 'SPLITTER-02', '2', '3.5807354', '98.664378', 'NIHIL', 'NIHIL', '', '', 'TX00R904OJ5D', 'TX00R904OJ5D', '82363707388', '351928085446000', '3.5807278', '98.6643819', 'dekat sekolah cahaya, depan rumah ada pohon mangga', 'uploads/20190620_082325.jpg.jpg', '20190620_082325.jpg', NULL, NULL, NULL, 'open'),
(54, '2019-06-20 16:43:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756493', '98.685604', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094319.jpg.jpg', '20190620_094319.jpg', NULL, NULL, NULL, 'open'),
(94, '2019-06-21 22:01:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218212', NULL, NULL, 'homeschooling primagama', '', 'jln sei bahorok no 36,/11', '3.5782389', '98.6532113', 'odp-mdc-FA024', 'SPLITTER-02', '8', '3.5781534', '98.6532621', 'NIHIL', 'NIHIL', '', '', 'TX0001KTCV2G', 'TX0001KTCV2G', '82363707388', '351928085446000', '3.5781268', '98.6532923', 'depan kantor bawaslu', 'uploads/20190621_030158.jpg.jpg', '20190621_030158.jpg', NULL, NULL, NULL, 'open'),
(93, '2019-06-21 22:01:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '2p', NULL, NULL, 'jona chandra', 'jln.pahlawan gg.lumumba no.41', 'jln.pahlawan gg.lumumba no.41', '3.5938199', '98.7014952', 'ODP-MDC-FCB/035', 'SPLITTER-01', '4', '3.5938199', '98.7014952', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX009HU1PKM3', '', '81223937163', '358489092841546', '3.5938199', '98.7014952', 'warna kuning', 'uploads/20190621_030137.jpg.jpg', '20190621_030137.jpg', NULL, NULL, NULL, 'open'),
(57, '2019-06-20 16:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696206', '98.6844628', 'warna hijau pandan', 'uploads/20190620_095856.jpg.jpg', '20190620_095856.jpg', NULL, NULL, NULL, 'open'),
(58, '2019-06-20 16:59:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696324', '98.684457', 'warna hijau pandan', 'uploads/20190620_095900.jpg.jpg', '20190620_095900.jpg', NULL, NULL, NULL, 'open'),
(59, '2019-06-20 17:43:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209209021', NULL, NULL, 'andry', '', 'jl. sultan hasanuddin no. 12', '3.5830059', '98.6641867', 'odp-mdc-FGC 079', 'SPLITTER-01', '4', '3.5830727', '98.66359', 'NIHIL', 'NIHIL', '', '', 'TX005082IGEO', 'TX005082IGEO', '82363707388', '351928085446000', '3.5830787', '98.6635712', 'jln hasanuddin sebelah rumah kosong', 'uploads/20190620_104346.jpg.jpg', '20190620_104346.jpg', NULL, NULL, NULL, 'open'),
(60, '2019-06-20 18:06:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20096885', NULL, NULL, 'citra dewi', 'jalan putri hijau no 37', 'jalan putri hijau no 37', '3.5977817', '98.675725', 'ODP-MDC-FAW-34', 'SPLITTER-02', '6', '3.5977798', '98.6757207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX001IVD7BXM', 'TX001IVD7BXM', '81274481238', '861930049684836', '3.5976711', '98.6755613', 'rumah pelanggan', 'uploads/20190620_110647.jpg.jpg', '20190620_110647.jpg', NULL, NULL, NULL, 'open'),
(61, '2019-06-20 18:06:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.6038094', '98.6960439', 'LENGKAP', 'uploads/20190620_110650.jpg.jpg', '20190620_110650.jpg', NULL, NULL, NULL, 'open'),
(62, '2019-06-20 18:07:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.603823', '98.6960423', 'LENGKAP', 'uploads/20190620_110707.jpg.jpg', '20190620_110707.jpg', NULL, NULL, NULL, 'open'),
(63, '2019-06-20 18:37:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843745', '98.6676948', '177', 'uploads/20190620_113743.jpg.jpg', '20190620_113743.jpg', NULL, NULL, NULL, 'open'),
(64, '2019-06-20 18:37:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843484', '98.667687', '177', 'uploads/20190620_113748.jpg.jpg', '20190620_113748.jpg', NULL, NULL, NULL, 'open'),
(65, '2019-06-20 18:54:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20097981', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5843542', '98.6795537', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5843933', '98.6795657', 'NIHIL', 'NIHIL', 'nihil', '', 'TX00XSNPLR0L', '', '82274174147', '869723035366639', '3.584376', '98.6795805', 'foto rumah pelanggan', 'uploads/20190620_115422.jpg.jpg', '20190620_115422.jpg', NULL, NULL, NULL, 'open'),
(66, '2019-06-20 19:27:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217949', NULL, NULL, 'RUSLIANTO', 'jl. panci no. 23', 'jl. panci no. 23', '3.5916357', '98.6565553', 'ODP-MDC-FD/82', 'SPLITTER-01', '5', '3.5916784', '98.6572593', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00E4FXSZJL', 'TX00E4FXSZJL', '81274481238', '867976035108482', '3.5915942', '98.6565617', 'jl. panci', 'uploads/20190620_122747.jpg.jpg', '20190620_122747.jpg', NULL, NULL, NULL, 'open'),
(67, '2019-06-20 20:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030308', '98.6859952', 'LENGKAP', 'uploads/20190620_013253.jpg.jpg', '20190620_013253.jpg', NULL, NULL, NULL, 'open'),
(68, '2019-06-20 20:33:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030309', '98.6859952', 'LENGKAP', 'uploads/20190620_013304.jpg.jpg', '20190620_013304.jpg', NULL, NULL, NULL, 'open'),
(69, '2019-06-20 21:16:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5833416', '98.6702947', 'rupel', 'uploads/20190620_021628.jpg.jpg', '20190620_021628.jpg', NULL, NULL, NULL, 'open'),
(70, '2019-06-20 21:16:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.583302', '98.6702436', 'rupel', 'uploads/20190620_021637.jpg.jpg', '20190620_021637.jpg', NULL, NULL, NULL, 'open'),
(71, '2019-06-20 22:17:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_031756.jpg.jpg', '20190620_031756.jpg', NULL, NULL, NULL, 'open'),
(72, '2019-06-20 22:22:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984882', '98.7021159', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032255.jpg.jpg', '20190620_032255.jpg', NULL, NULL, NULL, 'open'),
(73, '2019-06-20 22:22:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032256.jpg.jpg', '20190620_032256.jpg', NULL, NULL, NULL, 'open'),
(74, '2019-06-20 22:38:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033829.jpg.jpg', '20190620_033829.jpg', NULL, NULL, NULL, 'open'),
(75, '2019-06-20 22:38:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033832.jpg.jpg', '20190620_033832.jpg', NULL, NULL, NULL, 'open'),
(76, '2019-06-21 00:13:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20122181', NULL, NULL, 'muhammad yusuf alsani', 'jalan rukun no 27', 'jalan rukun no 27', '3.5867376', '98.6553139', 'ODP- MDC-FBF-45', 'SPLITTER-01', '5', '3.5867831', '98.6553207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TZZ0JHYH3YO8', 'TZZ0JHYH3YO8', '81274481238', '861930049684836', '3.5867711', '98.6553121', 'rumah pelanggan', 'uploads/20190620_051359.jpg.jpg', '20190620_051359.jpg', NULL, NULL, NULL, 'open'),
(77, '2019-06-21 00:14:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5770764', '98.6846427', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051423.jpg.jpg', '20190620_051423.jpg', NULL, NULL, NULL, 'open'),
(78, '2019-06-21 00:14:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5767568', '98.6853305', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051441.jpg.jpg', '20190620_051441.jpg', NULL, NULL, NULL, 'open'),
(79, '2019-06-21 01:10:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061023.jpg.jpg', '20190620_061023.jpg', NULL, NULL, NULL, 'open'),
(80, '2019-06-21 01:15:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061505.jpg.jpg', '20190620_061505.jpg', NULL, NULL, NULL, 'open'),
(81, '2019-06-21 01:20:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20117400', NULL, NULL, 'KOK LIANG HWA', 'MEDAN', 'JLN THAMRIN NO.47-49', '3.5947107', '98.6882587', 'ODP MDC FEC 39', 'SPLITTER-02', '6', '3.5946515', '98.6883218', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00Q3TVV1Z0', 'TX00Q3TVV1Z0', '82272108608', '869722032218371', '3.5947107', '98.6882587', 'RUMAH PELANGGAN', 'uploads/20190620_062010.jpg.jpg', '20190620_062010.jpg', NULL, NULL, NULL, 'open'),
(83, '2019-06-21 17:21:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152710', NULL, NULL, 'NOVITA HARYANI', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.6004563', '98.6532264', 'ODP-MDC-FF/134', 'SPLITTER-01', '8', '3.600401', '98.6531527', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00EMFQQSMD', 'TX00EMFQQSMD', '81274481238', '867059041727239', '3.6003757', '98.6530672', 'Rumah Pelanggan', 'uploads/20190621_102131.jpg.jpg', '20190621_102131.jpg', NULL, NULL, NULL, 'open'),
(84, '2019-06-21 17:29:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152942Q', NULL, NULL, 'zuharmansyah', 'jalan gelas no 99', 'jalan gelas no 99', '3.597317', '98.6584675', 'ODP MDC FF 142', 'SPLITTER-01', '4', '3.597316', '98.6584669', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973195', '98.6584694', 'rumah pelanggan', 'uploads/20190621_102959.jpg.jpg', '20190621_102959.jpg', NULL, NULL, NULL, 'open'),
(92, '2019-06-21 22:01:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3p', NULL, NULL, 'jona chandra', 'jln.pahlawan gg.lumumba no.41', 'jln.pahlawan gg.lumumba no.41', '3.5938199', '98.7014952', 'ODP-MDC-FCB/035', 'SPLITTER-01', '4', '3.5938199', '98.7014952', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX009HU1PKM3', '', '81223937163', '358489092841546', '3.5938232', '98.7011512', 'warna kuning', 'uploads/20190621_030117.jpg.jpg', '20190621_030117.jpg', NULL, NULL, NULL, 'open'),
(91, '2019-06-21 20:51:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20164773', NULL, NULL, 'HANDE', 'MEDAN', 'JLN SUTOMO DALAM NO.16 Q', '3.5961166', '98.681726', 'ODP MDC FCN 34', 'SPLITTER-02', '5', '3.5961213', '98.6817459', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00N44RWDAH', '5743472400040', '82272108608', '869722032218371', '3.5960639', '98.681778', 'RUMAH PELANGGAN', 'uploads/20190621_015154.jpg.jpg', '20190621_015154.jpg', NULL, NULL, NULL, 'open'),
(87, '2019-06-21 18:49:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218203', NULL, NULL, 'junaidi', '', 'sei wampu baru no 7', '3.5834442', '98.6565124', 'odp-mdc-FBM 050', 'SPLITTER-01', '8', '3.5835298', '98.6563436', 'NIHIL', 'NIHIL', '', '', 'TX00XJVOSYKG', 'TX00XJVOSYKG', '82363707388', '351928085446000', '3.583559', '98.6563027', 'rumah jual air', 'uploads/20190621_114911.jpg.jpg', '20190621_114911.jpg', NULL, NULL, NULL, 'open'),
(88, '2019-06-21 18:54:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017328', '98.7020321', 'LENGKAP', 'uploads/20190621_115436.jpg.jpg', '20190621_115436.jpg', NULL, NULL, NULL, 'open'),
(89, '2019-06-21 18:54:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017329', '98.7020327', 'LENGKAP', 'uploads/20190621_115456.jpg.jpg', '20190621_115456.jpg', NULL, NULL, NULL, 'open'),
(90, '2019-06-21 19:11:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20153782', NULL, NULL, 'HUSIN', 'JL KATAMSO GG MANTRI NO.16B', 'jl katamso gg mantri no. 16b', '3.5785752', '98.6811654', 'ODP-MDC-FAL/012', 'SPLITTER-01', '4', '3.5785747', '98.6811766', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGCSHRHX', 'TX00BGCSHRHX', '81265550635', '866196033440859', '3.5785751', '98.6811725', 'masuk jalan mantri paling ujung turun turunan nomor 16 B', 'uploads/20190621_121110.jpg.jpg', '20190621_121110.jpg', NULL, NULL, NULL, 'open'),
(95, '2019-06-21 22:44:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20172279', NULL, NULL, 'sumery', 'jalan cengal no 90', 'jalan cengal no 90', '3.5962076', '98.6635697', 'ODP MDC FFG 31', 'SPLITTER-01', '3', '3.5963335', '98.6634966', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BHKG0VMS', '', '81274481238', '861930049684836', '3.5962548', '98.6635537', 'rumah pelanggan', 'uploads/20190621_034455.jpg.jpg', '20190621_034455.jpg', NULL, NULL, NULL, 'open'),
(96, '2019-06-21 23:17:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20157261', NULL, NULL, 'syahrial', 'Ruangan OPS mess dan gedung lantai 6', 'Ruangan OPS mess dan gedung lantai 6', '3.5807965', '98.6715808', 'ODP-MDC-FAE/061', 'SPLITTER-01', '1', '3.5808359', '98.6715768', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGZ7GCHG', 'TX00BGZ7GCHG', '82212081159', '868240030864808', '3.5808026', '98.6716268', 'kantor gubernur pak edy', 'uploads/20190621_041739.jpg.jpg', '20190621_041739.jpg', NULL, NULL, NULL, 'open'),
(97, '2019-06-21 23:21:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20156777', NULL, NULL, 'Syahrial', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', '3.5807839', '98.6715873', 'ODP-MDC-FAE/058', 'SPLITTER-01', '3', '3.5808326', '98.6715807', 'NIHIL', 'NIHIL', 'Nihil', '', 'TX007EVP378L', 'TX007EVP378L', '82212081159', '868240030864808', '3.5808335', '98.6715864', 'kantor gubernur lantai 6', 'uploads/20190621_042132.jpg.jpg', '20190621_042132.jpg', NULL, NULL, NULL, 'open'),
(98, '2019-06-22 01:04:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20161210', NULL, NULL, 'M. Archie dhio kadarsyah', 'Jln. S Parman Gg.harapan No.27', 'Jln. S Parman Gg.harapan No.27', '3.5835295', '98.6676892', 'ODP-MDC-FGC/073', 'SPLITTER-02', '13', '3.5840317', '98.6669833', 'NIHIL', 'NIHIL', '', '', 'TX00DJ5EJ08E', 'TX00DJ5EJ08E', '82363707388', '868041032831252', '3.5835552', '98.66778', 'Rumah Pelanggan', 'uploads/20190621_060405.jpg.jpg', '20190621_060405.jpg', NULL, NULL, NULL, 'open'),
(99, '2019-06-22 01:04:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20161210', NULL, NULL, 'M. Archie dhio kadarsyah', 'Jln. S Parman Gg.harapan No.27', 'Jln. S Parman Gg.harapan No.27', '3.5835295', '98.6676892', 'ODP-MDC-FGC/073', 'SPLITTER-02', '13', '3.5840317', '98.6669833', 'NIHIL', 'NIHIL', '', '', 'TX00DJ5EJ08E', 'TX00DJ5EJ08E', '82363707388', '868041032831252', '3.5835574', '98.6677846', 'Rumah Pelanggan', 'uploads/20190621_060411.jpg.jpg', '20190621_060411.jpg', NULL, NULL, NULL, 'open'),
(100, '2019-06-22 01:25:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20179073', NULL, NULL, 'ROTAMA RAMADHAN', 'Jl.Rakyat no.56ABCD', 'Jl.Rakyat no.56ABCD', '3.6048152', '98.6914808', 'ODP-MDC-FEG/016', 'SPLITTER-01', '4', '3.6048637', '98.6914743', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0083XP735Z', 'TX00WW0HMEK5', '82299217915', '863387048374133', '3.6048224', '98.6914793', 'LENGKAP', 'uploads/20190621_062502.jpg.jpg', '20190621_062502.jpg', NULL, NULL, NULL, 'open'),
(101, '2019-06-22 01:56:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218177', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.582165', '98.6683214', 'no 33 Ket rumah paling ujung', 'uploads/20190621_065612.jpg.jpg', '20190621_065612.jpg', NULL, NULL, NULL, 'open'),
(102, '2019-06-22 02:31:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218196', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.5815867', '98.6672566', 'no 33 Ket rumah paling ujung', 'uploads/20190621_073104.jpg.jpg', '20190621_073104.jpg', NULL, NULL, NULL, 'open'),
(103, '2019-06-22 02:42:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20182490', NULL, NULL, 'nurhasanah ardiati nasution', 'jalan makamah no 1', 'jalan makamah no 1', '3.5790033', '98.6851813', 'ODP-MDC-FAM/046', 'SPLITTER-02', '7', '3.5788737', '98.6848369', 'NIHIL', 'NIHIL', '', '', 'TX00S66ZX77S', 'TX00S66ZX77S', '81276595573', '868174031215720', '3.5786676', '98.6850249', 'gambar1', 'uploads/20190621_074210.jpg.jpg', '20190621_074210.jpg', NULL, NULL, NULL, 'open'),
(104, '2019-06-22 15:58:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20181828', NULL, NULL, 'ALBERT KRISTIAN SIMANGUNGSONG', 'Jl Cangkir No 5', 'Jl Cangkir No 5', '3.5964285', '98.6571395', 'ODP-MDC-FF/143', 'SPLITTER-01', '1', '3.5964448', '98.6571441', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QSIXKHJ2', 'TX00QSIXKHJ2', '81274481238', '867059041727239', '3.5964665', '98.6571479', 'RUMAH PELANGGAN', 'uploads/20190622_085843.jpg.jpg', '20190622_085843.jpg', NULL, NULL, NULL, 'open'),
(105, '2019-06-22 16:27:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20202526', NULL, NULL, 'roni putra', 'jl mongonsidi Gg baru 23', 'jl mongonsidi Gg barub23', '3.5700935', '98.6684286', 'odp-mdc-FAC/031', 'SPLITTER-01', '6', '3.5697117', '98.6691692', 'NIHIL', 'NIHIL', '', '', 'TX00KAAHXWA5', 'TX00KAAHXWA5', '81260003335', '356783100820688', '3.5697182', '98.6684816', 'cat putih , ada pohon jambu nya', 'uploads/20190622_092714.jpg.jpg', '20190622_092714.jpg', NULL, NULL, NULL, 'open'),
(106, '2019-06-22 18:15:49', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216835', NULL, NULL, 'pogy kukniawan', '', 'sei kapuas kom kapuas no 1a', '3.5839855', '98.6470538', '0dp-mdc-FBM 85', 'SPLITTER-01', '5', '3.5838417', '98.6469671', 'NIHIL', 'NIHIL', '', '', 'TX00FSKYA1B7', 'TX00FSKYA1B7', '82363707388', '351928085446000', '3.5838427', '98.6469642', 'kom kapuas no 1 a', 'uploads/20190622_111549.jpg.jpg', '20190622_111549.jpg', NULL, NULL, NULL, 'open'),
(107, '2019-06-22 20:10:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20208384', NULL, NULL, 'ARIFIN', 'Jl Gatsu No 12F', 'Jl Gatsu No 12F', '3.5925764', '98.667794', 'ODP-MDC-FGL/24', 'SPLITTER-01', '7', '3.592467', '98.6663311', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QJYEDBO5', 'TX00QJYEDBO5', '81274481238', '867059041727239', '3.5925001', '98.6663691', 'RUMAH PELANGGAN', 'uploads/20190622_011038.jpg.jpg', '20190622_011038.jpg', NULL, NULL, NULL, 'open'),
(108, '2019-06-22 22:31:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20217756', NULL, NULL, 'zay', 'jl. katamso dalam', 'pantai burung 1', '3.5771091', '98.6829767', 'ODP-MDC-FAL/029', 'SPLITTER-01', '8', '3.5771011', '98.6829605', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D9XHGMVK', 'TX00D9XHGMVK', '82212081159', '868240030864808', '3.5771091', '98.6829767', 'rumah paling ujung sebelah kiri pagar coklat', 'uploads/20190622_033137.jpg.jpg', '20190622_033137.jpg', NULL, NULL, NULL, 'open'),
(109, '2019-06-22 23:28:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20218325', NULL, NULL, 'marthin rahino sy', 'jl pekong 1 no 25', 'jl pekong 1 no 25', '3.5632', '98.6672607', 'odp-mdc-fac/130', 'SPLITTER-01', '4', '3.5645473', '98.6675357', 'NIHIL', 'NIHIL', '', '', 'TX00WOA4WD82', 'TX00WOA4WD82', '81260003335', '356783100820688', '3.5645393', '98.6674641', 'cat putih pagar hijau', 'uploads/20190622_042807.jpg.jpg', '20190622_042807.jpg', NULL, NULL, NULL, 'open'),
(110, '2019-06-23 00:26:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20222018', NULL, NULL, 'nita verawaty', 'starban Gg sahabat 99', 'starban Gg shabat 99', '3.5569916', '98.6651607', 'odp-mdc-fac/093', 'SPLITTER-02', '1', '3.5570038', '98.6657008', 'NIHIL', 'NIHIL', '', '', 'TX00BFWXMVCM', 'TX00BFWXMVCM', '81260003335', '356783100820688', '3.5570659', '98.6654272', 'pagar warna hijau depan sekolah al hidayah', 'uploads/20190622_052633.jpg.jpg', '20190622_052633.jpg', NULL, NULL, NULL, 'open'),
(111, '2019-06-23 00:38:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20219466', NULL, NULL, 'asmalita dra', 'jalan sei deli no 8', 'jalan sei deli no 8', '3.5981983', '98.6693308', 'ODP MDC FAZ 08', 'SPLITTER-01', '6', '3.5981043', '98.670281', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5981782', '98.6702826', 'rumah pelanggan', 'uploads/20190622_053844.jpg.jpg', '20190622_053844.jpg', NULL, NULL, NULL, 'open'),
(112, '2019-06-23 01:25:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20223608', NULL, NULL, 'DINA ARFIANI', 'Jl Ayahanda No 41', 'Jl Ayahanda No 41', '3.594129', '98.6531669', 'ODP-MDC-FD/05', 'SPLITTER-02', '5', '3.5941403', '98.6531552', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00C2F7N0TZ', 'TX00C2F7N0TZ', '81274481238', '867059041727239', '3.5941439', '98.6531891', 'Rumah Pelanggan', 'uploads/20190622_062546.jpg.jpg', '20190622_062546.jpg', NULL, NULL, NULL, 'open'),
(113, '2019-06-23 02:25:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218228', NULL, NULL, 'teuku armansyah', '', 'sei mencirim no 73', '3.5805833', '98.6549923', '0dp-mdc-FA 37', 'SPLITTER-02', '3', '3.5805656', '98.6550061', 'NIHIL', 'NIHIL', '', '', 'TX00FZXKEUGK', 'TX00FZXKEUGK', '82363707388', '351928085446000', '3.5806226', '98.6549966', 'jln mencirim no 73  depannya tanah  Kosong', 'uploads/20190622_072550.jpg.jpg', '20190622_072550.jpg', NULL, NULL, NULL, 'open'),
(114, '2019-06-23 02:25:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218232', NULL, NULL, 'narik', 'darusalam no51', 'darusalam no51', '3.5802653', '98.6530091', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5802332', '98.6529959', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5801414', '98.6530708', 'rupel', 'uploads/20190622_072553.jpg.jpg', '20190622_072553.jpg', NULL, NULL, NULL, 'open'),
(115, '2019-06-23 17:13:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20242071', NULL, NULL, 'wong sie khong', 'jalan aksara gang sehat no 77 a', 'jalan aksara gang sehat no 77 a', '3.5912889', '98.704247', 'ODP-MDC-FDW/034', 'SPLITTER-01', '1', '3.5900235', '98.7056229', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX002E2XYXOQ', '', '81223937163', '358489092841546', '3.5909758', '98.704247', 'rumah warna cream', 'uploads/20190623_101316.jpg.jpg', '20190623_101316.jpg', NULL, NULL, NULL, 'open'),
(116, '2019-06-23 18:48:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20245492', NULL, NULL, 'oppon siregar', 'jalan jangka no 62', 'jalan jangka no 62', '3.593689', '98.6492656', 'ODP MDC FD 30', 'SPLITTER-02', '6', '3.5937234', '98.6491659', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5935524', '98.6494602', 'rumah pelanggan', 'uploads/20190623_114806.jpg.jpg', '20190623_114806.jpg', NULL, NULL, NULL, 'open'),
(117, '2019-06-23 19:25:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_122522.jpg.jpg', '20190623_122522.jpg', NULL, NULL, NULL, 'open'),
(118, '2019-06-23 19:26:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_122624.jpg.jpg', '20190623_122624.jpg', NULL, NULL, NULL, 'open'),
(119, '2019-06-23 19:32:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_123239.jpg.jpg', '20190623_123239.jpg', NULL, NULL, NULL, 'open'),
(120, '2019-06-23 19:46:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982898', '98.6658589', 'nihil', 'uploads/20190623_124622.jpg.jpg', '20190623_124622.jpg', NULL, NULL, NULL, 'open'),
(121, '2019-06-23 19:47:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982898', '98.6658589', 'nihil', 'uploads/20190623_124713.jpg.jpg', '20190623_124713.jpg', NULL, NULL, NULL, 'open'),
(122, '2019-06-23 19:47:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982312', '98.6658102', 'nihil', 'uploads/20190623_124725.jpg.jpg', '20190623_124725.jpg', NULL, NULL, NULL, 'open'),
(123, '2019-06-23 19:51:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983927', '98.6658743', 'nihil', 'uploads/20190623_125112.jpg.jpg', '20190623_125112.jpg', NULL, NULL, NULL, 'open'),
(124, '2019-06-23 19:57:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_125728.jpg.jpg', '20190623_125728.jpg', NULL, NULL, NULL, 'open'),
(125, '2019-06-23 20:15:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_011520.jpg.jpg', '20190623_011520.jpg', NULL, NULL, NULL, 'open'),
(126, '2019-06-23 20:16:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982312', '98.6658102', 'nihil', 'uploads/20190623_011624.jpg.jpg', '20190623_011624.jpg', NULL, NULL, NULL, 'open'),
(127, '2019-06-23 20:19:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_011952.jpg.jpg', '20190623_011952.jpg', NULL, NULL, NULL, 'open'),
(128, '2019-06-23 21:45:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20251877', NULL, NULL, 'kevin rusli', 'jalan sikambing no 02', 'jalan sikambing no 02', '3.5973803', '98.6655072', 'ODP MDC FAY 25', 'SPLITTER-02', '1', '3.5973907', '98.6655063', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973859', '98.6655073', 'rumah pelanggan', 'uploads/20190623_024555.jpg.jpg', '20190623_024555.jpg', NULL, NULL, NULL, 'open'),
(129, '2019-06-23 21:49:35', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218233', NULL, NULL, 'narik', 'darusalam no 51', 'darusalam no 51', '3.5815786', '98.6655032', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5815786', '98.6655032', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5815786', '98.6655032', 'rupel', 'uploads/20190623_024935.jpg.jpg', '20190623_024935.jpg', NULL, NULL, NULL, 'open'),
(131, '2019-06-24 21:35:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20295685', NULL, NULL, 'caryn', 'komplek istana prima 2 blok c no.1', 'komplek istana prima 2 blok c no.1', '3.5679017', '98.6871075', 'ODP-MDC-FAB/072', 'SPLITTER-01', '7', '3.5679381', '98.6870298', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX008BV68L3J', 'TX008BV68L3J', '82212081159', '868240030864808', '3.5678983', '98.6871086', 'istana prima blok C no.1', 'uploads/20190624_023551.jpg.jpg', '20190624_023551.jpg', NULL, NULL, NULL, 'open'),
(132, '2019-06-24 23:15:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20297217', NULL, NULL, 'LAZIM', 'MEDAN', 'JL M YAMIN 40/42', '3.5941036', '98.6803077', 'ODP MDC FDL 32', 'SPLITTER-02', '2', '3.594259', '98.6805345', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00MFMDWI95', 'TX00MFMDWI95', '82272108608', '869722032218371', '3.5942339', '98.6804465', 'RUMAH PELANGGAN', 'uploads/20190624_041522.jpg.jpg', '20190624_041522.jpg', NULL, NULL, NULL, 'open'),
(133, '2019-06-24 23:15:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20297217', NULL, NULL, 'LAZIM', 'MEDAN', 'JL M YAMIN 40/42', '3.5941036', '98.6803077', 'ODP MDC FDL 32', 'SPLITTER-02', '2', '3.594259', '98.6805345', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00MFMDWI95', 'TX00MFMDWI95', '82272108608', '869722032218371', '3.5942354', '98.6804493', 'RUMAH PELANGGAN', 'uploads/20190624_041527.jpg.jpg', '20190624_041527.jpg', NULL, NULL, NULL, 'open'),
(134, '2019-06-24 23:30:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20305981', NULL, NULL, 'RONI PARASIAN L', 'Jl Pabrik Tenun No 6', 'Jl Pabrik Tenun No 6', '3.5984314', '98.6632366', 'ODP-MDC-FFG/39', 'SPLITTER-01', '6', '3.598432', '98.6632171', 'NIHIL', 'NIHIL', 'None', '', 'TX00DGBA4I46', 'TX00DGBA4I46', '81274481238', '867059041727239', '3.5983799', '98.6628487', 'Rumah Pelanggan', 'uploads/20190624_043009.jpg.jpg', '20190624_043009.jpg', NULL, NULL, NULL, 'open'),
(135, '2019-06-24 23:40:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20299240', NULL, NULL, 'yayuk kustanti', 'jl flaminggo i8', 'jl flamingho i8', '3.5602046', '98.6705949', 'odp-mdc-FAc/083', 'SPLITTER-02', '3', '3.559217', '98.6708345', 'NIHIL', 'NIHIL', '', '', 'TX00A697YBV0', 'TX00A697YBV0', '81260003335', '356783100820688', '3.5660946', '98.6695589', 'cat putih', 'uploads/20190624_044052.jpg.jpg', '20190624_044052.jpg', NULL, NULL, NULL, 'open'),
(149, '2019-06-25 19:46:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20338351', NULL, NULL, 'samsuwar', 'jl. brigjend katamso gg merdeka no4', 'jl.brigjend katamso gg merdeka no 4', '3.56609', '98.6880817', 'ODP-MDC-FAB-/039', 'SPLITTER-01', '2', '3.5663266', '98.6865926', 'NIHIL', 'NIHIL', '', '', 'TX00Q1TDGOFB', 'TX00Q1TDGOFB', '81276595573', '868174031215720', '3.5684849', '98.6870772', 'gambar 1', 'uploads/20190625_124629.jpg.jpg', '20190625_124629.jpg', NULL, NULL, NULL, 'open'),
(137, '2019-06-25 17:54:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5820729', '98.6460626', 'jln sei mare depan ada poko magah', 'uploads/20190625_105425.jpg.jpg', '20190625_105425.jpg', NULL, NULL, NULL, 'open'),
(138, '2019-06-25 17:55:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105511.jpg.jpg', '20190625_105511.jpg', NULL, NULL, NULL, 'open'),
(139, '2019-06-25 17:55:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105520.jpg.jpg', '20190625_105520.jpg', NULL, NULL, NULL, 'open'),
(140, '2019-06-25 17:55:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105525.jpg.jpg', '20190625_105525.jpg', NULL, NULL, NULL, 'open'),
(141, '2019-06-25 17:55:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105530.jpg.jpg', '20190625_105530.jpg', NULL, NULL, NULL, 'open'),
(142, '2019-06-25 17:55:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105530.jpg.jpg', '20190625_105530.jpg', NULL, NULL, NULL, 'open');
INSERT INTO `images` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(143, '2019-06-25 17:55:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105533.jpg.jpg', '20190625_105533.jpg', NULL, NULL, NULL, 'open'),
(144, '2019-06-25 18:20:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H', '3.592189', '98.6818706', 'ODP FCLBU 02', 'SPLITTER-01', '1', '3.5921938', '98.681853', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5921937', '98.6818578', 'FOTO RUMAH PELANGGAN', 'uploads/20190625_112027.jpg.jpg', '20190625_112027.jpg', NULL, NULL, NULL, 'open'),
(145, '2019-06-25 18:40:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20336264', NULL, NULL, 'PAULINA', 'MEDAN', 'JL SERAM NO 52/58', '3.5927366', '98.6840213', 'ODP MDC FDH 37', 'SPLITTER-02', '16', '3.5927128', '98.684089', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926936', '98.6840783', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114034.jpg.jpg', '20190625_114034.jpg', NULL, NULL, NULL, 'open'),
(146, '2019-06-25 18:44:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20304571', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H/123', '3.5927125', '98.6840815', 'ODP FCLB 02', 'SPLITTER-02', '16', '3.5926924', '98.684092', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926738', '98.6840839', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114402.jpg.jpg', '20190625_114402.jpg', NULL, NULL, NULL, 'open'),
(147, '2019-06-25 18:47:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20333898', NULL, NULL, 'BP LINA', 'JL.BANDAR BARU NO.1', 'JL.BANDAR BARU NO.1', '3.5963636', '98.6880927', 'ODP-MDC-FFF/026', 'SPLITTER-01', '1', '3.5962231', '98.6878885', 'NIHIL', 'NIHIL', 'NORMAL', '', 'TX00G2KHZL8W', '', '82166951702', '869657040092477', '3.5961665', '98.6877396', 'RUMAH WARNA KUNING', 'uploads/20190625_114757.jpg.jpg', '20190625_114757.jpg', NULL, NULL, NULL, 'open'),
(148, '2019-06-25 19:17:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20335227', NULL, NULL, 'deyan sabar crystian', 'jalan sekip no 105 b', 'jalan sekip no 105 b', '3.6013287', '98.6619452', 'ODP MDC FGJ 05', 'SPLITTER-01', '5', '3.6013287', '98.6619452', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D58G1D8Y', '', '81274481238', '861930049684836', '3.6020138', '98.6613353', 'rumah pelanggan', 'uploads/20190625_121713.jpg.jpg', '20190625_121713.jpg', NULL, NULL, NULL, 'open'),
(150, '2019-06-25 20:12:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218244', NULL, NULL, 'yuliani br lubis', 'jl. pasundan gg dewi no. 44f', 'jl. pasundan gg dewi no. 44f', '3.5934168', '98.6599907', 'ODP-MDC-FL/40', 'SPLITTER-02', '2', '3.5935625', '98.6599019', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00RE8TS4IW', 'TX00RE8TS4IW', '81274481238', '867976035108482', '3.5935058', '98.659908', 'gg dewi', 'uploads/20190625_011244.jpg.jpg', '20190625_011244.jpg', NULL, NULL, NULL, 'open'),
(154, '2019-06-25 23:09:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '0618476969', NULL, NULL, 'as', 'dd', 'vv', '3.592834', '98.677667', 'odp', 'SPLITTER-01', '1', '3.5928366', '98.6776645', 'CHANGE DATEK', 'NIHIL', 'kend1.', '', '', '', '85262404020', '358916050544241', '', '', 'photo1', 'uploads/20190625_040913.png.png', '20190625_040913.png', NULL, NULL, NULL, 'open'),
(152, '2019-06-25 22:55:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20351176', NULL, NULL, 'pak heru', 'jl. Hm. Yamin No. 129', 'jl. Hm. Yamin No. 129', '3.5982693', '98.6946162', 'ODP-MDC-FCG/074', 'SPLITTER-02', '7', '3.5982693', '98.6946162', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00L4WS23RL', '', '82161676387', '867768038540252', '3.5982693', '98.6946162', 'cafe', 'uploads/20190625_035512.jpg.jpg', '20190625_035512.jpg', NULL, NULL, NULL, 'open'),
(153, '2019-06-25 23:02:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218249', NULL, NULL, 'syamsul hadi', '', 'sei selapian no 7a', '3.5812707', '98.6604296', 'odp-mdc-FH 045', 'SPLITTER-01', '8', '3.5814094', '98.660513', 'NIHIL', 'NIHIL', '', '', 'TX00OSCS6WUG', 'TX00OSCS6WUG', '82363707388', '863956040892647', '3.5812211', '98.6603355', 'sei selapian depan kede kopi', 'uploads/20190625_040220.jpg.jpg', '20190625_040220.jpg', NULL, NULL, NULL, 'open'),
(155, '2019-07-21 17:39:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21023758', NULL, NULL, 'tong nam', 'jalan sei deli no 43', 'jalan sei deli no 43', '3.5931422', '98.6720478', 'ODP MDC FBU 18', 'SPLITTER-01', '4', '3.5931296', '98.6720332', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190721_103921.jpg.jpg', '20190721_103921.jpg', NULL, NULL, NULL, 'open'),
(156, '2019-07-21 18:34:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21095329', NULL, NULL, 'KEVIN', 'JL.PUNAK NO.7C/5B', 'JL.PUNAK NO.8C/5B', '3.5955609', '98.6643811', 'FGK 020', 'SPLITTER-01', '3', '3.5955611', '98.6643816', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '352810061777518', '', '', 'RUMAH PELANGGAN', 'uploads/20190721_113428.jpg.jpg', '20190721_113428.jpg', NULL, NULL, NULL, 'open'),
(157, '2019-07-21 21:59:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21099103', NULL, NULL, 'a tono', 'jalan pws no 74', 'jalan pws no 74', '3.5392712', '98.6053105', 'ODP MDC FL 26', 'SPLITTER-01', '7', '3.5392734', '98.6052928', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190721_025936.jpg.jpg', '20190721_025936.jpg', NULL, NULL, NULL, 'open'),
(158, '2019-07-21 23:13:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21099824', NULL, NULL, 'KIKI RISQI MADANI', 'SEI DELI NO.174B', 'SEI DELI NO.174B', '3.6018006', '98.6705268', 'FAZ 001', 'SPLITTER-01', '5', '3.601799', '98.6704993', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '352810061777518', '', '', 'RUMAH PELANGGAN', 'uploads/20190721_041321.jpg.jpg', '20190721_041321.jpg', NULL, NULL, NULL, 'open'),
(159, '2019-07-22 20:32:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21117213', NULL, NULL, 'syarifah wajiah', 'jalan pasundan gg rambutan no 9', 'jalan pasundan gg rambutan no 9', '3.5918127', '98.6601132', 'ODP MDC FL11', 'SPLITTER-02', '4', '3.5919526', '98.6598164', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190722_013229.jpg.jpg', '20190722_013229.jpg', NULL, NULL, NULL, 'open'),
(160, '2019-07-22 20:50:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21116974', NULL, NULL, 'HARDIANSYAH', 'MEDAN', 'JLN DOROWATI NO.17A', '3.6003575', '98.6881781', 'ODP MDC FCJ 04', 'SPLITTER-01', '2', '3.6003529', '98.6881777', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190722_015029.jpg.jpg', '20190722_015029.jpg', NULL, NULL, NULL, 'open'),
(161, '2019-07-23 00:35:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21116428', NULL, NULL, 'bu mila', 'jln iskandar muda no 103 c', 'jln. iskandar muda no 103 c', '3.5838196', '98.661154', 'MDC-FH/089', 'SPLITTER-01', '4', '3.5842796', '98.6606941', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'bri financial', 'uploads/20190722_053543.jpg.jpg', '20190722_053543.jpg', NULL, NULL, NULL, 'open'),
(162, '2019-07-23 01:33:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21129374', NULL, NULL, 'Lidya Leonora Tuwanakotta', 'Jl. Polonia (Komplek Flaminggo TNI AU) No. 16', 'Jl. Polonia (Komplek Flaminggo TNI AU) No. 16', '3.5618867', '98.6709452', 'ODP-MDC-FAC/084', 'SPLITTER-02', '8', '3.5618847', '98.6709419', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82299217915', '868199032911001', '', '', 'POLONIA', 'uploads/20190722_063323.jpg.jpg', '20190722_063323.jpg', NULL, NULL, NULL, 'open'),
(163, '2019-07-23 20:23:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21145972', NULL, NULL, 'Sugiarti', 'Jl. H.Juanda baru no.88', 'Jl.H.Juanda baru no.88', '3.5718309', '98.6851977', 'ODP MDC FAB/009', 'SPLITTER-02', '3', '3.5719586', '98.6857797', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '85270166670', '863387048374133', '', '', 'ruko no.88', 'uploads/20190723_012340.jpg.jpg', '20190723_012340.jpg', NULL, NULL, NULL, 'open'),
(164, '2019-07-24 00:56:18', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21157290', NULL, NULL, 'sasmika', 'jalan sikambing no 35', 'jalan sikambing no 35', '3.5992467', '98.6653541', 'ODP MDC FAY 21', 'SPLITTER-02', '4', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190723_055618.jpg.jpg', '20190723_055618.jpg', NULL, NULL, NULL, 'open'),
(165, '2019-07-24 01:31:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21158241', NULL, NULL, 'SAHRUL', 'Jl. SEI PADANG NO 87', 'Jl. SEI PADANG NO 87', '3.5701489', '98.6557685', 'ODP-MDC-FE / 023', 'SPLITTER-01', '2', '3.570267', '98.6558205', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'RM. AJO MINANG', 'uploads/20190723_063100.jpg.jpg', '20190723_063100.jpg', NULL, NULL, NULL, 'open'),
(166, '2019-07-24 20:24:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21156749', NULL, NULL, 'ADJIE', 'Komp Tasbih Tanjung Rejo', 'BIRO PEMERINTAH JALAN DIPONEGORO', '3.580725', '98.6714781', 'MDC-FAE/056', 'SPLITTER-01', '1', '3.5809194', '98.6718498', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '85261816904', '866403047502694', '', '', 'Kantor Gubernur Sumatera Utara, Lantai 4', 'uploads/20190724_012445.jpg.jpg', '20190724_012445.jpg', NULL, NULL, NULL, 'open'),
(167, '2019-07-24 23:09:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21178237', NULL, NULL, 'oktaviana', 'jalan batu tulis no 55', 'jalan batu tulis no 55', '3.5955531', '98.6489365', 'ODP MDC FF 39', 'SPLITTER-01', '7', '3.5955303', '98.6489378', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190724_040951.jpg.jpg', '20190724_040951.jpg', NULL, NULL, NULL, 'open'),
(168, '2019-07-24 23:54:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21179709', NULL, NULL, 'RAHMAT SANTOSO', 'JL.DARUSSALAM (RM.putri pasaman)', 'JL.DARUSSALAM (RM.putri pasaman)', '3.5891103', '98.6531758', 'ODP-MDC-FBD/018', 'SPLITTER-02', '3', '3.5888875', '98.6532492', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81276595573', '868174031215720', '', '', 'RM. PUTRI PASAMAN', 'uploads/20190724_045456.jpg.jpg', '20190724_045456.jpg', NULL, NULL, NULL, 'open'),
(169, '2019-07-25 19:13:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21181990', NULL, NULL, 'ARIFIN', 'MEDAN', 'JLN THAMRIN 69B', '3.5899759', '98.6900908', 'ODP MDC FDB 32', 'SPLITTER-02', '2', '3.5899954', '98.6900695', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'Foto rumah', 'uploads/20190725_121308.jpg.jpg', '20190725_121308.jpg', NULL, NULL, NULL, 'open'),
(170, '2019-07-25 23:12:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21191295', NULL, NULL, 'LIE GEK SIM', 'jl s parman dalam no 22ff', 'jl s parman dalam no 22ff', '3.5806418', '98.6674068', 'ODP-MDC-FG104', 'SPLITTER-01', '7', '3.5806007', '98.6673993', 'NIHIL', 'NIHIL', 'null', '', '', '', '81276595573', '868174031215720', '', '', 'nomor 22ff', 'uploads/20190725_041207.jpg.jpg', '20190725_041207.jpg', NULL, NULL, NULL, 'open'),
(171, '2019-07-25 23:34:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21206600', NULL, NULL, 'Muhammad Armayuda', 'Jl.SUBUR NO.11', 'Jl.SUBUR NO.11', '3.5628368', '98.6681378', 'ODP-MDC-FAC/110', 'SPLITTER-01', '7', '3.5604443', '98.6692814', 'Please select ...!!!', 'Please select ...!!!', 'NIHIL', '', '', '', '82299217915', '868199032911001', '', '', 'JL.SUBUR', 'uploads/20190725_043440.jpg.jpg', '20190725_043440.jpg', NULL, NULL, NULL, 'open'),
(172, '2019-07-25 23:53:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21206064', NULL, NULL, 'IWANDO SIHOMBING', 'MEDAN', 'JL BEDAGAI NO.22', '3.5955433', '98.6849866', 'ODP MDC FEC 48', 'SPLITTER-01', '7', '3.5948309', '98.6856587', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH JLN BEDAGAI NO.22 LT 2', 'uploads/20190725_045327.jpg.jpg', '20190725_045327.jpg', NULL, NULL, NULL, 'open'),
(173, '2019-07-26 00:48:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21208721', NULL, NULL, 'indriani nst', 'jl sampul gg penjalin no.24C', 'jl sampul', '3.6024347', '98.6519801', 'mdc ff 124', 'SPLITTER-01', '4', '3.6024347', '98.6519801', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190725_054806.jpg.jpg', '20190725_054806.jpg', NULL, NULL, NULL, 'open'),
(174, '2019-07-26 01:22:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21198060', NULL, NULL, 'BELA', 'MEDAN', 'JL KEMUNING NO.27', 'latitude', 'longitude', 'ODP MDC FCN 38', 'SPLITTER-01', '5', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'foto rumah', 'uploads/20190725_062240.jpg.jpg', '20190725_062240.jpg', NULL, NULL, NULL, 'open'),
(175, '2019-07-26 01:25:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21181036', NULL, NULL, 'LIM YEM', 'MEDAN', 'JL BANGKA NO.106', '3.5883308', '98.6827147', 'ODP MDC FCS 47', 'SPLITTER-01', '2', '3.5883587', '98.6827335', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'foto rumah', 'uploads/20190725_062534.jpg.jpg', '20190725_062534.jpg', NULL, NULL, NULL, 'open'),
(176, '2019-07-26 01:30:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21203334', NULL, NULL, 'JENNY', 'MEDAN', 'FL TOBING NO.20J', '3.5883482', '98.6826948', 'ODP MDC FDV 07', 'SPLITTER-01', '6', '3.5884353', '98.6827886', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190725_063045.jpg.jpg', '20190725_063045.jpg', NULL, NULL, NULL, 'open'),
(177, '2019-07-26 01:34:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21181268', NULL, NULL, 'DAVID TOSALIE', 'MEDAN', 'JLN MERBABU NO.7F', 'latitude', 'longitude', 'ODP MDC FCY 63', 'SPLITTER-01', '4', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190725_063422.jpg.jpg', '20190725_063422.jpg', NULL, NULL, NULL, 'open'),
(178, '2019-07-26 02:58:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21209736', NULL, NULL, 'PTT.BANK BJB', 'Jl. SEI ROKAN NO 32', 'Jl. SEI ROKAN NO 32', '3.5830277', '98.6512926', 'ODP-MDC-FGB/ 018', 'SPLITTER-01', '7', '3.5804489', '98.6506098', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'sei rokan no. 32', 'uploads/20190725_075836.jpg.jpg', '20190725_075836.jpg', NULL, NULL, NULL, 'open'),
(179, '2019-07-26 16:22:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21212725', NULL, NULL, 'hadyan rizky', 'jalan jangka no 20', 'jalan jangka no 20', '3.5936242', '98.6478058', 'ODP MDC FF 61', 'SPLITTER-01', '3', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'NIhIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190726_092236.jpg.jpg', '20190726_092236.jpg', NULL, NULL, NULL, 'open'),
(180, '2019-07-26 16:58:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21215512', NULL, NULL, 'Gusmawati', 'Jl.Brigjen katamso gg.sosial no.10', 'Jl.Brigjen katamso gg.sosial no.10', '3.5695322', '98.6860085', 'ODP MDC FAB/025', 'SPLITTER-01', '1', '3.5695346', '98.6859686', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '85270166670', '863387048374133', '', '', 'gg.sosial no.10', 'uploads/20190726_095801.jpg.jpg', '20190726_095801.jpg', NULL, NULL, NULL, 'open'),
(181, '2019-07-26 17:56:06', 'Regional-2', 'BOGOR', 'PROVISIONING', 'INDIHOME', '12345678', NULL, NULL, 'medium', 'mandala', 'tata alam', '3.2809057', '98.5484575', 'odp-ctd-rah/001', 'SPLITTER-01', '2', '3.2809057', '98.5484575', 'NIHIL', 'NIHIL', 'kendala1', '', '', '', '8116091965', '359447096192703', '', '', 'test1', 'uploads/20190726_105606a.jpg.jpg', '20190726_105606a.jpg', '20190726_105606b.jpg', '20190726_105606c.jpg', NULL, 'open'),
(182, '2019-07-26 18:12:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21218619', NULL, NULL, 'trisno p silalahi', 'jalan ayahanda no 44 c', 'jalan ayahanda no 44 c', '3.5942375', '98.6533785', 'ODP MDC FD 05', 'SPLITTER-01', '5', '3.5943222', '98.6533115', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190726_111230.jpg.jpg', '20190726_111230.jpg', NULL, NULL, NULL, 'open'),
(183, '2019-07-26 18:28:15', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21216450', NULL, NULL, 'BURMAN SIREGAR', 'jl sendok gg garpu no 8', 'jl sendok gg garpu no 8', '3.5954524', '98.6547189', 'ODP MDC FF 008', 'SPLITTER-01', '7', '3.5954574', '98.6547489', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190726_112815.jpg.jpg', '20190726_112815.jpg', NULL, NULL, NULL, 'open'),
(184, '2019-07-26 18:30:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21218978', NULL, NULL, 'CHARLES GIPSON TAMPUBOLON', 'jl sendok gg garpu no 12', 'jl sendok gg garpu no 12', '3.5954592', '98.6547465', 'ODP MDC FF 08', 'SPLITTER-01', '6', '3.595465', '98.6547495', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190726_113014.jpg.jpg', '20190726_113014.jpg', NULL, NULL, NULL, 'open'),
(185, '2019-07-26 21:51:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21222672', NULL, NULL, 'Isabel Amir Husin', 'IMAM BONJOL NO.10', 'IMAM BONJOL NO.10', '3.5849493', '98.674154', 'MDC-FAH/068', 'SPLITTER-01', '4', '3.5849918', '98.6741799', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '866071030170215', '', '', 'no. 10B', 'uploads/20190726_025144.jpg.jpg', '20190726_025144.jpg', NULL, NULL, NULL, 'open'),
(186, '2019-07-26 21:52:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21221521', NULL, NULL, 'endang rezeki sembiring', 'jalan m idris gg komik no 9', 'jalan m idris gg komik no 9', '3.5963442', '98.6578982', 'ODP MDC FF 142', 'SPLITTER-01', '6', '3.5962807', '98.6578302', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190726_025244.jpg.jpg', '20190726_025244.jpg', NULL, NULL, NULL, 'open'),
(187, '2019-07-26 22:35:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21217654', NULL, NULL, 'RUDI', 'MEDAN', 'JL MT HARYONO NO.53', '3.5889809', '98.6798975', 'ODP MDC FCR 07', 'SPLITTER-01', '5', '3.5889615', '98.6798795', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190726_033523.jpg.jpg', '20190726_033523.jpg', NULL, NULL, NULL, 'open'),
(188, '2019-07-27 14:00:26', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '12345678', NULL, NULL, 'med', 'man', 'tata alam', '3.6082926', '98.620546', 'odp- td', 'SPLITTER-01', '2', '3.6083501', '98.6205639', 'CHANGE DATEK', 'Please select ...!!!', 'testing', '', '', '', '8116091965', '359447096192703', '', '', 'tes', 'uploads/20190727_070026a.jpg.jpg', '20190727_070026a.jpg', '20190727_070026b.jpg', '20190727_070026c.jpg', NULL, 'open'),
(189, '2019-07-27 14:25:39', 'Regional-1', 'SUMUT', 'PROVISIONING', 'INDIHOME', '455', NULL, NULL, 'manuel', 'medan', 'bandung', '3.608298', '98.6207063', 'odp32', 'SPLITTER-02', '4', '3.6083201', '98.6206759', 'CHANGE DATEK', 'NIHIL', 'test', '', '', '', '8116091965', '359447096192703', '', '', 'coba', 'uploads/20190727_072539a.jpg.jpg', '20190727_072539a.jpg', '20190727_072539b.jpg', '20190727_072539c.jpg', NULL, 'open'),
(190, '2019-07-27 15:19:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21198851', NULL, NULL, 'RATIH', 'Jl Sikambing Gg Selamat No 12', 'Jl Sikambing Gg Selamat No 12', '3.6006069', '98.6668321', 'ODP MDC FAY 338', 'SPLITTER-01', '5', '3.6005886', '98.6669935', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190727_081940.jpg.jpg', '20190727_081940.jpg', NULL, NULL, NULL, 'open'),
(191, '2019-07-27 18:12:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21238677', NULL, NULL, 'SYAHRIL', 'Jl.KATAMSO 66', 'Jl.KATAMSO 66', '3.5744404', '98.6835268', 'ODP-MDC-FAK/045', 'SPLITTER-01', '1', '3.5744397', '98.6835264', 'CHANGE DATEK', 'NIHIL', 'NIHIL', '', '', '', '82299217915', '868199032911001', '', '', 'KATAMSO', 'uploads/20190727_111224.jpg.jpg', '20190727_111224.jpg', NULL, NULL, NULL, 'open'),
(192, '2019-07-27 19:50:15', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21241602', NULL, NULL, 'RICKY SUWANDI', 'jl sikambing no 37c', 'jl sikambing no 37c', '3.5979073', '98.6652858', 'ODP MDC FAY 20', 'SPLITTER-02', '1', '3.5978956', '98.6653099', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190727_125015.jpg.jpg', '20190727_125015.jpg', NULL, NULL, NULL, 'open'),
(193, '2019-07-27 22:10:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21244518', NULL, NULL, 'm.afif', 'jl pasundan gg delima no.11', 'jl pasundan', '3.5922144', '98.6581305', 'mdc fl 14', 'SPLITTER-01', '3', '3.5922144', '98.6581305', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190727_031020.jpg.jpg', '20190727_031020.jpg', NULL, NULL, NULL, 'open'),
(194, '2019-07-27 23:50:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21247324', NULL, NULL, 'hamdan nurhadiba', 'gg.garpu no.27', 'gg.garpu', '3.5954379', '98.6558343', 'mdc ff 07', 'SPLITTER-02', '4', '3.5954379', '98.6558343', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190727_045030.jpg.jpg', '20190727_045030.jpg', NULL, NULL, NULL, 'open'),
(195, '2019-07-28 00:48:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21247625', NULL, NULL, 'Wasih B Takwadi', 'JL. GATOT SUBROTO NO.37, SEI SIKAMBING D', 'JL. GATOT SUBROTO NO.37, SEI SIKAMBING D', '3.5889977', '98.6504795', 'ODP-MDC-FBD/057', 'SPLITTER-01', '6', '3.5889622', '98.6506595', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warung ayam pecak abah bewok', 'uploads/20190727_054859.jpg.jpg', '20190727_054859.jpg', NULL, NULL, NULL, 'open'),
(196, '2019-07-28 01:06:49', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218967', NULL, NULL, 'wendy haryanto', 'jl. dahlia no 35/A cemara asrin', 'jl. suka mulya no 1', '3.5833685', '98.6783217', 'ODP-MDC-FAP/075', 'SPLITTER-01', '7', '3.5836168', '98.6784658', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863441033257355', '', '', 'putih', 'uploads/20190727_060649.jpg.jpg', '20190727_060649.jpg', NULL, NULL, NULL, 'open'),
(197, '2019-07-28 01:38:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21248370', NULL, NULL, 'muh rohman', '( KOMPLEK TNI AU POLONIA JL. ELANG 3 NO. B5, SUKA ', '( KOMPLEK TNI AU POLONIA JL. ELANG 3 NO. B5, SUKA ', '3.5612446', '98.6698715', 'ODP-MDC-FAC-090', 'SPLITTER-01', '6', '3.5606021', '98.6699783', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82299217915', '868199032911001', '', '', 'JL.ELANG', 'uploads/20190727_063809.jpg.jpg', '20190727_063809.jpg', NULL, NULL, NULL, 'open'),
(198, '2019-07-28 16:38:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21250913', NULL, NULL, 'bima rahman syahputra', 'gg.sosial no.8', 'gg.sosial', 'latitude', 'longitude', 'mdc fd 21', 'SPLITTER-02', '3', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190728_093805.jpg.jpg', '20190728_093805.jpg', NULL, NULL, NULL, 'open'),
(199, '2019-07-28 17:56:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21251285', NULL, NULL, 'rumondang simangunsong', 'jalan sekip no 12', 'jalan sekip no 12', '3.5973028', '98.6646997', 'ODP MDC FAY 51', 'SPLITTER-01', '5', '3.597306', '98.6643559', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190728_105616.jpg.jpg', '20190728_105616.jpg', NULL, NULL, NULL, 'open'),
(200, '2019-07-29 00:27:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21258058', NULL, NULL, 'mhd adly nasution', 'gg sadar no.6B', 'gg sadar no.6B', '3.5933216', '98.6574577', 'mdc fd 65', 'SPLITTER-01', '4', '3.5933228', '98.6574563', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190728_052720.jpg.jpg', '20190728_052720.jpg', NULL, NULL, NULL, 'open'),
(201, '2019-07-29 15:20:52', 'Regional-3', 'CIREBON', 'SALESFORCE', 'INDIHOME', '46464', NULL, NULL, 'sidney', 'mandala', 'Tata alam', '3.5928217', '98.67766', 'odp-1', 'SPLITTER-01', '2', '3.5928217', '98.67766', 'NIHIL', 'NIHIL', 'test', '', '', '', '8116091965', '358240051111110', '', '', 'gbr1', 'uploads/20190729_082052a.jpg.jpg', '20190729_082052a.jpg', '20190729_082052b.jpg', '20190729_082052c.jpg', NULL, 'open'),
(202, '2019-07-29 15:39:24', 'Regional-5', 'NTB', 'SALESFORCE', 'INDIHOME', '646564', NULL, NULL, 'gilda', 'mandala', 'Tata alam', '3.5928217', '98.67766', 'ddd', 'SPLITTER-01', '4', '3.5928217', '98.67766', 'NIHIL', 'NIHIL', 'ssss', '', '', '', '8116091965', '358240051111110', '', '', 'coba2', 'uploads/20190729_083924a.jpg.jpg', '20190729_083924a.jpg', '20190729_083924b.jpg', '20190729_083924c.', NULL, 'open'),
(203, '2019-07-29 17:37:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21263946', NULL, NULL, 'DEDY IRWANSYAH', 'MEDAN', 'JLN HM YAMIN STASIUN KERETA', '3.5933166', '98.6795971', 'ODP MDC FDL 12', 'SPLITTER-01', '6', '3.5933192', '98.6795936', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO LOKASI RUMAH', 'uploads/20190729_103753.jpg.jpg', '20190729_103753.jpg', NULL, NULL, NULL, 'open'),
(204, '2019-07-29 18:34:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21268279', NULL, NULL, 'sriwani', 'jalan tinta no B1', 'jalan tinta no B1', '3.6009823', '98.6518179', 'ODP.MDC FF 133', 'SPLITTER-01', '5', '3.6009428', '98.6518876', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190729_113422.jpg.jpg', '20190729_113422.jpg', NULL, NULL, NULL, 'open'),
(205, '2019-07-29 21:27:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21271673', NULL, NULL, 'DARWIN', 'Jl Sekip No 25', 'Jl Sekip No ,25', '3.5954207', '98.6650435', 'ODP MDC FGL 10', 'SPLITTER-01', '2', '3.5961097', '98.6654281', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190729_022712.jpg.jpg', '20190729_022712.jpg', NULL, NULL, NULL, 'open'),
(206, '2019-07-29 22:14:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21242711', NULL, NULL, 'rizki kurniawan', 'jalan merak jingga no 35', 'jalan merak jingga no 35', '3.5997654', '98.6748397', 'ODP MDC FAW 15', 'SPLITTER-01', '6', '3.599705', '98.6747961', 'NIHIL', 'NIHIL', 'NIhIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190729_031411.jpg.jpg', '20190729_031411.jpg', NULL, NULL, NULL, 'open'),
(207, '2019-07-29 23:06:35', 'Regional-7', 'MAKASAR', 'SALESFORCE', 'INDIHOME', '878787', NULL, NULL, 'marcelino', 'medan', 'bandung', '3.5928217', '98.67766', 'odp1', 'SPLITTER-01', '7', '3.5928217', '98.67766', '', '', '', '', '', '', '8116091965', '358240051111110', '', '', 'ket12', 'uploads/20190729_040635a.jpg.jpg', '20190729_040635a.jpg', '20190729_040635b.jpg', '20190729_040635c.', NULL, 'open'),
(208, '2019-07-29 23:18:23', 'Regional-5', 'KEDIRI', 'SALESFORCE', 'INDIHOME', '89988998', NULL, NULL, 'mmm', 'bbbb', 'nnnnn', '3.5928217', '98.67766', 'odp', '', '', '3.5928217', '98.67766', '', '', '', '', '', '', '8116091965', '358240051111110', '', '', 'test oke', 'uploads/20190729_041823a.jpg.jpg', '20190729_041823a.jpg', '20190729_041823b.jpg', '20190729_041823c.', NULL, 'open'),
(209, '2019-07-30 00:56:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21258348', NULL, NULL, 'Frengki Pranata Sitorus', 'SEI BELUTU NO. 23', 'SEI BELUTU NO. 23', '3.5764474', '98.6519801', 'ODP-MDC-FGB/039', 'SPLITTER-01', '6', '3.575756', '98.6515739', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '356578092850861', '', '', 'gambar.1', 'uploads/20190729_055600.jpg.jpg', '20190729_055600.jpg', NULL, NULL, NULL, 'open'),
(210, '2019-07-30 18:46:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21292669', NULL, NULL, 'kresna rivaldi sembiring', 'jl mistar no.92', 'jl mistar no.92', '3.5916336', '98.6468581', 'mdc fd 46', 'SPLITTER-01', '8', '3.5916296', '98.6468591', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190730_114609.jpg.jpg', '20190730_114609.jpg', NULL, NULL, NULL, 'open'),
(211, '2019-07-30 21:37:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21295363', NULL, NULL, 'RINDY', 'JL.STARBAN GG.SETIA NO.11', 'JL.STARBAN GG.SETIA NO.11', '3.5586353', '98.6646451', 'FAC', 'SPLITTER-01', '6', '3.5586456', '98.6646492', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '352810061777518', '', '', 'RUMAH PELANGGAN', 'uploads/20190730_023738.jpg.jpg', '20190730_023738.jpg', NULL, NULL, NULL, 'open'),
(212, '2019-07-31 17:22:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21305946', NULL, NULL, 'SARAH ANGGRAENY', 'JL. DARUSSALAM NO. 74', 'JL. DARUSSALAM NO. 74', '3.5817461', '98.6543864', 'ODP-MDC-FBM/ 99', 'SPLITTER-01', '2', '3.5820939', '98.6530079', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumahnya cat warna putih', 'uploads/20190731_102255.jpg.jpg', '20190731_102255.jpg', NULL, NULL, NULL, 'open'),
(213, '2019-07-31 18:14:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21317236', NULL, NULL, 'fredy fransisco situmorang', 'jl sekip no.29', 'jl sekip no.29', '3.5959759', '98.6654882', 'mdc fgl 10', 'SPLITTER-01', '7', '3.5959817', '98.665497', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190731_111457.jpg.jpg', '20190731_111457.jpg', NULL, NULL, NULL, 'open'),
(214, '2019-07-31 20:20:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21318564', NULL, NULL, 'RITA SITUMORANG', 'MEDAN', 'JLN BENGKALIS NO.53', '3.5889748', '98.6835326', 'ODP MDC FCS 51', 'SPLITTER-01', '6', '3.588941', '98.6834844', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190731_012023.jpg.jpg', '20190731_012023.jpg', NULL, NULL, NULL, 'open'),
(215, '2019-08-01 18:15:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21342656', NULL, NULL, 'Ani', 'jln. pabrik tenun Kom tenun indah no 2', 'jln pabrik tenun Kom tenun indah no 2', '3.600708', '98.6688254', 'MDC-FF-161', 'SPLITTER-01', '1', '3.5993991', '98.6574447', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '866440049418156', '', '', 'Rumah Pelanggan', 'uploads/20190801_111529.jpg.jpg', '20190801_111529.jpg', NULL, NULL, NULL, 'open'),
(216, '2019-08-01 19:51:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21345720', NULL, NULL, 'NURLILI SOFYAR', 'MEDAN', 'JL THAMRIN NO.2G', '3.5981462', '98.6869876', 'ODP MDC FCN 53', 'SPLITTER-01', '6', '3.5981928', '98.6869946', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'FOTO RUMAH', 'uploads/20190801_125158.jpg.jpg', '20190801_125158.jpg', NULL, NULL, NULL, 'open'),
(217, '2019-08-01 20:35:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21347988', NULL, NULL, 'LULI KAPITRA', 'jl kh.agus salim no 4', 'jl kh.agus salim no 4', '3.5771207', '98.6744876', 'ODP-MDC-FAE/102', 'SPLITTER-01', '2', '3.5770811', '98.674719', 'NIHIL', 'NIHIL', 'null', '', '', '', '81276595573', '868174031215720', '', '', 'jl k.h agus salim no 4', 'uploads/20190801_013539.jpg.jpg', '20190801_013539.jpg', NULL, NULL, NULL, 'open'),
(218, '2019-08-01 22:18:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21352424', NULL, NULL, 'SUSI MENTARI', 'JL. SEI ROKAN NO 6', 'JL. SEI ROKAN NO 6', '3.580203', '98.6441634', 'ODP-MDC-FGB / 066', 'SPLITTER-01', '7', '3.5801822', '98.6442417', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel dekat jl. setia budi', 'uploads/20190801_031838.jpg.jpg', '20190801_031838.jpg', NULL, NULL, NULL, 'open'),
(219, '2019-08-02 16:37:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21364265', NULL, NULL, 'khairunisa zein', 'jalan sei arukondo blok e', 'jalan sei arakundo blok e', 'latitude', 'longitude', 'ODP.MDC FBD 70', 'SPLITTER-01', '7', '3.5872394', '98.6490684', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190802_093708.jpg.jpg', '20190802_093708.jpg', NULL, NULL, NULL, 'open'),
(220, '2019-08-02 16:40:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21362334', NULL, NULL, 'hamdan maulana sidik', 'jl belanga no.12', 'jl belanga no.12', '3.5981985', '98.6558745', 'mdc ff 167', 'SPLITTER-01', '1', '3.5981793', '98.6558839', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190802_094016.jpg.jpg', '20190802_094016.jpg', NULL, NULL, NULL, 'open'),
(221, '2019-08-02 22:05:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21369221', NULL, NULL, 'AHMAD KHAIRUL', 'jln perdana 133', 'jln perdana 133', '3.5868771', '98.6750202', 'MDC-FZ/001', 'SPLITTER-02', '6', '3.5869042', '98.6749731', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'sebelum jembatan sebelah kiri', 'uploads/20190802_030532.jpg.jpg', '20190802_030532.jpg', NULL, NULL, NULL, 'open'),
(222, '2019-08-02 22:27:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21377765', NULL, NULL, 'selamet reharjo', 'JL. SEI MUSI NO.91', 'JL. SEI MUSI NO.91', '3.5781791', '98.6460512', 'ODP-MDC-FGB/061', 'SPLITTER-01', '7', '3.5786453', '98.6459677', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'pabrik santan rumahan', 'uploads/20190802_032728.jpg.jpg', '20190802_032728.jpg', NULL, NULL, NULL, 'open'),
(223, '2019-08-02 22:37:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21375942', NULL, NULL, 'TENGKU AYATULLAH', 'MEDAN', 'JL TIMOR NO.23B', '3.5950986', '98.680899', 'ODP MDC FCN 73', 'SPLITTER-01', '3', '3.5951716', '98.6809139', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '', '', 'foto rumah', 'uploads/20190802_033732.jpg.jpg', '20190802_033732.jpg', NULL, NULL, NULL, 'open'),
(224, '2019-08-02 22:46:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21378703', NULL, NULL, 'aprihadi prihatin', 'jalan belanga no 10', 'jalan belanga no 10', '3.5967519', '98.6567927', 'ODP MDC FF 161', 'SPLITTER-01', 'Please select ...!!!', '3.5978625', '98.6558871', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190802_034630.jpg.jpg', '20190802_034630.jpg', NULL, NULL, NULL, 'open'),
(225, '2019-08-05 15:29:04', 'Regional-7', 'MAKASAR', 'SALESFORCE', 'INDIHOME', '555555', NULL, NULL, 'fff', 'mmmm', 'iiiii', '3.5928217', '98.67766', 'odp7', '', '', '3.5928217', '98.67766', '', '', '', '', '', '', '8116091965', '358240051111110', '', '', 'foto1', 'uploads/20190805_082904a.jpg.jpg', '20190805_082904a.jpg', '20190805_082904b.jpg', '20190805_082904c.', NULL, 'open'),
(226, '2019-08-05 15:37:18', 'Regional-7', 'PAPUA', 'SALESFORCE', 'INDIHOME', '3333333', NULL, NULL, 'name1', 'ktp1', 'addr1', '3.5928217', '98.67766', 'odp1', '', '', '3.5928217', '98.67766', '', '', '', '', '', '', '8116091965', '358240051111110', '', '', 'test1', 'uploads/20190805_083718a.jpg.jpg', '20190805_083718a.jpg', '20190805_083718b.jpg', '20190805_083718c.', NULL, 'open'),
(227, '2019-08-05 16:51:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21405483', NULL, NULL, 'PANPAPOTAN ASIBUAN', 'Jl Pasundan Gg Becak No 45', 'Jl Pasundan Gg Becak No 45', '3.5949283', '98.6588419', 'ODP MDC FL 66', 'SPLITTER-01', '4', '3.5949213', '98.6588475', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190805_095133.jpg.jpg', '20190805_095133.jpg', NULL, NULL, NULL, 'open'),
(228, '2019-08-06 18:01:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21428215', NULL, NULL, 'vanessa', 'jalan punak no 26', 'jalan punak no 26', '3.5960874', '98.6621329', 'ODP MDC FFG 47', 'SPLITTER-02', '5', '3.5961732', '98.6621422', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190806_110154.jpg.jpg', '20190806_110154.jpg', NULL, NULL, NULL, 'open'),
(229, '2019-08-06 18:03:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21428033', NULL, NULL, 'herman silalahi', 'jln letjen s parman', 'jln letjen s parman', 'latitude', 'longitude', 'MDC FBU 070', 'SPLITTER-01', '3', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190806_110327.jpg.jpg', '20190806_110327.jpg', NULL, NULL, NULL, 'open'),
(230, '2019-08-06 18:46:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21420508', NULL, NULL, 'RIVAI RISAKOTTA PANJAITAN', 'jl.sei berantas', 'jl.sei berantas', '3.5830979', '98.6513247', 'ODP-MDC-FBM/103', 'SPLITTER-01', '1', '3.582649', '98.651157', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar 1', 'uploads/20190806_114647.jpg.jpg', '20190806_114647.jpg', NULL, NULL, NULL, 'open'),
(231, '2019-08-06 21:27:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21433311', NULL, NULL, 'Phriscylla Ronauli', 'Jl.Gaharu No.G6', 'Jl.Gaharu No.G6', '3.6019209', '98.6773389', 'ODP MDC FEJ/051', 'SPLITTER-01', '6', '3.6018716', '98.6773437', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '85270166670', '863387048374133', '', '', 'no.G6', 'uploads/20190806_022744.jpg.jpg', '20190806_022744.jpg', NULL, NULL, NULL, 'open'),
(232, '2019-08-06 22:40:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21431347', NULL, NULL, 'rangkuti', 'rangkuti', 'jalan delima no 23', '3.5967425', '98.6695917', 'ODP MDC FAZ 70', 'SPLITTER-01', '4', '3.5968437', '98.6695335', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190806_034040.jpg.jpg', '20190806_034040.jpg', NULL, NULL, NULL, 'open'),
(233, '2019-08-07 16:39:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21448421', NULL, NULL, 'retno nela simanjuntak', 'jalan garpu no 7', 'jalan garpu no 7', '3.5960363', '98.6617113', 'ODP MDC FF 07', 'SPLITTER-02', '3', '3.5951288', '98.6561387', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190807_093934.jpg.jpg', '20190807_093934.jpg', NULL, NULL, NULL, 'open'),
(234, '2019-08-07 16:57:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21442790', NULL, NULL, 'KIM', 'Jl Iskandar Muda Baru No 26C', 'Jl Iskandar Muda Baru No 26C', '3.5936229', '98.6614352', 'ODP MDC FL 40', 'SPLITTER-01', '6', '3.5936191', '98.6614334', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190807_095704.jpg.jpg', '20190807_095704.jpg', NULL, NULL, NULL, 'open'),
(235, '2019-08-07 18:17:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21443021', NULL, NULL, 'alexander siagian', ': JL MONGONSIDI NO 11', ': JL MONGONSIDI NO 11', '3.5738696', '98.6636049', 'ODP-MDC-FGC/052', 'SPLITTER-02', '1', '3.5727337', '98.6638207', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190807_111755.jpg.jpg', '20190807_111755.jpg', NULL, NULL, NULL, 'open'),
(236, '2019-08-07 18:57:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21450661', NULL, NULL, 'RONY SIMBOLON', 'jln mangonsidi 3 no 18', 'jln mangonsidi 3 no 18', '3.5728451', '98.6648645', 'odp-mdc-fgc/053', 'SPLITTER-01', '2', '3.5728273', '98.6648722', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'pagar coklat , depan rumah putih', 'uploads/20190807_115733.jpg.jpg', '20190807_115733.jpg', NULL, NULL, NULL, 'open'),
(237, '2019-08-07 19:40:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21456065', NULL, NULL, 'PONIRAH', 'Jl Sampul No 29', 'Jl Sampul No 29', '3.600249', '98.6512926', 'ODP MDC FF 134', 'SPLITTER-01', '2', '3.5998192', '98.6512195', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190807_124006.jpg.jpg', '20190807_124006.jpg', NULL, NULL, NULL, 'open'),
(238, '2019-08-07 19:42:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21456065', NULL, NULL, 'PONIRAH', 'Jl Sampul No 29', 'Jl Sampul No 29', '3.5997713', '98.6510007', 'ODP MDC FF 135', 'SPLITTER-01', '2', '3.5997671', '98.651001', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190807_124229.jpg.jpg', '20190807_124229.jpg', NULL, NULL, NULL, 'open'),
(239, '2019-08-07 20:16:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21455390', NULL, NULL, 'Miseri Cordias Domini', 'Lorong Tirtonadi no.25', 'Lorong Tirtonadi no.25', '3.603106', '98.6897244', 'ODP MDC FEG/041', 'SPLITTER-01', '5', '3.6028742', '98.6897196', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '85270166670', '863387048374133', '', '', 'no.25 warna unggu', 'uploads/20190807_011641.jpg.jpg', '20190807_011641.jpg', NULL, NULL, NULL, 'open'),
(240, '2019-08-07 20:45:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21456430', NULL, NULL, 'MORGAN', 'JL. SEI TUNTUNG BARU NO 16', 'JL. SEI TUNTUNG BARU NO 16', '3.5817461', '98.6543864', 'ODP-MDC-FBM/ 043', 'SPLITTER-01', '1', '3.5824096', '98.6560989', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'depan rumah ada pohon mangga', 'uploads/20190807_014554.jpg.jpg', '20190807_014554.jpg', NULL, NULL, NULL, 'open'),
(241, '2019-08-08 21:56:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21480846', NULL, NULL, 'RUDI', 'Jl Sikambing Gg Mesjid No 1A', 'Jl Sikambing Gg Mesjid No 1A', '3.5986986', '98.6657452', 'ODP MDC FAY 20', 'SPLITTER-02', '2', '3.5986744', '98.6657644', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190808_025601.jpg.jpg', '20190808_025601.jpg', NULL, NULL, NULL, 'open'),
(242, '2019-08-08 23:41:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21485769', NULL, NULL, 'bpk tjen', 'komp merbau mas', 'komp merbau mas', '3.5943254', '98.6620342', 'mdc fgk 04', 'SPLITTER-02', '2', '3.5943157', '98.6620338', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190808_044112.jpg.jpg', '20190808_044112.jpg', NULL, NULL, NULL, 'open'),
(243, '2019-08-09 00:08:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21487335', NULL, NULL, 'Farida Hanim', 'Jl.M.yakub no.182', 'Jl.M.yakub no.182', '3.5995934', '98.699518', 'ODP MDC FCG 030', 'SPLITTER-01', '3', '3.5991979', '98.6992095', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '85270166670', '863387048374133', '', '', 'm.yakub no.182', 'uploads/20190808_050814.jpg.jpg', '20190808_050814.jpg', NULL, NULL, NULL, 'open'),
(244, '2019-08-09 17:15:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21495210', NULL, NULL, 'edi saputra', 'jalan punak no 19', 'jalan punak no 19', '3.5960843', '98.6621621', 'ODP MDC FFG 47', 'SPLITTER-02', '6', '3.5960776', '98.662165', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190809_101536.jpg.jpg', '20190809_101536.jpg', NULL, NULL, NULL, 'open'),
(245, '2019-08-09 18:36:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21498240', NULL, NULL, 'EDY MANGARAH', 'Jl Garpu No 37', 'Jl Garpu No 37', '3.595305', '98.6568495', 'odp mdc ff 05', 'SPLITTER-01', '8', '3.5954533', '98.6567701', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190809_113617.jpg.jpg', '20190809_113617.jpg', NULL, NULL, NULL, 'open'),
(246, '2019-08-10 19:17:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21519544', NULL, NULL, 'MARDIANA SH', 'Jl Pasundan Gg Manggis No 8', 'Jl Pasundan Gg Manggis No 8', '3.5920451', '98.657824', 'ODP MDC FL 18', 'SPLITTER-02', '5', '3.5918916', '98.6583088', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190810_121707.jpg.jpg', '20190810_121707.jpg', NULL, NULL, NULL, 'open'),
(247, '2019-08-10 19:37:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21520129', NULL, NULL, 'ARDIAN YUNNAN SAPUTRA', 'JL. SEI ARAKUNDO NO 26', 'JL. SEI ARAKUNDO NO 26', '3.5875816', '98.6525599', 'ODP-MDC-FBD/ 024', 'SPLITTER-01', '6', '3.5875367', '98.6525585', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kos elite', 'uploads/20190810_123723.jpg.jpg', '20190810_123723.jpg', NULL, NULL, NULL, 'open'),
(248, '2019-08-10 20:14:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21521645', NULL, NULL, 'ediyanto', 'jalan pasundan gg dewi no 44 ea', 'jalan pasundan gg dewi no 44 ea', '3.5934854', '98.6599098', 'ODP MDC FL 43', 'SPLITTER-01', '3', '3.5934796', '98.6599189', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190810_011445.jpg.jpg', '20190810_011445.jpg', NULL, NULL, NULL, 'open'),
(249, '2019-08-10 22:17:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21517524', NULL, NULL, 'rony hiustafa', 'tenun indah blok a no 5', 'tenun indah blok a no 5', '3.5991592', '98.657361', 'ODP MDC FF 161', 'SPLITTER-01', '3', '3.5990622', '98.6574447', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190810_031741.jpg.jpg', '20190810_031741.jpg', NULL, NULL, NULL, 'open'),
(250, '2019-08-11 00:37:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21524638', NULL, NULL, 'Rine ariani siregar', 'jln terong no 3', 'jln terong no 3', '3.5782858', '98.6632275', 'ODP-MDC-FG/054', 'SPLITTER-01', '1', '3.5796497', '98.6638361', 'NIHIL', 'NIHIL', 'null', '', '', '', '81276595573', '868174031215720', '', '', 'jl terong nomor 3', 'uploads/20190810_053722.jpg.jpg', '20190810_053722.jpg', NULL, NULL, NULL, 'open'),
(251, '2019-08-12 17:56:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '081274481238', NULL, NULL, 'reni', 'jalan jangka no 10', 'jalan jangka no 10', 'latitude', 'longitude', 'Odp mdc fd 07', 'SPLITTER-02', '4', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelangggan', 'uploads/20190812_105634.jpg.jpg', '20190812_105634.jpg', NULL, NULL, NULL, 'open'),
(252, '2019-08-12 18:53:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21532252', NULL, NULL, 'muyono', 'jl.kuali GG.saurdot no.10', 'jl.kuali GG.saurdot no.10', '3.597975', '98.6598866', 'FF', 'SPLITTER-01', '6', '3.597975', '98.6598866', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049729474', '', '', 'NIHIL', 'uploads/20190812_115305.jpg.jpg', '20190812_115305.jpg', NULL, NULL, NULL, 'open'),
(253, '2019-08-12 20:17:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21541843', NULL, NULL, 'cikles estamaria', 'jl belanga no 7c', 'jl belanga no 7c', '3.5982783', '98.6561249', 'odp mdc ff 167', 'SPLITTER-01', '4', '3.5982794', '98.6561266', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190812_011741.jpg.jpg', '20190812_011741.jpg', NULL, NULL, NULL, 'open'),
(254, '2019-08-13 18:06:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21559770', NULL, NULL, 'TOGAP ELPE M.SIMANJUNTAK', 'JL. UBI NO.1', 'JL. UBI NO.1', '3.5800994', '98.6629807', 'ODP-MDC-FG/056', 'SPLITTER-01', '3', '3.5798823', '98.6632745', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumahnya pas di persimpanagan', 'uploads/20190813_110608.jpg.jpg', '20190813_110608.jpg', NULL, NULL, NULL, 'open'),
(255, '2019-08-13 18:12:35', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21461096', NULL, NULL, 'kok sun', 'jalan sekip no 51 I', 'jalan sekip no 51 I', '3.5961572', '98.6654119', 'ODP MDC Fay 30', 'SPLITTER-02', '5', '3.5962347', '98.665491', 'NIHIL', 'CP TDK BISA DIHUBUNGI', 'NIHIl', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190813_111235.jpg.jpg', '20190813_111235.jpg', NULL, NULL, NULL, 'open'),
(256, '2019-08-13 20:45:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21563213', NULL, NULL, 'yulia', 'JL. SEI MUSI NO.30', 'JL. SEI MUSI NO.30', '3.5778252', '98.6509292', 'ODP-MDC-FGB/055', 'SPLITTER-01', '3', '3.5780097', '98.6509411', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumah ujung warna biru', 'uploads/20190813_014520.jpg.jpg', '20190813_014520.jpg', NULL, NULL, NULL, 'open');
INSERT INTO `images` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(257, '2019-08-13 21:55:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21563858', NULL, NULL, 'MAULIDA', 'jln cik ditiro no 99', 'jln cik ditiro no 99', '3.5824084', '98.669466', 'MDC-FAE/40', 'SPLITTER-02', '1', '3.5823207', '98.6694793', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'samping tahu endang', 'uploads/20190813_025536.jpg.jpg', '20190813_025536.jpg', NULL, NULL, NULL, 'open'),
(258, '2019-08-13 22:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21568999', NULL, NULL, 'farhan raihansyah', 'jalan m idris no 17', 'jalan m idris no 17', '3.5951698', '98.6585115', 'Odp mdc fl 48', 'SPLITTER-01', '6', '3.5951698', '98.6585115', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190813_035856.jpg.jpg', '20190813_035856.jpg', NULL, NULL, NULL, 'open'),
(259, '2019-08-14 19:07:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21566789', NULL, NULL, 'ALEXANDER GARY TAVIS', 'sei belutu 66', 'sei belutu 66', '3.5763155', '98.6483203', 'ODP-MDC-FGB/042', 'SPLITTER-01', '4', '3.5763764', '98.6483988', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar .1', 'uploads/20190814_120752.jpg.jpg', '20190814_120752.jpg', NULL, NULL, NULL, 'open'),
(260, '2019-08-14 21:38:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21587403', NULL, NULL, 'desi indryani', 'jl kelapa no.5c', 'jl kelapa', '3.5925469', '98.6708883', 'mdc fbu 15', 'SPLITTER-02', '6', '3.5925469', '98.6708883', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190814_023805.jpg.jpg', '20190814_023805.jpg', NULL, NULL, NULL, 'open'),
(261, '2019-08-14 22:13:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21573231', NULL, NULL, 'chandra', 'jl gajah mada', 'jl gajah mada', '3.5847269', '98.6578231', 'ODP-MDC-FH/037', 'SPLITTER-02', '2', '3.5847269', '98.6578231', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190814_031348.jpg.jpg', '20190814_031348.jpg', NULL, NULL, NULL, 'open'),
(262, '2019-08-14 23:07:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21590687', NULL, NULL, 'NADYA TJENDANA', 'Jl Gatsu No 50', 'Jl Gatsu No 50', '3.5906584', '98.6719198', 'ODP MDC FAX 08', 'SPLITTER-01', '4', '3.5913652', '98.6711955', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190814_040720.jpg.jpg', '20190814_040720.jpg', NULL, NULL, NULL, 'open'),
(263, '2019-08-15 01:26:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21594390', NULL, NULL, 'budi hartono', 'jl sei denai no 15', 'jl sei denai no 15', '3.5835641', '98.6600917', 'ODP-MDC-FH/047', 'SPLITTER-02', '6', '3.5835877', '98.6601194', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190814_062612.jpg.jpg', '20190814_062612.jpg', NULL, NULL, NULL, 'open'),
(264, '2019-08-15 02:16:15', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21595059', NULL, NULL, 'DENNY F', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.5989931', '98.6516364', 'ODP MDC FF 135', 'SPLITTER-01', '4', '3.5995866', '98.6550739', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190814_071615.jpg.jpg', '20190814_071615.jpg', NULL, NULL, NULL, 'open'),
(265, '2019-08-15 02:24:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21595286', NULL, NULL, 'Roy Firman Sihombing', 'jln.periuk gg.saurdot', 'jln.periuk gg.saurdot', '3.6006299', '98.6594935', 'odp mdc ff-90', 'SPLITTER-01', '1', '3.6006299', '98.6594935', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190814_072400.jpg.jpg', '20190814_072400.jpg', NULL, NULL, NULL, 'open'),
(266, '2019-08-15 16:40:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21600889', NULL, NULL, 'ZOELKARNAIN', 'SEI MUARA no. 17-20', 'SEI MUARA no. 17-20', '3.5815824', '98.6550947', 'ODP-MDC-FBM/32', 'SPLITTER-01', '3', '3.5815713', '98.655032', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumah warna kuning no. 20/17', 'uploads/20190815_094038.jpg.jpg', '20190815_094038.jpg', NULL, NULL, NULL, 'open'),
(267, '2019-08-15 20:16:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21608031', NULL, NULL, 'SUKOYO', 'JL. SEI MUSI NO 37 D', 'JL. SEI MUSI NO 37 D', '3.5778376', '98.6499936', 'ODP-MDC-FGB / 058', 'SPLITTER-02', '4', '3.5781105', '98.6499882', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel paling sudut sebelah kanan', 'uploads/20190815_011606.jpg.jpg', '20190815_011606.jpg', NULL, NULL, NULL, 'open'),
(268, '2019-08-15 20:20:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21607073', NULL, NULL, 'YUSTINA ZENDRATO', 'Jl PWS No 90', 'Jl PWS No 90', '3.5951403', '98.6616055', 'ODP MDC FGK 22', 'SPLITTER-02', '5', '3.5956122', '98.6613664', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190815_012022.jpg.jpg', '20190815_012022.jpg', NULL, NULL, NULL, 'open'),
(269, '2019-08-16 18:22:42', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21619284', NULL, NULL, 'temporer suport event', 'jalan mistar no 99', 'jalan mistar no 99', '3.5920969', '98.6483618', 'odp mdc fd 51', 'SPLITTER-01', '4', '3.5920423', '98.6483271', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'pelanggan', 'uploads/20190816_112242.jpg.jpg', '20190816_112242.jpg', NULL, NULL, NULL, 'open'),
(270, '2019-08-16 19:20:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21628013', NULL, NULL, 'rendy prayoga lesmana', 'JL. SEI MARE NO.04', 'JL. SEI MARE NO.04', '3.5821267', '98.6526532', 'ODP-MDC-FBM/099', 'SPLITTER-01', '2', '3.5816232', '98.6523901', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel no. A4', 'uploads/20190816_122031.jpg.jpg', '20190816_122031.jpg', NULL, NULL, NULL, 'open'),
(271, '2019-08-16 19:32:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21624075', NULL, NULL, 'ANDREW JUS', 'JL. PEMUDA NO 11E', 'JL. PEMUDA NO 11E', '3.5823659', '98.6819501', 'ODP-MDC-FAP/062', 'SPLITTER-02', '5', '3.5822499', '98.6816889', 'CHANGE DATEK', 'NIHIL', 'null', '', '', '', '82363707388', '863915033596516', '', '', 'depan toko sweet home', 'uploads/20190816_123247.jpg.jpg', '20190816_123247.jpg', NULL, NULL, NULL, 'open'),
(272, '2019-08-17 17:15:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21643480', NULL, NULL, 'yusuf', 'jalan notes no 46 c', 'jalan notes no 46 c', '3.5983452', '98.6500263', 'odp mdc ff 46', 'SPLITTER-01', '4', '3.5983178', '98.6500126', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190817_101546.jpg.jpg', '20190817_101546.jpg', NULL, NULL, NULL, 'open'),
(273, '2019-08-17 18:11:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21644743', NULL, NULL, 'HARDI SUGANDA', 'jl mistar gg minang no 12', 'jl Mistar Gg Minang No 12', '3.5902482', '98.6492302', 'ODP MDC FD 63', 'SPLITTER-01', '1', '3.5913738', '98.6492618', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190817_111121.jpg.jpg', '20190817_111121.jpg', NULL, NULL, NULL, 'open'),
(274, '2019-08-19 16:41:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21659559', NULL, NULL, 'WAHYUNANSYAH .IR', 'JL. SEI BATANG SERANGAN', 'Jl. DI PANJAITAN', '3.5760226', '98.6592647', 'ODP-MDC-FE/208', 'SPLITTER-01', '5', '3.5758054', '98.6595043', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'killiney coffe', 'uploads/20190819_094119.jpg.jpg', '20190819_094119.jpg', NULL, NULL, NULL, 'open'),
(275, '2019-08-19 19:56:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21669134', NULL, NULL, 'rio wiloto phen jaya', 'jl sikambing', 'komp sikambing raya', '3.5979935', '98.6653937', 'mdc fay 20', 'SPLITTER-02', '3', '3.5979903', '98.6653667', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190819_125652.jpg.jpg', '20190819_125652.jpg', NULL, NULL, NULL, 'open'),
(276, '2019-08-19 20:01:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21669208', NULL, NULL, 'NATALIA ANGGREANI', 'JL. SEI ARAKUNDO 6', 'JL. SEI ARAKUNDO 6', '3.5874706', '98.6526306', 'ODP-MDC-FBD/ 24', 'SPLITTER-02', '3', '3.5874695', '98.652631', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kamar lantai 4 paling ujung', 'uploads/20190819_010141.jpg.jpg', '20190819_010141.jpg', NULL, NULL, NULL, 'open'),
(277, '2019-08-20 00:17:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21680210', NULL, NULL, 'IRPAN POHAN', 'Jl Starban Gg Sahabat No 1', 'Jl Starban Gg Sahabat No 1', '3.5591014', '98.6660749', 'ODP MDC FAC 93', 'SPLITTER-02', '4', '3.5571769', '98.6655568', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190819_051759.jpg.jpg', '20190819_051759.jpg', NULL, NULL, NULL, 'open'),
(278, '2019-08-20 00:31:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21664070', NULL, NULL, 'Muhamad Hafiz', 'jl. t cik ditiro no 9', 'jl. t cik ditiro no 9', '3.5826662', '98.669045', 'ODP-MDC-FAE/125', 'SPLITTER-01', '3', '3.5827968', '98.6690881', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'samping mesjid al-juz', 'uploads/20190819_053146.jpg.jpg', '20190819_053146.jpg', NULL, NULL, NULL, 'open'),
(279, '2019-08-20 01:02:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21681368', NULL, NULL, 'SISKA LASMARITO MANIK', 'SEI TUNTUNG BARU NO.6A', 'SEI TUNTUNG BARU NO.6A', '3.5825387', '98.656597', 'ODP-MDC-FBM/40', 'SPLITTER-02', '3', '3.5825333', '98.656608', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumah ujung warna kuning', 'uploads/20190819_060214.jpg.jpg', '20190819_060214.jpg', NULL, NULL, NULL, 'open'),
(280, '2019-08-20 02:41:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21682213', NULL, NULL, 'SOLIKIN', 'Jl Gatsu No 36', 'Jl GAtsu No 36', '3.5904502', '98.660918', 'ODP MDC FM 24', 'SPLITTER-01', '3', '3.5901305', '98.6616055', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190819_074111.jpg.jpg', '20190819_074111.jpg', NULL, NULL, NULL, 'open'),
(281, '2019-08-20 17:38:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21687144', NULL, NULL, 'WINDI EFENDY', 'JL. TIT PAPAN  NO 32 C', 'JL. TIT PAPAN  NO 32 C', '3.587987', '98.6477514', 'ODP-MDC-FBD/ 069', 'SPLITTER-01', '8', '3.5879368', '98.6478603', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel no. 32C warna hijau', 'uploads/20190820_103825.jpg.jpg', '20190820_103825.jpg', NULL, NULL, NULL, 'open'),
(282, '2019-08-20 17:49:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21690141', NULL, NULL, 'IRWAN WIDYA', 'Jl Gatsu No 71', 'jl Gats No 71', '3.5929923', '98.6690115', 'ODP MDC FBU 09', 'SPLITTER-01', '4', '3.5929006', '98.669051', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190820_104946.jpg.jpg', '20190820_104946.jpg', NULL, NULL, NULL, 'open'),
(283, '2019-08-20 22:26:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21701069', NULL, NULL, 'HARDI PRANATA', 'JL.CANGKIR NO.32', 'JL.CANGKIR NO.32', '3.5957779', '98.655932', 'FF', 'SPLITTER-02', '14', '3.5957701', '98.6558991', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '352810061777518', '', '', 'RUMAH PELANGGAN', 'uploads/20190820_032656.jpg.jpg', '20190820_032656.jpg', NULL, NULL, NULL, 'open'),
(284, '2019-08-21 15:38:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21698508', NULL, NULL, 'jeny', 'jalan sampul no 15 k', 'jalan sampul no 15 k', '3.5985176', '98.651673', 'odp mdc ff 124', 'SPLITTER-01', '2', '3.5984232', '98.651761', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190821_083859.jpg.jpg', '20190821_083859.jpg', NULL, NULL, NULL, 'open'),
(285, '2019-08-21 22:03:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21715351', NULL, NULL, 'RIA RENGGALITA', 'JL. SEI ROKAN NO 91', 'JL. SEI ROKAN NO 91', '3.5798576', '98.6441292', 'ODP-MDC-FGB/ 066', 'SPLITTER-01', '6', '3.5800934', '98.6441578', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel no. 6E', 'uploads/20190821_030302.jpg.jpg', '20190821_030302.jpg', NULL, NULL, NULL, 'open'),
(286, '2019-08-22 01:00:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21731134', NULL, NULL, 'BOYDO JONNATHAN DAMANIK', 'JL. TEIDILAH  NO 12', 'JL. TEIDILAH  NO 12', '3.581696', '98.6523421', 'ODP-MDC-FBM/ 058', 'SPLITTER-01', '4', '3.5817017', '98.6523385', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kamar nomor 109', 'uploads/20190821_060057.jpg.jpg', '20190821_060057.jpg', NULL, NULL, NULL, 'open'),
(287, '2019-08-22 01:50:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21732689', NULL, NULL, 'Joni', 'jln.johar no.7', 'jln.johar no.7', '3.5994429', '98.6664221', 'ODP-MDC-FAY/036', 'SPLITTER-01', '5', '3.5994045', '98.6664378', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190821_065005.jpg.jpg', '20190821_065005.jpg', NULL, NULL, NULL, 'open'),
(288, '2019-08-22 18:53:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21742788', NULL, NULL, 'Lina', 'jln.kenari gg.buntu no.12', 'jln.kenari gg.buntu no.12', '3.5978043', '98.6668211', 'ODP-MDC-FGJ/013', 'SPLITTER-01', '2', '3.5977785', '98.6667742', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190822_115307.jpg.jpg', '20190822_115307.jpg', NULL, NULL, NULL, 'open'),
(289, '2019-08-22 19:03:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21743760', NULL, NULL, 'Livena', 'jl. imam bonjol no 9', 'jl. imam bonjol no 9', '3.5862556', '98.6741607', 'ODP-MDC-FY/02', 'SPLITTER-01', '4', '3.5864908', '98.674176', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '863915033596516', '', '', 'bank cimb niaga', 'uploads/20190822_120321.jpg.jpg', '20190822_120321.jpg', NULL, NULL, NULL, 'open'),
(290, '2019-08-22 21:34:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21749566', NULL, NULL, 'Widia Sari Marza', 'jln.jangka gg.roda no.67', 'jln.jangka gg.roda no.67', '3.5927695', '98.6475116', 'ODP-MDC-FD/30', 'SPLITTER-01', '3', '3.5927695', '98.6475116', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190822_023458.jpg.jpg', '20190822_023458.jpg', NULL, NULL, NULL, 'open'),
(291, '2019-08-22 21:54:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21748879', NULL, NULL, 'indra cintia kartika', 'jl k.h wahidhasyim brimob m1 no 6', 'jl k.h wahidhasyim brimob m1 no 6', '3.5715698', '98.6584262', 'ODP-MDC-FE/214', 'SPLITTER-01', '6', '3.5715239', '98.6585102', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81276595573', '868174031215720', '', '', 'komplek brimob m1  no6', 'uploads/20190822_025430.jpg.jpg', '20190822_025430.jpg', NULL, NULL, NULL, 'open'),
(292, '2019-08-23 00:05:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21756216', NULL, NULL, 'sisna puspitasari', 'JL TITIPAPAN GG PEMUDA NO 20', 'JL TITIPAPAN GG PEMUDA NO 20', '3.5896514', '98.6461367', 'ODP-MDC-FBD/43', 'SPLITTER-01', '7', '3.5896449', '98.6468241', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190822_050512.jpg.jpg', '20190822_050512.jpg', NULL, NULL, NULL, 'open'),
(293, '2019-08-23 01:01:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21747582', NULL, NULL, 'CV.KIOSK PLUS INDONESIA', 'JL. ABDULLAH LUBIS NO 1', 'JL. ABDULLAH LUBIS NO 1', '3.5765695', '98.6657484', 'ODP-MDC-FG/ 017', 'SPLITTER-01', '5', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'anaya hotel', 'uploads/20190822_060125.jpg.jpg', '20190822_060125.jpg', NULL, NULL, NULL, 'open'),
(294, '2019-08-23 01:22:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21759088', NULL, NULL, 'CV.KIOSK PLUS INDONESIA', 'JL. ABDULLAH LUBIS NO 1', 'JL. ABDULLAH LUBIS NO 1', 'wait...for gps signal ...', 'wait...for gps signal ...', 'ODP-MDC-FG/ 017', 'SPLITTER-01', '5', 'wait...for gps signal ...', 'wait...for gps signal ...', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'hotel anaya', 'uploads/20190822_062232.jpg.jpg', '20190822_062232.jpg', NULL, NULL, NULL, 'open'),
(295, '2019-08-23 15:59:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21749385', NULL, NULL, 'nurul agsutina', 'jl periuk no78', 'jl periuk no 78', '3.5998805', '98.6552103', 'odp mdc ff 106', 'SPLITTER-01', '4', '3.6008219', '98.6555966', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190823_085924.jpg.jpg', '20190823_085924.jpg', NULL, NULL, NULL, 'open'),
(296, '2019-08-23 20:28:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21771144', NULL, NULL, 'tukini', 'JL SEI SERAYU GG RUKUN NO 3', 'JL SEI SERAYU GG RUKUN NO 3', '3.5777158', '98.6502614', 'ODP-MDC-FGB/50', 'SPLITTER-02', '3', '3.5766498', '98.6493398', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190823_012820.jpg.jpg', '20190823_012820.jpg', NULL, NULL, NULL, 'open'),
(297, '2019-08-23 21:02:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21769831', NULL, NULL, 'HAIRUL RAMADHAN', 'Jl Putri Hijau No 14', 'Jl Putri Hijau No 14', '3.5978506', '98.6753833', 'ODP MDC FAW 30', 'SPLITTER-01', '4', '3.5978452', '98.675387', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190823_020225.jpg.jpg', '20190823_020225.jpg', NULL, NULL, NULL, 'open'),
(298, '2019-08-23 23:04:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21778949', NULL, NULL, 'RYO ANGGORO LUBIS', 'jL ayahanda no 45', 'jl ayahanda no 45', '3.5914451', '98.6550739', 'ODP MDC FD 06', 'SPLITTER-01', '2', '3.5930089', '98.6531643', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190823_040402.jpg.jpg', '20190823_040402.jpg', NULL, NULL, NULL, 'open'),
(299, '2019-08-24 17:26:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21786813', NULL, NULL, 'ERSE NURHINDATI', 'JL SEI ASAHAN NO 15', 'JL SEI ASAHAN NO 15', '3.5724058', '98.6576411', 'ODP-MDC-FE/213', 'SPLITTER-01', '4', '3.5724061', '98.6576425', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190824_102645.jpg.jpg', '20190824_102645.jpg', NULL, NULL, NULL, 'open'),
(300, '2019-08-24 17:29:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21785483', NULL, NULL, 'MITA RIZKI YANTI HARAHAP', 'JL SEI ASAHAN BLOK B1 NO 4', 'JL SEI ASAHAN BLOK B1 NO 4', '3.5724058', '98.6576411', 'ODP-MDC-FE/213', 'SPLITTER-01', '5', '3.5724057', '98.6576411', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190824_102944.jpg.jpg', '20190824_102944.jpg', NULL, NULL, NULL, 'open'),
(301, '2019-08-24 17:37:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21786878', NULL, NULL, 'JOHAN NG', 'JL. SEI BATANG HARI NO 130', 'JL. SEI BATANG HARI NO 130', '3.5850933', '98.6438048', 'ODP-MDC-FBD / 001', 'SPLITTER-01', '5', '3.5850933', '98.6438048', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'J cafe', 'uploads/20190824_103729.jpg.jpg', '20190824_103729.jpg', NULL, NULL, NULL, 'open'),
(302, '2019-08-24 19:15:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21790541', NULL, NULL, 'rusmayati hutabarat', 'jln garpu no.21', 'jln garpu no.21', '3.5980517', '98.6590533', 'ODP-MDC-FF/07', 'SPLITTER-02', '2', '3.5956364', '98.6556728', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '866440049418156', '', '', 'ada', 'uploads/20190824_121536.jpeg.jpeg', '20190824_121536.jpeg', NULL, NULL, NULL, 'open'),
(303, '2019-08-24 22:49:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21794205', NULL, NULL, 'rivai', 'jl gatsu no.325', 'jl gatsu', '3.5898672', '98.6581987', 'mdc fbf 97', 'SPLITTER-01', '5', '3.5899232', '98.6581719', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190824_034932.jpg.jpg', '20190824_034932.jpg', NULL, NULL, NULL, 'open'),
(304, '2019-08-24 23:03:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21793041', NULL, NULL, 'MUHAMMAD  AMRIN', 'JL. WAHID HASYIM G NO 4', 'JL. WAHID HASYIM G NO 4', '3.5732909', '98.6569229', 'ODP-MDC-FE / 213', 'SPLITTER-01', '6', '3.5732452', '98.6569435', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'komp, asrama brimob', 'uploads/20190824_040351.jpg.jpg', '20190824_040351.jpg', NULL, NULL, NULL, 'open'),
(305, '2019-08-24 23:58:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21792650', NULL, NULL, 'RINI RUSLAN', 'JL. WAHID HASYIM Q NO 4', 'JL. WAHID HASYIM Q NO 4', '3.5748367', '98.6567927', 'ODP-MDC-FE / 213', 'SPLITTER-01', '5', '3.5754432', '98.6588553', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'komp. asrama brimob', 'uploads/20190824_045846.jpg.jpg', '20190824_045846.jpg', NULL, NULL, NULL, 'open'),
(306, '2019-08-25 01:54:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21796374', NULL, NULL, 'MURTADHAM', 'JL. SEI PUTIH NO 41/48a', 'JL. SEI PUTIH NO 41/48', '3.5801516', '98.6574802', 'ODP-MDC-FA  / 002', 'SPLITTER-01', '3', '3.5782799', '98.6567927', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'caffe ruang publik', 'uploads/20190824_065417.jpg.jpg', '20190824_065417.jpg', NULL, NULL, NULL, 'open'),
(307, '2019-08-25 21:36:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21802335', NULL, NULL, 'FATAHILA M LINTANG', 'jl sampul no 40E', 'Jl Samul No 40E', '3.5989931', '98.6516364', 'ODP MDC FF 126', 'SPLITTER-01', '4', '3.5995446', '98.6500389', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190825_023639.jpg.jpg', '20190825_023639.jpg', NULL, NULL, NULL, 'open'),
(308, '2019-08-26 02:49:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21805036', NULL, NULL, 'M FACHRAN MUDA FADILLAH', 'JL. SEI BAGERPANG NO 47', 'JL. SEI BAGERPANG NO 47', '3.5724353', '98.6602691', 'ODP-MDC-FE/196', 'SPLITTER-01', '4', '3.5724264', '98.6602475', 'CHANGE DATEK', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'depan komplek brimob', 'uploads/20190825_074933.jpg.jpg', '20190825_074933.jpg', NULL, NULL, NULL, 'open'),
(309, '2019-08-26 18:37:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21811526', NULL, NULL, 'BP YADI', 'JL. SEI BATANG HARI NO 11', 'JL. SEI BATANG HARI NO 11', '3.5861845', '98.6485428', 'ODP-MDC-FE / 04', 'SPLITTER-01', '5', '3.5849714', '98.6444181', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warnet', 'uploads/20190826_113716.jpg.jpg', '20190826_113716.jpg', NULL, NULL, NULL, 'open'),
(310, '2019-08-26 20:24:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21815807', NULL, NULL, 'RANAP OMPUSUNGGU', 'JL. SEI BILAH NO 90', 'JL. SEI BILAH NO 90', '3.5802266', '98.6495739', 'ODP-MDC-FBM / 65', 'SPLITTER-01', '6', '3.5802266', '98.6495739', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'toko yoseph', 'uploads/20190826_012451.jpg.jpg', '20190826_012451.jpg', NULL, NULL, NULL, 'open'),
(311, '2019-08-27 00:04:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21811461', NULL, NULL, 'bank mandiri', 'jl imam bonjol', 'jl imam bonjol', '3.587374', '98.6742367', 'ODP-MDC-FY/011', 'SPLITTER-01', '5', '3.5874036', '98.6741174', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190826_050455.jpg.jpg', '20190826_050455.jpg', NULL, NULL, NULL, 'open'),
(312, '2019-08-27 00:37:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21825787', NULL, NULL, 'RONNI JONISES ARITONGA', 'JL. SEI ROKAN NO 14 C', 'JL. SEI ROKAN NO 14 C', '3.5793363', '98.6444181', 'ODP-MDC-FGB / 022', 'SPLITTER-01', '4', '3.5793363', '98.6444181', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel paling ujung sebelah kiri', 'uploads/20190826_053711.jpg.jpg', '20190826_053711.jpg', NULL, NULL, NULL, 'open'),
(313, '2019-08-27 02:18:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21817054', NULL, NULL, 'HENDRA', 'JL. SEI BATANG GADIS NO 23', 'JL. SEI BATANG GADIS NO 23', '3.5875455', '98.6554919', 'ODP-MDC-FBF/ 072', 'SPLITTER-01', '2', '3.5875425', '98.6554905', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'JL. SEI BATANG GADIS NO 23', 'uploads/20190826_071838.jpg.jpg', '20190826_071838.jpg', NULL, NULL, NULL, 'open'),
(314, '2019-08-27 17:14:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21834362', NULL, NULL, 'dian anggraini', 'jalan sempu non5', 'jalan sempu no 5', '3.5984421', '98.6668323', 'odp mdc fgj 12', 'SPLITTER-02', '2', '3.5984559', '98.6668381', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190827_101456.jpg.jpg', '20190827_101456.jpg', NULL, NULL, NULL, 'open'),
(315, '2019-08-27 18:21:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21837365', NULL, NULL, 'BENI FASIUS', 'JL Notes Gg Sejahtera No 71A', 'Jl Notes Gg Sejahtera No 71A', '3.5965501', '98.6451056', 'ODP MDC FF 33', 'SPLITTER-01', '2', '3.5974048', '98.6474741', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190827_112157.jpg.jpg', '20190827_112157.jpg', NULL, NULL, NULL, 'open'),
(316, '2019-08-27 20:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209219539', NULL, NULL, 'reza FADLIANSYAH sitepu', 'jl.ayahanda no.12', 'jl.ayahanda no.12', '3.5915035', '98.6533906', 'FD', 'SPLITTER-02', '7', '3.5914256', '98.6534415', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '861930049729474', '', '', 'ada', 'uploads/20190827_014614.jpg.jpg', '20190827_014614.jpg', NULL, NULL, NULL, 'open'),
(317, '2019-08-27 21:10:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21843281', NULL, NULL, 'Roberto Eksanto lumban toruan', 'jln.tinta No.44B', 'jln.tinta No.44B', '3.6027479', '98.6519801', 'ODP-MDC-FF/132', 'SPLITTER-01', '5', '3.6021183', '98.6523239', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190827_021056.jpg.jpg', '20190827_021056.jpg', NULL, NULL, NULL, 'open'),
(318, '2019-08-27 21:15:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21839915', NULL, NULL, 'DEDI RIZKY', 'JL. MAYJEN D I PANJAITAN NO 185', 'JL. MAYJEN D I PANJAITAN NO 185', '3.5876422', '98.6598866', 'ODP-MDC-FBR/ 034', 'SPLITTER-01', '1', '3.5876422', '98.6598866', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warung makan', 'uploads/20190827_021505.jpg.jpg', '20190827_021505.jpg', NULL, NULL, NULL, 'open'),
(319, '2019-08-28 18:51:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21863635', NULL, NULL, 'ANDI SETIAWAN', 'Jl Merak Jingga No 71', 'Jl Merak Jingga No 71', '3.6003423', '98.6743267', 'ODP MDC FAW 26', 'SPLITTER-02', '6', '3.6003123', '98.6740615', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'Rumah Pelanggan', 'uploads/20190828_115152.jpg.jpg', '20190828_115152.jpg', NULL, NULL, NULL, 'open'),
(320, '2019-08-28 21:24:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21862945', NULL, NULL, 'Nunung Elfi Rafina', 'Jl Sempu no 18B', 'Jl Sempu No 18B', '3.5976028', '98.6660749', 'ODP MDC FAY 20', 'SPLITTER-02', '8', '3.5984316', '98.6668247', 'NIHIL', 'NIHIL', 'None', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190828_022439.jpg.jpg', '20190828_022439.jpg', NULL, NULL, NULL, 'open'),
(321, '2019-08-28 23:52:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21873032', NULL, NULL, 'RICARDO SIMARMATA', 'JL. SEI BAHBOLON NO 36 A', 'JL. SEI BAHBOLON NO 36 A', '3.5814331', '98.6543864', 'ODP-MDC-FBM / 032', 'SPLITTER-01', '1', '3.5814331', '98.6543864', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'jl. sei bahbolon no. 36A', 'uploads/20190828_045245.jpg.jpg', '20190828_045245.jpg', NULL, NULL, NULL, 'open'),
(322, '2019-08-29 01:57:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '082363707388', NULL, NULL, 'ROBINTANG SIMBOLON', 'JL. SEI MUARA NO 89', 'JL. SEI MUARA NO 89', 'wait...for gps signal ...', 'wait...for gps signal ...', 'ODP-MDC-FBM / 032', 'SPLITTER-01', '5', 'wait...for gps signal ...', 'wait...for gps signal ...', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warung tuak', 'uploads/20190828_065727.jpg.jpg', '20190828_065727.jpg', NULL, NULL, NULL, 'open'),
(323, '2019-08-29 18:24:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21883316', NULL, NULL, 'calvin anderson tanaka', 'jln.rengas no.10A', 'jln.rengas no.10A', '3.5976159', '98.6646997', 'ODP-MDC-FAY/025', 'SPLITTER-02', '5', '3.5976159', '98.6646997', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190829_112411.jpg.jpg', '20190829_112411.jpg', NULL, NULL, NULL, 'open'),
(324, '2019-08-29 23:20:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21894982', NULL, NULL, 'mardiana', 'jalan sampul no 99', 'jalan sampul non99', '3.5985006', '98.6476354', 'odp mdc ff 33', 'SPLITTER-02', '4', '3.5985007', '98.6476355', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190829_042001.jpg.jpg', '20190829_042001.jpg', NULL, NULL, NULL, 'open'),
(325, '2019-08-30 00:15:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21897081', NULL, NULL, 'Ade Putra', 'jln.kertas No.28', 'jln.kertas No.28', '3.5951303', '98.6510802', 'ODP-MDC-FF/069', 'SPLITTER-01', '8', '3.5951303', '98.6510802', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190829_051514.jpg.jpg', '20190829_051514.jpg', NULL, NULL, NULL, 'open'),
(326, '2019-08-30 18:18:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21903863', NULL, NULL, 'Niko Kristian Tarigan', 'Jln. Kelapa NO 19B', 'Jln. Kelapa NO 19B', '3.5933005', '98.6711769', 'MDC-FBU/03', 'SPLITTER-02', '1', '3.5932999', '98.6711772', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '866440049418156', '', '', 'ADA', 'uploads/20190830_111811.jpg.jpg', '20190830_111811.jpg', NULL, NULL, NULL, 'open'),
(327, '2019-08-30 19:07:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21904955', NULL, NULL, 'mariati samosir', 'jl. perdana no 40', 'jl. perdana no 40', '3.5872666', '98.6765755', 'odp-mdc-fz/003', 'SPLITTER-01', '4', '3.5872457', '98.6765717', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'dpn toko percetakan', 'uploads/20190830_120724.jpg.jpg', '20190830_120724.jpg', NULL, NULL, NULL, 'open'),
(328, '2019-08-30 22:49:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21916118', NULL, NULL, 'nadya', 'jl sekip no.76', 'jl sekip no.76', '3.5992802', '98.6631775', 'mdc fay 46', 'SPLITTER-01', '8', '3.599297', '98.6631875', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190830_034907.jpg.jpg', '20190830_034907.jpg', NULL, NULL, NULL, 'open'),
(329, '2019-08-30 22:54:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21914615', NULL, NULL, 'ANTO', 'Jl Piring No 25', 'jl Piring no 25', '3.5920484', '98.6574802', 'ODP MDC FD 82', 'SPLITTER-01', '6', '3.5910891', '98.6567582', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190830_035408.jpg.jpg', '20190830_035408.jpg', NULL, NULL, NULL, 'open'),
(330, '2019-08-31 17:16:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21923792', NULL, NULL, 'MELY HERLINA MARPAUNG', 'JL. KELADI NO 77D', 'JL. KELADI NO 77D', '3.5766757', '98.660918', 'ODP-MDC-FG / 044', 'Please select ...!!!', '3', '3.5766757', '98.660918', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel tepas dibelakang jesinta collection', 'uploads/20190831_101601.jpg.jpg', '20190831_101601.jpg', NULL, NULL, NULL, 'open'),
(331, '2019-08-31 17:47:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21924958', NULL, NULL, 'budianto tio', 'jalan gatsu no 124/80', 'jalan gatsu no 124/80', '3.5922398', '98.6706601', 'odp mdc fbu 56', 'SPLITTER-01', '5', '3.5922411', '98.6706635', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '', '', 'rumah pelanggan', 'uploads/20190831_104728.jpg.jpg', '20190831_104728.jpg', NULL, NULL, NULL, 'open'),
(332, '2019-08-31 20:26:18', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21928728', NULL, NULL, 'SRIANA REJEKI SAMOSIR', 'jl agenda no 11', 'Jl Agenda No 11', '3.5999735', '98.6525093', 'ODP MDC FF 135', 'SPLITTER-01', '5', '3.6000433', '98.6525715', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190831_012618.jpg.jpg', '20190831_012618.jpg', NULL, NULL, NULL, 'open'),
(333, '2019-08-31 21:36:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21914103', NULL, NULL, 'WISMA SYARIAH ACEH HOUSE', 'GAJAH MADA (0024); 58', 'GAJAH MADA (0024); 58', '3.5835853', '98.6585115', 'ODP-MDC-FBF/31', 'SPLITTER-02', '4', '3.585058', '98.6574202', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'hotel aceh', 'uploads/20190831_023653.jpg.jpg', '20190831_023653.jpg', NULL, NULL, NULL, 'open'),
(334, '2019-09-01 02:13:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21934816', NULL, NULL, 'JEFFRI JANTA MUNTHE', 'JL. SEI BELAH NO 82/72', 'JL. SEI BELAH NO 82/72', '3.5821179', '98.648199', 'ODP-MDC-FBB / 094', 'SPLITTER-01', '5', '3.5821179', '98.648199', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'ponsel', 'uploads/20190831_071324.jpg.jpg', '20190831_071324.jpg', NULL, NULL, NULL, 'open'),
(335, '2019-09-01 19:32:18', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21936480', NULL, NULL, 'jefri hendrik', 'jl sei tuan no 15', 'jl sei tuan no 15', '3.580309', '98.6554261', 'ODP-MDC-FA/040', 'SPLITTER-01', '7', '3.5799145', '98.6555381', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190901_123218.jpg.jpg', '20190901_123218.jpg', NULL, NULL, NULL, 'open'),
(336, '2019-09-01 19:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21936480', NULL, NULL, 'jefri hendrik', 'jl sei tuan no 15', 'jl sei tuan no 15', '3.580309', '98.6554261', 'ODP-MDC-FA/040', 'SPLITTER-01', '7', '3.5799145', '98.6555381', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190901_123253.jpg.jpg', '20190901_123253.jpg', NULL, NULL, NULL, 'open'),
(337, '2019-09-03 00:16:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21956364', NULL, NULL, 'mauritz simanjuntak', 'jl. sei belutu gg keluarga no 55a', 'jln. sei belutu gg keluarga no 55a', '3.5755368', '98.6490614', 'odp-mdc-fgb/036', 'SPLITTER-01', '7', '3.575559', '98.6490049', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'samping warkop', 'uploads/20190902_051656.jpg.jpg', '20190902_051656.jpg', NULL, NULL, NULL, 'open'),
(338, '2019-09-03 00:36:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21956364', NULL, NULL, 'mauritz simanjuntak', 'jl. sei belutu gg keluarga no 55a', 'jln. sei belutu gg keluarga no 55a', '3.5755368', '98.6490614', 'odp-mdc-fgb/036', 'SPLITTER-01', '7', '3.575559', '98.6490049', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '863915033596516', '', '', 'samping warkop', 'uploads/20190902_053643.jpg.jpg', '20190902_053643.jpg', NULL, NULL, NULL, 'open'),
(339, '2019-09-03 00:56:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21960853', NULL, NULL, 'PT SINAR MITRA SEPADAN FINANCE', 'JL ABDULLAH LUBIS', 'JL ABDULLAH LUBIS', '3.5768595', '98.6576813', 'ODP-MDC-FE/174', 'SPLITTER-01', '7', '3.5766348', '98.6576152', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190902_055620.jpg.jpg', '20190902_055620.jpg', NULL, NULL, NULL, 'open'),
(340, '2019-09-03 18:57:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21963201', NULL, NULL, 'PAK KEVIN', 'JL. GAJAH MADA NI 10', 'JL. GAJAH MADA NI 10', '3.5845733', '98.6617174', 'ODP-MDC-FBB / 076', 'SPLITTER-01', '3', '3.5845733', '98.6617174', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kos GM 31', 'uploads/20190903_115734.jpg.jpg', '20190903_115734.jpg', NULL, NULL, NULL, 'open'),
(341, '2019-09-03 23:48:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21979395', NULL, NULL, 'hotmual rio sihombing', 'jl mesjid no.39b', 'jl mesjid', '3.5946753', '98.6569089', 'mdc ff 05', 'SPLITTER-01', '1', '3.5946751', '98.65691', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190903_044823.jpg.jpg', '20190903_044823.jpg', NULL, NULL, NULL, 'open'),
(342, '2019-09-04 17:59:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21986432', NULL, NULL, 'Li Umar', 'Jl Glugur No 52', 'Jl Glugur No 52', '3.589945', '98.6690025', 'ODP MDC FBU 44', 'SPLITTER-01', '8', '3.5899572', '98.668726', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190904_105910.jpg.jpg', '20190904_105910.jpg', NULL, NULL, NULL, 'open'),
(343, '2019-09-04 19:04:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21988741', NULL, NULL, 'FAHMI FAHREZI', 'JL. GATOT SUBROTO NO 309', 'JL. GATOT SUBROTO NO 309', 'latitude', 'longitude', 'ODP-MDC-FBR  / 04', 'SPLITTER-01', '5', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'cafe india', 'uploads/20190904_120417.jpg.jpg', '20190904_120417.jpg', NULL, NULL, NULL, 'open'),
(344, '2019-09-04 20:53:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21987589', NULL, NULL, 'PT.ARRAHMAN BERKAH WISATA', 'JL. SEI BATANG HARI NO 114', 'JL. SEI BATANG HARI NO 114Q', '3.5849596', '98.6456735', 'ODP-MDC-FBD/ 005', 'SPLITTER-01', '5', '3.5849657', '98.6456581', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'PT. ARRAHMAN BERKAH WISATA TOUR & TRVEL', 'uploads/20190904_015307.jpg.jpg', '20190904_015307.jpg', NULL, NULL, NULL, 'open'),
(345, '2019-09-04 21:31:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21994512', NULL, NULL, 'misrukiyah', 'jln.panci no.27', 'jln.panci no.27', '3.5898501', '98.6581677', 'MDC-FD/083', 'SPLITTER-01', '1', '3.5886206', '98.6557614', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190904_023152.jpg.jpg', '20190904_023152.jpg', NULL, NULL, NULL, 'open'),
(346, '2019-09-04 23:57:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21998833', NULL, NULL, 'ALWI', 'JL. SEI  ALAS NO 32', 'JL. SEI  ALAS NO 32', '3.5860626', '98.6531185', 'ODP-MDC-FBD/ 077', 'SPLITTER-01', '7', '3.5860626', '98.6531185', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'daily wash laundry', 'uploads/20190904_045710.jpg.jpg', '20190904_045710.jpg', NULL, NULL, NULL, 'open'),
(347, '2019-09-05 01:22:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '21996148', NULL, NULL, 'YAN AFFANDI ST', 'jl iskandar muda baru no b11', 'jl Iskandar Muda Baru No B11', '3.593723', '98.6633591', 'ODP MDC FL 41', 'SPLITTER-01', '7', '3.5937604', '98.6635309', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggani', 'uploads/20190904_062227.jpg.jpg', '20190904_062227.jpg', NULL, NULL, NULL, 'open'),
(348, '2019-09-05 18:24:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22008549', NULL, NULL, 'tifani napitupulu', 'gg johar no.29', 'gg johar', '3.5939927', '98.6478087', 'mdc ff 60', 'SPLITTER-01', '7', '3.5939927', '98.6478087', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190905_112416.jpg.jpg', '20190905_112416.jpg', NULL, NULL, NULL, 'open'),
(349, '2019-09-06 01:23:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22024703', NULL, NULL, 'YUDI RONALD MARBUN', 'JL. SEI  BRANTAS NO 26 A', 'JL. SEI  BRANTAS NO 26 A', '3.5836441', '98.6523239', 'ODP-MDC-FBM/ 103', 'SPLITTER-01', '3', '3.5836441', '98.6523239', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel no. 26 A paling belakang', 'uploads/20190905_062344.jpg.jpg', '20190905_062344.jpg', NULL, NULL, NULL, 'open'),
(350, '2019-09-06 21:41:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22035264', NULL, NULL, 'ARIESTYANA', 'JL. TURI 2 NO 32 A', 'JL. TURI 2 NO 32 A', 'latitude', 'longitude', 'ODP-MDC-FBD/ 033', 'SPLITTER-01', '3', 'latitude', 'lngitude', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'no. 32 A', 'uploads/20190906_024114.jpg.jpg', '20190906_024114.jpg', NULL, NULL, NULL, 'open'),
(351, '2019-09-06 23:40:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22039663', NULL, NULL, 'ARIF', 'SEI BATU GINGGING', 'SEI BATU GINGGING', 'wait...for gps signal ...', 'wait...for gps signal ...', 'MDC-FE/022', 'SPLITTER-02', '4', 'wait...for gps signal ...', 'wait...for gps signal ...', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'masjid ikhwanul ikhlas', 'uploads/20190906_044046.jpg.jpg', '20190906_044046.jpg', NULL, NULL, NULL, 'open'),
(352, '2019-09-06 23:44:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22044155', NULL, NULL, 'Artini', 'jl m yamin no 22b', 'jl m yamin no 22b', '3.5979594', '98.6942722', 'odp mdc fgc 74', 'SPLITTER-02', '3', '3.5982791', '98.6935844', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190906_044407.jpg.jpg', '20190906_044407.jpg', NULL, NULL, NULL, 'open'),
(353, '2019-09-07 18:12:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22050000', NULL, NULL, 'DEDI SETIADI', 'jl ayahanda no 99', 'jl ayahanda no 99', '3.5937521', '98.6615171', 'odp mdc fd 14', 'SPLITTER-01', '6', '3.593782', '98.6614483', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190907_111204.jpg.jpg', '20190907_111204.jpg', NULL, NULL, NULL, 'open'),
(354, '2019-09-07 19:35:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22053240', NULL, NULL, 'Marlando Sihombing', 'JL. SEI KAPUAS NO 60 C,', 'JL. SEI KAPUAS NO 60 C,', '3.584293', '98.6499177', 'ODP-MDC-FBM/087', 'SPLITTER-01', '3', '3.5840562', '98.648385', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190907_123529.jpg.jpg', '20190907_123529.jpg', NULL, NULL, NULL, 'open'),
(355, '2019-09-07 20:13:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22053864', NULL, NULL, 'NATASYA SALSABILA', 'JL. Sei KAPUAS NO 94 B', 'JL. Sei KAPUAS NO 94 B', '3.5852845', '98.6444181', 'ODP-MDC-FBM / 083', 'SPLITTER-02', '5', '3.5852845', '98.6444181', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kos lantai 2', 'uploads/20190907_011330.jpg.jpg', '20190907_011330.jpg', NULL, NULL, NULL, 'open'),
(356, '2019-09-10 16:23:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22092934', NULL, NULL, 'RIDHO MUSTAQIM', 'jl jangka no 53', 'jl Jangka no 53', '3.5933132', '98.6498856', 'ODP MDC FD 34', 'SPLITTER-01', '2', '3.5932983', '98.6498857', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190910_092308.jpg.jpg', '20190910_092308.jpg', NULL, NULL, NULL, 'open'),
(357, '2019-09-10 18:41:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22097370', NULL, NULL, 'silviani nov gea', 'jl ayahanda no 44a', 'jl ayahanda no 44a', '3.5942744', '98.6535559', 'odp mdc fd 05', 'SPLITTER-01', '6', '3.5940277', '98.6535296', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190910_114114.jpg.jpg', '20190910_114114.jpg', NULL, NULL, NULL, 'open'),
(358, '2019-09-10 18:55:42', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209219709', NULL, NULL, 'EVA PRIMA', 'jln cangkir no 31', 'jln cangkir no 31', '3.5964358', '98.6557981', 'MDC FF 075', 'SPLITTER-02', '8', '3.5964291', '98.6557967', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '861930049729474', '', '', 'nihil', 'uploads/20190910_115542.jpg.jpg', '20190910_115542.jpg', NULL, NULL, NULL, 'open'),
(359, '2019-09-10 20:17:26', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22099931', NULL, NULL, 'sri hartati lubis', 'jl sampul no.47', 'jl sampul no.47', '3.5991016', '98.6492729', 'mdc ff 86', 'SPLITTER-01', '4', '3.5991016', '98.6492729', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190910_011726.jpg.jpg', '20190910_011726.jpg', NULL, NULL, NULL, 'open'),
(360, '2019-09-10 22:49:49', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22103613', NULL, NULL, 'RIO ALFANIUS', 'Jl Pasundan Gg Delima No 11', 'Jl Pasundan Gg Delima No 11', '3.5920481', '98.6582223', 'ODP MDC FL 14', 'SPLITTER-01', '5', '3.5920374', '98.658196', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190910_034949.jpg.jpg', '20190910_034949.jpg', NULL, NULL, NULL, 'open'),
(361, '2019-09-11 16:04:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22110604', NULL, NULL, 'EFRI GUNANDA', 'JL. BALAI KOTA', 'JL. BALAI KOTA', '3.5901831', '98.6779501', 'ODP-MDC-FAR/017', 'SPLITTER-01', '7', '3.5901831', '98.6779501', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'lapangan merdeka medan', 'uploads/20190911_090419.jpg.jpg', '20190911_090419.jpg', NULL, NULL, NULL, 'open'),
(362, '2019-09-11 23:50:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22127403', NULL, NULL, 'hardiansyah', 'jl gelas no.45', 'jl gelas no.45', '3.597152', '98.6571564', 'mdc ff 166', 'SPLITTER-01', '2', '3.59726', '98.6570791', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190911_045014.jpg.jpg', '20190911_045014.jpg', NULL, NULL, NULL, 'open'),
(363, '2019-09-12 00:04:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22129298', NULL, NULL, 'jihan jifanisa', 'jl ayahanda no 73', 'jl ayahanda no 73', '3.6008032', '98.6532534', 'odp mdc ff 134', 'SPLITTER-01', '6', '3.6007964', '98.6533822', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah pelanggan', 'uploads/20190911_050437.jpg.jpg', '20190911_050437.jpg', NULL, NULL, NULL, 'open'),
(364, '2019-09-12 00:16:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22128635', NULL, NULL, 'SRI WARDANI', 'JL. SEI DENAI N0 32', 'JL. SEI DENAI N0 32', '3.5823386', '98.6598353', 'ODP-MDC-FH / 049', 'SPLITTER-01', '8', '3.5823386', '98.6598353', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'JL. SEI DENAI N0 32', 'uploads/20190911_051657.jpg.jpg', '20190911_051657.jpg', NULL, NULL, NULL, 'open'),
(365, '2019-09-13 22:12:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22203755', NULL, NULL, 'adir mawida halawa', 'jl. sei arakundo no 39', 'jl. sei arakundo no 39', '3.5871293', '98.6490659', 'odp-mdc-fbd/70', 'SPLITTER-02', '5', '3.5873889', '98.6489725', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'vila sb', 'uploads/20190913_031229.jpg.jpg', '20190913_031229.jpg', NULL, NULL, NULL, 'open'),
(366, '2019-09-13 22:57:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22207164', NULL, NULL, 'DJULIA', 'jl dagan no 2f', 'jl dagan no 2f', '3.5932906', '98.6656646', 'odp fgl 24', 'SPLITTER-01', '3', '3.5933211', '98.6655997', 'NIHIL', 'NIHIL', 'none', '', '', '', '81274481238', '867059041727239', '', '', 'rumah', 'uploads/20190913_035738.jpg.jpg', '20190913_035738.jpg', NULL, NULL, NULL, 'open'),
(367, '2019-09-13 23:05:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22198348', NULL, NULL, 'ROKAYA BIBI', 'T CIKDITIRO NO 48A', 'T CIKDITIRO NO 48A', '3.5816057', '98.6691692', 'MDC-FAE-109', 'SPLITTER-01', '8', '3.5823349', '98.6689974', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '85261816904', '866403047502694', '', '', 'Rumah Paling ujung dekat sungai', 'uploads/20190913_040500.jpg.jpg', '20190913_040500.jpg', NULL, NULL, NULL, 'open');
INSERT INTO `images` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(368, '2019-09-14 20:16:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22233504', NULL, NULL, 'ANGELIUS ERASMUS M SIANIPAR', 'JL. SEI BILAH NO 15/27', 'JL. SEI BILAH NO 15/27', '3.5812902', '98.6516321', 'ODP-MDC-FBM / 097', 'SPLITTER-01', '8', '3.5812902', '98.6516321', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'RM. BATAK EVI', 'uploads/20190914_011644.jpg.jpg', '20190914_011644.jpg', NULL, NULL, NULL, 'open'),
(369, '2019-09-16 03:42:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22274783', NULL, NULL, 'silvia', 'jl. sei serayu no 49', 'jl. sei serayu no 49', '3.5767295', '98.6484353', 'odp-mdc-fgb/051', 'SPLITTER-01', '5', '3.5767892', '98.6483299', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'ssudah LP3I , sblh kanan', 'uploads/20190915_084250.jpg.jpg', '20190915_084250.jpg', NULL, NULL, NULL, 'open'),
(370, '2019-09-17 17:35:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22329513', NULL, NULL, 'Devita Andriani', 'JL. SEI MENCIRIM NO.61', 'JL. SEI MENCIRIM NO.61', '3.580809', '98.6559491', 'ODP-MDC-FA/037', 'SPLITTER-01', '10', '3.580809', '98.6559491', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'coffee mauliate', 'uploads/20190917_103533.jpg.jpg', '20190917_103533.jpg', NULL, NULL, NULL, 'open'),
(371, '2019-09-17 20:20:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22327433', NULL, NULL, 'jimmy', 'jln mongonsidi no 66', 'jln mongonsidi no 66', '3.571506', '98.664074', 'odp-mdc-fgc/058', 'SPLITTER-01', '4', '3.5716389', '98.6641044', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82363707388', '865855033779894', '', '', 'sebelum geprek bensu', 'uploads/20190917_012028.jpg.jpg', '20190917_012028.jpg', NULL, NULL, NULL, 'open'),
(372, '2019-09-18 00:18:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22349463', NULL, NULL, 'INGRID SIAHAAN', 'JL. KOMPLEK RS ADVENT NO 46', 'JL. KOMPLEK RS ADVENT NO 46', '3.5886729', '98.6502614', 'ODP-MDC-FBD/ 062', 'SPLITTER-01', '2', '3.5875624', '98.6496596', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'komp. rs advent medan', 'uploads/20190917_051843.jpg.jpg', '20190917_051843.jpg', NULL, NULL, NULL, 'open'),
(373, '2019-09-18 21:26:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22380167', NULL, NULL, 'DODI', 'JL. SEI BESITANG NO 31', 'JL. SEI BESITANG NO 31', '3.5898748', '98.6550739', 'ODP-MDC-FBF/ 066', 'SPLITTER-01', '8', '3.5896419', '98.6550739', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'simpang jl. sei batang gadis', 'uploads/20190918_022622.jpg.jpg', '20190918_022622.jpg', NULL, NULL, NULL, 'open'),
(374, '2019-09-20 16:13:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22422352', NULL, NULL, 'NIKKI FRANIKA MANIK', 'JL. GATOT SUBROTO NO 503', 'JL. GATOT SUBROTO NO 503', '3.5899786', '98.6539408', 'ODP-MDC-FBF/ 01', 'SPLITTER-01', '8', '3.5904568', '98.6540053', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warung gatsu', 'uploads/20190920_091358.jpg.jpg', '20190920_091358.jpg', NULL, NULL, NULL, 'open'),
(375, '2019-09-20 17:10:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22450886', NULL, NULL, 'TIORINCE TARIHORAN', 'JL. SEI BRANTAS NO 79', 'JL. SEI BRANTAS NO 79', '3.5830538', '98.6485428', 'ODP-MDC-FBM / 063', 'SPLITTER-01', '3', '3.5830538', '98.6485428', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'jl. sei  mare rumah putih no, 93', 'uploads/20190920_101021.jpg.jpg', '20190920_101021.jpg', NULL, NULL, NULL, 'open'),
(376, '2019-09-20 22:34:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22452908', NULL, NULL, 'aria bima sakti', 'jl. iskandar muda no 148', 'jl. iskandar muda no 149', '3.5571399', '98.7080308', 'odp-mdc-fg/027', 'SPLITTER-02', '1', '3.5544383', '98.7130317', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'samping bank bri', 'uploads/20190920_033420.jpg.jpg', '20190920_033420.jpg', NULL, NULL, NULL, 'open'),
(377, '2019-09-21 01:52:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22476726', NULL, NULL, 'BUDI', 'JL. SEI BELUTU NI 4', 'JL. SEI BELUTU NI 4', 'wait...for gps signal ...', 'wait...for gps signal ...', 'ODP-MDC-FBM / 036', 'SPLITTER-01', '3', 'wait...for gps signal ...', 'wait...for gps signal ...', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kantor grab', 'uploads/20190920_065251.jpg.jpg', '20190920_065251.jpg', NULL, NULL, NULL, 'open'),
(378, '2019-09-21 03:21:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22479512', NULL, NULL, 'AWALUDDIN SIREGAR', 'JL. SINGGALANG NO.12', 'JL. SINGGALANG NO.12', '3.5769711', '98.6861347', 'FAM/047', 'SPLITTER-02', '2', '3.5774764', '98.6854099', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '85261816904', '866403047502694', '', '', 'RUMAH DEKAT MESJID RAYA NO .12', 'uploads/20190920_082156.jpg.jpg', '20190920_082156.jpg', NULL, NULL, NULL, 'open'),
(379, '2019-09-21 17:53:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22499625', NULL, NULL, 'NATAL', 'JL. SEI ROKAN NO 9', 'JL. SEI ROKAN NO 9', '3.5799591', '98.6447618', 'ODP-MDC-FGB / 066', 'SPLITTER-01', '3', '3.5799591', '98.6447618', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'sebebelah komplek intisari park', 'uploads/20190921_105333.jpg.jpg', '20190921_105333.jpg', NULL, NULL, NULL, 'open'),
(380, '2019-09-21 18:08:26', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22501653', NULL, NULL, 'zul indra lubis', 'jl sei deli no.18', 'jl sei deli', '3.5925305', '98.6726075', 'mdc fbu 58', 'SPLITTER-01', '8', '3.5929315', '98.6735906', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190921_110826.jpg.jpg', '20190921_110826.jpg', NULL, NULL, NULL, 'open'),
(381, '2019-09-21 19:52:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22507091', NULL, NULL, 'TERAPI PENGHUANG/JULIANUS ZEGA', 'jl.suka mulia no 99', 'jl.suka mulia no 99', '3.5835365', '98.6785048', 'ODP-MDC-FAP/018', 'SPLITTER-01', '6', '3.5835992', '98.6785911', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20190921_125200.jpg.jpg', '20190921_125200.jpg', NULL, NULL, NULL, 'open'),
(382, '2019-09-23 20:44:35', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22589917', NULL, NULL, 'Suhendar', 'SEI KAPUAS,no.77', 'SEI KAPUAS,no.77', '3.5834093', '98.6440744', 'ODP-MDC-FBM/084', 'SPLITTER-01', '3', '3.5834093', '98.6440744', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel depan tanah kosong', 'uploads/20190923_014435.jpg.jpg', '20190923_014435.jpg', NULL, NULL, NULL, 'open'),
(383, '2019-09-23 21:43:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22591950', NULL, NULL, 'ridho nuary gusman', 'jl.merak jingga no.58', 'jl.merak jingga', '3.5991517', '98.6757541', 'mdc faw/014', 'SPLITTER-02', '3', '3.5991603', '98.6757462', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190923_024343.jpg.jpg', '20190923_024343.jpg', NULL, NULL, NULL, 'open'),
(384, '2019-09-24 00:32:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22601072', NULL, NULL, 'KARIKA HANDAYANI', 'JL. S PARMAN GG PASIR NO 40', 'JL. S PARMAN GG PASIR NO 40', 'wait...for gps signal ...', 'wait...for gps signal ...', 'ODP-MDC-FG / 001', 'SPLITTER-01', '3', '3.5789415', '98.6684813', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel paling ujung sebelah kanan', 'uploads/20190923_053213.jpg.jpg', '20190923_053213.jpg', NULL, NULL, NULL, 'open'),
(385, '2019-09-25 01:42:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22659573', NULL, NULL, 'Noni Khairida S', 'jl.belanga no.4c', 'jl.belanga no.4c', '3.598046', '98.6550724', 'mdc ff 116', 'SPLITTER-01', '7', '3.598176', '98.6550856', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190924_064210.jpg.jpg', '20190924_064210.jpg', NULL, NULL, NULL, 'open'),
(386, '2019-09-25 18:14:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22684101', NULL, NULL, 'HALIMAH', 'JL. ISKANDAR MUDA NO 93', 'JL. ISKANDAR MUDA NO 93', '3.5795807', '98.6610687', 'ODP-MDC-FG / 061', 'SPLITTER-01', '2', '3.579475', '98.6611048', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'warkop bg gendut', 'uploads/20190925_111452.jpg.jpg', '20190925_111452.jpg', NULL, NULL, NULL, 'open'),
(387, '2019-09-25 19:12:08', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22680646', NULL, NULL, 'fitri nurlaela', 'jl. sei muara no 6a-33', 'jl. sei muara no 6a-33', '3.5805005', '98.6536989', 'odp-mdc-fa/34', 'SPLITTER-01', '8', '3.581056', '98.6538829', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'rumah putih pagar hitam', 'uploads/20190925_121208.jpg.jpg', '20190925_121208.jpg', NULL, NULL, NULL, 'open'),
(388, '2019-09-25 20:08:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22689259', NULL, NULL, 'OPASARI AMDKEB', 'JL. SEI KAPUAS NO 9', 'JL. SEI KAPUAS NO 9', '3.5834809', '98.6516922', 'ODP-MDC-FBM / 090', 'SPLITTER-01', '7', '3.5834783', '98.6517269', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kamar no. 02', 'uploads/20190925_010847.jpg.jpg', '20190925_010847.jpg', NULL, NULL, NULL, 'open'),
(389, '2019-09-27 22:04:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22786685', NULL, NULL, 'kos kosan/fica zuasyahni', 'jl.labolatorium 1 no.2H', 'jl.labolatorium 1 no.2H', '3.5770844', '98.6500026', 'mdc faw 055', 'SPLITTER-01', '5', '3.5770068', '98.6537418', 'NIHIL', 'NIHIL', 'null', '', '', '', '81274481238', '860603044262384', '', '', 'ada', 'uploads/20190927_030452.jpg.jpg', '20190927_030452.jpg', NULL, NULL, NULL, 'open'),
(390, '2019-09-28 01:55:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22804250', NULL, NULL, 'BERES ROGANDA SILALI', 'JL. KUALI GG WASPADA NO 3', 'JL. KUALI GG WASPADA NO 3', '3.6008334', '98.6580482', 'ODP-MDC-FF / 160', 'SPLITTER-01', '2', '3.6008313', '98.6581059', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'BRAGA KOST', 'uploads/20190927_065548.jpg.jpg', '20190927_065548.jpg', NULL, NULL, NULL, 'open'),
(391, '2019-09-28 21:59:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22778476', NULL, NULL, 'Ciptadi Handoko', 'SEI BATANG HARI,22', 'SEI BATANG HARI,22', '3.5847389', '98.6506923', 'ODP-MDC-FBD/28', 'SPLITTER-01', '5', '3.5847209', '98.650749', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'dapan Rumah Sakit', 'uploads/20190928_025958.jpg.jpg', '20190928_025958.jpg', NULL, NULL, NULL, 'open'),
(392, '2019-09-30 02:52:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22894878', NULL, NULL, 'H SABARUDDIN', 'MEDAN SUMUT KELURAHAN PETISAH TENGAH AIRLANGGA NO ', '98.6686471', '3.5853986', '98.6686471', 'ODP MDC FAA 073', 'SPLITTER-02', '14', '3.585271', '98.6692783', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '352383100760986', '', '', 'Gambar.1', 'uploads/20190929_075258.jpg.jpg', '20190929_075258.jpg', NULL, NULL, NULL, 'open'),
(393, '2019-09-30 05:51:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22893758', NULL, NULL, 'sakti ilham sutrisno', 'sei padang dalam 1 no.21', 'sei padang dalam 1 no.21', '3.5715527', '98.6593552', 'mdc-fe/214', 'SPLITTER-01', '1', '3.571651', '98.6586159', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '85261816904', '866403047502694', '', '', 'rumah pertama dapat dan mentok', 'uploads/20190929_105144.jpg.jpg', '20190929_105144.jpg', NULL, NULL, NULL, 'open'),
(394, '2019-09-30 18:57:26', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22917334', NULL, NULL, 'HARIYANTO', 'JL. S.PARMAN GG PASIR NO 68', 'JL. S.PARMAN GG PASIR NO 68', '3.577465', '98.6682543', 'ODP-MDC-FG / 002', 'SPLITTER-01', '5', '3.5769175', '98.6681348', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rumah ujung ada warung kelontong', 'uploads/20190930_115726.jpg.jpg', '20190930_115726.jpg', NULL, NULL, NULL, 'open'),
(395, '2019-09-30 20:23:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22926794', NULL, NULL, 'SANGGITA', 'jl. mangkubumi 22', 'jl. mangkubumi 22', '3.5817213', '98.6798724', 'odp-mdc-fap/039', 'SPLITTER-02', '2', '3.5817213', '98.6798724', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'sampin wr nasi uni ajo', 'uploads/20190930_012321.jpg.jpg', '20190930_012321.jpg', NULL, NULL, NULL, 'open'),
(396, '2019-10-01 18:27:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22977241', NULL, NULL, 'YANA LESTARI ZILIWU', 'JL. SEI ULAR BARU NO 75 A', 'JL. SEI ULAR BARU NO 75 A', '3.5782084', '98.6471738', 'ODP-MDC-FGB / 060', 'SPLITTER-01', '1', '3.5782084', '98.6471738', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'simp. jl sei musi', 'uploads/20191001_112720.jpg.jpg', '20191001_112720.jpg', NULL, NULL, NULL, 'open'),
(397, '2019-10-01 22:38:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22987044', NULL, NULL, 'rini', 'jl. t cik ditiro no25', 'jl. t cik ditiro no 25', '3.5823107', '98.6688822', 'odp-mdc-fae/041', 'SPLITTER-01', '6', '3.5823062', '98.6688855', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82363707388', '865855033779894', '', '', 'belakang kantor lurah', 'uploads/20191001_033853.jpg.jpg', '20191001_033853.jpg', NULL, NULL, NULL, 'open'),
(398, '2019-10-01 22:55:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22992695', NULL, NULL, 'HENDRY A PERANGINANGIN', 'JL. SEI KUALA NO 15', 'JL. SEI KUALA NO 15', '3.57231', '98.6549769', 'ODP-MDC-FE/ 204', 'SPLITTER-01', '2', '3.5736107', '98.6540524', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel nomor 15', 'uploads/20191001_035522.jpg.jpg', '20191001_035522.jpg', NULL, NULL, NULL, 'open'),
(399, '2019-10-02 19:07:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '23031148', NULL, NULL, 'lindawaty', 'JL JEND.AYANI NO 126', 'JL JEND.AYANI NO 126', '3.5848126', '98.6804495', 'ODP-MDC-FW/005', 'SPLITTER-01', '5', '3.5848199', '98.6804458', 'NIHIL', 'NIHIL', 'tidak ada', '', '', '', '85360972185', '862589032779497', '', '', 'gambar.1', 'uploads/20191002_120709.jpg.jpg', '20191002_120709.jpg', NULL, NULL, NULL, 'open'),
(400, '2019-10-03 19:11:40', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '23091697', NULL, NULL, 'TAUFING', 'JL. ABDULAH LUBIS    NO 3', 'JL. ABDULAH LUBIS    NO 3', '3.5768074', '98.6583504', 'ODP-MDC-FH/ 058', 'SPLITTER-01', '7', '3.5768074', '98.6583504', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'AL JAZEERA', 'uploads/20191003_121140.jpg.jpg', '20191003_121140.jpg', NULL, NULL, NULL, 'open'),
(401, '2019-10-04 00:23:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '23104844', NULL, NULL, 'FRIDA OLSHOP', 'JL. SEI ARAKUNDO NO 99 S', 'JL. SEI ARAKUNDO NO 99 S', '3.5865314', '98.6510896', 'ODP-MDC-FBD/ 070', 'SPLITTER-01', '4', '3.58615', '98.6512976', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'kos ALAM', 'uploads/20191003_052311.jpg.jpg', '20191003_052311.jpg', NULL, NULL, NULL, 'open'),
(402, '2019-10-04 22:30:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '23144352', NULL, NULL, 'JONNY SIMANUNGKALIT', 'SEI ASAHAN (0079); 26', 'SEI ASAHAN (0079); 26', '3.5742237', '98.6554176', 'ODP-MDC-FE/198', 'SPLITTER-01', '2', '3.5742237', '98.6554176', 'NIHIL', 'NIHIL', 'null', '', '', '', '82363707388', '359999060345261', '', '', 'rupel warna kuning', 'uploads/20191004_033010.jpg.jpg', '20191004_033010.jpg', NULL, NULL, NULL, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `images0`
--

CREATE TABLE `images0` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `scan` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images1`
--

CREATE TABLE `images1` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images1`
--

INSERT INTO `images1` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`) VALUES
(1, '2019-06-19 18:51:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coba321', 'uploads/20190619_115146.jpg.jpg', '20190619_115146.jpg'),
(2, '2019-06-19 18:52:22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test 345', 'uploads/20190619_115222.jpg.jpg', '20190619_115222.jpg'),
(3, '2019-06-19 21:59:56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test 34578', 'uploads/20190619_025956.jpg.jpg', '20190619_025956.jpg'),
(4, '2019-06-19 23:06:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test 345780', 'uploads/20190619_040637.jpg.jpg', '20190619_040637.jpg'),
(5, '2019-06-19 23:07:25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test 345780s', 'uploads/20190619_040725.jpg.jpg', '20190619_040725.jpg'),
(6, '2019-06-20 17:44:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ok test login', 'uploads/20190620_104439.jpg.jpg', '20190620_104439.jpg'),
(7, '2019-06-21 06:10:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oke', 'uploads/20190620_111044.jpg.jpg', '20190620_111044.jpg'),
(8, '2019-06-21 06:11:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oke55', 'uploads/20190620_111103.jpg.jpg', '20190620_111103.jpg'),
(9, '2019-06-21 06:13:16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4678', 'uploads/20190620_111316.jpg.jpg', '20190620_111316.jpg'),
(10, '2019-06-21 06:15:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oke mantap', 'uploads/20190620_111506.jpg.jpg', '20190620_111506.jpg'),
(11, '2019-06-21 06:16:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'trial 321', 'uploads/20190620_111639.jpg.jpg', '20190620_111639.jpg'),
(12, '2019-06-21 06:16:57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'trial 3210', 'uploads/20190620_111657.jpg.jpg', '20190620_111657.jpg'),
(13, '2019-06-22 18:35:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190622_113513.jpg.jpg', '20190622_113513.jpg'),
(14, '2019-06-22 18:40:47', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'oke', 'uploads/20190622_114047.jpg.jpg', '20190622_114047.jpg'),
(15, '2019-06-22 22:39:31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ket gbr1', 'uploads/20190622_033931.jpg.jpg', '20190622_033931.jpg'),
(16, '2019-06-22 22:41:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ket gbr12', 'uploads/20190622_034134.jpg.jpg', '20190622_034134.jpg'),
(17, '2019-06-22 22:44:49', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'des1', 'uploads/20190622_034449.jpg.jpg', '20190622_034449.jpg'),
(18, '2019-06-23 00:45:41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190622_054541.jpg.jpg', '20190622_054541.jpg'),
(19, '2019-06-23 00:46:56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test2', 'uploads/20190622_054656.jpg.jpg', '20190622_054656.jpg'),
(20, '2019-06-23 01:00:30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ket2a', 'uploads/20190622_060030.jpg.jpg', '20190622_060030.jpg'),
(21, '2019-06-23 01:40:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coba lagi', 'uploads/20190622_064003.jpg.jpg', '20190622_064003.jpg'),
(22, '2019-06-23 01:57:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190622_065715.jpg.jpg', '20190622_065715.jpg'),
(23, '2019-06-23 01:59:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190622_065943.jpg.jpg', '20190622_065943.jpg'),
(24, '2019-06-23 06:52:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190622_115203.jpg.jpg', '20190622_115203.jpg'),
(25, '2019-06-23 08:17:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190623_011703.jpg.jpg', '20190623_011703.jpg'),
(26, '2019-06-23 08:20:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190623_012045.jpg.jpg', '20190623_012045.jpg'),
(27, '2019-06-24 00:36:29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190623_053629.jpg.jpg', '20190623_053629.jpg'),
(28, '2019-06-24 00:38:19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190623_053819.jpg.jpg', '20190623_053819.jpg'),
(29, '2019-06-24 00:49:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gbr1', 'uploads/20190623_054942.jpg.jpg', '20190623_054942.jpg'),
(30, '2019-06-24 00:56:44', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190623_055644.jpg.jpg', '20190623_055644.jpg'),
(31, '2019-06-24 01:04:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'testing clear', 'uploads/20190623_060437.jpg.jpg', '20190623_060437.jpg'),
(32, '2019-06-24 01:14:25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coba lagi clear textview', 'uploads/20190623_061425.jpg.jpg', '20190623_061425.jpg'),
(33, '2019-06-24 01:16:32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'clear oke...', 'uploads/20190623_061632.jpg.jpg', '20190623_061632.jpg'),
(34, '2019-06-24 01:56:29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gbr11', 'uploads/20190623_065629.jpg.jpg', '20190623_065629.jpg'),
(35, '2019-06-24 02:07:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gbr1', 'uploads/20190623_070717.jpg.jpg', '20190623_070717.jpg'),
(36, '2019-06-24 02:17:28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190623_071728.jpg.jpg', '20190623_071728.jpg'),
(37, '2019-06-24 02:21:21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'tesds', 'uploads/20190623_072121.jpg.jpg', '20190623_072121.jpg'),
(38, '2019-06-24 05:56:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gbr78', 'uploads/20190623_105613.jpg.jpg', '20190623_105613.jpg'),
(39, '2019-06-24 05:58:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gbr5678', 'uploads/20190623_105800.jpg.jpg', '20190623_105800.jpg'),
(40, '2019-06-24 06:27:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gbr1', 'uploads/20190623_112743.jpg.jpg', '20190623_112743.jpg'),
(41, '2019-06-24 06:47:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'testtt', 'uploads/20190623_114715.jpg.jpg', '20190623_114715.jpg'),
(42, '2019-06-24 07:00:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gam7', 'uploads/20190624_120018.jpg.jpg', '20190624_120018.jpg'),
(43, '2019-06-24 07:05:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yyuu', 'uploads/20190624_120534.jpg.jpg', '20190624_120534.jpg'),
(44, '2019-06-24 07:08:57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coba', 'uploads/20190624_120857.jpg.jpg', '20190624_120857.jpg'),
(45, '2019-06-24 16:11:37', '', 'ACEH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190624_091137.jpg.jpg', '20190624_091137.jpg'),
(46, '2019-06-24 16:31:12', '', 'MEDAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '358240051111110', '', '', 'ccccc', 'uploads/20190624_093112.jpg.jpg', '20190624_093112.jpg'),
(47, '2019-06-24 16:45:26', '', 'MEDAN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'COBA', 'uploads/20190624_094526.jpg.jpg', '20190624_094526.jpg'),
(48, '2019-06-24 16:54:01', '', 'MEDAN', 'PROVISIONING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'coba', 'uploads/20190624_095401.jpg.jpg', '20190624_095401.jpg'),
(49, '2019-06-24 16:57:11', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'FFFF', 'uploads/20190624_095711.jpg.jpg', '20190624_095711.jpg'),
(50, '2019-06-24 17:01:21', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111217001086', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'BBBB', 'uploads/20190624_100121.jpg.jpg', '20190624_100121.jpg'),
(51, '2019-06-24 17:54:58', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '89898989', '', '', '', '37.4219983', '', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'gbr', 'uploads/20190624_105458.jpg.jpg', '20190624_105458.jpg'),
(52, '2019-06-24 18:03:44', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '999999000', '', '', '', '37.4219983', '-122.084', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'gbr1', 'uploads/20190624_110344.jpg.jpg', '20190624_110344.jpg'),
(53, '2019-06-24 18:10:29', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '99998888', 'medium', 'mandala', 'tata alam', '37.4219983', '-122.084', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358240051111110', '', '', 'coba', 'uploads/20190624_111029.jpg.jpg', '20190624_111029.jpg'),
(54, '2019-06-24 18:13:55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bbbb', 'uploads/20190624_111355.jpg.jpg', '20190624_111355.jpg'),
(55, '2019-06-24 18:16:57', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22333', 'tt', 'yuy', 'cvv', '3.5928322', '98.6776675', '', '', '', '', '', '', '', '', '', '', '', '85262404020', '358916050544241', '', '', 'gbt5678', 'uploads/20190624_111657.jpg.jpg', '20190624_111657.jpg'),
(56, '2019-06-24 18:37:21', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '5555', 'yy', 'yy', 'gg', '3.5928147', '98.6776675', '', '', '', '3.5928147', '', '', '', '', '', '', '', '85262404020', '358916050544241', '', '', 'gbrr', 'uploads/20190624_113721.jpg.jpg', '20190624_113721.jpg'),
(57, '2019-06-24 18:41:57', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '22222', 'ttt', 'uyy', 'fff', '3.5928255', '98.6776711', '', '', '', '3.5928255', '98.6776711', '', '', '', '', '', '', '85262404020', '358916050544241', '', '', 'gbr', 'uploads/20190624_114157.jpg.jpg', '20190624_114157.jpg'),
(58, '2019-06-24 18:55:25', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3333', 'tt', 'tyu', 'fhh', '3.5928255', '98.6776712', 'odp', '', '', '3.5928255', '98.6776712', '', '', '', '', '', '', '85262404020', '358916050544241', '', '', 'gbr', 'uploads/20190624_115524.jpg.jpg', '20190624_115524.jpg'),
(59, '2019-06-24 18:59:50', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '5423980741', 'med', 'man', 'tata', '3.5928259', '98.677671', 'odp', '', '', '3.5928259', '98.677671', '', '', '', '', '', '', '85262404020', '359447096192703', '', '', 'gbr1', 'uploads/20190624_115950.jpg.jpg', '20190624_115950.jpg'),
(60, '2019-06-24 19:05:34', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '7777777', 'tt', 'yhy', 'hhh', '3.5928258', '98.6776709', 'ofp', 'SPLITTER-01', '4', '3.5928277', '98.6776699', '', '', '', '', '', '', '85262404020', '358916050544241', '', '', 'ket1', 'uploads/20190624_120534.jpg.jpg', '20190624_120534.jpg'),
(61, '2019-06-24 21:18:15', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '8476969', 'as', 'cc', 'df', '3.5928322', '98.6776677', 'odp', 'SPLITTER-01', '1', '3.5928322', '98.6776677', 'NIHIL', 'NIHIL', '', '', '', '', '85262404020', '358916050544241', '', '', 'ket444', 'uploads/20190624_021815.jpg.jpg', '20190624_021815.jpg'),
(62, '2019-06-24 21:23:12', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '7777777', 'med', 'mandala', 'tata alsm', '3.5928316', '98.6776676', 'odp1', 'SPLITTER-01', '1', '3.5928316', '98.6776676', 'NIHIL', 'NIHIL', 'ket2', '', '', '', '85262404020', '358916050544241', '', '', 'gbr1', 'uploads/20190624_022312.jpg.jpg', '20190624_022312.jpg'),
(63, '2019-06-24 22:53:44', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '123456', 'kk', 'yy', 'bb', '3.5928267', '98.6776687', 'odp', 'SPLITTER-01', '1', '3.5928267', '98.6776687', 'NIHIL', 'CP RNA', 'ket1', '', '123456', 'TEST V321', '85262404020', '358916050544241', '', '', 'gbr1', 'uploads/20190624_035344.jpg.jpg', '20190624_035344.jpg'),
(64, '2019-06-24 22:57:47', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '56565656', 'manuel', 'mandala', 'tata alam', '3.5928269', '98.6776681', 'ofp1', 'SPLITTER-01', '2', '3.5928306', '98.6776681', 'Please select ...!!!', 'Please select ...!!!', 'kend1', '', '123456', 'TEST V321676767', '85262404020', '358916050544241', '', '', 'gbr1', 'uploads/20190624_035747.jpg.jpg', '20190624_035747.jpg'),
(65, '2019-06-24 23:16:10', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '6655555888', 'ghhh', 'yyuj', 'ghhj.', '3.5928257', '98.677671', 'rr', 'SPLITTER-01', '1', '3.5928257', '98.677671', 'Please select ...!!!', 'Please select ...!!!', 'kend1', '', '', '', '85262404020', '358916050544241', '', '', 'gbr1', 'uploads/20190624_041609.jpg.jpg', '20190624_041609.jpg'),
(66, '2019-06-24 23:48:56', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3333333', 'gggg', 'tyyy', 'thhh', '3.5928293', '98.6776696', 'odp', 'SPLITTER-01', '1', '3.5928282', '98.6776703', 'NIHIL', 'NIHIL', 'hhhh', '', '123456', 'TEST V321676767hj', '85262404020', '358916050544241', '', '', 'ket', 'uploads/20190624_044856.jpg.jpg', '20190624_044856.jpg'),
(67, '2019-06-25 00:03:50', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '555555', 'gg', 'tt', 'xx', '3.5928258', '98.6776709', 'odp', 'SPLITTER-01', '5', '3.5928261', '98.6776707', 'NIHIL', 'CP RNA', 'ket1', '', '123456', 'TEST V321676767hj', '85262404020', '359447096192703', '', '', 'ket', 'uploads/20190624_050350.jpg.jpg', '20190624_050350.jpg'),
(68, '2019-06-25 16:49:08', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '5555666', 'ffgg', 'rtty', 'fgh', '3.5928328', '98.6776662', 'odp', 'SPLITTER-01', '1', '3.5928328', '98.6776662', 'IKR-G TJP', 'NIHIL', 'yyy', '', '123456', '56656556', '85262404020', '358916050544241', '', '', 'bbb', 'uploads/20190625_094908.jpg.jpg', '20190625_094908.jpg'),
(69, '2019-06-25 18:40:19', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '88888888', 'yu', 'gh', 'hh', '3.5928327', '98.6776659', 'ofp', 'SPLITTER-01', '1', '3.5928329', '98.6776667', 'NIHIL', 'NIHIL', 'test', '', '123456', NULL, '85262404020', '358916050544241', '', '', 'gbr1', 'uploads/20190625_114019.jpg.jpg', '20190625_114019.jpg'),
(70, '2019-06-25 19:53:14', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '566666', 'yh', 'tgg', 'ggb', '3.5928351', '98.6776665', 'tt', 'Please select ...!!!', '2', '3.5928351', '98.6776665', 'NIHIL', 'NIHIL', 'hh', NULL, NULL, NULL, '85262404020', '358916050544241', '', '', 'hh', 'uploads/20190625_125314.jpg.jpg', '20190625_125314.jpg'),
(71, '2019-06-25 19:59:36', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111217001086', 'ty', 'ty', 'fg', '3.5928336', '98.6776668', 'hh', 'SPLITTER-01', '1', '3.5928336', '98.6776668', 'NIHIL', 'NIHIL', 'test', NULL, NULL, NULL, '85262404020', '358916050544241', '', '', 'gbrw', 'uploads/20190625_125936.jpg.jpg', '20190625_125936.jpg'),
(72, '2019-06-25 20:15:13', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '0618476969', 'medium', 'mandala', 'tata alam', '3.5921664', '98.6777259', 'odp-ctd', 'SPLITTER-01', '1', '3.5921664', '98.6777259', 'NIHIL', 'NIHIL', 'kend1', NULL, NULL, NULL, '85262404020', '359447096192703', '', '', 'gbr1', 'uploads/20190625_011513.jpg.jpg', '20190625_011513.jpg'),
(73, '2019-06-25 21:55:59', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '08111111111', 'hhh', 'ggg', 'tyhh', 'latitude', 'longitude', 'ghh', 'SPLITTER-01', '2', '3.5928337', '98.6776671', 'NIHIL', 'NIHIL', 'ket1', '123456789', NULL, NULL, '85262404020', '358916050544241', '', '', 'ket1', 'uploads/20190625_025559.jpg.jpg', '20190625_025559.jpg'),
(74, '2019-06-25 22:04:46', '', 'MEDAN', 'PROVISIONING', 'INDIHOME', '9999999', 'uuu', 'hhh', 'ggg', '3.5928332', '98.677664', 'ofp', 'SPLITTER-01', '1', '3.5928332', '98.677664', 'NIHIL', 'NIHIL', 'test', NULL, '123456789', NULL, '85262404020', '358916050544241', '', '', 'ket1', 'uploads/20190625_030446.jpg.jpg', '20190625_030446.jpg'),
(75, '2019-06-25 23:04:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3369888', '777y', 'yhh', 'ghhh', '3.5928338', '98.6776668', 'odp', 'SPLITTER-01', '1', '3.5928338', '98.6776668', 'Please select ...!!!', 'Please select ...!!!', 'test', NULL, '123456789', NULL, '85262404020', '358916050544241', '', '', 'photo1', 'uploads/20190625_040413.jpg.jpg', '20190625_040413.jpg'),
(76, '2019-07-21 14:35:09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', '', '', 'Test', 'uploads/20190721_073509.jpg.jpg', '20190721_073509.jpg'),
(77, '2019-07-21 15:03:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', '', '98.67766', 'test', 'uploads/20190721_080342.jpg.jpg', '20190721_080342.jpg'),
(78, '2019-07-21 15:11:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', '', '98.67766', 'test', 'uploads/20190721_081138.jpg.jpg', '20190721_081138.jpg'),
(79, '2019-07-21 15:13:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', '', '98.67766', 'test', 'uploads/20190721_081306.jpg.jpg', '20190721_081306.jpg'),
(80, '2019-07-22 07:46:19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', '', '', 'ytrutu', 'uploads/20190722_124619.jpg.jpg', '20190722_124619.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images4`
--

CREATE TABLE `images4` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images4`
--

INSERT INTO `images4` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `status_valdat`) VALUES
(1, '2019-06-17 18:05:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19945450', NULL, NULL, 'AURELIA SAPUTRI', 'AURELIA SAPUTRI', 'The Palace Residence Blok A No 55', '3.568398', '98.6757021', 'ODP-MDC-FJ/015', 'PANEL01', '1', '3.568398', '98.6757021', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0091EHKOVO', '-', '81265550635', '', '3.568398', '98.6757021', 'rumah besar perumahan the place no.55', 'uploads/20190617_110536.jpg.jpg', '20190617_110536.jpg', NULL),
(27, '2019-06-19 00:27:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013838', NULL, NULL, 'mempa simatupang', 'jln ayahanda no 6', 'jln ayahanda no 6', '3.5910991', '98.6533031', 'ODP-MDC-FD/014', 'SPLITTER-01', '3', '3.5911287', '98.6531793', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00YVO155MO', 'TX00YVO155MO', '82284515244', '861930049684836', '3.591093', '98.6532635', 'baik', 'uploads/20190618_052737.jpg.jpg', '20190618_052737.jpg', NULL),
(3, '2019-06-17 18:20:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19946958', NULL, NULL, 'irvan syahputra', 'jl sei wampu baru no 18', 'jl sei eampu baru no 18', '3.5837887', '98.6550306', 'odp-mdc-fbm/052', 'SPLITTER-02', '14', '3.5837763', '98.6551707', 'NIHIL', 'NIHIL', '', '', 'TX00LJGGRTNI', '-', '81260003335', '866949030381413', '3.5838474', '98.6548039', 'warna kuning , pagar hitam', 'uploads/20190617_112016.jpg.jpg', '20190617_112016.jpg', NULL),
(16, '2019-06-18 23:00:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013441', NULL, NULL, 'YAZIDA ANGELINA T PARINDURI', 'JL.SAMPURNO NO.10', 'JL.SAMPURNO NO.10', '3.5998503', '98.6916677', 'ODP-MDC-FCJ/019', 'SPLITTER-01', '3', NULL, NULL, 'NIHIL', NULL, 'NIHIL', '', NULL, NULL, '82299217915', NULL, '3.6000268', '98.6915446', 'LENGKAP', 'uploads/20190618_040021.jpg.jpg', '20190618_040021.jpg', NULL),
(7, '2019-06-17 18:44:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19941709', NULL, NULL, 'mariana', 'jl.taruma gg siti no 47', 'jl.taruma gg siti no 47', '3.5850281', '98.66862', 'ODP-MDC-FAA/026', 'SPLITTER-01', '7', '3.5850245', '98.6684142', 'NIHIL', 'NIHIL', '', '', 'TX00Q8XT3XVG', '-', '81276595573', '868174031215720', '3.5850362', '98.6686183', 'GAMBAR 1', 'uploads/20190617_114414.jpg.jpg', '20190617_114414.jpg', NULL),
(50, '2019-06-19 23:53:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922493', '98.70307', 'warna kuning', 'uploads/20190619_045312.jpg.jpg', '20190619_045312.jpg', NULL),
(29, '2019-06-19 00:40:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20014889', NULL, NULL, 'CESELINA', 'jln.Tampol 4 no.32A', 'jln.tampol 4 no.32A', '3.570062', '98.6800935', 'ODP-MDC-FGE/002', 'SPLITTER-01', '5', '3.570062', '98.6800935', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81375259991', '863308044028812', '3.5700967', '98.6801097', 'taman polonia 5 no.23A', 'uploads/20190618_054001.jpg.jpg', '20190618_054001.jpg', NULL),
(32, '2019-06-19 16:56:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216672', NULL, NULL, 'ERNI OKTAVIA', 'Jl Punak Ujung No 2B', 'Jl Punak Ujung Np 2B', '3.5962339', '98.6630393', 'ODP-MDC-FFG/041', 'SPLITTER-01', '3', '3.5962857', '98.6630573', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00U9UDFHDW', 'TX00U9UDFHDW', '81274481238', '867059041727239', '3.5962317', '98.6630349', 'Foto Rumah Pelanggan', 'uploads/20190619_095613.jpg.jpg', '20190619_095613.jpg', NULL),
(51, '2019-06-19 23:53:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922492', '98.7030701', 'warna kuning', 'uploads/20190619_045321.jpg.jpg', '20190619_045321.jpg', NULL),
(34, '2019-06-19 17:34:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20042322', NULL, NULL, 'Putri Alaina', 'bahagia gg.sederhana', 'bahagia gg.sederhana', '3.5826704', '98.6816282', 'ODP-MDC-FAK/044', 'SPLITTER-01', '1', '3.5829043', '98.6814711', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '82212081159', '868240030864808', '3.5854956', '98.6801067', 'rumah warna orange', 'uploads/20190619_103448.jpg.jpg', '20190619_103448.jpg', NULL),
(49, '2019-06-19 23:52:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.592245', '98.7030614', 'warna kuning', 'uploads/20190619_045248.jpg.jpg', '20190619_045248.jpg', NULL),
(40, '2019-06-19 18:57:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19995273', NULL, NULL, 'jonson lim', 'jalan tumapel 2a', 'jalan tumapel 2a', '3.5861981', '98.6719881', 'ODP-MDC-FAA/019', 'SPLITTER-02', '6', '3.5861871', '98.6720065', 'NIHIL', 'NIHIL', '', '', 'TX00FC4HEOUN', 'TX00FC4HEOUN', '81276595573', '868174031215720', '3.5862389', '98.6719974', 'Gambar 1', 'uploads/20190619_115711.jpg.jpg', '20190619_115711.jpg', NULL),
(42, '2019-06-19 20:10:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20054455', NULL, NULL, 'Santi Malahayati', 'jln b Katamso no 499', 'jln b Katamso no 499', '3.5639029', '98.6877378', 'ODP-MDC-FFD/048', 'SPLITTER-01', '5', '3.5639029', '98.6877378', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81265550635', '866196033440859', '3.5651447', '98.6887695', 'dibelakang toko batu nisan katamso pagar warna hitam', 'uploads/20190619_011032.jpg.jpg', '20190619_011032.jpg', NULL),
(43, '2019-06-19 20:40:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218132', NULL, NULL, 'supiatman', 'jl.pasundang gg. sedulur no.46', 'jl. pasundan gg sedulur no. 46', '3.5941305', '98.6584227', 'ODP-MDC-FL/055', 'SPLITTER-01', '7', '3.5941305', '98.6584227', 'NIHIL', 'NIHIL', 'kosong', '', 'TX006G76AWGP', 'TX006G76AWGP', '81274481238', '869382033734098', '3.5941346', '98.6584644', 'rumah pelanggan', 'uploads/20190619_014014.jpg.jpg', '20190619_014014.jpg', NULL),
(44, '2019-06-19 20:47:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218131', NULL, NULL, 'Tika amelia', 'jl. ayahanda no. 14B', 'jl. ayahanda no. 14B', '3.5920115', '98.6532944', 'ODP-MDC-FD/085', 'SPLITTER-01', '2', '3.5918423', '98.6538654', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00YNRRNBQ4', 'TX00YNRRNBQ4', '81274481238', '867976035108482', '3.5918419', '98.6538676', 'sebelah jl. panci', 'uploads/20190619_014756.jpg.jpg', '20190619_014756.jpg', NULL),
(45, '2019-06-19 20:59:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20058595', NULL, NULL, 'RESNA ULI BR SARAGIH', 'MEDAN', 'JLN SINDORO NO.8', '3.5876964', '98.68705', 'ODP MDC FCY 48', 'SPLITTER-01', '2', '3.5868185', '98.6877504', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00F80TGS4K', 'TX00F80TGS4K', '82272108608', '869722032218371', '3.5867435', '98.6875398', 'RUMAH PELANGGAN', 'uploads/20190619_015925.jpg.jpg', '20190619_015925.jpg', NULL),
(46, '2019-06-19 21:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20061750', NULL, NULL, 'DAYAT', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', '3.5833453', '98.6746695', 'ODP-MDC-FAH/055', 'SPLITTER-02', '7', '3.58345', '98.6746832', 'NIHIL', 'NIHIL', '', '', 'TX008QI4113U', 'TX00CUT6EI4J', '81276595573', '868174031215720', '3.5831523', '98.6748766', 'gambar 1', 'uploads/20190619_024614.jpg.jpg', '20190619_024614.jpg', NULL),
(52, '2019-06-19 23:56:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP-MDC-FCA/021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5961875', '98.7005842', 'warna kuning', 'uploads/20190619_045658.jpg.jpg', '20190619_045658.jpg', NULL),
(53, '2019-06-20 15:23:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217923', NULL, NULL, '', 'yusniwarti', 'jln.bantam no. 10', '3.6537394', '98.6848127', 'odp-mdc-FGC 040', 'SPLITTER-02', '2', '3.5807354', '98.664378', 'NIHIL', 'NIHIL', '', '', 'TX00R904OJ5D', 'TX00R904OJ5D', '82363707388', '351928085446000', '3.5807278', '98.6643819', 'dekat sekolah cahaya, depan rumah ada pohon mangga', 'uploads/20190620_082325.jpg.jpg', '20190620_082325.jpg', NULL),
(54, '2019-06-20 16:43:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756493', '98.685604', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094319.jpg.jpg', '20190620_094319.jpg', NULL),
(55, '2019-06-20 16:43:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756058', '98.6855596', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094325.jpg.jpg', '20190620_094325.jpg', NULL),
(56, '2019-06-20 16:43:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756124', '98.685528', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094332.jpg.jpg', '20190620_094332.jpg', NULL),
(57, '2019-06-20 16:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696206', '98.6844628', 'warna hijau pandan', 'uploads/20190620_095856.jpg.jpg', '20190620_095856.jpg', NULL),
(58, '2019-06-20 16:59:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696324', '98.684457', 'warna hijau pandan', 'uploads/20190620_095900.jpg.jpg', '20190620_095900.jpg', NULL),
(59, '2019-06-20 17:43:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209209021', NULL, NULL, 'andry', '', 'jl. sultan hasanuddin no. 12', '3.5830059', '98.6641867', 'odp-mdc-FGC 079', 'SPLITTER-01', '4', '3.5830727', '98.66359', 'NIHIL', 'NIHIL', '', '', 'TX005082IGEO', 'TX005082IGEO', '82363707388', '351928085446000', '3.5830787', '98.6635712', 'jln hasanuddin sebelah rumah kosong', 'uploads/20190620_104346.jpg.jpg', '20190620_104346.jpg', NULL),
(60, '2019-06-20 18:06:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20096885', NULL, NULL, 'citra dewi', 'jalan putri hijau no 37', 'jalan putri hijau no 37', '3.5977817', '98.675725', 'ODP-MDC-FAW-34', 'SPLITTER-02', '6', '3.5977798', '98.6757207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX001IVD7BXM', 'TX001IVD7BXM', '81274481238', '861930049684836', '3.5976711', '98.6755613', 'rumah pelanggan', 'uploads/20190620_110647.jpg.jpg', '20190620_110647.jpg', NULL),
(61, '2019-06-20 18:06:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.6038094', '98.6960439', 'LENGKAP', 'uploads/20190620_110650.jpg.jpg', '20190620_110650.jpg', NULL),
(62, '2019-06-20 18:07:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.603823', '98.6960423', 'LENGKAP', 'uploads/20190620_110707.jpg.jpg', '20190620_110707.jpg', NULL),
(63, '2019-06-20 18:37:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843745', '98.6676948', '177', 'uploads/20190620_113743.jpg.jpg', '20190620_113743.jpg', NULL),
(64, '2019-06-20 18:37:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843484', '98.667687', '177', 'uploads/20190620_113748.jpg.jpg', '20190620_113748.jpg', NULL),
(65, '2019-06-20 18:54:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20097981', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5843542', '98.6795537', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5843933', '98.6795657', 'NIHIL', 'NIHIL', 'nihil', '', 'TX00XSNPLR0L', '', '82274174147', '869723035366639', '3.584376', '98.6795805', 'foto rumah pelanggan', 'uploads/20190620_115422.jpg.jpg', '20190620_115422.jpg', NULL),
(66, '2019-06-20 19:27:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217949', NULL, NULL, 'RUSLIANTO', 'jl. panci no. 23', 'jl. panci no. 23', '3.5916357', '98.6565553', 'ODP-MDC-FD/82', 'SPLITTER-01', '5', '3.5916784', '98.6572593', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00E4FXSZJL', 'TX00E4FXSZJL', '81274481238', '867976035108482', '3.5915942', '98.6565617', 'jl. panci', 'uploads/20190620_122747.jpg.jpg', '20190620_122747.jpg', NULL),
(67, '2019-06-20 20:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030308', '98.6859952', 'LENGKAP', 'uploads/20190620_013253.jpg.jpg', '20190620_013253.jpg', NULL),
(68, '2019-06-20 20:33:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030309', '98.6859952', 'LENGKAP', 'uploads/20190620_013304.jpg.jpg', '20190620_013304.jpg', NULL),
(69, '2019-06-20 21:16:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5833416', '98.6702947', 'rupel', 'uploads/20190620_021628.jpg.jpg', '20190620_021628.jpg', NULL),
(70, '2019-06-20 21:16:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.583302', '98.6702436', 'rupel', 'uploads/20190620_021637.jpg.jpg', '20190620_021637.jpg', NULL),
(71, '2019-06-20 22:17:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_031756.jpg.jpg', '20190620_031756.jpg', NULL),
(72, '2019-06-20 22:22:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984882', '98.7021159', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032255.jpg.jpg', '20190620_032255.jpg', NULL),
(73, '2019-06-20 22:22:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032256.jpg.jpg', '20190620_032256.jpg', NULL),
(74, '2019-06-20 22:38:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033829.jpg.jpg', '20190620_033829.jpg', NULL),
(75, '2019-06-20 22:38:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033832.jpg.jpg', '20190620_033832.jpg', NULL),
(76, '2019-06-21 00:13:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20122181', NULL, NULL, 'muhammad yusuf alsani', 'jalan rukun no 27', 'jalan rukun no 27', '3.5867376', '98.6553139', 'ODP- MDC-FBF-45', 'SPLITTER-01', '5', '3.5867831', '98.6553207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TZZ0JHYH3YO8', 'TZZ0JHYH3YO8', '81274481238', '861930049684836', '3.5867711', '98.6553121', 'rumah pelanggan', 'uploads/20190620_051359.jpg.jpg', '20190620_051359.jpg', NULL),
(77, '2019-06-21 00:14:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5770764', '98.6846427', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051423.jpg.jpg', '20190620_051423.jpg', NULL),
(78, '2019-06-21 00:14:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5767568', '98.6853305', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051441.jpg.jpg', '20190620_051441.jpg', NULL),
(79, '2019-06-21 01:10:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061023.jpg.jpg', '20190620_061023.jpg', NULL),
(80, '2019-06-21 01:15:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061505.jpg.jpg', '20190620_061505.jpg', NULL),
(81, '2019-06-21 01:20:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20117400', NULL, NULL, 'KOK LIANG HWA', 'MEDAN', 'JLN THAMRIN NO.47-49', '3.5947107', '98.6882587', 'ODP MDC FEC 39', 'SPLITTER-02', '6', '3.5946515', '98.6883218', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00Q3TVV1Z0', 'TX00Q3TVV1Z0', '82272108608', '869722032218371', '3.5947107', '98.6882587', 'RUMAH PELANGGAN', 'uploads/20190620_062010.jpg.jpg', '20190620_062010.jpg', NULL),
(85, '2019-06-21 18:27:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111217001086', NULL, NULL, 'medium', 'mandala by pass', 'tata alam asri', '3.5928328', '98.6776645', 'odp', 'SPLITTER-01', '1', '3.5928328', '98.6776645', 'NIHIL', 'NIHIL', '', '', 'tes321766767', '', '8116091965', '359447096192703', '3.5928998', '98.6772873', 'gbr1', 'uploads/20190621_112759.jpg.jpg', '20190621_112759.jpg', NULL),
(83, '2019-06-21 17:21:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152710', NULL, NULL, 'NOVITA HARYANI', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.6004563', '98.6532264', 'ODP-MDC-FF/134', 'SPLITTER-01', '8', '3.600401', '98.6531527', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00EMFQQSMD', 'TX00EMFQQSMD', '81274481238', '867059041727239', '3.6003757', '98.6530672', 'Rumah Pelanggan', 'uploads/20190621_102131.jpg.jpg', '20190621_102131.jpg', NULL),
(84, '2019-06-21 17:29:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152942Q', NULL, NULL, 'zuharmansyah', 'jalan gelas no 99', 'jalan gelas no 99', '3.597317', '98.6584675', 'ODP MDC FF 142', 'SPLITTER-01', '4', '3.597316', '98.6584669', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973195', '98.6584694', 'rumah pelanggan', 'uploads/20190621_102959.jpg.jpg', '20190621_102959.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images5`
--

CREATE TABLE `images5` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images5`
--

INSERT INTO `images5` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `status_valdat`) VALUES
(1, '2019-06-17 18:05:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19945450', NULL, NULL, 'AURELIA SAPUTRI', 'AURELIA SAPUTRI', 'The Palace Residence Blok A No 55', '3.568398', '98.6757021', 'ODP-MDC-FJ/015', 'PANEL01', '1', '3.568398', '98.6757021', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0091EHKOVO', '-', '81265550635', '', '3.568398', '98.6757021', 'rumah besar perumahan the place no.55', 'uploads/20190617_110536.jpg.jpg', '20190617_110536.jpg', 'open'),
(27, '2019-06-19 00:27:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013838', NULL, NULL, 'mempa simatupang', 'jln ayahanda no 6', 'jln ayahanda no 6', '3.5910991', '98.6533031', 'ODP-MDC-FD/014', 'SPLITTER-01', '3', '3.5911287', '98.6531793', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00YVO155MO', 'TX00YVO155MO', '82284515244', '861930049684836', '3.591093', '98.6532635', 'baik', 'uploads/20190618_052737.jpg.jpg', '20190618_052737.jpg', 'open'),
(3, '2019-06-17 18:20:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19946958', NULL, NULL, 'irvan syahputra', 'jl sei wampu baru no 18', 'jl sei eampu baru no 18', '3.5837887', '98.6550306', 'odp-mdc-fbm/052', 'SPLITTER-02', '14', '3.5837763', '98.6551707', 'NIHIL', 'NIHIL', '', '', 'TX00LJGGRTNI', '-', '81260003335', '866949030381413', '3.5838474', '98.6548039', 'warna kuning , pagar hitam', 'uploads/20190617_112016.jpg.jpg', '20190617_112016.jpg', 'open'),
(16, '2019-06-18 23:00:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013441', NULL, NULL, 'YAZIDA ANGELINA T PARINDURI', 'JL.SAMPURNO NO.10', 'JL.SAMPURNO NO.10', '3.5998503', '98.6916677', 'ODP-MDC-FCJ/019', 'SPLITTER-01', '3', NULL, NULL, 'NIHIL', NULL, 'NIHIL', '', NULL, NULL, '82299217915', NULL, '3.6000268', '98.6915446', 'LENGKAP', 'uploads/20190618_040021.jpg.jpg', '20190618_040021.jpg', 'open'),
(7, '2019-06-17 18:44:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19941709', NULL, NULL, 'mariana', 'jl.taruma gg siti no 47', 'jl.taruma gg siti no 47', '3.5850281', '98.66862', 'ODP-MDC-FAA/026', 'SPLITTER-01', '7', '3.5850245', '98.6684142', 'NIHIL', 'NIHIL', '', '', 'TX00Q8XT3XVG', '-', '81276595573', '868174031215720', '3.5850362', '98.6686183', 'GAMBAR 1', 'uploads/20190617_114414.jpg.jpg', '20190617_114414.jpg', 'open'),
(50, '2019-06-19 23:53:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922493', '98.70307', 'warna kuning', 'uploads/20190619_045312.jpg.jpg', '20190619_045312.jpg', 'open'),
(29, '2019-06-19 00:40:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20014889', NULL, NULL, 'CESELINA', 'jln.Tampol 4 no.32A', 'jln.tampol 4 no.32A', '3.570062', '98.6800935', 'ODP-MDC-FGE/002', 'SPLITTER-01', '5', '3.570062', '98.6800935', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81375259991', '863308044028812', '3.5700967', '98.6801097', 'taman polonia 5 no.23A', 'uploads/20190618_054001.jpg.jpg', '20190618_054001.jpg', 'open'),
(32, '2019-06-19 16:56:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216672', NULL, NULL, 'ERNI OKTAVIA', 'Jl Punak Ujung No 2B', 'Jl Punak Ujung Np 2B', '3.5962339', '98.6630393', 'ODP-MDC-FFG/041', 'SPLITTER-01', '3', '3.5962857', '98.6630573', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00U9UDFHDW', 'TX00U9UDFHDW', '81274481238', '867059041727239', '3.5962317', '98.6630349', 'Foto Rumah Pelanggan', 'uploads/20190619_095613.jpg.jpg', '20190619_095613.jpg', 'open'),
(51, '2019-06-19 23:53:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922492', '98.7030701', 'warna kuning', 'uploads/20190619_045321.jpg.jpg', '20190619_045321.jpg', 'open'),
(34, '2019-06-19 17:34:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20042322', NULL, NULL, 'Putri Alaina', 'bahagia gg.sederhana', 'bahagia gg.sederhana', '3.5826704', '98.6816282', 'ODP-MDC-FAK/044', 'SPLITTER-01', '1', '3.5829043', '98.6814711', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '82212081159', '868240030864808', '3.5854956', '98.6801067', 'rumah warna orange', 'uploads/20190619_103448.jpg.jpg', '20190619_103448.jpg', 'open'),
(49, '2019-06-19 23:52:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.592245', '98.7030614', 'warna kuning', 'uploads/20190619_045248.jpg.jpg', '20190619_045248.jpg', 'open'),
(40, '2019-06-19 18:57:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19995273', NULL, NULL, 'jonson lim', 'jalan tumapel 2a', 'jalan tumapel 2a', '3.5861981', '98.6719881', 'ODP-MDC-FAA/019', 'SPLITTER-02', '6', '3.5861871', '98.6720065', 'NIHIL', 'NIHIL', '', '', 'TX00FC4HEOUN', 'TX00FC4HEOUN', '81276595573', '868174031215720', '3.5862389', '98.6719974', 'Gambar 1', 'uploads/20190619_115711.jpg.jpg', '20190619_115711.jpg', 'open'),
(42, '2019-06-19 20:10:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20054455', NULL, NULL, 'Santi Malahayati', 'jln b Katamso no 499', 'jln b Katamso no 499', '3.5639029', '98.6877378', 'ODP-MDC-FFD/048', 'SPLITTER-01', '5', '3.5639029', '98.6877378', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81265550635', '866196033440859', '3.5651447', '98.6887695', 'dibelakang toko batu nisan katamso pagar warna hitam', 'uploads/20190619_011032.jpg.jpg', '20190619_011032.jpg', 'open'),
(43, '2019-06-19 20:40:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218132', NULL, NULL, 'supiatman', 'jl.pasundang gg. sedulur no.46', 'jl. pasundan gg sedulur no. 46', '3.5941305', '98.6584227', 'ODP-MDC-FL/055', 'SPLITTER-01', '7', '3.5941305', '98.6584227', 'NIHIL', 'NIHIL', 'kosong', '', 'TX006G76AWGP', 'TX006G76AWGP', '81274481238', '869382033734098', '3.5941346', '98.6584644', 'rumah pelanggan', 'uploads/20190619_014014.jpg.jpg', '20190619_014014.jpg', 'open'),
(44, '2019-06-19 20:47:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218131', NULL, NULL, 'Tika amelia', 'jl. ayahanda no. 14B', 'jl. ayahanda no. 14B', '3.5920115', '98.6532944', 'ODP-MDC-FD/085', 'SPLITTER-01', '2', '3.5918423', '98.6538654', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00YNRRNBQ4', 'TX00YNRRNBQ4', '81274481238', '867976035108482', '3.5918419', '98.6538676', 'sebelah jl. panci', 'uploads/20190619_014756.jpg.jpg', '20190619_014756.jpg', 'open'),
(45, '2019-06-19 20:59:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20058595', NULL, NULL, 'RESNA ULI BR SARAGIH', 'MEDAN', 'JLN SINDORO NO.8', '3.5876964', '98.68705', 'ODP MDC FCY 48', 'SPLITTER-01', '2', '3.5868185', '98.6877504', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00F80TGS4K', 'TX00F80TGS4K', '82272108608', '869722032218371', '3.5867435', '98.6875398', 'RUMAH PELANGGAN', 'uploads/20190619_015925.jpg.jpg', '20190619_015925.jpg', 'open'),
(46, '2019-06-19 21:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20061750', NULL, NULL, 'DAYAT', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', '3.5833453', '98.6746695', 'ODP-MDC-FAH/055', 'SPLITTER-02', '7', '3.58345', '98.6746832', 'NIHIL', 'NIHIL', '', '', 'TX008QI4113U', 'TX00CUT6EI4J', '81276595573', '868174031215720', '3.5831523', '98.6748766', 'gambar 1', 'uploads/20190619_024614.jpg.jpg', '20190619_024614.jpg', 'open'),
(52, '2019-06-19 23:56:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP-MDC-FCA/021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5961875', '98.7005842', 'warna kuning', 'uploads/20190619_045658.jpg.jpg', '20190619_045658.jpg', 'open'),
(53, '2019-06-20 15:23:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217923', NULL, NULL, '', 'yusniwarti', 'jln.bantam no. 10', '3.6537394', '98.6848127', 'odp-mdc-FGC 040', 'SPLITTER-02', '2', '3.5807354', '98.664378', 'NIHIL', 'NIHIL', '', '', 'TX00R904OJ5D', 'TX00R904OJ5D', '82363707388', '351928085446000', '3.5807278', '98.6643819', 'dekat sekolah cahaya, depan rumah ada pohon mangga', 'uploads/20190620_082325.jpg.jpg', '20190620_082325.jpg', 'open'),
(54, '2019-06-20 16:43:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756493', '98.685604', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094319.jpg.jpg', '20190620_094319.jpg', 'open'),
(55, '2019-06-20 16:43:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756058', '98.6855596', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094325.jpg.jpg', '20190620_094325.jpg', 'open'),
(56, '2019-06-20 16:43:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756124', '98.685528', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094332.jpg.jpg', '20190620_094332.jpg', 'open'),
(57, '2019-06-20 16:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696206', '98.6844628', 'warna hijau pandan', 'uploads/20190620_095856.jpg.jpg', '20190620_095856.jpg', 'open'),
(58, '2019-06-20 16:59:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696324', '98.684457', 'warna hijau pandan', 'uploads/20190620_095900.jpg.jpg', '20190620_095900.jpg', 'open'),
(59, '2019-06-20 17:43:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209209021', NULL, NULL, 'andry', '', 'jl. sultan hasanuddin no. 12', '3.5830059', '98.6641867', 'odp-mdc-FGC 079', 'SPLITTER-01', '4', '3.5830727', '98.66359', 'NIHIL', 'NIHIL', '', '', 'TX005082IGEO', 'TX005082IGEO', '82363707388', '351928085446000', '3.5830787', '98.6635712', 'jln hasanuddin sebelah rumah kosong', 'uploads/20190620_104346.jpg.jpg', '20190620_104346.jpg', 'open'),
(60, '2019-06-20 18:06:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20096885', NULL, NULL, 'citra dewi', 'jalan putri hijau no 37', 'jalan putri hijau no 37', '3.5977817', '98.675725', 'ODP-MDC-FAW-34', 'SPLITTER-02', '6', '3.5977798', '98.6757207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX001IVD7BXM', 'TX001IVD7BXM', '81274481238', '861930049684836', '3.5976711', '98.6755613', 'rumah pelanggan', 'uploads/20190620_110647.jpg.jpg', '20190620_110647.jpg', 'open'),
(61, '2019-06-20 18:06:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.6038094', '98.6960439', 'LENGKAP', 'uploads/20190620_110650.jpg.jpg', '20190620_110650.jpg', 'open'),
(62, '2019-06-20 18:07:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.603823', '98.6960423', 'LENGKAP', 'uploads/20190620_110707.jpg.jpg', '20190620_110707.jpg', 'open'),
(63, '2019-06-20 18:37:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843745', '98.6676948', '177', 'uploads/20190620_113743.jpg.jpg', '20190620_113743.jpg', 'open'),
(64, '2019-06-20 18:37:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843484', '98.667687', '177', 'uploads/20190620_113748.jpg.jpg', '20190620_113748.jpg', 'open'),
(65, '2019-06-20 18:54:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20097981', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5843542', '98.6795537', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5843933', '98.6795657', 'NIHIL', 'NIHIL', 'nihil', '', 'TX00XSNPLR0L', '', '82274174147', '869723035366639', '3.584376', '98.6795805', 'foto rumah pelanggan', 'uploads/20190620_115422.jpg.jpg', '20190620_115422.jpg', 'open'),
(66, '2019-06-20 19:27:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217949', NULL, NULL, 'RUSLIANTO', 'jl. panci no. 23', 'jl. panci no. 23', '3.5916357', '98.6565553', 'ODP-MDC-FD/82', 'SPLITTER-01', '5', '3.5916784', '98.6572593', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00E4FXSZJL', 'TX00E4FXSZJL', '81274481238', '867976035108482', '3.5915942', '98.6565617', 'jl. panci', 'uploads/20190620_122747.jpg.jpg', '20190620_122747.jpg', 'open'),
(67, '2019-06-20 20:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030308', '98.6859952', 'LENGKAP', 'uploads/20190620_013253.jpg.jpg', '20190620_013253.jpg', 'open'),
(68, '2019-06-20 20:33:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030309', '98.6859952', 'LENGKAP', 'uploads/20190620_013304.jpg.jpg', '20190620_013304.jpg', 'open'),
(69, '2019-06-20 21:16:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5833416', '98.6702947', 'rupel', 'uploads/20190620_021628.jpg.jpg', '20190620_021628.jpg', 'open'),
(70, '2019-06-20 21:16:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.583302', '98.6702436', 'rupel', 'uploads/20190620_021637.jpg.jpg', '20190620_021637.jpg', 'open'),
(71, '2019-06-20 22:17:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_031756.jpg.jpg', '20190620_031756.jpg', 'open'),
(72, '2019-06-20 22:22:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984882', '98.7021159', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032255.jpg.jpg', '20190620_032255.jpg', 'open'),
(73, '2019-06-20 22:22:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032256.jpg.jpg', '20190620_032256.jpg', 'open'),
(74, '2019-06-20 22:38:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033829.jpg.jpg', '20190620_033829.jpg', 'open'),
(75, '2019-06-20 22:38:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033832.jpg.jpg', '20190620_033832.jpg', 'open'),
(76, '2019-06-21 00:13:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20122181', NULL, NULL, 'muhammad yusuf alsani', 'jalan rukun no 27', 'jalan rukun no 27', '3.5867376', '98.6553139', 'ODP- MDC-FBF-45', 'SPLITTER-01', '5', '3.5867831', '98.6553207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TZZ0JHYH3YO8', 'TZZ0JHYH3YO8', '81274481238', '861930049684836', '3.5867711', '98.6553121', 'rumah pelanggan', 'uploads/20190620_051359.jpg.jpg', '20190620_051359.jpg', 'open'),
(77, '2019-06-21 00:14:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5770764', '98.6846427', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051423.jpg.jpg', '20190620_051423.jpg', 'open'),
(78, '2019-06-21 00:14:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5767568', '98.6853305', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051441.jpg.jpg', '20190620_051441.jpg', 'open'),
(79, '2019-06-21 01:10:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061023.jpg.jpg', '20190620_061023.jpg', 'open'),
(80, '2019-06-21 01:15:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061505.jpg.jpg', '20190620_061505.jpg', 'open'),
(81, '2019-06-21 01:20:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20117400', NULL, NULL, 'KOK LIANG HWA', 'MEDAN', 'JLN THAMRIN NO.47-49', '3.5947107', '98.6882587', 'ODP MDC FEC 39', 'SPLITTER-02', '6', '3.5946515', '98.6883218', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00Q3TVV1Z0', 'TX00Q3TVV1Z0', '82272108608', '869722032218371', '3.5947107', '98.6882587', 'RUMAH PELANGGAN', 'uploads/20190620_062010.jpg.jpg', '20190620_062010.jpg', 'open'),
(83, '2019-06-21 17:21:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152710', NULL, NULL, 'NOVITA HARYANI', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.6004563', '98.6532264', 'ODP-MDC-FF/134', 'SPLITTER-01', '8', '3.600401', '98.6531527', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00EMFQQSMD', 'TX00EMFQQSMD', '81274481238', '867059041727239', '3.6003757', '98.6530672', 'Rumah Pelanggan', 'uploads/20190621_102131.jpg.jpg', '20190621_102131.jpg', 'open'),
(84, '2019-06-21 17:29:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152942Q', NULL, NULL, 'zuharmansyah', 'jalan gelas no 99', 'jalan gelas no 99', '3.597317', '98.6584675', 'ODP MDC FF 142', 'SPLITTER-01', '4', '3.597316', '98.6584669', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973195', '98.6584694', 'rumah pelanggan', 'uploads/20190621_102959.jpg.jpg', '20190621_102959.jpg', 'open'),
(91, '2019-06-21 20:51:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20164773', NULL, NULL, 'HANDE', 'MEDAN', 'JLN SUTOMO DALAM NO.16 Q', '3.5961166', '98.681726', 'ODP MDC FCN 34', 'SPLITTER-02', '5', '3.5961213', '98.6817459', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00N44RWDAH', '5743472400040', '82272108608', '869722032218371', '3.5960639', '98.681778', 'RUMAH PELANGGAN', 'uploads/20190621_015154.jpg.jpg', '20190621_015154.jpg', 'open'),
(87, '2019-06-21 18:49:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218203', NULL, NULL, 'junaidi', '', 'sei wampu baru no 7', '3.5834442', '98.6565124', 'odp-mdc-FBM 050', 'SPLITTER-01', '8', '3.5835298', '98.6563436', 'NIHIL', 'NIHIL', '', '', 'TX00XJVOSYKG', 'TX00XJVOSYKG', '82363707388', '351928085446000', '3.583559', '98.6563027', 'rumah jual air', 'uploads/20190621_114911.jpg.jpg', '20190621_114911.jpg', 'open'),
(88, '2019-06-21 18:54:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017328', '98.7020321', 'LENGKAP', 'uploads/20190621_115436.jpg.jpg', '20190621_115436.jpg', 'open'),
(89, '2019-06-21 18:54:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017329', '98.7020327', 'LENGKAP', 'uploads/20190621_115456.jpg.jpg', '20190621_115456.jpg', 'open'),
(90, '2019-06-21 19:11:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20153782', NULL, NULL, 'HUSIN', 'JL KATAMSO GG MANTRI NO.16B', 'jl katamso gg mantri no. 16b', '3.5785752', '98.6811654', 'ODP-MDC-FAL/012', 'SPLITTER-01', '4', '3.5785747', '98.6811766', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGCSHRHX', 'TX00BGCSHRHX', '81265550635', '866196033440859', '3.5785751', '98.6811725', 'masuk jalan mantri paling ujung turun turunan nomor 16 B', 'uploads/20190621_121110.jpg.jpg', '20190621_121110.jpg', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `images_backup`
--

CREATE TABLE `images_backup` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images_backup`
--

INSERT INTO `images_backup` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`) VALUES
(1, '2019-05-25 00:23:48', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '123456', '', '', '', '37.4219983', '-122.084', '', 'Please select ...!!!', 'Please select ...!!!', '37.4219983', '-122.084', 'CHANGE DATEK', 'CP TDK AKTIF', '', '', NULL, NULL, '85262404020', NULL, '37.4219983', '-122.084', 'test', 'uploads/20190524_052348.jpg.jpg', '20190524_052348.jpg'),
(2, '2019-05-25 00:27:21', 'Regional-1', 'LAMPUNG', 'PROVISIONING', 'INDIHOME', '0618476969', 'medium', 'mandala', 'tata alam', '37.4219983', '37.4219983', 'odp', 'PANEL01', '2', '37.4219983', '-122.084', 'CHANGE PACKET', 'NIHIL', 'kendala1', '', NULL, NULL, '85262404020', NULL, '37.4219983', '-122.084', 'test gbr1', 'uploads/20190524_052721.jpg.jpg', '20190524_052721.jpg'),
(3, '2019-05-25 00:27:36', 'Regional-1', 'LAMPUNG', 'PROVISIONING', 'INDIHOME', '0618476969', 'medium', 'mandala', 'tata alam', '37.4219983', '37.4219983', 'odp', 'PANEL01', '2', '37.4219983', '-122.084', 'CHANGE PACKET', 'NIHIL', 'kendala1', '', NULL, NULL, '85262404020', NULL, '37.4219983', '-122.084', 'test gbr1', 'uploads/20190524_052736.jpg.jpg', '20190524_052736.jpg'),
(4, '2019-05-25 01:07:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111217001086', 'medium', 'mandala', 'tata alam', '3.592802', '98.67763', 'odp-ctd-fah/001', 'PANEL01', '1', '3.592802', '98.67763', 'ODP BLM GOLIVE', 'NIHIL', 'ket1', '', NULL, NULL, '85262404020', NULL, '3.5928208', '98.6776554', 'gbr1', 'uploads/20190524_060702.jpg.jpg', '20190524_060702.jpg'),
(5, '2019-05-25 18:40:57', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '3467899', 'sfh', '3567', '3467', '3.6355636', '98.6602304', 'odp', 'PANEL01', '3', '3.6355636', '98.6602304', 'CHANGE PACKET', 'CP TDK AKTIF', 'test', '', NULL, NULL, '85262404020', NULL, '3.6338969', '98.6595566', 'gbr1', 'uploads/20190525_114057.jpg.jpg', '20190525_114057.jpg'),
(6, '2019-05-26 06:37:33', 'Regional-1', '', 'PROVISIONING', 'INDIHOME', '', '', '', '', '3.6084292', '98.6206038', '', 'Please select ...!!!', 'Please select ...!!!', '3.6084292', '98.6206038', 'Please select ...!!!', 'CP RNA', '', '', NULL, NULL, '85262404020', NULL, '3.6084494', '98.6206032', 'tedt1', 'uploads/20190525_113733.jpg.jpg', '20190525_113733.jpg'),
(7, '2019-05-26 06:37:46', 'Regional-1', '', 'PROVISIONING', 'INDIHOME', '321000', '', '', '', '3.6084292', '98.6206038', '', 'Please select ...!!!', 'Please select ...!!!', '3.6084292', '98.6206038', 'Please select ...!!!', 'CP RNA', '', '', NULL, NULL, '85262404020', NULL, '3.6082918', '98.6207079', 'tedt1', 'uploads/20190525_113746.jpg.jpg', '20190525_113746.jpg'),
(8, '2019-05-26 06:38:01', 'Regional-1', '', 'PROVISIONING', 'INDIHOME', '321000', '', '', '', '3.6084292', '98.6206038', '', 'Please select ...!!!', 'Please select ...!!!', '3.6084292', '98.6206038', 'Please select ...!!!', 'CP RNA', '', '', NULL, NULL, '85262404020', NULL, '3.6082589', '98.6206972', 'tedt1', 'uploads/20190525_113801.jpg.jpg', '20190525_113801.jpg'),
(9, '2019-05-26 06:49:22', 'Regional-1', 'LAMPUNG', 'PROVISIONING', 'INDIHOME', '146896422', '', '', '', '3.6084286', '98.6206035', '', 'Please select ...!!!', 'Please select ...!!!', '3.6084286', '98.6206035', 'Please select ...!!!', 'CP SALAH SAMBUNG', '', '', NULL, NULL, '85262404020', NULL, '3.6083064', '98.6206148', 'test1', 'uploads/20190525_114922.jpg.jpg', '20190525_114922.jpg'),
(10, '2019-05-26 07:36:48', 'Regional-3', 'BANDUNG', 'PROVISIONING', 'INDIHOME', '38986432', '', '', '', '3.6083123', '98.6205656', '', 'Please select ...!!!', 'Please select ...!!!', '3.608312', '98.6205652', 'Please select ...!!!', 'CP RNA', '', '', NULL, NULL, '85262404020', NULL, '3.6083472', '98.6205935', 'test1', 'uploads/20190526_123648.jpg.jpg', '20190526_123648.jpg'),
(11, '2019-05-27 20:19:41', 'Regional-2', 'BOGOR', 'PROVISIONING', 'INDIHOME', '112233', 'aaa', 'bb', 'ccc', '3.5922657', '98.6775731', 'odp', 'PANEL01', '4', '3.5922666', '98.6775746', 'CROSSING JALAN', 'Please select ...!!!', 'ryu', '', NULL, NULL, '85262404020', NULL, '3.5922389', '98.6775021', 'test', 'uploads/20190527_011941.jpg.jpg', '20190527_011941.jpg'),
(12, '2019-05-28 00:09:13', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '2222222', 'fff', 'yyy', 'hhh', '3.5927147', '98.6776992', 'odp', 'PANEL02', '5', '3.5927182', '98.6776955', 'IKR-G TJP', 'DOEBLE INPUT', 'kend1', '', NULL, NULL, '85262404020', NULL, '3.5927157', '98.6776985', 'test1', 'uploads/20190527_050913.jpg.jpg', '20190527_050913.jpg'),
(13, '2019-05-28 00:56:49', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '333333', '', '', '', '3.5927143', '98.6776993', '', 'Please select ...!!!', 'Please select ...!!!', '3.5927145', '98.6776996', 'Please select ...!!!', 'Please select ...!!!', '', '', NULL, NULL, '85262404020', NULL, '3.5927147', '98.6776992', 'test1', 'uploads/20190527_055649.jpg.jpg', '20190527_055649.jpg'),
(14, '2019-05-28 02:23:56', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '444444', '', '', '', '3.5929144', '98.6775822', 'odp', 'PANEL02', '5', '3.5929144', '98.6775822', 'KENDALA MATERIAL', 'DOEBLE INPUT', '', '', '', '', '85262404020', NULL, '3.5928244', '98.6776562', 'test', 'uploads/20190527_072356.jpg.jpg', '20190527_072356.jpg'),
(15, '2019-05-28 02:23:58', 'Regional-1', 'ACEH', 'PROVISIONING', 'INDIHOME', '444444', '', '', '', '3.5929144', '98.6775822', 'odp', 'PANEL02', '5', '3.5929144', '98.6775822', 'KENDALA MATERIAL', 'DOEBLE INPUT', '', '', '', '', '85262404020', NULL, '3.5928244', '98.6776562', 'test', 'uploads/20190527_072358.jpg.jpg', '20190527_072358.jpg'),
(16, '2019-05-28 02:35:39', 'Regional-2', 'BEKASI', 'PROVISIONING', 'INDIHOME', '777777', '', '', '', '3.5928453', '98.67751', 'odp', 'PANEL01', '2', '3.5928536', '98.6775025', 'CHANGE DATEK', 'CP RNA', '', '', '', '', '85262404020', NULL, '3.593015', '98.6775107', 'test', 'uploads/20190527_073539.jpg.jpg', '20190527_073539.jpg'),
(17, '2019-05-28 03:00:04', 'Regional-2', 'BEKASI', 'PROVISIONING', 'INDIHOME', '777777', '', '', '', '3.5928453', '98.67751', 'odp', 'PANEL01', '2', '3.5928536', '98.6775025', 'CHANGE DATEK', 'CP RNA', '', '', '', '', '85262404020', NULL, '3.5910213', '98.6776518', 'test', 'uploads/20190527_080004.jpg.jpg', '20190527_080004.jpg'),
(18, '2019-05-28 03:00:13', 'Regional-2', 'BEKASI', 'PROVISIONING', 'INDIHOME', '777777888', '', '', '', '3.5928453', '98.67751', 'odp', 'PANEL01', '2', '3.5928536', '98.6775025', 'CHANGE DATEK', 'CP RNA', '', '', '', '', '85262404020', NULL, '3.5910415', '98.6776437', 'test', 'uploads/20190527_080013.jpg.jpg', '20190527_080013.jpg'),
(19, '2019-05-28 06:07:01', 'Regional-1', 'BENGKULU', 'PROVISIONING', 'INDIHOME', '888888', '', '', '', '3.6083269', '98.6206067', 'odp', 'PANEL01', '4', '3.6083269', '98.6206067', 'IKR-G TJP', 'NIHIL', 'test', '', '', '', '85262404020', NULL, '3.6083276', '98.6206184', 'test', 'uploads/20190527_110701.jpg.jpg', '20190527_110701.jpg'),
(20, '2019-05-31 19:59:43', 'Regional-1', 'JAMBI', 'PROVISIONING', 'INDIHOME', '999999', '', '', '', '3.5928241', '98.6776564', 'odp', 'PANEL01', '4', '3.5928241', '98.6776564', 'NIHIL', 'CP RNA', 'test', '', '', '', '85262404020', NULL, '3.5927914', '98.6775171', 'test', 'uploads/20190531_125943.jpg.jpg', '20190531_125943.jpg'),
(21, '2019-06-11 16:23:31', 'Regional-1', 'RIDAR', 'PROVISIONING', 'INDIHOME', '12345678', '', '', '', '3.5974202', '98.6776713', 'ODP-CTD-RAH/001', 'PANEL02', '5', '3.5974202', '98.6776713', 'CHANGE DATEK', 'NIHIL', 'datek....', '', '', '', '85262404020', NULL, '3.5974114', '98.6776752', 'ket1', 'uploads/20190611_092331.jpg.jpg', '20190611_092331.jpg'),
(22, '2019-06-11 16:41:42', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12365478', 'fadli', 'tuamang', 'tuamang', '3.5973572', '98.6776564', 'ODP-MDC-FFF/001', 'PANEL01', '3', '3.5973572', '98.6776564', 'CHANGE DATEK', 'NIHIL', 'NIHIL', '', '', '', '85262404020', NULL, '3.5973842', '98.6776658', 'patokan rumah', 'uploads/20190611_094142.jpg.jpg', '20190611_094142.jpg'),
(23, '2019-06-11 16:41:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'nama', 'alamat', 'alamat', '3.5974318', '98.6776819', 'ODP', 'PANEL02', '5', '3.5974315', '98.6776816', 'NIHIL', 'NIHIL', 'no', '', '', '', '85262404020', NULL, '3.5973806', '98.6776756', 'a', 'uploads/20190611_094156.jpg.jpg', '20190611_094156.jpg'),
(24, '2019-06-11 16:41:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12365478', 'fadli', 'tuamang', 'tuamang', '3.5973572', '98.6776564', 'ODP-MDC-FFF/001', 'PANEL01', '3', '3.5973572', '98.6776564', 'CHANGE DATEK', 'NIHIL', 'NIHIL', '', '', '', '85262404020', NULL, '3.597381', '98.6776911', 'patokan rumah', 'uploads/20190611_094157.jpg.jpg', '20190611_094157.jpg'),
(25, '2019-06-11 16:42:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'nama', 'alamat', 'alamat', '3.5974318', '98.6776819', 'ODP', 'PANEL02', '5', '3.5974315', '98.6776816', 'NIHIL', 'NIHIL', 'no', '', '', '', '85262404020', NULL, '3.5973814', '98.677676', 'a', 'uploads/20190611_094202.jpg.jpg', '20190611_094202.jpg'),
(26, '2019-06-11 16:42:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12365478', 'fadli', 'tuamang', 'tuamang', '3.5973572', '98.6776564', 'ODP-MDC-FFF/001', 'PANEL01', '3', '3.5973572', '98.6776564', 'CHANGE DATEK', 'NIHIL', 'NIHIL', '', '', '', '85262404020', NULL, '3.597369', '98.677698', 'patokan rumah', 'uploads/20190611_094210.jpg.jpg', '20190611_094210.jpg'),
(27, '2019-06-12 00:03:33', 'Regional-1', 'BABEL', 'PROVISIONING', 'INDIHOME', '00000007', '', '', '', '3.5928231', '98.6776593', 'odp', 'PANEL02', '5', '3.5928231', '98.6776593', 'NIHIL', 'CP RNA', 'test', '', '', '', '85262404020', '', '3.5928532', '98.6775733', 'gbr1', 'uploads/20190611_050333.jpg.jpg', '20190611_050333.jpg'),
(28, '2019-06-12 00:16:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '55555555', 'aa', 'bb', 'cc', '3.5928048', '98.6776496', 'odp', 'SPLITTER-02', '5', '3.592737', '98.6776448', 'IKR-G TJP', 'CP TDK BISA DIHUBUNGI', 'test', '', '', '', '85262404020', '8787766765453', '3.592748', '98.6776232', 'gbr1', 'uploads/20190611_051631.jpg.jpg', '20190611_051631.jpg'),
(29, '2019-06-12 01:11:06', 'Regional-1', 'BABEL', 'PROVISIONING', 'INDIHOME', '11111111', 'dd', 'ee', 'ff', '3.6084399', '98.6206011', 'odp', 'SPLITTER-01', '1', '3.608432', '98.6206043', 'IKR-G TJP', 'CP TDK AKTIF', 'test', '', '', '', '85262404020', '359447096192703', '3.6084256', '98.6205964', 'gbr1', 'uploads/20190611_061106.jpg.jpg', '20190611_061106.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images_copy`
--

CREATE TABLE `images_copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images_copy`
--

INSERT INTO `images_copy` (`id`, `user_id`, `latitude`, `longitude`, `name`, `url`, `filename`, `timestamp`) VALUES
(1, '8116091965', '3.5928182', '98.6774673', 'mantap', 'uploads/20181114_033639.jpg.jpg', '20181114_033639.jpg', '2018-11-14 23:36:39'),
(2, '8116091965', '3.59274', '98.6776086', 'dicoba', 'uploads/20181114_033732.jpg.jpg', '20181114_033732.jpg', '2018-11-14 23:37:32'),
(3, '8116091965', '3.5927983', '98.6774373', 'good', 'uploads/20181114_033940.jpg.jpg', '20181114_033940.jpg', '2018-11-14 23:39:40'),
(4, '8116091965', '3.5764306', '98.6597637', 'From OSCII', 'uploads/20181114_080525.jpg.jpg', '20181114_080525.jpg', '2018-11-15 04:05:25'),
(5, '8116091965', '2.7500135', '98.3120251', 'di hotel sidikalang', 'uploads/20181118_085749.jpg.jpg', '20181118_085749.jpg', '2018-11-18 16:57:49'),
(6, '8116091965', '-6.9035534', '107.6280059', 'bangunan 1', 'uploads/20181121_082704.jpg.jpg', '20181121_082704.jpg', '2018-11-21 16:27:04'),
(7, '8116091965', '3.592807', '98.6777012', 'Test kirim Image', 'uploads/20181126_025118.jpg.jpg', '20181126_025118.jpg', '2018-11-26 22:51:18'),
(8, '8116091965', '3.5927928', '98.6777108', 'coba', 'uploads/20181128_094710.jpg.jpg', '20181128_094710.jpg', '2018-11-28 17:47:10'),
(9, '', '', '', 'test', 'uploads/20181219_114913.jpg.jpg', '20181219_114913.jpg', '2018-12-19 19:49:13'),
(10, '', '', '', 'testing135', 'uploads/20190305_034404.jpg.jpg', '20190305_034404.jpg', '2019-03-05 23:44:04'),
(11, '8116091965', '3.6084902', '98.6205576', 'test', 'uploads/20190419_083017.jpg.jpg', '20190419_083017.jpg', '2019-04-20 03:30:17'),
(12, '85276203300', '3.608475', '98.62049', 'TESTING777', 'uploads/20190423_032346.jpg.jpg', '20190423_032346.jpg', '2019-04-23 22:23:46'),
(13, '8116091965', '3.592808', '98.6776593', 'test321', 'uploads/20190423_033835.jpg.jpg', '20190423_033835.jpg', '2019-04-23 22:38:35'),
(14, '8116091965', '3.592821', '98.6776585', '56hhjj', 'uploads/20190424_101957.jpg.jpg', '20190424_101957.jpg', '2019-04-24 17:19:57'),
(15, '8116091965', '3.5931075', '98.6777652', 'tesring', 'uploads/20190425_125353.jpg.jpg', '20190425_125353.jpg', '2019-04-25 19:53:53'),
(16, '8116091965', '3.5931075', '98.6777652', 'tesring', 'uploads/20190425_125414.jpg.jpg', '20190425_125414.jpg', '2019-04-25 19:54:14'),
(17, '8116091965', '3.5931075', '98.6777652', 'coba', 'uploads/20190425_125658.jpg.jpg', '20190425_125658.jpg', '2019-04-25 19:56:58'),
(18, '8116091965', '3.5931075', '98.6777652', 'coba123', 'uploads/20190425_125719.jpg.jpg', '20190425_125719.jpg', '2019-04-25 19:57:19'),
(19, '8116091965', '3.5931075', '98.6777652', 'coba12345', 'uploads/20190425_125830.jpg.jpg', '20190425_125830.jpg', '2019-04-25 19:58:30'),
(20, '85276203300', '3.608475', '98.62049', 'hallo', 'uploads/20190425_010150.jpg.jpg', '20190425_010150.jpg', '2019-04-25 20:01:50'),
(21, '85276203300', '3.608475', '98.62049', 'dicoba 321', 'uploads/20190425_010350.jpg.jpg', '20190425_010350.jpg', '2019-04-25 20:03:50'),
(22, '8116091965', '3.5931075', '98.6777652', 'coba1234567', 'uploads/20190425_010443.jpg.jpg', '20190425_010443.jpg', '2019-04-25 20:04:43'),
(23, '8116091965', '3.5931075', '98.6777652', 'coba1455', 'uploads/20190425_011325.jpg.jpg', '20190425_011325.jpg', '2019-04-25 20:13:25'),
(24, '85276203300', '3.608475', '98.62049', 'NEW TESTING', 'uploads/20190428_034125.jpg.jpg', '20190428_034125.jpg', '2019-04-28 22:41:25'),
(25, '85276203300', '3.608475', '98.62049', 'aaaaaaaaaaaaaaa', 'uploads/20190428_105755.jpg.jpg', '20190428_105755.jpg', '2019-04-29 05:57:55'),
(26, '85276203300', '3.608475', '98.62049', 'test', 'uploads/20190429_092738.jpg.jpg', '20190429_092738.jpg', '2019-04-29 16:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `images_copy6`
--

CREATE TABLE `images_copy6` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images_copy6`
--

INSERT INTO `images_copy6` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `status_valdat`) VALUES
(1, '2019-06-17 18:05:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19945450', NULL, NULL, 'AURELIA SAPUTRI', 'AURELIA SAPUTRI', 'The Palace Residence Blok A No 55', '3.568398', '98.6757021', 'ODP-MDC-FJ/015', 'PANEL01', '1', '3.568398', '98.6757021', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0091EHKOVO', '-', '81265550635', '', '3.568398', '98.6757021', 'rumah besar perumahan the place no.55', 'uploads/20190617_110536.jpg.jpg', '20190617_110536.jpg', 'open'),
(27, '2019-06-19 00:27:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013838', NULL, NULL, 'mempa simatupang', 'jln ayahanda no 6', 'jln ayahanda no 6', '3.5910991', '98.6533031', 'ODP-MDC-FD/014', 'SPLITTER-01', '3', '3.5911287', '98.6531793', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00YVO155MO', 'TX00YVO155MO', '82284515244', '861930049684836', '3.591093', '98.6532635', 'baik', 'uploads/20190618_052737.jpg.jpg', '20190618_052737.jpg', 'open'),
(3, '2019-06-17 18:20:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19946958', NULL, NULL, 'irvan syahputra', 'jl sei wampu baru no 18', 'jl sei eampu baru no 18', '3.5837887', '98.6550306', 'odp-mdc-fbm/052', 'SPLITTER-02', '14', '3.5837763', '98.6551707', 'NIHIL', 'NIHIL', '', '', 'TX00LJGGRTNI', '-', '81260003335', '866949030381413', '3.5838474', '98.6548039', 'warna kuning , pagar hitam', 'uploads/20190617_112016.jpg.jpg', '20190617_112016.jpg', 'open'),
(16, '2019-06-18 23:00:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013441', NULL, NULL, 'YAZIDA ANGELINA T PARINDURI', 'JL.SAMPURNO NO.10', 'JL.SAMPURNO NO.10', '3.5998503', '98.6916677', 'ODP-MDC-FCJ/019', 'SPLITTER-01', '3', NULL, NULL, 'NIHIL', NULL, 'NIHIL', '', NULL, NULL, '82299217915', NULL, '3.6000268', '98.6915446', 'LENGKAP', 'uploads/20190618_040021.jpg.jpg', '20190618_040021.jpg', 'open'),
(7, '2019-06-17 18:44:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19941709', NULL, NULL, 'mariana', 'jl.taruma gg siti no 47', 'jl.taruma gg siti no 47', '3.5850281', '98.66862', 'ODP-MDC-FAA/026', 'SPLITTER-01', '7', '3.5850245', '98.6684142', 'NIHIL', 'NIHIL', '', '', 'TX00Q8XT3XVG', '-', '81276595573', '868174031215720', '3.5850362', '98.6686183', 'GAMBAR 1', 'uploads/20190617_114414.jpg.jpg', '20190617_114414.jpg', 'open'),
(29, '2019-06-19 00:40:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20014889', NULL, NULL, 'CESELINA', 'jln.Tampol 4 no.32A', 'jln.tampol 4 no.32A', '3.570062', '98.6800935', 'ODP-MDC-FGE/002', 'SPLITTER-01', '5', '3.570062', '98.6800935', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81375259991', '863308044028812', '3.5700967', '98.6801097', 'taman polonia 5 no.23A', 'uploads/20190618_054001.jpg.jpg', '20190618_054001.jpg', 'open'),
(32, '2019-06-19 16:56:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216672', NULL, NULL, 'ERNI OKTAVIA', 'Jl Punak Ujung No 2B', 'Jl Punak Ujung Np 2B', '3.5962339', '98.6630393', 'ODP-MDC-FFG/041', 'SPLITTER-01', '3', '3.5962857', '98.6630573', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00U9UDFHDW', 'TX00U9UDFHDW', '81274481238', '867059041727239', '3.5962317', '98.6630349', 'Foto Rumah Pelanggan', 'uploads/20190619_095613.jpg.jpg', '20190619_095613.jpg', 'open'),
(34, '2019-06-19 17:34:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20042322', NULL, NULL, 'Putri Alaina', 'bahagia gg.sederhana', 'bahagia gg.sederhana', '3.5826704', '98.6816282', 'ODP-MDC-FAK/044', 'SPLITTER-01', '1', '3.5829043', '98.6814711', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '82212081159', '868240030864808', '3.5854956', '98.6801067', 'rumah warna orange', 'uploads/20190619_103448.jpg.jpg', '20190619_103448.jpg', 'open'),
(49, '2019-06-19 23:52:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.592245', '98.7030614', 'warna kuning', 'uploads/20190619_045248.jpg.jpg', '20190619_045248.jpg', 'open'),
(40, '2019-06-19 18:57:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19995273', NULL, NULL, 'jonson lim', 'jalan tumapel 2a', 'jalan tumapel 2a', '3.5861981', '98.6719881', 'ODP-MDC-FAA/019', 'SPLITTER-02', '6', '3.5861871', '98.6720065', 'NIHIL', 'NIHIL', '', '', 'TX00FC4HEOUN', 'TX00FC4HEOUN', '81276595573', '868174031215720', '3.5862389', '98.6719974', 'Gambar 1', 'uploads/20190619_115711.jpg.jpg', '20190619_115711.jpg', 'open'),
(42, '2019-06-19 20:10:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20054455', NULL, NULL, 'Santi Malahayati', 'jln b Katamso no 499', 'jln b Katamso no 499', '3.5639029', '98.6877378', 'ODP-MDC-FFD/048', 'SPLITTER-01', '5', '3.5639029', '98.6877378', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81265550635', '866196033440859', '3.5651447', '98.6887695', 'dibelakang toko batu nisan katamso pagar warna hitam', 'uploads/20190619_011032.jpg.jpg', '20190619_011032.jpg', 'open'),
(43, '2019-06-19 20:40:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218132', NULL, NULL, 'supiatman', 'jl.pasundang gg. sedulur no.46', 'jl. pasundan gg sedulur no. 46', '3.5941305', '98.6584227', 'ODP-MDC-FL/055', 'SPLITTER-01', '7', '3.5941305', '98.6584227', 'NIHIL', 'NIHIL', 'kosong', '', 'TX006G76AWGP', 'TX006G76AWGP', '81274481238', '869382033734098', '3.5941346', '98.6584644', 'rumah pelanggan', 'uploads/20190619_014014.jpg.jpg', '20190619_014014.jpg', 'open'),
(44, '2019-06-19 20:47:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218131', NULL, NULL, 'Tika amelia', 'jl. ayahanda no. 14B', 'jl. ayahanda no. 14B', '3.5920115', '98.6532944', 'ODP-MDC-FD/085', 'SPLITTER-01', '2', '3.5918423', '98.6538654', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00YNRRNBQ4', 'TX00YNRRNBQ4', '81274481238', '867976035108482', '3.5918419', '98.6538676', 'sebelah jl. panci', 'uploads/20190619_014756.jpg.jpg', '20190619_014756.jpg', 'open'),
(45, '2019-06-19 20:59:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20058595', NULL, NULL, 'RESNA ULI BR SARAGIH', 'MEDAN', 'JLN SINDORO NO.8', '3.5876964', '98.68705', 'ODP MDC FCY 48', 'SPLITTER-01', '2', '3.5868185', '98.6877504', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00F80TGS4K', 'TX00F80TGS4K', '82272108608', '869722032218371', '3.5867435', '98.6875398', 'RUMAH PELANGGAN', 'uploads/20190619_015925.jpg.jpg', '20190619_015925.jpg', 'open'),
(46, '2019-06-19 21:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20061750', NULL, NULL, 'DAYAT', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', '3.5833453', '98.6746695', 'ODP-MDC-FAH/055', 'SPLITTER-02', '7', '3.58345', '98.6746832', 'NIHIL', 'NIHIL', '', '', 'TX008QI4113U', 'TX00CUT6EI4J', '81276595573', '868174031215720', '3.5831523', '98.6748766', 'gambar 1', 'uploads/20190619_024614.jpg.jpg', '20190619_024614.jpg', 'open'),
(53, '2019-06-20 15:23:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217923', NULL, NULL, '', 'yusniwarti', 'jln.bantam no. 10', '3.6537394', '98.6848127', 'odp-mdc-FGC 040', 'SPLITTER-02', '2', '3.5807354', '98.664378', 'NIHIL', 'NIHIL', '', '', 'TX00R904OJ5D', 'TX00R904OJ5D', '82363707388', '351928085446000', '3.5807278', '98.6643819', 'dekat sekolah cahaya, depan rumah ada pohon mangga', 'uploads/20190620_082325.jpg.jpg', '20190620_082325.jpg', 'open'),
(54, '2019-06-20 16:43:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756493', '98.685604', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094319.jpg.jpg', '20190620_094319.jpg', 'open'),
(94, '2019-06-21 22:01:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218212', NULL, NULL, 'homeschooling primagama', '', 'jln sei bahorok no 36,/11', '3.5782389', '98.6532113', 'odp-mdc-FA024', 'SPLITTER-02', '8', '3.5781534', '98.6532621', 'NIHIL', 'NIHIL', '', '', 'TX0001KTCV2G', 'TX0001KTCV2G', '82363707388', '351928085446000', '3.5781268', '98.6532923', 'depan kantor bawaslu', 'uploads/20190621_030158.jpg.jpg', '20190621_030158.jpg', 'open'),
(57, '2019-06-20 16:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696206', '98.6844628', 'warna hijau pandan', 'uploads/20190620_095856.jpg.jpg', '20190620_095856.jpg', 'open'),
(59, '2019-06-20 17:43:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209209021', NULL, NULL, 'andry', '', 'jl. sultan hasanuddin no. 12', '3.5830059', '98.6641867', 'odp-mdc-FGC 079', 'SPLITTER-01', '4', '3.5830727', '98.66359', 'NIHIL', 'NIHIL', '', '', 'TX005082IGEO', 'TX005082IGEO', '82363707388', '351928085446000', '3.5830787', '98.6635712', 'jln hasanuddin sebelah rumah kosong', 'uploads/20190620_104346.jpg.jpg', '20190620_104346.jpg', 'open'),
(60, '2019-06-20 18:06:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20096885', NULL, NULL, 'citra dewi', 'jalan putri hijau no 37', 'jalan putri hijau no 37', '3.5977817', '98.675725', 'ODP-MDC-FAW-34', 'SPLITTER-02', '6', '3.5977798', '98.6757207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX001IVD7BXM', 'TX001IVD7BXM', '81274481238', '861930049684836', '3.5976711', '98.6755613', 'rumah pelanggan', 'uploads/20190620_110647.jpg.jpg', '20190620_110647.jpg', 'open'),
(61, '2019-06-20 18:06:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.6038094', '98.6960439', 'LENGKAP', 'uploads/20190620_110650.jpg.jpg', '20190620_110650.jpg', 'open'),
(63, '2019-06-20 18:37:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843745', '98.6676948', '177', 'uploads/20190620_113743.jpg.jpg', '20190620_113743.jpg', 'open'),
(65, '2019-06-20 18:54:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20097981', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5843542', '98.6795537', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5843933', '98.6795657', 'NIHIL', 'NIHIL', 'nihil', '', 'TX00XSNPLR0L', '', '82274174147', '869723035366639', '3.584376', '98.6795805', 'foto rumah pelanggan', 'uploads/20190620_115422.jpg.jpg', '20190620_115422.jpg', 'open'),
(66, '2019-06-20 19:27:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217949', NULL, NULL, 'RUSLIANTO', 'jl. panci no. 23', 'jl. panci no. 23', '3.5916357', '98.6565553', 'ODP-MDC-FD/82', 'SPLITTER-01', '5', '3.5916784', '98.6572593', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00E4FXSZJL', 'TX00E4FXSZJL', '81274481238', '867976035108482', '3.5915942', '98.6565617', 'jl. panci', 'uploads/20190620_122747.jpg.jpg', '20190620_122747.jpg', 'open'),
(67, '2019-06-20 20:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030308', '98.6859952', 'LENGKAP', 'uploads/20190620_013253.jpg.jpg', '20190620_013253.jpg', 'open'),
(160, '2019-06-26 00:46:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218258', NULL, NULL, 'mastanto mulyono', '', 'syailendra no 6', '3.5791973', '98.6635267', 'odp-mdc-FG 031', 'SPLITTER-02', '3', '3.5791977', '98.6633087', 'NIHIL', 'NIHIL', '', '', 'TX007L21ANU0', 'TX007L21ANU0', '82363707388', '863956040892647', '3.5790165', '98.6635699', 'bakso mas depan isi pulsa', 'uploads/20190625_054625.jpg.jpg', '20190625_054625.jpg', 'open'),
(157, '2019-06-25 23:27:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20351629', NULL, NULL, 'BAMBANG HENDRO SUGIARTO', 'JL .GAHARU,GG.SEKOLAH LAMA NO.22', 'JL .GAHARU,GG.SEKOLAH LAMA NO.22', '3.6043673', '98.6791407', 'ODP-MDC-FEJ/048', 'SPLITTER-01', '7', '3.6043673', '98.6791407', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX008ZGPMFGQ', 'TX003K7SQKG9', '82299217915', '868199032911001', '3.6043673', '98.6791407', 'LENGKAP', 'uploads/20190625_042757.jpg.jpg', '20190625_042757.jpg', 'open'),
(69, '2019-06-20 21:16:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5833416', '98.6702947', 'rupel', 'uploads/20190620_021628.jpg.jpg', '20190620_021628.jpg', 'open'),
(71, '2019-06-20 22:17:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_031756.jpg.jpg', '20190620_031756.jpg', 'open'),
(76, '2019-06-21 00:13:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20122181', NULL, NULL, 'muhammad yusuf alsani', 'jalan rukun no 27', 'jalan rukun no 27', '3.5867376', '98.6553139', 'ODP- MDC-FBF-45', 'SPLITTER-01', '5', '3.5867831', '98.6553207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TZZ0JHYH3YO8', 'TZZ0JHYH3YO8', '81274481238', '861930049684836', '3.5867711', '98.6553121', 'rumah pelanggan', 'uploads/20190620_051359.jpg.jpg', '20190620_051359.jpg', 'open'),
(77, '2019-06-21 00:14:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5770764', '98.6846427', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051423.jpg.jpg', '20190620_051423.jpg', 'open'),
(79, '2019-06-21 01:10:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061023.jpg.jpg', '20190620_061023.jpg', 'open'),
(158, '2019-06-25 23:43:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20353648', NULL, NULL, 'yuni azhari', 'katamso Gg perwira 64', 'katamsi Gg perwira 64', '3.5696981', '98.6836924', 'odp-mdc-fab/018', 'SPLITTER-01', '7', '3.5696305', '98.684237', 'NIHIL', 'NIHIL', '', '', 'TX00J4VBTPRR', 'TX00J4VBTPRR', '81260003335', '356783100820688', '3.5695822', '98.6843249', 'cat kuning', 'uploads/20190625_044325.jpg.jpg', '20190625_044325.jpg', 'open'),
(81, '2019-06-21 01:20:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20117400', NULL, NULL, 'KOK LIANG HWA', 'MEDAN', 'JLN THAMRIN NO.47-49', '3.5947107', '98.6882587', 'ODP MDC FEC 39', 'SPLITTER-02', '6', '3.5946515', '98.6883218', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00Q3TVV1Z0', 'TX00Q3TVV1Z0', '82272108608', '869722032218371', '3.5947107', '98.6882587', 'RUMAH PELANGGAN', 'uploads/20190620_062010.jpg.jpg', '20190620_062010.jpg', 'open'),
(83, '2019-06-21 17:21:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152710', NULL, NULL, 'NOVITA HARYANI', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.6004563', '98.6532264', 'ODP-MDC-FF/134', 'SPLITTER-01', '8', '3.600401', '98.6531527', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00EMFQQSMD', 'TX00EMFQQSMD', '81274481238', '867059041727239', '3.6003757', '98.6530672', 'Rumah Pelanggan', 'uploads/20190621_102131.jpg.jpg', '20190621_102131.jpg', 'open'),
(84, '2019-06-21 17:29:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152942Q', NULL, NULL, 'zuharmansyah', 'jalan gelas no 99', 'jalan gelas no 99', '3.597317', '98.6584675', 'ODP MDC FF 142', 'SPLITTER-01', '4', '3.597316', '98.6584669', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973195', '98.6584694', 'rumah pelanggan', 'uploads/20190621_102959.jpg.jpg', '20190621_102959.jpg', 'open'),
(92, '2019-06-21 22:01:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3p', NULL, NULL, 'jona chandra', 'jln.pahlawan gg.lumumba no.41', 'jln.pahlawan gg.lumumba no.41', '3.5938199', '98.7014952', 'ODP-MDC-FCB/035', 'SPLITTER-01', '4', '3.5938199', '98.7014952', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX009HU1PKM3', '', '81223937163', '358489092841546', '3.5938232', '98.7011512', 'warna kuning', 'uploads/20190621_030117.jpg.jpg', '20190621_030117.jpg', 'open'),
(161, '2019-06-26 01:36:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20352671', NULL, NULL, 'NADYA SEPTIANI', 'JL.KARYA SEJATI NO.84', 'JL.KARYA SEJATI NO.84', '3.5667359', '98.6646148', 'ODP-MDC-FAC/098', 'Please select ...!!!', '1', '3.567896', '98.6648528', 'NIHIL', 'NIHIL', 'NORMAL', '', 'TX006GCGMHE3', '', '82166951702', '869657040092477', '3.5678942', '98.664845', 'PAGAR WARNA  _BIRU', 'uploads/20190625_063645.jpg.jpg', '20190625_063645.jpg', 'open'),
(162, '2019-06-26 01:44:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20357995', NULL, NULL, 'SELMI LUBIS', 'Jl Ayahanda Gg Batu Tulis No 42d', 'Jl Ayahanda Gg Batu Tulis No 42d', '3.5955013', '98.650473', 'ODP-MDC-FF/042', 'SPLITTER-01', '5', '3.5955263', '98.6504628', 'NIHIL', 'NIHIL', 'None', '', 'TX00A7YDPTO6', 'TX00A7YDPTO6', '81274481238', '867059041727239', '3.5955065', '98.6504739', 'Rumah Pelanggan', 'uploads/20190625_064455.jpg.jpg', '20190625_064455.jpg', 'open'),
(155, '2019-06-25 23:27:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20354522', NULL, NULL, 'EDWIN', 'Jl Gatsu No 100C', 'Jl Gatsu No 100C', '3.5902079', '98.6591262', 'ODP-MDC-FL/029', 'SPLITTER-02', '1', '3.5903754', '98.6589143', 'NIHIL', 'NIHIL', 'None', '', 'TX003WJFARET', 'TX003WJFARET', '81274481238', '867059041727239', '3.5902532', '98.6589966', 'Rumah Pelanggan', 'uploads/20190625_042721.jpg.jpg', '20190625_042721.jpg', 'open'),
(91, '2019-06-21 20:51:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20164773', NULL, NULL, 'HANDE', 'MEDAN', 'JLN SUTOMO DALAM NO.16 Q', '3.5961166', '98.681726', 'ODP MDC FCN 34', 'SPLITTER-02', '5', '3.5961213', '98.6817459', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00N44RWDAH', '5743472400040', '82272108608', '869722032218371', '3.5960639', '98.681778', 'RUMAH PELANGGAN', 'uploads/20190621_015154.jpg.jpg', '20190621_015154.jpg', 'open'),
(87, '2019-06-21 18:49:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218203', NULL, NULL, 'junaidi', '', 'sei wampu baru no 7', '3.5834442', '98.6565124', 'odp-mdc-FBM 050', 'SPLITTER-01', '8', '3.5835298', '98.6563436', 'NIHIL', 'NIHIL', '', '', 'TX00XJVOSYKG', 'TX00XJVOSYKG', '82363707388', '351928085446000', '3.583559', '98.6563027', 'rumah jual air', 'uploads/20190621_114911.jpg.jpg', '20190621_114911.jpg', 'open'),
(88, '2019-06-21 18:54:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017328', '98.7020321', 'LENGKAP', 'uploads/20190621_115436.jpg.jpg', '20190621_115436.jpg', 'open'),
(90, '2019-06-21 19:11:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20153782', NULL, NULL, 'HUSIN', 'JL KATAMSO GG MANTRI NO.16B', 'jl katamso gg mantri no. 16b', '3.5785752', '98.6811654', 'ODP-MDC-FAL/012', 'SPLITTER-01', '4', '3.5785747', '98.6811766', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGCSHRHX', 'TX00BGCSHRHX', '81265550635', '866196033440859', '3.5785751', '98.6811725', 'masuk jalan mantri paling ujung turun turunan nomor 16 B', 'uploads/20190621_121110.jpg.jpg', '20190621_121110.jpg', 'open'),
(95, '2019-06-21 22:44:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20172279', NULL, NULL, 'sumery', 'jalan cengal no 90', 'jalan cengal no 90', '3.5962076', '98.6635697', 'ODP MDC FFG 31', 'SPLITTER-01', '3', '3.5963335', '98.6634966', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BHKG0VMS', '', '81274481238', '861930049684836', '3.5962548', '98.6635537', 'rumah pelanggan', 'uploads/20190621_034455.jpg.jpg', '20190621_034455.jpg', 'open'),
(96, '2019-06-21 23:17:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20157261', NULL, NULL, 'syahrial', 'Ruangan OPS mess dan gedung lantai 6', 'Ruangan OPS mess dan gedung lantai 6', '3.5807965', '98.6715808', 'ODP-MDC-FAE/061', 'SPLITTER-01', '1', '3.5808359', '98.6715768', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGZ7GCHG', 'TX00BGZ7GCHG', '82212081159', '868240030864808', '3.5808026', '98.6716268', 'kantor gubernur pak edy', 'uploads/20190621_041739.jpg.jpg', '20190621_041739.jpg', 'open'),
(97, '2019-06-21 23:21:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20156777', NULL, NULL, 'Syahrial', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', '3.5807839', '98.6715873', 'ODP-MDC-FAE/058', 'SPLITTER-01', '3', '3.5808326', '98.6715807', 'NIHIL', 'NIHIL', 'Nihil', '', 'TX007EVP378L', 'TX007EVP378L', '82212081159', '868240030864808', '3.5808335', '98.6715864', 'kantor gubernur lantai 6', 'uploads/20190621_042132.jpg.jpg', '20190621_042132.jpg', 'open'),
(98, '2019-06-22 01:04:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20161210', NULL, NULL, 'M. Archie dhio kadarsyah', 'Jln. S Parman Gg.harapan No.27', 'Jln. S Parman Gg.harapan No.27', '3.5835295', '98.6676892', 'ODP-MDC-FGC/073', 'SPLITTER-02', '13', '3.5840317', '98.6669833', 'NIHIL', 'NIHIL', '', '', 'TX00DJ5EJ08E', 'TX00DJ5EJ08E', '82363707388', '868041032831252', '3.5835552', '98.66778', 'Rumah Pelanggan', 'uploads/20190621_060405.jpg.jpg', '20190621_060405.jpg', 'open'),
(100, '2019-06-22 01:25:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20179073', NULL, NULL, 'ROTAMA RAMADHAN', 'Jl.Rakyat no.56ABCD', 'Jl.Rakyat no.56ABCD', '3.6048152', '98.6914808', 'ODP-MDC-FEG/016', 'SPLITTER-01', '4', '3.6048637', '98.6914743', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0083XP735Z', 'TX00WW0HMEK5', '82299217915', '863387048374133', '3.6048224', '98.6914793', 'LENGKAP', 'uploads/20190621_062502.jpg.jpg', '20190621_062502.jpg', 'open'),
(101, '2019-06-22 01:56:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218177', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.582165', '98.6683214', 'no 33 Ket rumah paling ujung', 'uploads/20190621_065612.jpg.jpg', '20190621_065612.jpg', 'open'),
(102, '2019-06-22 02:31:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218196', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.5815867', '98.6672566', 'no 33 Ket rumah paling ujung', 'uploads/20190621_073104.jpg.jpg', '20190621_073104.jpg', 'open'),
(103, '2019-06-22 02:42:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20182490', NULL, NULL, 'nurhasanah ardiati nasution', 'jalan makamah no 1', 'jalan makamah no 1', '3.5790033', '98.6851813', 'ODP-MDC-FAM/046', 'SPLITTER-02', '7', '3.5788737', '98.6848369', 'NIHIL', 'NIHIL', '', '', 'TX00S66ZX77S', 'TX00S66ZX77S', '81276595573', '868174031215720', '3.5786676', '98.6850249', 'gambar1', 'uploads/20190621_074210.jpg.jpg', '20190621_074210.jpg', 'open'),
(104, '2019-06-22 15:58:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20181828', NULL, NULL, 'ALBERT KRISTIAN SIMANGUNGSONG', 'Jl Cangkir No 5', 'Jl Cangkir No 5', '3.5964285', '98.6571395', 'ODP-MDC-FF/143', 'SPLITTER-01', '1', '3.5964448', '98.6571441', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QSIXKHJ2', 'TX00QSIXKHJ2', '81274481238', '867059041727239', '3.5964665', '98.6571479', 'RUMAH PELANGGAN', 'uploads/20190622_085843.jpg.jpg', '20190622_085843.jpg', 'open'),
(105, '2019-06-22 16:27:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20202526', NULL, NULL, 'roni putra', 'jl mongonsidi Gg baru 23', 'jl mongonsidi Gg barub23', '3.5700935', '98.6684286', 'odp-mdc-FAC/031', 'SPLITTER-01', '6', '3.5697117', '98.6691692', 'NIHIL', 'NIHIL', '', '', 'TX00KAAHXWA5', 'TX00KAAHXWA5', '81260003335', '356783100820688', '3.5697182', '98.6684816', 'cat putih , ada pohon jambu nya', 'uploads/20190622_092714.jpg.jpg', '20190622_092714.jpg', 'open'),
(106, '2019-06-22 18:15:49', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216835', NULL, NULL, 'pogy kukniawan', '', 'sei kapuas kom kapuas no 1a', '3.5839855', '98.6470538', '0dp-mdc-FBM 85', 'SPLITTER-01', '5', '3.5838417', '98.6469671', 'NIHIL', 'NIHIL', '', '', 'TX00FSKYA1B7', 'TX00FSKYA1B7', '82363707388', '351928085446000', '3.5838427', '98.6469642', 'kom kapuas no 1 a', 'uploads/20190622_111549.jpg.jpg', '20190622_111549.jpg', 'open'),
(107, '2019-06-22 20:10:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20208384', NULL, NULL, 'ARIFIN', 'Jl Gatsu No 12F', 'Jl Gatsu No 12F', '3.5925764', '98.667794', 'ODP-MDC-FGL/24', 'SPLITTER-01', '7', '3.592467', '98.6663311', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QJYEDBO5', 'TX00QJYEDBO5', '81274481238', '867059041727239', '3.5925001', '98.6663691', 'RUMAH PELANGGAN', 'uploads/20190622_011038.jpg.jpg', '20190622_011038.jpg', 'open'),
(108, '2019-06-22 22:31:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20217756', NULL, NULL, 'zay', 'jl. katamso dalam', 'pantai burung 1', '3.5771091', '98.6829767', 'ODP-MDC-FAL/029', 'SPLITTER-01', '8', '3.5771011', '98.6829605', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D9XHGMVK', 'TX00D9XHGMVK', '82212081159', '868240030864808', '3.5771091', '98.6829767', 'rumah paling ujung sebelah kiri pagar coklat', 'uploads/20190622_033137.jpg.jpg', '20190622_033137.jpg', 'open'),
(109, '2019-06-22 23:28:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20218325', NULL, NULL, 'marthin rahino sy', 'jl pekong 1 no 25', 'jl pekong 1 no 25', '3.5632', '98.6672607', 'odp-mdc-fac/130', 'SPLITTER-01', '4', '3.5645473', '98.6675357', 'NIHIL', 'NIHIL', '', '', 'TX00WOA4WD82', 'TX00WOA4WD82', '81260003335', '356783100820688', '3.5645393', '98.6674641', 'cat putih pagar hijau', 'uploads/20190622_042807.jpg.jpg', '20190622_042807.jpg', 'open'),
(110, '2019-06-23 00:26:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20222018', NULL, NULL, 'nita verawaty', 'starban Gg sahabat 99', 'starban Gg shabat 99', '3.5569916', '98.6651607', 'odp-mdc-fac/093', 'SPLITTER-02', '1', '3.5570038', '98.6657008', 'NIHIL', 'NIHIL', '', '', 'TX00BFWXMVCM', 'TX00BFWXMVCM', '81260003335', '356783100820688', '3.5570659', '98.6654272', 'pagar warna hijau depan sekolah al hidayah', 'uploads/20190622_052633.jpg.jpg', '20190622_052633.jpg', 'open'),
(111, '2019-06-23 00:38:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20219466', NULL, NULL, 'asmalita dra', 'jalan sei deli no 8', 'jalan sei deli no 8', '3.5981983', '98.6693308', 'ODP MDC FAZ 08', 'SPLITTER-01', '6', '3.5981043', '98.670281', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5981782', '98.6702826', 'rumah pelanggan', 'uploads/20190622_053844.jpg.jpg', '20190622_053844.jpg', 'open'),
(112, '2019-06-23 01:25:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20223608', NULL, NULL, 'DINA ARFIANI', 'Jl Ayahanda No 41', 'Jl Ayahanda No 41', '3.594129', '98.6531669', 'ODP-MDC-FD/05', 'SPLITTER-02', '5', '3.5941403', '98.6531552', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00C2F7N0TZ', 'TX00C2F7N0TZ', '81274481238', '867059041727239', '3.5941439', '98.6531891', 'Rumah Pelanggan', 'uploads/20190622_062546.jpg.jpg', '20190622_062546.jpg', 'open'),
(113, '2019-06-23 02:25:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218228', NULL, NULL, 'teuku armansyah', '', 'sei mencirim no 73', '3.5805833', '98.6549923', '0dp-mdc-FA 37', 'SPLITTER-02', '3', '3.5805656', '98.6550061', 'NIHIL', 'NIHIL', '', '', 'TX00FZXKEUGK', 'TX00FZXKEUGK', '82363707388', '351928085446000', '3.5806226', '98.6549966', 'jln mencirim no 73  depannya tanah  Kosong', 'uploads/20190622_072550.jpg.jpg', '20190622_072550.jpg', 'open'),
(114, '2019-06-23 02:25:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218232', NULL, NULL, 'narik', 'darusalam no51', 'darusalam no51', '3.5802653', '98.6530091', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5802332', '98.6529959', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5801414', '98.6530708', 'rupel', 'uploads/20190622_072553.jpg.jpg', '20190622_072553.jpg', 'open'),
(115, '2019-06-23 17:13:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20242071', NULL, NULL, 'wong sie khong', 'jalan aksara gang sehat no 77 a', 'jalan aksara gang sehat no 77 a', '3.5912889', '98.704247', 'ODP-MDC-FDW/034', 'SPLITTER-01', '1', '3.5900235', '98.7056229', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX002E2XYXOQ', '', '81223937163', '358489092841546', '3.5909758', '98.704247', 'rumah warna cream', 'uploads/20190623_101316.jpg.jpg', '20190623_101316.jpg', 'open'),
(116, '2019-06-23 18:48:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20245492', NULL, NULL, 'oppon siregar', 'jalan jangka no 62', 'jalan jangka no 62', '3.593689', '98.6492656', 'ODP MDC FD 30', 'SPLITTER-02', '6', '3.5937234', '98.6491659', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5935524', '98.6494602', 'rumah pelanggan', 'uploads/20190623_114806.jpg.jpg', '20190623_114806.jpg', 'open'),
(117, '2019-06-23 19:25:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_122522.jpg.jpg', '20190623_122522.jpg', 'open'),
(120, '2019-06-23 19:46:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982898', '98.6658589', 'nihil', 'uploads/20190623_124622.jpg.jpg', '20190623_124622.jpg', 'open'),
(128, '2019-06-23 21:45:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20251877', NULL, NULL, 'kevin rusli', 'jalan sikambing no 02', 'jalan sikambing no 02', '3.5973803', '98.6655072', 'ODP MDC FAY 25', 'SPLITTER-02', '1', '3.5973907', '98.6655063', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973859', '98.6655073', 'rumah pelanggan', 'uploads/20190623_024555.jpg.jpg', '20190623_024555.jpg', 'open'),
(129, '2019-06-23 21:49:35', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218233', NULL, NULL, 'narik', 'darusalam no 51', 'darusalam no 51', '3.5815786', '98.6655032', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5815786', '98.6655032', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5815786', '98.6655032', 'rupel', 'uploads/20190623_024935.jpg.jpg', '20190623_024935.jpg', 'open'),
(131, '2019-06-24 21:35:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20295685', NULL, NULL, 'caryn', 'komplek istana prima 2 blok c no.1', 'komplek istana prima 2 blok c no.1', '3.5679017', '98.6871075', 'ODP-MDC-FAB/072', 'SPLITTER-01', '7', '3.5679381', '98.6870298', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX008BV68L3J', 'TX008BV68L3J', '82212081159', '868240030864808', '3.5678983', '98.6871086', 'istana prima blok C no.1', 'uploads/20190624_023551.jpg.jpg', '20190624_023551.jpg', 'open'),
(132, '2019-06-24 23:15:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20297217', NULL, NULL, 'LAZIM', 'MEDAN', 'JL M YAMIN 40/42', '3.5941036', '98.6803077', 'ODP MDC FDL 32', 'SPLITTER-02', '2', '3.594259', '98.6805345', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00MFMDWI95', 'TX00MFMDWI95', '82272108608', '869722032218371', '3.5942339', '98.6804465', 'RUMAH PELANGGAN', 'uploads/20190624_041522.jpg.jpg', '20190624_041522.jpg', 'open'),
(134, '2019-06-24 23:30:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20305981', NULL, NULL, 'RONI PARASIAN L', 'Jl Pabrik Tenun No 6', 'Jl Pabrik Tenun No 6', '3.5984314', '98.6632366', 'ODP-MDC-FFG/39', 'SPLITTER-01', '6', '3.598432', '98.6632171', 'NIHIL', 'NIHIL', 'None', '', 'TX00DGBA4I46', 'TX00DGBA4I46', '81274481238', '867059041727239', '3.5983799', '98.6628487', 'Rumah Pelanggan', 'uploads/20190624_043009.jpg.jpg', '20190624_043009.jpg', 'open'),
(135, '2019-06-24 23:40:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20299240', NULL, NULL, 'yayuk kustanti', 'jl flaminggo i8', 'jl flamingho i8', '3.5602046', '98.6705949', 'odp-mdc-FAc/083', 'SPLITTER-02', '3', '3.559217', '98.6708345', 'NIHIL', 'NIHIL', '', '', 'TX00A697YBV0', 'TX00A697YBV0', '81260003335', '356783100820688', '3.5660946', '98.6695589', 'cat putih', 'uploads/20190624_044052.jpg.jpg', '20190624_044052.jpg', 'open'),
(149, '2019-06-25 19:46:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20338351', NULL, NULL, 'samsuwar', 'jl. brigjend katamso gg merdeka no4', 'jl.brigjend katamso gg merdeka no 4', '3.56609', '98.6880817', 'ODP-MDC-FAB-/039', 'SPLITTER-01', '2', '3.5663266', '98.6865926', 'NIHIL', 'NIHIL', '', '', 'TX00Q1TDGOFB', 'TX00Q1TDGOFB', '81276595573', '868174031215720', '3.5684849', '98.6870772', 'gambar 1', 'uploads/20190625_124629.jpg.jpg', '20190625_124629.jpg', 'open'),
(137, '2019-06-25 17:54:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5820729', '98.6460626', 'jln sei mare depan ada poko magah', 'uploads/20190625_105425.jpg.jpg', '20190625_105425.jpg', 'open'),
(144, '2019-06-25 18:20:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H', '3.592189', '98.6818706', 'ODP FCLBU 02', 'SPLITTER-01', '1', '3.5921938', '98.681853', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5921937', '98.6818578', 'FOTO RUMAH PELANGGAN', 'uploads/20190625_112027.jpg.jpg', '20190625_112027.jpg', 'open'),
(145, '2019-06-25 18:40:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20336264', NULL, NULL, 'PAULINA', 'MEDAN', 'JL SERAM NO 52/58', '3.5927366', '98.6840213', 'ODP MDC FDH 37', 'SPLITTER-02', '16', '3.5927128', '98.684089', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926936', '98.6840783', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114034.jpg.jpg', '20190625_114034.jpg', 'open'),
(146, '2019-06-25 18:44:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20304571', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H/123', '3.5927125', '98.6840815', 'ODP FCLB 02', 'SPLITTER-02', '16', '3.5926924', '98.684092', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926738', '98.6840839', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114402.jpg.jpg', '20190625_114402.jpg', 'open'),
(147, '2019-06-25 18:47:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20333898', NULL, NULL, 'BP LINA', 'JL.BANDAR BARU NO.1', 'JL.BANDAR BARU NO.1', '3.5963636', '98.6880927', 'ODP-MDC-FFF/026', 'SPLITTER-01', '1', '3.5962231', '98.6878885', 'NIHIL', 'NIHIL', 'NORMAL', '', 'TX00G2KHZL8W', '', '82166951702', '869657040092477', '3.5961665', '98.6877396', 'RUMAH WARNA KUNING', 'uploads/20190625_114757.jpg.jpg', '20190625_114757.jpg', 'open'),
(148, '2019-06-25 19:17:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20335227', NULL, NULL, 'deyan sabar crystian', 'jalan sekip no 105 b', 'jalan sekip no 105 b', '3.6013287', '98.6619452', 'ODP MDC FGJ 05', 'SPLITTER-01', '5', '3.6013287', '98.6619452', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D58G1D8Y', '', '81274481238', '861930049684836', '3.6020138', '98.6613353', 'rumah pelanggan', 'uploads/20190625_121713.jpg.jpg', '20190625_121713.jpg', 'open'),
(150, '2019-06-25 20:12:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218244', NULL, NULL, 'yuliani br lubis', 'jl. pasundan gg dewi no. 44f', 'jl. pasundan gg dewi no. 44f', '3.5934168', '98.6599907', 'ODP-MDC-FL/40', 'SPLITTER-02', '2', '3.5935625', '98.6599019', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00RE8TS4IW', 'TX00RE8TS4IW', '81274481238', '867976035108482', '3.5935058', '98.659908', 'gg dewi', 'uploads/20190625_011244.jpg.jpg', '20190625_011244.jpg', 'open'),
(154, '2019-06-25 23:09:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '0618476969', NULL, NULL, 'as', 'dd', 'vv', '3.592834', '98.677667', 'odp', 'SPLITTER-01', '1', '3.5928366', '98.6776645', 'CHANGE DATEK', 'NIHIL', 'kend1.', '', '', '', '85262404020', '358916050544241', '', '', 'photo1', 'uploads/20190625_040913.png.png', '20190625_040913.png', 'open'),
(152, '2019-06-25 22:55:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20351176', NULL, NULL, 'pak heru', 'jl. Hm. Yamin No. 129', 'jl. Hm. Yamin No. 129', '3.5982693', '98.6946162', 'ODP-MDC-FCG/074', 'SPLITTER-02', '7', '3.5982693', '98.6946162', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00L4WS23RL', '', '82161676387', '867768038540252', '3.5982693', '98.6946162', 'cafe', 'uploads/20190625_035512.jpg.jpg', '20190625_035512.jpg', 'open'),
(153, '2019-06-25 23:02:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218249', NULL, NULL, 'syamsul hadi', '', 'sei selapian no 7a', '3.5812707', '98.6604296', 'odp-mdc-FH 045', 'SPLITTER-01', '8', '3.5814094', '98.660513', 'NIHIL', 'NIHIL', '', '', 'TX00OSCS6WUG', 'TX00OSCS6WUG', '82363707388', '863956040892647', '3.5812211', '98.6603355', 'sei selapian depan kede kopi', 'uploads/20190625_040220.jpg.jpg', '20190625_040220.jpg', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `images_copy_17juni2019`
--

CREATE TABLE `images_copy_17juni2019` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images_copy_17juni2019`
--

INSERT INTO `images_copy_17juni2019` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`) VALUES
(1, '2019-06-12 22:02:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111217001086', 'medium', 'mandala', 'komplek tata alam asri blok iv no.187 gaperta ujun', '3.592835', '98.6776662', 'odp-ctd-rah/001', 'SPLITTER-01', '1', '3.5929256', '98.6774716', 'NIHIL', 'NIHIL', 'test', '', '', '', '85262404020', '359447096192703', '3.59294', '98.6773777', 'gbr1', 'uploads/20190612_030234.jpg.jpg', '20190612_030234.jpg'),
(2, '2019-06-13 00:33:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', 'abc', 'test', 'gaharu 1', 'gaharu 1', '3.5974121', '98.6777363', 'ODP-MDC-FEJ/001', 'PANEL01', '2', '3.5974112', '98.6776879', 'NIHIL', 'CP TDK AKTIF', 'Hp salah sambung', '', '', '', '85262404020', '', '3.597516', '98.6776867', 'tampilan', 'uploads/20190612_053324.jpg.jpg', '20190612_053324.jpg'),
(3, '2019-06-13 00:57:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'Rizqi Mulyadi', 'P.brandan', 'Jln kapten muslim ujung gg mortir', '3.6132061', '98.644651', 'ODP-CTD-FL/72', 'SPLITTER-01', '6', '3.6132028', '98.6446103', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82272108608', '869722032218371', '3.6132184', '98.6446994', 'rumah pelanggan', 'uploads/20190612_055747.jpg.jpg', '20190612_055747.jpg'),
(4, '2019-06-13 00:57:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'Rizqi Mulyadi', 'P.brandan', 'Jln kapten muslim ujung gg mortir', '3.6132061', '98.644651', 'ODP-CTD-FL/72', 'SPLITTER-01', '6', '3.6132028', '98.6446103', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82272108608', '869722032218371', '3.6132126', '98.6446772', 'rumah pelanggan', 'uploads/20190612_055755.jpg.jpg', '20190612_055755.jpg'),
(5, '2019-06-13 01:09:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'Indra', 'Medan', 'Jln kapten muslim gg mortir', '3.6131487', '98.6446471', 'ODP-CTD-FL/72', 'SPLITTER-01', '5', '3.6131487', '98.6446471', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81362384969', '863661047427187', '3.6131487', '98.6446471', 'alamat instalasi', 'uploads/20190612_060948.jpg.jpg', '20190612_060948.jpg'),
(6, '2019-06-13 01:49:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '1234568', 'kiblat', 'bogor', 'cipanas', '3.5685206', '98.6152173', 'ODP-CTD-FF/011', 'SPLITTER-01', '7', '3.5685205', '98.6152168', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '864744036737961', '3.5685311', '98.6151966', 'gambar', 'uploads/20190612_064923.jpg.jpg', '20190612_064923.jpg'),
(7, '2019-06-13 02:07:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19737049', 'LISSA', 'jl diponegoro no 18', 'jl diponegoro no 18', '3.5770452', '98.705669', 'ODP-MDC-FAA/064', 'SPLITTER-01', '1', '3.5770452', '98.705669', 'Please select ...!!!', 'Please select ...!!!', '', '', '', '', '82363707388', '866071031600855', '3.5770364', '98.7056706', 'Wisma BII', 'uploads/20190612_070714.jpg.jpg', '20190612_070714.jpg'),
(8, '2019-06-13 15:45:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'hijeriah', 'mekkah', 'bahdad', '3.5685129', '98.6152266', 'ODP-MDC-FF/10', 'SPLITTER-01', '8', '3.5685494', '98.6152374', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '867059041727239', '3.5685029', '98.6152418', 'rumah', 'uploads/20190613_084507.jpg.jpg', '20190613_084507.jpg'),
(9, '2019-06-13 15:45:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'hijeriah', 'mekkah', 'bahdad', '3.5685129', '98.6152266', 'ODP-MDC-FF/10', 'SPLITTER-01', '8', '3.5685494', '98.6152374', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '867059041727239', '3.5685029', '98.6152418', 'rumah', 'uploads/20190613_084510.jpg.jpg', '20190613_084510.jpg'),
(10, '2019-06-13 15:56:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'indra', 'medan', 'jl.mortir kapten muslim', '3.6131487', '98.6446471', 'ODP CTD FL 72', 'SPLITTER-01', '4', '3.6131487', '98.6446471', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '85262404020', '863661047427187', '3.6131487', '98.6446471', 'rumah dalam pelanggan', 'uploads/20190613_085633.jpg.jpg', '20190613_085633.jpg'),
(11, '2019-06-13 16:45:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '1867', 'linda wati', 'jalan di ponegoro dalam', 'jalan di ponegoro dalam', '3.5827817', '98.6723873', 'ODP-MDC-FAA/005', 'SPLITTER-01', '3', '3.583267', '98.6726908', 'NIHIL', 'NIHIL', '', '', '', '', '85262404020', '868174031215720', '3.5827327', '98.6724142', 'gambar 1', 'uploads/20190613_094556.jpg.jpg', '20190613_094556.jpg'),
(12, '2019-06-13 16:56:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19771867', 'linda wati', 'jalan diponegoro dalam no 20f', 'jalan diponegoro dalam no 20f', '3.582442', '98.6723936', 'ODP-MDC-FAA/005', 'SPLITTER-01', '3', '3.5827307', '98.6726695', 'NIHIL', 'NIHIL', '', '', '', '', '85262404020', '868174031215720', '3.5827486', '98.6720931', 'gambar 1', 'uploads/20190613_095631.jpg.jpg', '20190613_095631.jpg'),
(13, '2019-06-13 16:56:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19771867', 'linda wati', 'jalan diponegoro dalam no 20f', 'jalan diponegoro dalam no 20f', '3.582442', '98.6723936', 'ODP-MDC-FAA/005', 'SPLITTER-01', '3', '3.5827307', '98.6726695', 'NIHIL', 'NIHIL', '', '', '', '', '85262404020', '868174031215720', '3.5827542', '98.6721019', 'gambar 1', 'uploads/20190613_095632.jpg.jpg', '20190613_095632.jpg'),
(14, '2019-06-13 18:58:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216693', 'NIKO', '', 'jln .iskandar muda no 200b', '3.5804185', '98.6609024', 'odp-mdc-FG,063', 'SPLITTER-02', '2', '3.58086', '98.6610627', 'NIHIL', 'NIHIL', '', '', '', '', '82363707388', '351928085446000', '3.5808969', '98.6610759', 'warung bakmi medan baru', 'uploads/20190613_115807.jpg.jpg', '20190613_115807.jpg'),
(15, '2019-06-13 20:24:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111218120746', 'WULAN ASTUTI', 'sei sigingging no 8', 'setia budi', '3.5684883', '98.6152165', 'ODP-PDB-FBB/005', 'SPLITTER-01', '5', '3.5685356', '98.6152166', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '85367502021', '868561037810951', '3.5685234', '98.615217', 'Indekos No 8', 'uploads/20190613_012427.jpg.jpg', '20190613_012427.jpg'),
(16, '2019-06-13 20:24:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111218120746', 'WULAN ASTUTI', 'sei sigingging no 8', 'setia budi', '3.5684883', '98.6152165', 'ODP-PDB-FBB/005', 'SPLITTER-01', '5', '3.5685356', '98.6152166', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '85367502021', '868561037810951', '3.5685234', '98.615217', 'Indekos No 8', 'uploads/20190613_012430.jpg.jpg', '20190613_012430.jpg'),
(17, '2019-06-13 21:30:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19788235', 'winani', 'jl. pekong no.97', 'jl. pekong no.97', '3.5709506', '98.6705445', 'ODP-MDC-FAC/129', 'PANEL01', '5', '3.5709506', '98.6705445', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81265550635', '', '3.5637495', '98.6708883', 'RUMAH BERTINGKAT WARNA HIJAU', 'uploads/20190613_023029.jpg.jpg', '20190613_023029.jpg'),
(18, '2019-06-13 21:30:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19788235', 'winani', 'jl. pekong no.97', 'jl. pekong no.97', '3.5709506', '98.6705445', 'ODP-MDC-FAC/129', 'PANEL01', '5', '3.5709506', '98.6705445', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81265550635', '', '3.5637495', '98.6708883', 'RUMAH BERTINGKAT WARNA HIJAU', 'uploads/20190613_023036.jpg.jpg', '20190613_023036.jpg'),
(19, '2019-06-13 22:09:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19787314', 'muhammad yasser', 'jl.s parman gg.pasir no.19', 'jl.s parman gg.pasir no.19', '3.578928', '98.6685205', 'ODP-MDC-FG/003', 'SPLITTER-01', '3', '3.5785561', '98.6676874', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82212081159', '868240030864808', '3.5785803', '98.6676685', 'masuk gg paling ujung dekat sungai', 'uploads/20190613_030924.jpg.jpg', '20190613_030924.jpg'),
(20, '2019-06-13 22:09:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19787314', 'muhammad yasser', 'jl.s parman gg.pasir no.19', 'jl.s parman gg.pasir no.19', '3.578928', '98.6685205', 'ODP-MDC-FG/003', 'SPLITTER-01', '3', '3.5785561', '98.6676874', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82212081159', '868240030864808', '3.5785799', '98.6676756', 'masuk gg paling ujung dekat sungai', 'uploads/20190613_030928.jpg.jpg', '20190613_030928.jpg'),
(21, '2019-06-13 22:11:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217867', 'marusaha sanggul', '', 'jln sei seguti no 18', '3.5879517', '98.6559717', '0dp-mdc-FBF.056', 'SPLITTER-02', '4', '3.5875661', '98.6559246', 'NIHIL', 'NIHIL', '', '', '', '', '82363707388', '351928085446000', '3.587576', '98.6559318', 'sebelah begel.rumah ya', 'uploads/20190613_031104.jpg.jpg', '20190613_031104.jpg'),
(22, '2019-06-14 16:54:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19817417', 'SILA', '-', 'JL.GURILLA GG.DULLAH NO.14', '3.6002254', '98.6999624', 'ODP-MDC-FCG/010', 'SPLITTER-01', '3', '3.6002161', '98.6999462', 'NIHIL', 'NIHIL', '-', '', '', '', '82299217915', '863387048374133', '3.6001949', '98.7000135', '-', 'uploads/20190614_095446.jpg.jpg', '20190614_095446.jpg'),
(23, '2019-06-14 16:54:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19817417', 'SILA', '-', 'JL.GURILLA GG.DULLAH NO.14', '3.6002254', '98.6999624', 'ODP-MDC-FCG/010', 'SPLITTER-01', '3', '3.6002161', '98.6999462', 'NIHIL', 'NIHIL', '-', '', '', '', '82299217915', '863387048374133', '3.600195', '98.7000132', '-', 'uploads/20190614_095453.jpg.jpg', '20190614_095453.jpg'),
(24, '2019-06-14 17:15:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19793830', 'Selamat santosa', 'jl.ternak no.62', 'jl.ternak no.62', '3.5626615', '98.6664449', 'ODP-MDC-FAC/128', 'Please select ...!!!', 'Please select ...!!!', '3.5639121', '98.6660557', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82212081159', '868240030864808', '3.5626609', '98.6662537', 'warna abu abu pagar hitam no.62', 'uploads/20190614_101502.jpg.jpg', '20190614_101502.jpg'),
(25, '2019-06-14 17:19:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19821286', 'haogonasoki telaumbanua', 'jl pantai burung 3 no 39A', 'pantai burung 3 no 39 A', '3.5781174', '98.6830096', 'odp-mdc-fal/022', 'SPLITTER-02', '15', '3.5782024', '98.6833054', 'NIHIL', 'NIHIL', '', '', '', '', '81260003335', '866949030381413', '3.5782024', '98.6833054', 'warna hijau toska no 39A', 'uploads/20190614_101907.jpg.jpg', '20190614_101907.jpg'),
(26, '2019-06-14 17:34:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19793830', 'Selamat santosa', 'jl.ternak no.62', 'jl.ternak no.62', '3.5626615', '98.6664449', 'ODP-MDC-FAC/128', 'Please select ...!!!', 'Please select ...!!!', '3.5639121', '98.6660557', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82212081159', '868240030864808', '3.5626609', '98.6662537', 'warna abu abu pagar hitam no.62', 'uploads/20190614_103454.jpg.jpg', '20190614_103454.jpg'),
(27, '2019-06-14 17:48:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19782913', 'SURIPIN', 'MEDAN', 'Jl RIAU NO.1C', '3.5897842', '98.6822621', 'ODP-MDC-FCS/048', 'SPLITTER-01', '5', '3.5898232', '98.6823085', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '82272108608', '869722032218371', '3.5896509', '98.6822655', 'FOTO rumah', 'uploads/20190614_104844.jpg.jpg', '20190614_104844.jpg'),
(28, '2019-06-14 21:46:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19828834', 'NG KAH SIONG', 'JL.PUSAT PASAR NO.180 MEDAN KOTA', 'JL.SAMPALI NO,39/49', '3.5888758', '98.6981562', 'ODP-MDC-FCE/062', 'SPLITTER-01', '2', '3.5896767', '98.6978814', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.5891133', '98.6979733', 'samping sma negri 8 /jabutta guest house/gym medan', 'uploads/20190614_024601.jpg.jpg', '20190614_024601.jpg'),
(29, '2019-06-14 21:46:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19828834', 'NG KAH SIONG', 'JL.PUSAT PASAR NO.180 MEDAN KOTA', 'JL.SAMPALI NO,39/49', '3.5888758', '98.6981562', 'ODP-MDC-FCE/062', 'SPLITTER-01', '2', '3.5896767', '98.6978814', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.5891119', '98.6979463', 'samping sma negri 8 /jabutta guest house/gym medan', 'uploads/20190614_024609.jpg.jpg', '20190614_024609.jpg'),
(30, '2019-06-14 21:54:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19835224', 'denis setiawan nst', 'jl katamso Gg bidan no 21', 'katamso Gg bidan no 21', '3.5623318', '98.6884256', 'odp-mdc-Fab/043', 'SPLITTER-01', '3', '3.5623318', '98.6884256', 'NIHIL', 'NIHIL', '', '', '', '', '81260003335', '866949030381413', '3.5638996', '98.6880817', 'warna hijau toska', 'uploads/20190614_025424.jpg.jpg', '20190614_025424.jpg'),
(31, '2019-06-14 22:41:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19834617', 'sherly', 'Tampol 4 no.44', 'Tampol 4 no.44', '3.5700356', '98.6807427', 'ODP-FGE-02', 'SPLITTER-02', '1', '3.5700748', '98.6793943', 'ODP FULL', 'CP SALAH SAMBUNG', 'NIHIL', '', '', '', '82212081159', '868240030864808', '3.5701517', '98.6794339', 'nomor 44 dinding keramik', 'uploads/20190614_034156.jpg.jpg', '20190614_034156.jpg'),
(32, '2019-06-14 22:50:45', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111219106922', 'sri wahyuni', '', 'sei mampu baru no 99 s', '3.584006', '98.6547168', '0dp-MDC-FBM 16', 'SPLITTER-01', '8', '3.5839503', '98.6546533', 'Please select ...!!!', 'Please select ...!!!', '', '', '', '', '82363707388', '351928085446000', '3.5838592', '98.6546565', 'rumah pelanggan dibelakang bengkel budi sevice', 'uploads/20190614_035045.jpg.jpg', '20190614_035045.jpg'),
(33, '2019-06-15 00:10:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19841688', 'DHARMA NANDA', 'Jl.Mongonsidi No.30', 'Jl.Mongonsidi No.30', '3.5720831', '98.6641375', 'ODP-MDC-FGC/057', 'PANEL01', '5', '3.5720831', '98.6641375', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81265550635', '', '3.5720444', '98.6641581', 'di belakang geprek bensu nomor 30', 'uploads/20190614_051053.jpg.jpg', '20190614_051053.jpg'),
(34, '2019-06-15 00:10:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19841688', 'DHARMA NANDA', 'Jl.Mongonsidi No.30', 'Jl.Mongonsidi No.30', '3.5720831', '98.6641375', 'ODP-MDC-FGC/057', 'PANEL01', '5', '3.5720831', '98.6641375', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81265550635', '', '3.57204', '98.6641603', 'di belakang geprek bensu nomor 30', 'uploads/20190614_051054.jpg.jpg', '20190614_051054.jpg'),
(35, '2019-06-15 00:58:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', 'Jodi Simanjuntak', 'pakam', 'medan', '3.5685408', '98.6152221', 'odp pdb fg 008', 'SPLITTER-01', '8', '3.5685415', '98.615224', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '81274481238', '352697103852932', '3.5685094', '98.6152539', 'roset', 'uploads/20190614_055802.jpg.jpg', '20190614_055802.jpg'),
(36, '2019-06-15 01:37:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111218120518', 'RUSMALA DEWY', 'siantar', 'medan', '3.5685126', '98.6152261', 'odp PDB fs 09', 'SPLITTER-01', '4', '3.5685127', '98.615226', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '867976033108823', '3.5684339', '98.6152926', 'hotel', 'uploads/20190614_063722.png.png', '20190614_063722.png'),
(37, '2019-06-15 19:18:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19842241', 'darsonibu dea', 'jl imam bonjol 12C', 'jl imam bonjol 12C', '3.5832353', '98.6751014', 'odp-mdc-FAH/070', 'SPLITTER-01', '2', '3.5844547', '98.6744857', 'NIHIL', 'NIHIL', '', '', '', '', '81260003335', '866949030381413', '3.5845035', '98.6744538', 'cat warna putih pagar hitam', 'uploads/20190615_121846.jpg.jpg', '20190615_121846.jpg'),
(38, '2019-06-15 22:05:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19871016', 'RUSTAN', 'JL.KABANJAHE NO.140 A KOTA MEDAN', 'JL.BANDAR BARU NO. 2A', '3.5963763', '98.6885841', 'ODP-MDC-FFF/042', 'SPLITTER-01', '6', '3.5964', '98.6887892', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.5964', '98.6887892', 'SAMPING SEKOLAH WINFIL DEPAN WARUNG PAGAR WARNA ABU ABU', 'uploads/20190615_030554.jpg.jpg', '20190615_030554.jpg'),
(39, '2019-06-15 22:05:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19871016', 'RUSTAN', 'JL.KABANJAHE NO.140 A KOTA MEDAN', 'JL.BANDAR BARU NO. 2A', '3.5963763', '98.6885841', 'ODP-MDC-FFF/042', 'SPLITTER-01', '6', '3.5964', '98.6887892', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.5963805', '98.6887808', 'SAMPING SEKOLAH WINFIL DEPAN WARUNG PAGAR WARNA ABU ABU', 'uploads/20190615_030556.jpg.jpg', '20190615_030556.jpg'),
(40, '2019-06-15 22:13:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111219106972', 'sri hartuti', '', 'jln .jamal ujung no 59', '3.5855312', '98.6542115', '0dp-mdc-FBF 084', 'SPLITTER-01', '7', '3.5862223', '98.6540211', 'Please select ...!!!', 'CP RNA', '', '', '', '', '82363707388', '351928085446000', '3.5862346', '98.6539677', 'rumahnya mentok paling ujung', 'uploads/20190615_031301.jpg.jpg', '20190615_031301.jpg'),
(41, '2019-06-15 22:24:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111219106968', 'Rafida mustika', 'gg.bersatu', 'gg.bersatu', '3.5923031', '98.6488693', 'ODP MDC FG 50', 'SPLITTER-01', '2', '3.5923122', '98.6489009', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '81274481238', '867976033108823', '3.5923112', '98.648882', 'nihil', 'uploads/20190615_032412.jpg.jpg', '20190615_032412.jpg'),
(42, '2019-06-15 22:55:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111219106973', 'DINA MARYANI', 'Jl Buku Gg Gereja No 1A', 'Jl Pabrik Tenun No 99', '3.5987201', '98.655578', 'ODP-MDC-FF/118', 'SPLITTER-01', '2', '3.5987188', '98.6555795', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '867059041727239', '3.5987249', '98.655582', 'Lokasi Instalasi', 'uploads/20190615_035529.jpg.jpg', '20190615_035529.jpg'),
(43, '2019-06-15 22:55:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111219106973', 'DINA MARYANI', 'Jl Buku Gg Gereja No 1A', 'Jl Pabrik Tenun No 99', '3.5987201', '98.655578', 'ODP-MDC-FF/118', 'SPLITTER-01', '2', '3.5987188', '98.6555795', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '867059041727239', '3.5987234', '98.6555821', 'Lokasi Instalasi', 'uploads/20190615_035534.jpg.jpg', '20190615_035534.jpg'),
(44, '2019-06-15 23:42:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19871780', 'STEPHEN', 'MEDAN', 'JL BAWEAN 13C', '3.587097', '98.6837743', 'ODP-MDC-FCR/09', 'SPLITTER-01', '5', '3.587097', '98.6837743', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81362384969', '863661047427187', '3.5870889', '98.6838033', 'FOTO RUMAH', 'uploads/20190615_044213.jpg.jpg', '20190615_044213.jpg'),
(45, '2019-06-16 01:38:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19873284', 'HALOMOAN SIMBOLON', 'JL.DOROWATI GG.WONGSO', 'JL.DOROWATI GG WONGSO NO.14/16', '3.6030714', '98.6865549', 'ODP-MDC-FEH/007', 'SPLITTER-01', '5', '3.6034417', '98.6873283', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.6040631', '98.6876278', 'SAMPING FUTSAL ..PAGAR WARNA COKLAT  PASS DEPAN ODP MDC FEH 007', 'uploads/20190615_063809.jpg.jpg', '20190615_063809.jpg'),
(46, '2019-06-16 20:46:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19873092', 'ANWAR EFENDI', 'jln.rotan baru no.b57', 'jln.rotan baru no.b57', '3.5877933', '98.6657897', 'ODP-MDC-FQ/024', 'SPLITTER-01', '1', '3.5879951', '98.6657758', 'NIHIL', 'NIHIL', '', '', '', '', '85262404020', '868174031215720', '3.5870188', '98.6658549', 'gambar 1', 'uploads/20190616_014613.jpg.jpg', '20190616_014613.jpg'),
(47, '2019-06-16 21:39:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19910473', 'SRI WAHYUNI', 'JL.GAHARU GG.AMAT UJUNG MEDAN', 'JL.GAHARU GG.SEKOLAH NO.13', '3.6034903', '98.6780759', 'ODP-MDC-FEJ/048', 'SPLITTER-01', '6', '3.6033953', '98.6781642', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.6034013', '98.6781531', 'DEPAN ODP MDC FEH 048 HALAMAN RUMAH LEBAR YG ADA POHON MANGGA DAN JAMBU DEPAN RUMAH NO.16', 'uploads/20190616_023912.jpg.jpg', '20190616_023912.jpg'),
(48, '2019-06-16 22:26:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19912905', 'MUHAMMAD AIDIL ADHA', 'JL PAHLAWAN GG SAKTI NO 37', 'JL PAHLAWAN GG SAKTI NO37', '3.5942179', '98.7025828', 'ODP-MDC-FCB/041', 'SPLITTER-01', 'Please select ...!!!', '3.594362', '98.7031035', 'NIHIL', 'NIHIL', 'TIDAK ADA', '', '', '', '81263133030', '866988030818875', '3.5943236', '98.7030911', 'posisi rumah dibelakang mesjid AL-AMININ', 'uploads/20190616_032620.jpg.jpg', '20190616_032620.jpg'),
(49, '2019-06-16 22:42:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19914046', 'Dewden Kumar', 'Jl. Airlangga Ujung No. 13', 'Jl. Airlangga Ujung No. 13', '3.5875604', '98.6684816', 'ODP-MDC-FAK/037', 'SPLITTER-01', '2', '3.5866211', '98.6684816', 'NIHIL', 'NIHIL', '', '', '', '', '85361752800', '867560037645921', '3.5866211', '98.6684816', 'gambar 1', 'uploads/20190616_034217.jpg.jpg', '20190616_034217.jpg'),
(50, '2019-06-17 00:48:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19916216', 'ANDI', 'TANJUNG BALAI JL.YOS AUDARAO TELUK NIBUNG SEI MERB', 'JL.M.YAKUB NO.153 B /8A', '3.5995346', '98.7002742', 'ODP-MDC-FCG/007', 'SPLITTER-01', '4', '3.5998679', '98.7004127', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.5996167', '98.7003248', 'SAMPING GG.KARTAWI DEPAN GG.MANGGIS PAGAR WARNA HIJAM RUKO GANDENG', 'uploads/20190616_054824.jpg.jpg', '20190616_054824.jpg'),
(51, '2019-06-17 00:48:26', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19916216', 'ANDI', 'TANJUNG BALAI JL.YOS AUDARAO TELUK NIBUNG SEI MERB', 'JL.M.YAKUB NO.153 B /8A', '3.5995346', '98.7002742', 'ODP-MDC-FCG/007', 'SPLITTER-01', '4', '3.5998679', '98.7004127', 'NIHIL', 'NIHIL', '', '', '', '', '85275120339', '351928082511947', '3.599531', '98.700264', 'SAMPING GG.KARTAWI DEPAN GG.MANGGIS PAGAR WARNA HIJAM RUKO GANDENG', 'uploads/20190616_054826.jpg.jpg', '20190616_054826.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images_copy_20190625`
--

CREATE TABLE `images_copy_20190625` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images_copy_20190625`
--

INSERT INTO `images_copy_20190625` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `status_valdat`) VALUES
(1, '2019-06-17 18:05:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19945450', NULL, NULL, 'AURELIA SAPUTRI', 'AURELIA SAPUTRI', 'The Palace Residence Blok A No 55', '3.568398', '98.6757021', 'ODP-MDC-FJ/015', 'PANEL01', '1', '3.568398', '98.6757021', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0091EHKOVO', '-', '81265550635', '', '3.568398', '98.6757021', 'rumah besar perumahan the place no.55', 'uploads/20190617_110536.jpg.jpg', '20190617_110536.jpg', 'open'),
(27, '2019-06-19 00:27:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013838', NULL, NULL, 'mempa simatupang', 'jln ayahanda no 6', 'jln ayahanda no 6', '3.5910991', '98.6533031', 'ODP-MDC-FD/014', 'SPLITTER-01', '3', '3.5911287', '98.6531793', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00YVO155MO', 'TX00YVO155MO', '82284515244', '861930049684836', '3.591093', '98.6532635', 'baik', 'uploads/20190618_052737.jpg.jpg', '20190618_052737.jpg', 'open'),
(3, '2019-06-17 18:20:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19946958', NULL, NULL, 'irvan syahputra', 'jl sei wampu baru no 18', 'jl sei eampu baru no 18', '3.5837887', '98.6550306', 'odp-mdc-fbm/052', 'SPLITTER-02', '14', '3.5837763', '98.6551707', 'NIHIL', 'NIHIL', '', '', 'TX00LJGGRTNI', '-', '81260003335', '866949030381413', '3.5838474', '98.6548039', 'warna kuning , pagar hitam', 'uploads/20190617_112016.jpg.jpg', '20190617_112016.jpg', 'open'),
(16, '2019-06-18 23:00:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20013441', NULL, NULL, 'YAZIDA ANGELINA T PARINDURI', 'JL.SAMPURNO NO.10', 'JL.SAMPURNO NO.10', '3.5998503', '98.6916677', 'ODP-MDC-FCJ/019', 'SPLITTER-01', '3', NULL, NULL, 'NIHIL', NULL, 'NIHIL', '', NULL, NULL, '82299217915', NULL, '3.6000268', '98.6915446', 'LENGKAP', 'uploads/20190618_040021.jpg.jpg', '20190618_040021.jpg', 'open'),
(7, '2019-06-17 18:44:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19941709', NULL, NULL, 'mariana', 'jl.taruma gg siti no 47', 'jl.taruma gg siti no 47', '3.5850281', '98.66862', 'ODP-MDC-FAA/026', 'SPLITTER-01', '7', '3.5850245', '98.6684142', 'NIHIL', 'NIHIL', '', '', 'TX00Q8XT3XVG', '-', '81276595573', '868174031215720', '3.5850362', '98.6686183', 'GAMBAR 1', 'uploads/20190617_114414.jpg.jpg', '20190617_114414.jpg', 'open'),
(50, '2019-06-19 23:53:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922493', '98.70307', 'warna kuning', 'uploads/20190619_045312.jpg.jpg', '20190619_045312.jpg', 'open'),
(29, '2019-06-19 00:40:01', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20014889', NULL, NULL, 'CESELINA', 'jln.Tampol 4 no.32A', 'jln.tampol 4 no.32A', '3.570062', '98.6800935', 'ODP-MDC-FGE/002', 'SPLITTER-01', '5', '3.570062', '98.6800935', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81375259991', '863308044028812', '3.5700967', '98.6801097', 'taman polonia 5 no.23A', 'uploads/20190618_054001.jpg.jpg', '20190618_054001.jpg', 'open'),
(32, '2019-06-19 16:56:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216672', NULL, NULL, 'ERNI OKTAVIA', 'Jl Punak Ujung No 2B', 'Jl Punak Ujung Np 2B', '3.5962339', '98.6630393', 'ODP-MDC-FFG/041', 'SPLITTER-01', '3', '3.5962857', '98.6630573', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00U9UDFHDW', 'TX00U9UDFHDW', '81274481238', '867059041727239', '3.5962317', '98.6630349', 'Foto Rumah Pelanggan', 'uploads/20190619_095613.jpg.jpg', '20190619_095613.jpg', 'open'),
(51, '2019-06-19 23:53:21', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5922492', '98.7030701', 'warna kuning', 'uploads/20190619_045321.jpg.jpg', '20190619_045321.jpg', 'open'),
(34, '2019-06-19 17:34:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20042322', NULL, NULL, 'Putri Alaina', 'bahagia gg.sederhana', 'bahagia gg.sederhana', '3.5826704', '98.6816282', 'ODP-MDC-FAK/044', 'SPLITTER-01', '1', '3.5829043', '98.6814711', 'NIHIL', 'NIHIL', 'Nihil', '', '', '', '82212081159', '868240030864808', '3.5854956', '98.6801067', 'rumah warna orange', 'uploads/20190619_103448.jpg.jpg', '20190619_103448.jpg', 'open'),
(49, '2019-06-19 23:52:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP MDC FCA 021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.592245', '98.7030614', 'warna kuning', 'uploads/20190619_045248.jpg.jpg', '20190619_045248.jpg', 'open'),
(40, '2019-06-19 18:57:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '19995273', NULL, NULL, 'jonson lim', 'jalan tumapel 2a', 'jalan tumapel 2a', '3.5861981', '98.6719881', 'ODP-MDC-FAA/019', 'SPLITTER-02', '6', '3.5861871', '98.6720065', 'NIHIL', 'NIHIL', '', '', 'TX00FC4HEOUN', 'TX00FC4HEOUN', '81276595573', '868174031215720', '3.5862389', '98.6719974', 'Gambar 1', 'uploads/20190619_115711.jpg.jpg', '20190619_115711.jpg', 'open'),
(42, '2019-06-19 20:10:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20054455', NULL, NULL, 'Santi Malahayati', 'jln b Katamso no 499', 'jln b Katamso no 499', '3.5639029', '98.6877378', 'ODP-MDC-FFD/048', 'SPLITTER-01', '5', '3.5639029', '98.6877378', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00VAYBJCL5', 'TX00VAYBJCL5', '81265550635', '866196033440859', '3.5651447', '98.6887695', 'dibelakang toko batu nisan katamso pagar warna hitam', 'uploads/20190619_011032.jpg.jpg', '20190619_011032.jpg', 'open'),
(43, '2019-06-19 20:40:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218132', NULL, NULL, 'supiatman', 'jl.pasundang gg. sedulur no.46', 'jl. pasundan gg sedulur no. 46', '3.5941305', '98.6584227', 'ODP-MDC-FL/055', 'SPLITTER-01', '7', '3.5941305', '98.6584227', 'NIHIL', 'NIHIL', 'kosong', '', 'TX006G76AWGP', 'TX006G76AWGP', '81274481238', '869382033734098', '3.5941346', '98.6584644', 'rumah pelanggan', 'uploads/20190619_014014.jpg.jpg', '20190619_014014.jpg', 'open'),
(44, '2019-06-19 20:47:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218131', NULL, NULL, 'Tika amelia', 'jl. ayahanda no. 14B', 'jl. ayahanda no. 14B', '3.5920115', '98.6532944', 'ODP-MDC-FD/085', 'SPLITTER-01', '2', '3.5918423', '98.6538654', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00YNRRNBQ4', 'TX00YNRRNBQ4', '81274481238', '867976035108482', '3.5918419', '98.6538676', 'sebelah jl. panci', 'uploads/20190619_014756.jpg.jpg', '20190619_014756.jpg', 'open'),
(45, '2019-06-19 20:59:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20058595', NULL, NULL, 'RESNA ULI BR SARAGIH', 'MEDAN', 'JLN SINDORO NO.8', '3.5876964', '98.68705', 'ODP MDC FCY 48', 'SPLITTER-01', '2', '3.5868185', '98.6877504', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00F80TGS4K', 'TX00F80TGS4K', '82272108608', '869722032218371', '3.5867435', '98.6875398', 'RUMAH PELANGGAN', 'uploads/20190619_015925.jpg.jpg', '20190619_015925.jpg', 'open'),
(46, '2019-06-19 21:46:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20061750', NULL, NULL, 'DAYAT', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', 'JALAN IMAM BONJOL BANK SUMUT DIVISI PERENCANAAN', '3.5833453', '98.6746695', 'ODP-MDC-FAH/055', 'SPLITTER-02', '7', '3.58345', '98.6746832', 'NIHIL', 'NIHIL', '', '', 'TX008QI4113U', 'TX00CUT6EI4J', '81276595573', '868174031215720', '3.5831523', '98.6748766', 'gambar 1', 'uploads/20190619_024614.jpg.jpg', '20190619_024614.jpg', 'open'),
(52, '2019-06-19 23:56:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20044659', NULL, NULL, 'bastian', 'jl badik no 14', 'jl badik no 14', '3.5922458', '98.7026552', 'ODP-MDC-FCA/021', 'SPLITTER-01', '2', '3.5922365', '98.7029949', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX004H1BHID2', 'TX004H1BHID2', '82166951702', '869657040092477', '3.5961875', '98.7005842', 'warna kuning', 'uploads/20190619_045658.jpg.jpg', '20190619_045658.jpg', 'open'),
(53, '2019-06-20 15:23:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217923', NULL, NULL, '', 'yusniwarti', 'jln.bantam no. 10', '3.6537394', '98.6848127', 'odp-mdc-FGC 040', 'SPLITTER-02', '2', '3.5807354', '98.664378', 'NIHIL', 'NIHIL', '', '', 'TX00R904OJ5D', 'TX00R904OJ5D', '82363707388', '351928085446000', '3.5807278', '98.6643819', 'dekat sekolah cahaya, depan rumah ada pohon mangga', 'uploads/20190620_082325.jpg.jpg', '20190620_082325.jpg', 'open'),
(54, '2019-06-20 16:43:19', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095259', NULL, NULL, 'ZULFAN EFENDY', 'Jl. mesjid raya ( warkop babe asiffa)', 'Jl. mesjid raya ( warkop babe asiffa)', '3.5756354', '98.6855985', 'ODP-MDC-FAM/043', 'SPLITTER-01', '3', '3.5756354', '98.6855985', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00QOHM8WJ4', 'TX00QOHM8WJ4', '81265550635', '866196033440859', '3.5756493', '98.685604', 'di dakat simpang katamso samping mesjid raya warkop babe asiffa', 'uploads/20190620_094319.jpg.jpg', '20190620_094319.jpg', 'open'),
(94, '2019-06-21 22:01:58', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218212', NULL, NULL, 'homeschooling primagama', '', 'jln sei bahorok no 36,/11', '3.5782389', '98.6532113', 'odp-mdc-FA024', 'SPLITTER-02', '8', '3.5781534', '98.6532621', 'NIHIL', 'NIHIL', '', '', 'TX0001KTCV2G', 'TX0001KTCV2G', '82363707388', '351928085446000', '3.5781268', '98.6532923', 'depan kantor bawaslu', 'uploads/20190621_030158.jpg.jpg', '20190621_030158.jpg', 'open'),
(93, '2019-06-21 22:01:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '2p', NULL, NULL, 'jona chandra', 'jln.pahlawan gg.lumumba no.41', 'jln.pahlawan gg.lumumba no.41', '3.5938199', '98.7014952', 'ODP-MDC-FCB/035', 'SPLITTER-01', '4', '3.5938199', '98.7014952', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX009HU1PKM3', '', '81223937163', '358489092841546', '3.5938199', '98.7014952', 'warna kuning', 'uploads/20190621_030137.jpg.jpg', '20190621_030137.jpg', 'open'),
(57, '2019-06-20 16:58:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696206', '98.6844628', 'warna hijau pandan', 'uploads/20190620_095856.jpg.jpg', '20190620_095856.jpg', 'open'),
(58, '2019-06-20 16:59:00', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20095509', NULL, NULL, 'jabar maulana', 'katamso Gg perwira 22', 'katamso Gg perwira 22', '3.5696773', '98.6842122', 'odp-mdc-FAB/018', 'SPLITTER-01', '6', '3.5695996', '98.6844703', 'NIHIL', 'NIHIL', '', '', 'TX00MZQFPZ2Q', 'TX00MZQFPZ2Q', '81260003335', '356783100820688', '3.5696324', '98.684457', 'warna hijau pandan', 'uploads/20190620_095900.jpg.jpg', '20190620_095900.jpg', 'open'),
(59, '2019-06-20 17:43:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209209021', NULL, NULL, 'andry', '', 'jl. sultan hasanuddin no. 12', '3.5830059', '98.6641867', 'odp-mdc-FGC 079', 'SPLITTER-01', '4', '3.5830727', '98.66359', 'NIHIL', 'NIHIL', '', '', 'TX005082IGEO', 'TX005082IGEO', '82363707388', '351928085446000', '3.5830787', '98.6635712', 'jln hasanuddin sebelah rumah kosong', 'uploads/20190620_104346.jpg.jpg', '20190620_104346.jpg', 'open'),
(60, '2019-06-20 18:06:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20096885', NULL, NULL, 'citra dewi', 'jalan putri hijau no 37', 'jalan putri hijau no 37', '3.5977817', '98.675725', 'ODP-MDC-FAW-34', 'SPLITTER-02', '6', '3.5977798', '98.6757207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX001IVD7BXM', 'TX001IVD7BXM', '81274481238', '861930049684836', '3.5976711', '98.6755613', 'rumah pelanggan', 'uploads/20190620_110647.jpg.jpg', '20190620_110647.jpg', 'open'),
(61, '2019-06-20 18:06:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.6038094', '98.6960439', 'LENGKAP', 'uploads/20190620_110650.jpg.jpg', '20190620_110650.jpg', 'open'),
(62, '2019-06-20 18:07:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20098489', NULL, NULL, 'Reny Evika Nasution', 'Jl.Perjuangan no.25', 'Jl.Perjuangan no.25', '3.6038538', '98.6962126', 'ODP-MDC-FEE/017', 'SPLITTER-01', '3', '3.6037777', '98.6960545', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00XX9T3CDU', 'TX00D5KI7WJD', '82299217915', '863387048374133', '3.603823', '98.6960423', 'LENGKAP', 'uploads/20190620_110707.jpg.jpg', '20190620_110707.jpg', 'open'),
(63, '2019-06-20 18:37:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843745', '98.6676948', '177', 'uploads/20190620_113743.jpg.jpg', '20190620_113743.jpg', 'open'),
(64, '2019-06-20 18:37:48', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217922', NULL, NULL, 'taufiq', '', 'Jl. K.H Zainul Arifin No.117', '3.5841058', '98.6676084', 'ODP-MDC-FGC/073', 'SPLITTER-01', '8', '3.5839689', '98.6670196', 'Please select ...!!!', 'Please select ...!!!', '', '', 'TX00CW9MIJ6G', 'TX00CW9MIJ6G', '82363707388', '868939038820387', '3.5843484', '98.667687', '177', 'uploads/20190620_113748.jpg.jpg', '20190620_113748.jpg', 'open'),
(65, '2019-06-20 18:54:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20097981', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5843542', '98.6795537', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5843933', '98.6795657', 'NIHIL', 'NIHIL', 'nihil', '', 'TX00XSNPLR0L', '', '82274174147', '869723035366639', '3.584376', '98.6795805', 'foto rumah pelanggan', 'uploads/20190620_115422.jpg.jpg', '20190620_115422.jpg', 'open'),
(66, '2019-06-20 19:27:47', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217949', NULL, NULL, 'RUSLIANTO', 'jl. panci no. 23', 'jl. panci no. 23', '3.5916357', '98.6565553', 'ODP-MDC-FD/82', 'SPLITTER-01', '5', '3.5916784', '98.6572593', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00E4FXSZJL', 'TX00E4FXSZJL', '81274481238', '867976035108482', '3.5915942', '98.6565617', 'jl. panci', 'uploads/20190620_122747.jpg.jpg', '20190620_122747.jpg', 'open'),
(67, '2019-06-20 20:32:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030308', '98.6859952', 'LENGKAP', 'uploads/20190620_013253.jpg.jpg', '20190620_013253.jpg', 'open'),
(68, '2019-06-20 20:33:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20108354', NULL, NULL, 'EVENDI JANUAR SALOMOWA MARUWU', 'Jl.Gereja no.13B', 'Jl.Gereja ni.13B', '3.6031314', '98.6860208', 'ODP-MDC-FCM/038', 'SPLITTER-02', '4', '3.6029386', '98.6860262', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00P6C3W8GE', 'TX005ZZL3BSS', '82299217915', '863387048374133', '3.6030309', '98.6859952', 'LENGKAP', 'uploads/20190620_013304.jpg.jpg', '20190620_013304.jpg', 'open'),
(69, '2019-06-20 21:16:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5833416', '98.6702947', 'rupel', 'uploads/20190620_021628.jpg.jpg', '20190620_021628.jpg', 'open'),
(70, '2019-06-20 21:16:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217920', NULL, NULL, 'cristopher noriko kaha', 'jl.palang merah no 44', 'jl.palang merah no 44', '3.5833877', '98.6702393', 'ODP-MDC-FAP/032', 'SPLITTER-01', '3', '3.5833761', '98.6702646', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.583302', '98.6702436', 'rupel', 'uploads/20190620_021637.jpg.jpg', '20190620_021637.jpg', 'open'),
(71, '2019-06-20 22:17:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_031756.jpg.jpg', '20190620_031756.jpg', 'open'),
(72, '2019-06-20 22:22:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984882', '98.7021159', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032255.jpg.jpg', '20190620_032255.jpg', 'open'),
(73, '2019-06-20 22:22:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_032256.jpg.jpg', '20190620_032256.jpg', 'open'),
(74, '2019-06-20 22:38:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP/MDC/FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.598483', '98.7021148', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033829.jpg.jpg', '20190620_033829.jpg', 'open'),
(75, '2019-06-20 22:38:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20113472', NULL, NULL, 'IBU YAYUK', 'JL PROF HM YAMIN SH NO.231', 'JL PROF HM YAMIN SH NO.231', '3.5982262', '98.7021293', 'ODP-MDC-FCC/049', 'SPLITTER-01', '5', '3.5982341', '98.7020511', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00G2GV5ZZS', 'TX00F080G3RN', '82166951702', '869657040092477', '3.5984915', '98.7021138', 'RUMAH MAKAN SINAR MINANG', 'uploads/20190620_033832.jpg.jpg', '20190620_033832.jpg', 'open'),
(76, '2019-06-21 00:13:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20122181', NULL, NULL, 'muhammad yusuf alsani', 'jalan rukun no 27', 'jalan rukun no 27', '3.5867376', '98.6553139', 'ODP- MDC-FBF-45', 'SPLITTER-01', '5', '3.5867831', '98.6553207', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TZZ0JHYH3YO8', 'TZZ0JHYH3YO8', '81274481238', '861930049684836', '3.5867711', '98.6553121', 'rumah pelanggan', 'uploads/20190620_051359.jpg.jpg', '20190620_051359.jpg', 'open'),
(77, '2019-06-21 00:14:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5770764', '98.6846427', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051423.jpg.jpg', '20190620_051423.jpg', 'open'),
(78, '2019-06-21 00:14:41', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20115213', NULL, NULL, 'DEWI ADETYA', 'KATAMSO (0012); 45 F', 'KATAMSO (0012); 45 F', '3.5770764', '98.6846427', 'ODP-MDC-FAM/043', 'SPLITTER-01', '4', '3.5770764', '98.6846427', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00AQQYCQJK', 'TX00AQQYCQJK', '81265550635', '866196033440859', '3.5767568', '98.6853305', 'dekat simpang katamso depan istana maimun', 'uploads/20190620_051441.jpg.jpg', '20190620_051441.jpg', 'open'),
(79, '2019-06-21 01:10:23', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061023.jpg.jpg', '20190620_061023.jpg', 'open'),
(80, '2019-06-21 01:15:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20120982', NULL, NULL, 'DRS H SHARIAL MPD', 'Jl.Gurilla no.106', 'Jl.gurilla no.106', '3.6008266', '98.6996976', 'ODP-MDC-FEE/043', 'SPLITTER-01', '5', '3.6008424', '98.6996249', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX005PYVZJY0', 'TX00SIPFWNDD', '82299217915', '863387048374133', '3.6007982', '98.6996472', 'LENGKAP', 'uploads/20190620_061505.jpg.jpg', '20190620_061505.jpg', 'open'),
(81, '2019-06-21 01:20:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20117400', NULL, NULL, 'KOK LIANG HWA', 'MEDAN', 'JLN THAMRIN NO.47-49', '3.5947107', '98.6882587', 'ODP MDC FEC 39', 'SPLITTER-02', '6', '3.5946515', '98.6883218', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00Q3TVV1Z0', 'TX00Q3TVV1Z0', '82272108608', '869722032218371', '3.5947107', '98.6882587', 'RUMAH PELANGGAN', 'uploads/20190620_062010.jpg.jpg', '20190620_062010.jpg', 'open'),
(83, '2019-06-21 17:21:31', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152710', NULL, NULL, 'NOVITA HARYANI', 'Jl Agenda No 6', 'Jl Agenda No 6', '3.6004563', '98.6532264', 'ODP-MDC-FF/134', 'SPLITTER-01', '8', '3.600401', '98.6531527', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00EMFQQSMD', 'TX00EMFQQSMD', '81274481238', '867059041727239', '3.6003757', '98.6530672', 'Rumah Pelanggan', 'uploads/20190621_102131.jpg.jpg', '20190621_102131.jpg', 'open'),
(84, '2019-06-21 17:29:59', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20152942Q', NULL, NULL, 'zuharmansyah', 'jalan gelas no 99', 'jalan gelas no 99', '3.597317', '98.6584675', 'ODP MDC FF 142', 'SPLITTER-01', '4', '3.597316', '98.6584669', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973195', '98.6584694', 'rumah pelanggan', 'uploads/20190621_102959.jpg.jpg', '20190621_102959.jpg', 'open'),
(92, '2019-06-21 22:01:17', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '3p', NULL, NULL, 'jona chandra', 'jln.pahlawan gg.lumumba no.41', 'jln.pahlawan gg.lumumba no.41', '3.5938199', '98.7014952', 'ODP-MDC-FCB/035', 'SPLITTER-01', '4', '3.5938199', '98.7014952', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX009HU1PKM3', '', '81223937163', '358489092841546', '3.5938232', '98.7011512', 'warna kuning', 'uploads/20190621_030117.jpg.jpg', '20190621_030117.jpg', 'open'),
(91, '2019-06-21 20:51:54', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20164773', NULL, NULL, 'HANDE', 'MEDAN', 'JLN SUTOMO DALAM NO.16 Q', '3.5961166', '98.681726', 'ODP MDC FCN 34', 'SPLITTER-02', '5', '3.5961213', '98.6817459', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00N44RWDAH', '5743472400040', '82272108608', '869722032218371', '3.5960639', '98.681778', 'RUMAH PELANGGAN', 'uploads/20190621_015154.jpg.jpg', '20190621_015154.jpg', 'open'),
(87, '2019-06-21 18:49:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218203', NULL, NULL, 'junaidi', '', 'sei wampu baru no 7', '3.5834442', '98.6565124', 'odp-mdc-FBM 050', 'SPLITTER-01', '8', '3.5835298', '98.6563436', 'NIHIL', 'NIHIL', '', '', 'TX00XJVOSYKG', 'TX00XJVOSYKG', '82363707388', '351928085446000', '3.583559', '98.6563027', 'rumah jual air', 'uploads/20190621_114911.jpg.jpg', '20190621_114911.jpg', 'open'),
(88, '2019-06-21 18:54:36', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017328', '98.7020321', 'LENGKAP', 'uploads/20190621_115436.jpg.jpg', '20190621_115436.jpg', 'open'),
(89, '2019-06-21 18:54:56', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20159466', NULL, NULL, 'bayu Hariansyah Lubis', 'Jl.Pimpinan no.90A', 'Jl.Pimpinan no.90A', '3.6017355', '98.702038', 'ODP-MDC-FED/043', 'SPLITTER-02', '6', '3.6017556', '98.7024824', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00RV11ZXW9', 'TX000B9WP8HQ', '82299217915', '863387048374133', '3.6017329', '98.7020327', 'LENGKAP', 'uploads/20190621_115456.jpg.jpg', '20190621_115456.jpg', 'open'),
(90, '2019-06-21 19:11:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20153782', NULL, NULL, 'HUSIN', 'JL KATAMSO GG MANTRI NO.16B', 'jl katamso gg mantri no. 16b', '3.5785752', '98.6811654', 'ODP-MDC-FAL/012', 'SPLITTER-01', '4', '3.5785747', '98.6811766', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGCSHRHX', 'TX00BGCSHRHX', '81265550635', '866196033440859', '3.5785751', '98.6811725', 'masuk jalan mantri paling ujung turun turunan nomor 16 B', 'uploads/20190621_121110.jpg.jpg', '20190621_121110.jpg', 'open'),
(95, '2019-06-21 22:44:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20172279', NULL, NULL, 'sumery', 'jalan cengal no 90', 'jalan cengal no 90', '3.5962076', '98.6635697', 'ODP MDC FFG 31', 'SPLITTER-01', '3', '3.5963335', '98.6634966', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BHKG0VMS', '', '81274481238', '861930049684836', '3.5962548', '98.6635537', 'rumah pelanggan', 'uploads/20190621_034455.jpg.jpg', '20190621_034455.jpg', 'open'),
(96, '2019-06-21 23:17:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20157261', NULL, NULL, 'syahrial', 'Ruangan OPS mess dan gedung lantai 6', 'Ruangan OPS mess dan gedung lantai 6', '3.5807965', '98.6715808', 'ODP-MDC-FAE/061', 'SPLITTER-01', '1', '3.5808359', '98.6715768', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00BGZ7GCHG', 'TX00BGZ7GCHG', '82212081159', '868240030864808', '3.5808026', '98.6716268', 'kantor gubernur pak edy', 'uploads/20190621_041739.jpg.jpg', '20190621_041739.jpg', 'open'),
(97, '2019-06-21 23:21:32', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20156777', NULL, NULL, 'Syahrial', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', 'Ruangan OPS MESS DAN GEDUNG LANTAI 6', '3.5807839', '98.6715873', 'ODP-MDC-FAE/058', 'SPLITTER-01', '3', '3.5808326', '98.6715807', 'NIHIL', 'NIHIL', 'Nihil', '', 'TX007EVP378L', 'TX007EVP378L', '82212081159', '868240030864808', '3.5808335', '98.6715864', 'kantor gubernur lantai 6', 'uploads/20190621_042132.jpg.jpg', '20190621_042132.jpg', 'open'),
(98, '2019-06-22 01:04:05', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20161210', NULL, NULL, 'M. Archie dhio kadarsyah', 'Jln. S Parman Gg.harapan No.27', 'Jln. S Parman Gg.harapan No.27', '3.5835295', '98.6676892', 'ODP-MDC-FGC/073', 'SPLITTER-02', '13', '3.5840317', '98.6669833', 'NIHIL', 'NIHIL', '', '', 'TX00DJ5EJ08E', 'TX00DJ5EJ08E', '82363707388', '868041032831252', '3.5835552', '98.66778', 'Rumah Pelanggan', 'uploads/20190621_060405.jpg.jpg', '20190621_060405.jpg', 'open'),
(99, '2019-06-22 01:04:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20161210', NULL, NULL, 'M. Archie dhio kadarsyah', 'Jln. S Parman Gg.harapan No.27', 'Jln. S Parman Gg.harapan No.27', '3.5835295', '98.6676892', 'ODP-MDC-FGC/073', 'SPLITTER-02', '13', '3.5840317', '98.6669833', 'NIHIL', 'NIHIL', '', '', 'TX00DJ5EJ08E', 'TX00DJ5EJ08E', '82363707388', '868041032831252', '3.5835574', '98.6677846', 'Rumah Pelanggan', 'uploads/20190621_060411.jpg.jpg', '20190621_060411.jpg', 'open'),
(100, '2019-06-22 01:25:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20179073', NULL, NULL, 'ROTAMA RAMADHAN', 'Jl.Rakyat no.56ABCD', 'Jl.Rakyat no.56ABCD', '3.6048152', '98.6914808', 'ODP-MDC-FEG/016', 'SPLITTER-01', '4', '3.6048637', '98.6914743', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX0083XP735Z', 'TX00WW0HMEK5', '82299217915', '863387048374133', '3.6048224', '98.6914793', 'LENGKAP', 'uploads/20190621_062502.jpg.jpg', '20190621_062502.jpg', 'open'),
(101, '2019-06-22 01:56:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218177', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.582165', '98.6683214', 'no 33 Ket rumah paling ujung', 'uploads/20190621_065612.jpg.jpg', '20190621_065612.jpg', 'open'),
(102, '2019-06-22 02:31:04', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218196', NULL, NULL, 'Andri', 'Jln.S Parman gang baru no.33', 'jln.S Parman gang baru no.33', '3.5821647', '98.6683227', 'ODP-MDC-FGC/015', 'SPLITTER-01', '6', '3.5815834', '98.6672552', 'NIHIL', 'NIHIL', '', '', 'TX00AS59GIQI', 'TX00AS59GIQI', '81396143550', '866531048048091', '3.5815867', '98.6672566', 'no 33 Ket rumah paling ujung', 'uploads/20190621_073104.jpg.jpg', '20190621_073104.jpg', 'open'),
(103, '2019-06-22 02:42:10', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20182490', NULL, NULL, 'nurhasanah ardiati nasution', 'jalan makamah no 1', 'jalan makamah no 1', '3.5790033', '98.6851813', 'ODP-MDC-FAM/046', 'SPLITTER-02', '7', '3.5788737', '98.6848369', 'NIHIL', 'NIHIL', '', '', 'TX00S66ZX77S', 'TX00S66ZX77S', '81276595573', '868174031215720', '3.5786676', '98.6850249', 'gambar1', 'uploads/20190621_074210.jpg.jpg', '20190621_074210.jpg', 'open'),
(104, '2019-06-22 15:58:43', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20181828', NULL, NULL, 'ALBERT KRISTIAN SIMANGUNGSONG', 'Jl Cangkir No 5', 'Jl Cangkir No 5', '3.5964285', '98.6571395', 'ODP-MDC-FF/143', 'SPLITTER-01', '1', '3.5964448', '98.6571441', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QSIXKHJ2', 'TX00QSIXKHJ2', '81274481238', '867059041727239', '3.5964665', '98.6571479', 'RUMAH PELANGGAN', 'uploads/20190622_085843.jpg.jpg', '20190622_085843.jpg', 'open'),
(105, '2019-06-22 16:27:14', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20202526', NULL, NULL, 'roni putra', 'jl mongonsidi Gg baru 23', 'jl mongonsidi Gg barub23', '3.5700935', '98.6684286', 'odp-mdc-FAC/031', 'SPLITTER-01', '6', '3.5697117', '98.6691692', 'NIHIL', 'NIHIL', '', '', 'TX00KAAHXWA5', 'TX00KAAHXWA5', '81260003335', '356783100820688', '3.5697182', '98.6684816', 'cat putih , ada pohon jambu nya', 'uploads/20190622_092714.jpg.jpg', '20190622_092714.jpg', 'open'),
(106, '2019-06-22 18:15:49', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209216835', NULL, NULL, 'pogy kukniawan', '', 'sei kapuas kom kapuas no 1a', '3.5839855', '98.6470538', '0dp-mdc-FBM 85', 'SPLITTER-01', '5', '3.5838417', '98.6469671', 'NIHIL', 'NIHIL', '', '', 'TX00FSKYA1B7', 'TX00FSKYA1B7', '82363707388', '351928085446000', '3.5838427', '98.6469642', 'kom kapuas no 1 a', 'uploads/20190622_111549.jpg.jpg', '20190622_111549.jpg', 'open'),
(107, '2019-06-22 20:10:38', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20208384', NULL, NULL, 'ARIFIN', 'Jl Gatsu No 12F', 'Jl Gatsu No 12F', '3.5925764', '98.667794', 'ODP-MDC-FGL/24', 'SPLITTER-01', '7', '3.592467', '98.6663311', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00QJYEDBO5', 'TX00QJYEDBO5', '81274481238', '867059041727239', '3.5925001', '98.6663691', 'RUMAH PELANGGAN', 'uploads/20190622_011038.jpg.jpg', '20190622_011038.jpg', 'open'),
(108, '2019-06-22 22:31:37', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20217756', NULL, NULL, 'zay', 'jl. katamso dalam', 'pantai burung 1', '3.5771091', '98.6829767', 'ODP-MDC-FAL/029', 'SPLITTER-01', '8', '3.5771011', '98.6829605', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D9XHGMVK', 'TX00D9XHGMVK', '82212081159', '868240030864808', '3.5771091', '98.6829767', 'rumah paling ujung sebelah kiri pagar coklat', 'uploads/20190622_033137.jpg.jpg', '20190622_033137.jpg', 'open'),
(109, '2019-06-22 23:28:07', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20218325', NULL, NULL, 'marthin rahino sy', 'jl pekong 1 no 25', 'jl pekong 1 no 25', '3.5632', '98.6672607', 'odp-mdc-fac/130', 'SPLITTER-01', '4', '3.5645473', '98.6675357', 'NIHIL', 'NIHIL', '', '', 'TX00WOA4WD82', 'TX00WOA4WD82', '81260003335', '356783100820688', '3.5645393', '98.6674641', 'cat putih pagar hijau', 'uploads/20190622_042807.jpg.jpg', '20190622_042807.jpg', 'open'),
(110, '2019-06-23 00:26:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20222018', NULL, NULL, 'nita verawaty', 'starban Gg sahabat 99', 'starban Gg shabat 99', '3.5569916', '98.6651607', 'odp-mdc-fac/093', 'SPLITTER-02', '1', '3.5570038', '98.6657008', 'NIHIL', 'NIHIL', '', '', 'TX00BFWXMVCM', 'TX00BFWXMVCM', '81260003335', '356783100820688', '3.5570659', '98.6654272', 'pagar warna hijau depan sekolah al hidayah', 'uploads/20190622_052633.jpg.jpg', '20190622_052633.jpg', 'open'),
(111, '2019-06-23 00:38:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20219466', NULL, NULL, 'asmalita dra', 'jalan sei deli no 8', 'jalan sei deli no 8', '3.5981983', '98.6693308', 'ODP MDC FAZ 08', 'SPLITTER-01', '6', '3.5981043', '98.670281', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5981782', '98.6702826', 'rumah pelanggan', 'uploads/20190622_053844.jpg.jpg', '20190622_053844.jpg', 'open'),
(112, '2019-06-23 01:25:46', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20223608', NULL, NULL, 'DINA ARFIANI', 'Jl Ayahanda No 41', 'Jl Ayahanda No 41', '3.594129', '98.6531669', 'ODP-MDC-FD/05', 'SPLITTER-02', '5', '3.5941403', '98.6531552', 'NIHIL', 'NIHIL', 'NONE', '', 'TX00C2F7N0TZ', 'TX00C2F7N0TZ', '81274481238', '867059041727239', '3.5941439', '98.6531891', 'Rumah Pelanggan', 'uploads/20190622_062546.jpg.jpg', '20190622_062546.jpg', 'open'),
(113, '2019-06-23 02:25:50', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218228', NULL, NULL, 'teuku armansyah', '', 'sei mencirim no 73', '3.5805833', '98.6549923', '0dp-mdc-FA 37', 'SPLITTER-02', '3', '3.5805656', '98.6550061', 'NIHIL', 'NIHIL', '', '', 'TX00FZXKEUGK', 'TX00FZXKEUGK', '82363707388', '351928085446000', '3.5806226', '98.6549966', 'jln mencirim no 73  depannya tanah  Kosong', 'uploads/20190622_072550.jpg.jpg', '20190622_072550.jpg', 'open'),
(114, '2019-06-23 02:25:53', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218232', NULL, NULL, 'narik', 'darusalam no51', 'darusalam no51', '3.5802653', '98.6530091', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5802332', '98.6529959', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5801414', '98.6530708', 'rupel', 'uploads/20190622_072553.jpg.jpg', '20190622_072553.jpg', 'open'),
(115, '2019-06-23 17:13:16', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20242071', NULL, NULL, 'wong sie khong', 'jalan aksara gang sehat no 77 a', 'jalan aksara gang sehat no 77 a', '3.5912889', '98.704247', 'ODP-MDC-FDW/034', 'SPLITTER-01', '1', '3.5900235', '98.7056229', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX002E2XYXOQ', '', '81223937163', '358489092841546', '3.5909758', '98.704247', 'rumah warna cream', 'uploads/20190623_101316.jpg.jpg', '20190623_101316.jpg', 'open'),
(116, '2019-06-23 18:48:06', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20245492', NULL, NULL, 'oppon siregar', 'jalan jangka no 62', 'jalan jangka no 62', '3.593689', '98.6492656', 'ODP MDC FD 30', 'SPLITTER-02', '6', '3.5937234', '98.6491659', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5935524', '98.6494602', 'rumah pelanggan', 'uploads/20190623_114806.jpg.jpg', '20190623_114806.jpg', 'open'),
(117, '2019-06-23 19:25:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_122522.jpg.jpg', '20190623_122522.jpg', 'open'),
(118, '2019-06-23 19:26:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_122624.jpg.jpg', '20190623_122624.jpg', 'open'),
(119, '2019-06-23 19:32:39', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20244569', NULL, NULL, 'JELITA', 'JLN.S PARMAN GG.HARAPAN NO.20', 'JLN.S PARMAN GG.HARAPAN NO.20', '3.5838167', '98.6671063', 'ODP-MDC-FGC/073', 'SPLITTER-02', '6', '3.5841125', '98.6670193', 'NIHIL', 'NIHIL', '', '', 'TX00D8VBCU4K', 'TX00D8VBCU4K', '82363707388', '868041032831252', '3.5838167', '98.6671063', 'Rumah Pelanggan', 'uploads/20190623_123239.jpg.jpg', '20190623_123239.jpg', 'open'),
(120, '2019-06-23 19:46:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982898', '98.6658589', 'nihil', 'uploads/20190623_124622.jpg.jpg', '20190623_124622.jpg', 'open'),
(121, '2019-06-23 19:47:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982898', '98.6658589', 'nihil', 'uploads/20190623_124713.jpg.jpg', '20190623_124713.jpg', 'open'),
(122, '2019-06-23 19:47:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982312', '98.6658102', 'nihil', 'uploads/20190623_124725.jpg.jpg', '20190623_124725.jpg', 'open'),
(123, '2019-06-23 19:51:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983927', '98.6658743', 'nihil', 'uploads/20190623_125112.jpg.jpg', '20190623_125112.jpg', 'open'),
(124, '2019-06-23 19:57:28', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_125728.jpg.jpg', '20190623_125728.jpg', 'open'),
(125, '2019-06-23 20:15:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_011520.jpg.jpg', '20190623_011520.jpg', 'open'),
(126, '2019-06-23 20:16:24', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5982312', '98.6658102', 'nihil', 'uploads/20190623_011624.jpg.jpg', '20190623_011624.jpg', 'open'),
(127, '2019-06-23 20:19:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '11120921733', NULL, NULL, 'kuna segeran', 'sikambing', 'gg bantu no43', '3.598259', '98.6658362', 'odp-mdc-fay/020', 'SPLITTER-01', '7', '3.5983052', '98.6658568', 'KENDALA MATERIAL', 'NIHIL', 'nihil', '', 'TX00XLQY04D1', 'TX00XLQY04D1', '81274481238', '352697103852932', '3.5983832', '98.6658156', 'nihil', 'uploads/20190623_011952.jpg.jpg', '20190623_011952.jpg', 'open'),
(128, '2019-06-23 21:45:55', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20251877', NULL, NULL, 'kevin rusli', 'jalan sikambing no 02', 'jalan sikambing no 02', '3.5973803', '98.6655072', 'ODP MDC FAY 25', 'SPLITTER-02', '1', '3.5973907', '98.6655063', 'NIHIL', 'NIHIL', 'NIHIL', '', '', '', '81274481238', '861930049684836', '3.5973859', '98.6655073', 'rumah pelanggan', 'uploads/20190623_024555.jpg.jpg', '20190623_024555.jpg', 'open'),
(129, '2019-06-23 21:49:35', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218233', NULL, NULL, 'narik', 'darusalam no 51', 'darusalam no 51', '3.5815786', '98.6655032', 'ODP-MDC-FGB/006', 'SPLITTER-01', '2', '3.5815786', '98.6655032', 'NIHIL', 'NIHIL', 'nihil', '', '', '', '82274174147', '869723035366639', '3.5815786', '98.6655032', 'rupel', 'uploads/20190623_024935.jpg.jpg', '20190623_024935.jpg', 'open'),
(131, '2019-06-24 21:35:51', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20295685', NULL, NULL, 'caryn', 'komplek istana prima 2 blok c no.1', 'komplek istana prima 2 blok c no.1', '3.5679017', '98.6871075', 'ODP-MDC-FAB/072', 'SPLITTER-01', '7', '3.5679381', '98.6870298', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX008BV68L3J', 'TX008BV68L3J', '82212081159', '868240030864808', '3.5678983', '98.6871086', 'istana prima blok C no.1', 'uploads/20190624_023551.jpg.jpg', '20190624_023551.jpg', 'open'),
(132, '2019-06-24 23:15:22', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20297217', NULL, NULL, 'LAZIM', 'MEDAN', 'JL M YAMIN 40/42', '3.5941036', '98.6803077', 'ODP MDC FDL 32', 'SPLITTER-02', '2', '3.594259', '98.6805345', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00MFMDWI95', 'TX00MFMDWI95', '82272108608', '869722032218371', '3.5942339', '98.6804465', 'RUMAH PELANGGAN', 'uploads/20190624_041522.jpg.jpg', '20190624_041522.jpg', 'open'),
(133, '2019-06-24 23:15:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20297217', NULL, NULL, 'LAZIM', 'MEDAN', 'JL M YAMIN 40/42', '3.5941036', '98.6803077', 'ODP MDC FDL 32', 'SPLITTER-02', '2', '3.594259', '98.6805345', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00MFMDWI95', 'TX00MFMDWI95', '82272108608', '869722032218371', '3.5942354', '98.6804493', 'RUMAH PELANGGAN', 'uploads/20190624_041527.jpg.jpg', '20190624_041527.jpg', 'open'),
(134, '2019-06-24 23:30:09', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20305981', NULL, NULL, 'RONI PARASIAN L', 'Jl Pabrik Tenun No 6', 'Jl Pabrik Tenun No 6', '3.5984314', '98.6632366', 'ODP-MDC-FFG/39', 'SPLITTER-01', '6', '3.598432', '98.6632171', 'NIHIL', 'NIHIL', 'None', '', 'TX00DGBA4I46', 'TX00DGBA4I46', '81274481238', '867059041727239', '3.5983799', '98.6628487', 'Rumah Pelanggan', 'uploads/20190624_043009.jpg.jpg', '20190624_043009.jpg', 'open'),
(135, '2019-06-24 23:40:52', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20299240', NULL, NULL, 'yayuk kustanti', 'jl flaminggo i8', 'jl flamingho i8', '3.5602046', '98.6705949', 'odp-mdc-FAc/083', 'SPLITTER-02', '3', '3.559217', '98.6708345', 'NIHIL', 'NIHIL', '', '', 'TX00A697YBV0', 'TX00A697YBV0', '81260003335', '356783100820688', '3.5660946', '98.6695589', 'cat putih', 'uploads/20190624_044052.jpg.jpg', '20190624_044052.jpg', 'open'),
(149, '2019-06-25 19:46:29', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20338351', NULL, NULL, 'samsuwar', 'jl. brigjend katamso gg merdeka no4', 'jl.brigjend katamso gg merdeka no 4', '3.56609', '98.6880817', 'ODP-MDC-FAB-/039', 'SPLITTER-01', '2', '3.5663266', '98.6865926', 'NIHIL', 'NIHIL', '', '', 'TX00Q1TDGOFB', 'TX00Q1TDGOFB', '81276595573', '868174031215720', '3.5684849', '98.6870772', 'gambar 1', 'uploads/20190625_124629.jpg.jpg', '20190625_124629.jpg', 'open'),
(137, '2019-06-25 17:54:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5820729', '98.6460626', 'jln sei mare depan ada poko magah', 'uploads/20190625_105425.jpg.jpg', '20190625_105425.jpg', 'open'),
(138, '2019-06-25 17:55:11', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105511.jpg.jpg', '20190625_105511.jpg', 'open'),
(139, '2019-06-25 17:55:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105520.jpg.jpg', '20190625_105520.jpg', 'open'),
(140, '2019-06-25 17:55:25', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105525.jpg.jpg', '20190625_105525.jpg', 'open'),
(141, '2019-06-25 17:55:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105530.jpg.jpg', '20190625_105530.jpg', 'open'),
(142, '2019-06-25 17:55:30', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5818477', '98.6460663', 'jln sei mare depan ada poko magah', 'uploads/20190625_105530.jpg.jpg', '20190625_105530.jpg', 'open'),
(143, '2019-06-25 17:55:33', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209217316', NULL, NULL, 'david nasution', '', 'sei mare no 100', '3.5821712', '98.6460939', 'odp-mdc-FBM 062', 'SPLITTER-01', '8', '3.5821957', '98.6458821', 'NIHIL', 'NIHIL', '', '', 'TX00YCDPBRGD', 'TX00YCDPBRGD', '82363707388', '863956040892647', '3.5843583', '98.6430433', 'jln sei mare depan ada poko magah', 'uploads/20190625_105533.jpg.jpg', '20190625_105533.jpg', 'open'),
(144, '2019-06-25 18:20:27', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '12345678', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H', '3.592189', '98.6818706', 'ODP FCLBU 02', 'SPLITTER-01', '1', '3.5921938', '98.681853', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5921937', '98.6818578', 'FOTO RUMAH PELANGGAN', 'uploads/20190625_112027.jpg.jpg', '20190625_112027.jpg', 'open'),
(145, '2019-06-25 18:40:34', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20336264', NULL, NULL, 'PAULINA', 'MEDAN', 'JL SERAM NO 52/58', '3.5927366', '98.6840213', 'ODP MDC FDH 37', 'SPLITTER-02', '16', '3.5927128', '98.684089', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926936', '98.6840783', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114034.jpg.jpg', '20190625_114034.jpg', 'open'),
(146, '2019-06-25 18:44:02', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20304571', NULL, NULL, 'ROSLINA BR PURBA', 'MEDAN', 'JLN TIMOR NO.10H/123', '3.5927125', '98.6840815', 'ODP FCLB 02', 'SPLITTER-02', '16', '3.5926924', '98.684092', 'ODP FULL', 'NIHIL', 'ODP FULL', '', '', '', '82272108608', '869722032218371', '3.5926738', '98.6840839', 'FOTO RUMAH PELANGGAN LOKASI ODP FULL', 'uploads/20190625_114402.jpg.jpg', '20190625_114402.jpg', 'open');
INSERT INTO `images_copy_20190625` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `status_valdat`) VALUES
(147, '2019-06-25 18:47:57', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20333898', NULL, NULL, 'BP LINA', 'JL.BANDAR BARU NO.1', 'JL.BANDAR BARU NO.1', '3.5963636', '98.6880927', 'ODP-MDC-FFF/026', 'SPLITTER-01', '1', '3.5962231', '98.6878885', 'NIHIL', 'NIHIL', 'NORMAL', '', 'TX00G2KHZL8W', '', '82166951702', '869657040092477', '3.5961665', '98.6877396', 'RUMAH WARNA KUNING', 'uploads/20190625_114757.jpg.jpg', '20190625_114757.jpg', 'open'),
(148, '2019-06-25 19:17:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20335227', NULL, NULL, 'deyan sabar crystian', 'jalan sekip no 105 b', 'jalan sekip no 105 b', '3.6013287', '98.6619452', 'ODP MDC FGJ 05', 'SPLITTER-01', '5', '3.6013287', '98.6619452', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00D58G1D8Y', '', '81274481238', '861930049684836', '3.6020138', '98.6613353', 'rumah pelanggan', 'uploads/20190625_121713.jpg.jpg', '20190625_121713.jpg', 'open'),
(150, '2019-06-25 20:12:44', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218244', NULL, NULL, 'yuliani br lubis', 'jl. pasundan gg dewi no. 44f', 'jl. pasundan gg dewi no. 44f', '3.5934168', '98.6599907', 'ODP-MDC-FL/40', 'SPLITTER-02', '2', '3.5935625', '98.6599019', 'NIHIL', 'NIHIL', 'tidak ada', '', 'TX00RE8TS4IW', 'TX00RE8TS4IW', '81274481238', '867976035108482', '3.5935058', '98.659908', 'gg dewi', 'uploads/20190625_011244.jpg.jpg', '20190625_011244.jpg', 'open'),
(154, '2019-06-25 23:09:13', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '0618476969', NULL, NULL, 'as', 'dd', 'vv', '3.592834', '98.677667', 'odp', 'SPLITTER-01', '1', '3.5928366', '98.6776645', 'CHANGE DATEK', 'NIHIL', 'kend1.', '', '', '', '85262404020', '358916050544241', '', '', 'photo1', 'uploads/20190625_040913.png.png', '20190625_040913.png', 'open'),
(152, '2019-06-25 22:55:12', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '20351176', NULL, NULL, 'pak heru', 'jl. Hm. Yamin No. 129', 'jl. Hm. Yamin No. 129', '3.5982693', '98.6946162', 'ODP-MDC-FCG/074', 'SPLITTER-02', '7', '3.5982693', '98.6946162', 'NIHIL', 'NIHIL', 'NIHIL', '', 'TX00L4WS23RL', '', '82161676387', '867768038540252', '3.5982693', '98.6946162', 'cafe', 'uploads/20190625_035512.jpg.jpg', '20190625_035512.jpg', 'open'),
(153, '2019-06-25 23:02:20', 'Regional-1', 'MEDAN', 'PROVISIONING', 'INDIHOME', '111209218249', NULL, NULL, 'syamsul hadi', '', 'sei selapian no 7a', '3.5812707', '98.6604296', 'odp-mdc-FH 045', 'SPLITTER-01', '8', '3.5814094', '98.660513', 'NIHIL', 'NIHIL', '', '', 'TX00OSCS6WUG', 'TX00OSCS6WUG', '82363707388', '863956040892647', '3.5812211', '98.6603355', 'sei selapian depan kede kopi', 'uploads/20190625_040220.jpg.jpg', '20190625_040220.jpg', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `images_new_photo3`
--

CREATE TABLE `images_new_photo3` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filename2` varchar(50) DEFAULT NULL,
  `filename3` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `images_upload_multi`
--

CREATE TABLE `images_upload_multi` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filename2` varchar(50) DEFAULT NULL,
  `filename3` varchar(50) DEFAULT NULL,
  `filename4` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
(1, '01', 'admin', 'user_mobile', '/mytools/admin/user/user_mobile_list.php'),
(3, '03', 'admin', 'data_mytools', '/mytools/data_mytools_delete.php'),
(4, '02', 'admin', 'data_mytools', '/mytools/data_mytools_update.php'),
(5, '02', 'admin', 'user_mobile', '/mytools/admin/user/user_mobile_add.php'),
(6, '02', 'admin', 'user', '/mytools/admin/user/user_add.php'),
(7, '03', 'admin', 'data_mytools', '/mytools/data_mytools_update_status.php'),
(8, '02', 'admin', 'data_mytools', '/mytools/data_mytools_rekap_produktivitas.php'),
(9, '02', 'admin', 'data_mytools', 'mytools/data_rekap_teknisi_userid.php');

-- --------------------------------------------------------

--
-- Table structure for table `p_profile_copy`
--

CREATE TABLE `p_profile_copy` (
  `id` int(11) NOT NULL,
  `c_profile` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `l_profile` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `d_profile` varchar(50) DEFAULT NULL,
  `nama_form` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `p_profile_copy`
--

INSERT INTO `p_profile_copy` (`id`, `c_profile`, `l_profile`, `d_profile`, `nama_form`) VALUES
(1, '01', 'admin', 'user mobile', '/bges/admin/user/user_mobile_list.php'),
(2, '01', 'admin', 'profile', '/bges/data_modify.php'),
(3, '01', 'admin', 'profile', '/bges/data_delete.php'),
(4, '01', 'admin', 'user web', '/bges/admin/user/user_list.php'),
(5, '01', 'admin', 'data bges', '/bges/data_rekap.php'),
(6, '01', 'admin', 'user web', '/bges/admin/user/user_modify.php'),
(7, '01', 'admin', 'data bges', '/bges/data_list.php'),
(8, '01', 'admin', 'data bges', '/bges/data_view.php'),
(9, '01', 'admin', 'data bges', '/bges/data_update.php'),
(10, '01', 'admin', 'data bges', '/bges/data_delete.php'),
(11, '01', 'admin', 'user web', '/bges/admin/user/user_modify_mobile_delete.php'),
(12, '01', 'admin', 'user web', '/bges/admin/user/user_add.php'),
(13, '01', 'admin', 'user mobile', '/bges/admin/user/user_mobile_add.php'),
(14, '01', 'admin', 'profile', '/bges/data_add.php'),
(15, '01', 'admin', 'data bges', '/bges/data_selected.php'),
(16, '01', 'admin', 'user mobile', '/bges/admin/user/user_modify_mobile_delete.php'),
(17, '01', 'admin', 'profile', '/bges/profile_list.php'),
(18, '01', 'admin', 'user mobile', '/bges/admin/user/user_mobile_modify.php'),
(19, '02', 'admin', 'user mobile', '/bges/admin/user/user_mobile_list.php'),
(20, '02', 'admin', 'profile', '/bges/data_modify.php'),
(21, '02', 'admin', 'profile', '/bges/data_delete.php'),
(22, '02', 'admin', 'user web', '/bges/admin/user/user_list.php'),
(23, '02', 'admin', 'data bges', '/bges/data_rekap.php'),
(24, '02', 'admin', 'user web', '/bges/admin/user/user_modify.php'),
(25, '02', 'admin', 'data bges', '/bges/data_list.php'),
(26, '02', 'admin', 'data bges', '/bges/data_view.php'),
(27, '02', 'admin', 'data bges', '/bges/data_update.php'),
(28, '02', 'admin', 'data bges', '/bges/data_delete.php'),
(29, '02', 'admin', 'user web', '/bges/admin/user/user_modify_mobile_delete.php'),
(30, '02', 'admin', 'user web', '/bges/admin/user/user_add.php'),
(31, '02', 'admin', 'user mobile', '/bges/admin/user/user_mobile_add.php'),
(32, '02', 'admin', 'profile', '/bges/data_add.php'),
(33, '02', 'admin', 'data bges', '/bges/data_selected.php'),
(34, '02', 'admin', 'user mobile', '/bges/admin/user/user_modify_mobile_delete.php'),
(35, '02', 'admin', 'profile', '/bges/profile_list.php'),
(36, '02', 'admin', 'user mobile', '/bges/admin/user/user_mobile_modify.php'),
(37, '02', 'admin', 'data bges', '/bges/data_update_.php'),
(38, '02', 'admin', 'data bges', '/bges/data_selected_validating.php'),
(39, '01', 'admin', 'data bges', '/bges/data_selected_validating.php'),
(40, '01', 'admin', 'data bges', '/bges/data_rekap_validating.php');

-- --------------------------------------------------------

--
-- Table structure for table `t_sales_force`
--

CREATE TABLE `t_sales_force` (
  `idx` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `sales_id` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_addr` varchar(250) DEFAULT NULL,
  `inst_addr` varchar(250) DEFAULT NULL,
  `google_addr` varchar(250) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `Column 15` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `packet_indihome` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `url2` varchar(100) DEFAULT NULL,
  `url3` varchar(100) DEFAULT NULL,
  `url4` varchar(100) DEFAULT NULL,
  `url5` varchar(100) DEFAULT NULL,
  `url6` varchar(100) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `filename2` varchar(200) DEFAULT NULL,
  `filename3` varchar(200) DEFAULT NULL,
  `filename4` varchar(200) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_sales_force`
--

INSERT INTO `t_sales_force` (`idx`, `timestamp`, `regional`, `witel`, `sales_id`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `google_addr`, `hp`, `Column 15`, `email`, `packet_indihome`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `url2`, `url3`, `url4`, `url5`, `url6`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(1, '2019-10-08 04:28:56', '', 'MEDAN', '1234', '', '', '', NULL, NULL, 'manuel', 'mandala', 'tata alam', 'Jl. Yayasan No.25a, Tj. Gusta, Kec. Medan Helvetia, Kota Medan, Sumatera Utara 20123, Indonesia', '081125885555', NULL, 'manuel@gmail.com', '20 mbps', '3.607335671757424', '98.62271759659053', 'ODP-CTD-FAH/103 FAH/D07/103.01', '', '', '3.6086756148', '98.621918693', '', '', '', '', '', '', '', '', '', '', 'test', 'wow', 'mytools/uploads/20191008_112856b.jpg', 'mytools/uploads/20191008_112856c.', 'mytools/uploads/20191008_112856d.', NULL, NULL, '20191008_112856a.jpg', '20191008_112856b.jpg', '20191008_112856c.', '20191008_112856d.', 'open'),
(2, '2019-10-08 04:32:14', '', 'MEDAN', '1122', '', '', '', NULL, NULL, 'medium sitompul', 'mandala', 'Tata alam Asri.Jl.Bakti indah III NO.221 Gaperta ujung', 'Jl. Bakti Indah III No.221, Tj. Gusta, Kec. Medan Helvetia, Kota Medan, Sumatera Utara 20123, Indonesia', '081123555558', NULL, 'med@gmail.com', '50 mbps', '3.607372813670676', '98.62033009529114', 'ODP-CTD-FAJ/032 FAJ/D03/032.01', 'SPLITTER-01', '13', '3.6076', '98.6191', 'ODP FULL', 'DOEBLE INPUT', '', 'http://picturesofpeoplescanningqrcodes.tumblr.com/', 'https://app.dev.attesis.com/project/5a048e7eea9b9a', 'Life is too short to be generating QR codes', '8116091965', '863915030809052', '', '', 'coba', 'mytools/uploads/20191017_122425a.jpg', 'mytools/uploads/20191008_113214b.jpg', 'mytools/uploads/20191108_103138a.png', 'mytools/uploads/20191020_103017a.jpg', 'mytools/uploads/20191020_103322a.jpg', 'mytools/uploads/20191020_103731a.png', '20191008_113214a.jpg', '20191008_113214b.jpg', '20191008_113214c.', '20191008_113214d.', 'open'),
(3, '2019-10-08 04:45:24', '', 'MEDAN', '2345', '', '', '', NULL, NULL, 'medium sitompul', 'sukarami', 'Tata alam Asri.Jl.Bakti indah VI NO.22 Gaperta ujung', 'blok F, Jl. Komp. Bumi Asri No.32, Cinta Damai, Medan Helvetia, Medan City, North Sumatra 20123, Indonesia', '08112588888', NULL, 'abc@gmail.com', '40 mbps', '3.602174604121987', '98.6207726597786', 'ODP-CTD-FT/078 FT/D05/078.01', 'SPLITTER-01', '3', '3.6023561678', '98.621774513', 'IKR-G TJP', 'CP TDK BISA DIHUBUNGI', '', 'socs.binus.ac.id', 'https://app.dev.attesis.com/project/5a048e7eea9b9a', 'http://www.qrstuff.com', '8116091965', '863915030809052', '', '', 'ket3', 'mytools/uploads/20191010_025548a.jpg', 'mytools/uploads/20191008_114523b.jpg', 'mytools/uploads/20191012_032322a.jpg', 'mytools/uploads/20191012_031448a.jpg', NULL, NULL, '20191008_114523a.jpg', '20191008_114523b.jpg', '20191008_114523c.', '20191008_114523d.', 'open'),
(4, '2019-10-15 14:17:42', '', 'ACEH', 'ejjejdn', '', '', '', NULL, NULL, 'jsjdjdjd', 'jdjdjdj', 'hdjdjdj', 'Jl. Abdul Hakim No.48, Padang Bulan Selayang I, Kec. Medan Selayang, Kota Medan, Sumatera Utara 20155, Indonesia', '646646', NULL, 'djdjdjdj', 'hdhdndnd', '3.5590263', '98.6479174', 'ODP-PDB-FE/090 FE/D10/090.01', '', '', '3.5590780106', '98.647705013', '', '', '', '', '', '', '8116091965', '863915030809052', '', '', 'hshdhdhd', 'mytools/uploads/20191015_091742a.jpg', 'mytools/uploads/20191015_091742b.jpg', 'mytools/uploads/20191015_091742c.', 'mytools/uploads/20191015_091742d.', NULL, NULL, '20191015_091742a.jpg', '20191015_091742b.jpg', '20191015_091742c.', '20191015_091742d.', 'open'),
(5, '2019-10-20 03:13:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'open'),
(6, '2019-10-20 03:31:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `t_sales_force_copy`
--

CREATE TABLE `t_sales_force_copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filename2` varchar(50) DEFAULT NULL,
  `filename3` varchar(50) DEFAULT NULL,
  `filename4` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_sales_force_copy`
--

INSERT INTO `t_sales_force_copy` (`id`, `timestamp`, `regional`, `witel`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(1, '2019-08-14 02:14:46', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dddd', 'uploads/20190813_071446a.jpg.jpg', '20190813_071446a.jpg', '20190813_071446b.jpg', '20190813_071446c.', NULL, 'open'),
(2, '2019-08-14 02:17:25', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gggg', 'uploads/20190813_071724a.jpg.jpg', '20190813_071724a.jpg', '20190813_071724b.jpg', '20190813_071724c.', NULL, 'open'),
(3, '2019-08-14 02:23:04', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bbvbv', 'uploads/20190813_072304a.jpg.jpg', '20190813_072304a.jpg', '20190813_072304b.jpg', '20190813_072304c.', NULL, 'open'),
(4, '2019-08-14 02:28:11', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ggfgf', 'uploads/20190813_072811a.jpg.jpg', '20190813_072811a.jpg', '20190813_072811b.jpg', '20190813_072811c.', NULL, 'open'),
(5, '2019-08-14 02:29:24', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ',mkklklkl', 'uploads/20190813_072924a.jpg.jpg', '20190813_072924a.jpg', '20190813_072924b.jpg', '20190813_072924c.', NULL, 'open'),
(6, '2019-08-14 02:30:04', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'rgrddfgfh', 'uploads/20190813_073004a.jpg.jpg', '20190813_073004a.jpg', '20190813_073004b.jpg', '20190813_073004c.', NULL, 'open'),
(7, '2019-08-14 02:31:37', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'hhggj', 'uploads/20190813_073137a.jpg.jpg', '20190813_073137a.jpg', '20190813_073137b.jpg', '20190813_073137c.', NULL, 'open'),
(8, '2019-08-14 02:33:01', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dsgdgd', 'uploads/20190813_073301a.jpg.jpg', '20190813_073301a.jpg', '20190813_073301b.jpg', '20190813_073301c.', NULL, 'open'),
(9, '2019-08-14 02:38:18', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190813_073818a.jpg.jpg', '20190813_073818a.jpg', '20190813_073818b.jpg', '20190813_073818c.', NULL, 'open'),
(10, '2019-08-14 02:43:12', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ccc', 'uploads/20190813_074312a.jpg.jpg', '20190813_074312a.jpg', '20190813_074312b.jpg', '20190813_074312c.', NULL, 'open'),
(11, '2019-08-14 04:11:02', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test321', 'uploads/20190813_091102a.jpg.jpg', '20190813_091102a.jpg', '20190813_091102b.jpg', '20190813_091102c.', NULL, 'open'),
(12, '2019-08-14 21:16:24', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aaaaa', 'uploads/20190814_021624a.jpg.jpg', '20190814_021624a.jpg', '20190814_021624b.jpg', '20190814_021624c.', NULL, 'open'),
(13, '2019-08-14 21:21:47', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gfgfgg', 'uploads/20190814_022147a.jpg.jpg', '20190814_022147a.jpg', '20190814_022147b.jpg', '20190814_022147c.', NULL, 'open'),
(14, '2019-08-14 21:24:53', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'COBA', 'uploads/20190814_022453a.jpg.jpg', '20190814_022453a.jpg', '20190814_022453b.jpg', '20190814_022453c.', NULL, 'open'),
(15, '2019-08-15 17:27:10', '', '', '', '', '', NULL, NULL, 'iiuiu', 'oppopo', 'kjkj', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yyrr', 'uploads/20190815_102710a.jpg.jpg', '20190815_102710a.jpg', '20190815_102710b.jpg', '20190815_102710c.', NULL, 'open'),
(16, '2019-08-15 19:08:31', '', '', '', '', '', NULL, NULL, 'ryh', 'ryu', 'fgh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fhh', 'uploads/20190815_120831a.jpg.jpg', '20190815_120831a.jpg', '20190815_120831b.jpg', '20190815_120831c.', NULL, 'open'),
(17, '2019-08-15 19:39:59', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ryuu', 'uploads/20190815_123959a.jpg.jpg', '20190815_123959a.jpg', '20190815_123959b.jpg', '20190815_123959c.', NULL, 'open'),
(18, '2019-08-16 18:50:37', '', '', '', '', '', NULL, NULL, 'MEDIUM', 'MANDALA', 'TATA ALAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TEST', 'uploads/20190816_115037a.jpg.jpg', '20190816_115037a.jpg', '20190816_115037b.jpg', '20190816_115037c.', NULL, 'open'),
(19, '2019-08-16 19:02:36', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test', 'uploads/20190816_120236a.jpg.jpg', '20190816_120236a.jpg', '20190816_120236b.jpg', '20190816_120236c.', NULL, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `t_sales_force_copy2`
--

CREATE TABLE `t_sales_force_copy2` (
  `idx` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `sales_id` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_addr` varchar(250) DEFAULT NULL,
  `inst_addr` varchar(250) DEFAULT NULL,
  `google_addr` varchar(250) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `Column 15` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `packet_indihome` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `url2` varchar(100) DEFAULT NULL,
  `url3` varchar(100) DEFAULT NULL,
  `url4` varchar(100) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `filename2` varchar(200) DEFAULT NULL,
  `filename3` varchar(200) DEFAULT NULL,
  `filename4` varchar(200) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_sales_force_copy2`
--

INSERT INTO `t_sales_force_copy2` (`idx`, `timestamp`, `regional`, `witel`, `sales_id`, `service_order`, `service_type`, `service_number`, `internet_number`, `phone_number`, `cust_name`, `cust_addr`, `inst_addr`, `google_addr`, `hp`, `Column 15`, `email`, `packet_indihome`, `latitude_inst_addr`, `longitude_inst_addr`, `stp_name`, `stp_panel`, `stp_port`, `latitude_odp`, `longitude_odp`, `kendala_teknis`, `kendala_nonteknis`, `keterangan_kendala`, `barcode_result`, `barcode_dw`, `barcode_port`, `user_id`, `imei`, `latitude`, `longitude`, `name`, `url`, `url2`, `url3`, `url4`, `filename`, `filename2`, `filename3`, `filename4`, `status_valdat`) VALUES
(1, '2019-08-19 16:54:15', '', 'BENGKULU', NULL, '', '', '', NULL, NULL, 'medium sitompul', 'malvinas', 'TATA Graham Blok I no. 12', NULL, '08116091965', NULL, 'medium@gmail.com', '50 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', 'Please select ...!!!', 'Please select ...!!!', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190819_095415a.jpg', 'mytools/uploads/20190819_095415b.jpg', NULL, NULL, '20190819_095415a.jpg', '20190819_095415b.jpg', '20190819_095415c.', NULL, 'open'),
(2, '2019-08-19 17:01:02', '', 'MEDAN', NULL, '', '', '', NULL, NULL, 'medium stp', 'manadala', 'TATA Alam Blok v', NULL, '085387787878', NULL, 'manuel@gmail.com', '30 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190819_100102a.jpg', 'mytools/uploads/20190819_100102b.jpg', NULL, NULL, '20190819_100102a.jpg', '20190819_100102b.jpg', '20190819_100102c.', NULL, 'open'),
(3, '2019-08-19 17:03:32', '', 'MEDAN', NULL, '', '', '', NULL, NULL, 'medium sitompul', 'malvinas', 'TATA Graham Blok I no. 12', NULL, '08116766767', NULL, 'medi@gmail.com', '40 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/025 FAV/D02/025.01', '', '', '3.592794', '98.676603', '', '', '', '', '', '', '', '', '', '', 'test', 'mytools/uploads/20190819_100332a.jpg', 'mytools/uploads/20190819_100332b.jpg', NULL, NULL, '20190819_100332a.jpg', '20190819_100332b.jpg', '20190819_100332c.', NULL, 'open'),
(4, '2019-08-24 21:58:53', '', 'JAMBI', NULL, '', '', '', NULL, NULL, 'SIDNEY', 'MALANG', 'TATA ALAM ASRI', NULL, '08116667676767', NULL, 'sidney@gmail.com', '20 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190824_025853a.jpg', NULL, NULL, NULL, '20190824_025853a.jpg', '20190824_025853b.jpg', '20190824_025853c.', NULL, 'open'),
(5, '2019-08-24 22:15:55', '', 'BABEL', NULL, '', '', '', NULL, NULL, 'austina', 'mandala', 'TATA alam', NULL, '081176676767', NULL, 'austina@gmail.com', '50 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'try', 'mytools/uploads/20190824_031555a.png', NULL, NULL, NULL, '20190824_031555a.png', '20190824_031555b.png', '20190824_031555c.', NULL, 'open'),
(6, '2019-08-24 22:28:10', '', 'LAMPUNG', '', '', '', '', NULL, NULL, 'benedict', 'bandung', 'TATA Alam asri', NULL, '08537676766767', NULL, 'benedict@gmail.com', '30 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba lagi', 'mytools/uploads/20190824_032810a.png', NULL, NULL, NULL, '20190824_032810a.png', '20190824_032810b.png', '20190824_032810c.', NULL, 'open'),
(7, '2019-08-24 22:38:03', '', 'RIKEP', '', '', '', '', NULL, NULL, 'medi65um ss', 'mandala', 'TATA Alam asri', NULL, '0811876767667', NULL, 'medi@gmail.com', '20 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'ssss', 'mytools/uploads/20190824_033803a.png', NULL, NULL, NULL, '20190824_033803a.png', '20190824_033803b.png', '20190824_033803c.', NULL, 'open'),
(8, '2019-08-24 22:53:58', '', 'ACEH', '', '', '', '', NULL, NULL, 'me88dium 651084', 'mandala', 'TATA alam', NULL, '081167676767', NULL, 'medi@gmail.com', '50 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'coba lagi', 'mytools/uploads/20190824_035358a.png', NULL, NULL, NULL, '20190824_035358a.png', '20190824_035358b.png', '20190824_035358c.', NULL, 'open'),
(9, '2019-08-24 23:04:02', '', 'BABEL', '12345678', '', '', '', NULL, NULL, 'medi77um size stp', 'mandala', 'TATA alam', NULL, '081176676767', NULL, 'medi@gmail.com', '30 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'trying', 'mytools/uploads/20190824_040402a.png', NULL, NULL, NULL, '20190824_040402a.png', '20190824_040402b.png', '20190824_040402c.', NULL, 'open'),
(10, '2019-08-24 23:19:59', '', 'ACEH', '888888888', '', '', '', NULL, NULL, 'med66ium sinusoide cos', 'mandala', 'TATA Alam asri', NULL, '081167676676767', NULL, 'medi@gmail.com', '50 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'dddd', 'http://10.245.30.4/mytools/uploads/20190824_041959a.png', NULL, NULL, NULL, '20190824_041959a.png', '20190824_041959b.png', '20190824_041959c.', NULL, 'open'),
(11, '2019-08-24 23:23:41', '', 'BABEL', '55555555', '', '', '', NULL, NULL, 'medi33um middle', 'mandala', 'TATA alam', NULL, '08528778778787', NULL, 'medi@gmail.com', '40 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'cobas', 'mytools/uploads/20190824_042341a.png', NULL, NULL, NULL, '20190824_042341a.png', '20190824_042341b.png', '20190824_042341c.', NULL, 'open'),
(12, '2019-08-24 23:28:37', '', 'LAMPUNG', '44444444', '', '', '', NULL, NULL, 'med99ium', 'mandala 1', 'TATA Alam Asri vi', NULL, '08115656655656', NULL, 'medi@gmail.com', '20 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'ting', 'mytools/uploads/20190824_042837a.png', '', NULL, NULL, '20190824_042837a.png', '20190824_042837b.png', '20190824_042837c.', NULL, 'open'),
(13, '2019-08-25 13:56:38', '', 'MEDAN', '22222222', '', '', '', NULL, NULL, 'medsi', 'selam very no.9 medan', 'bakti indah IV no.187', NULL, '081177877887', NULL, 'medsi@gmail.com', '20 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba2', 'mytools/uploads/20190825_065638a.png', '20190825_065638b.png', NULL, NULL, '20190825_065638a.png', '20190825_065638b.png', '20190825_065638c.', NULL, 'open'),
(14, '2019-08-25 14:15:14', '', 'MEDAN', '11111111', '', '', '', NULL, NULL, 'sidney', 'malang jatim', 'TATA alam', NULL, '081187787878', NULL, 'sidney@gmail.com', '20 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FCLA/01 FCLA/D01/01/01', '', '', '3.5923', '98.6773', '', '', '', '', '', '', '', '', '', '', 'ok', 'mytools/uploads/20190825_071514a.png', '20190825_071514b.png', NULL, NULL, '20190825_071514a.png', '20190825_071514b.png', '20190825_071514c.', '20190825_071514c.', 'open'),
(15, '2019-08-25 14:21:44', '', 'ACEH', '66666666', '', '', '', NULL, NULL, 'austina', 'selama v', 'TATA alam', NULL, '08115656565656', NULL, 'austina@gmail.com', '40 mbps', '3.5928333', '98.6776667', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'testing', 'mytools/uploads/20190825_072144a.png', 'mytools/uploads/20190825_072144b.png', 'mytools/uploads/20190825_072144c.', 'mytools/uploads/20190825_072144d.', '20190825_072144a.png', '20190825_072144b.png', '20190825_072144c.', '20190825_072144d.', 'open'),
(16, '2019-09-26 19:29:34', '', 'MEDAN', '33333', '', '', '', NULL, NULL, 'sidney', 'malang', 'TATA alam', NULL, '081167676767', NULL, 'sindey@gmail.com', '20 mbps', '3.5928133', '98.677665', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'ket2', 'mytools/uploads/20190926_122934a.jpg', 'mytools/uploads/20190926_122934b.jpg', 'mytools/uploads/20190926_122934c.', 'mytools/uploads/20190926_122934d.', '20190926_122934a.jpg', '20190926_122934b.jpg', '20190926_122934c.', '20190926_122934d.', 'open'),
(17, '2019-09-26 19:38:45', '', 'MEDAN', '77777', '', '', '', NULL, NULL, 'manuel', 'bandung', 'TATA alam', NULL, '08116767676767', NULL, 'manuel@gmail.com', '50 mbps', '3.5928133', '98.677665', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba lagi', 'mytools/uploads/20190926_123845a.jpg', 'mytools/uploads/20190926_123845b.jpg', 'mytools/uploads/20190926_123845c.', 'mytools/uploads/20190926_123845d.', '20190926_123845a.jpg', '20190926_123845b.jpg', '20190926_123845c.', '20190926_123845d.', 'open'),
(18, '2019-09-26 21:37:13', '', 'MEDAN', '8888', '', '', '', NULL, NULL, 'name1', 'bandung', 'TATA alam', NULL, '08118787778', NULL, 'med@gmail.com', '20 mbps', '3.5928133', '98.677665', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190926_023713a.jpg', 'mytools/uploads/20190926_023713b.jpg', 'mytools/uploads/20190926_023713c.', 'mytools/uploads/20190926_023713d.', '20190926_023713a.jpg', '20190926_023713b.jpg', '20190926_023713c.', '20190926_023713d.', 'open'),
(19, '2019-09-27 16:54:04', '', 'ACEH', '111', '', '', '', NULL, NULL, 'aaa', 'bbb', 'ccc', NULL, '08116855555', NULL, 'cccc@gmail.com', '30mbps', '3.5926159', '98.6779555', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'test', 'mytools/uploads/20190927_095404a.jpg', 'mytools/uploads/20190927_095404b.', 'mytools/uploads/20190927_095404c.', 'mytools/uploads/20190927_095404d.', '20190927_095404a.jpg', '20190927_095404b.', '20190927_095404c.', '20190927_095404d.', 'open'),
(20, '2019-09-27 19:21:49', '', 'BABEL', '53553', '', '', '', NULL, NULL, 'binter', 'mandala', 'TATA alam', NULL, '081176766767', NULL, 'binter@gmail.com', '20 mbps', '3.5928133', '98.677665', 'ODP-MDC-FAV/024 FAV/D02/024.01', '', '', '3.592125', '98.676892', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190927_122149a.jpg', 'mytools/uploads/20190927_122149b.jpg', 'mytools/uploads/20190927_122149c.', 'mytools/uploads/20190927_122149d.', '20190927_122149a.jpg', '20190927_122149b.jpg', '20190927_122149c.', '20190927_122149d.', 'open'),
(21, '2019-09-28 00:33:18', '', 'LAMPUNG', '5454657', '', '', '', NULL, NULL, 'benedict', 'mandala', 'to.timor bar II', NULL, '081143534656', NULL, 'benedict@gmail.com', '10 mbps', '3.5928217', '98.677655', 'ODP-MDC-FDH/005 FDH/D04/005.01', '', '', '3.594054', '98.683116', '', '', '', '', '', '', '', '', '', '', 'coba1', 'mytools/uploads/20190927_053318a.jpg', 'mytools/uploads/20190927_053318b.jpg', 'mytools/uploads/20190927_053318c.', 'mytools/uploads/20190927_053318d.', '20190927_053318a.jpg', '20190927_053318b.jpg', '20190927_053318c.', '20190927_053318d.', 'open'),
(22, '2019-09-28 02:17:17', '', 'MEDAN', '22333333', '', '', '', NULL, NULL, 'butet', 'aaaa', 'jl.bukit barisan', NULL, '08115236988888', NULL, 'butet@gmail.com', '30 mbps', '3.5913531316069376', '98.67849949747324', 'ODP-MDC-FCS/063 FCS/D07/063.01', '', '', '3.5908899922', '98.680191956', '', '', '', '', '', '', '', '', '', '', 'ket123', 'mytools/uploads/20190927_071717a.jpg', 'mytools/uploads/20190927_071717b.jpg', 'mytools/uploads/20190927_071717c.', 'mytools/uploads/20190927_071717d.', '20190927_071717a.jpg', '20190927_071717b.jpg', '20190927_071717c.', '20190927_071717d.', 'open'),
(23, '2019-09-28 03:22:05', '', 'MEDAN', '34555', '', '', '', NULL, NULL, 'charli', 'eee', 'ddff', NULL, '0811255555', NULL, 'charli@gmail.com', '30 mbps', '3.5895134015876486', '98.67934975773096', 'ODP-MDC-FAR/034 FAR/D03/034.01', '', '', '3.5894430092', '98.679854998', '', '', '', '', '', '', '', '', '', '', 'vvv', 'mytools/uploads/20190927_082205a.jpg', 'mytools/uploads/20190927_082205b.jpg', 'mytools/uploads/20190927_082205c.', 'mytools/uploads/20190927_082205d.', '20190927_082205a.jpg', '20190927_082205b.jpg', '20190927_082205c.', '20190927_082205d.', 'open'),
(24, '2019-09-28 03:24:52', '', 'MEDAN', '35677', '', '', '', NULL, NULL, 'dedi', 'rrr', 'gggg', NULL, '0812555888', NULL, 'dedi@gmail.com', '40 mbps', '3.5900966412438464', '98.67797009646894', 'ODP-MDC-FAV/026 FAV/D03/026.01', '', '', '3.590453', '98.677728', '', '', '', '', '', '', '', '', '', '', 'test', 'mytools/uploads/20190927_082452a.jpg', 'mytools/uploads/20190927_082452b.jpg', 'mytools/uploads/20190927_082452c.', 'mytools/uploads/20190927_082452d.', '20190927_082452a.jpg', '20190927_082452b.jpg', '20190927_082452c.', '20190927_082452d.', 'open'),
(25, '2019-09-28 05:13:41', '', 'ACEH', '123', '', '', '', NULL, NULL, 'tengku', 'aaa', 'ccc', NULL, '0811225588663', NULL, 'xxxx', '30 mbps', '3.5917101686329573', '98.67771830409765', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'coba lagi', 'mytools/uploads/20190927_101341a.jpg', 'mytools/uploads/20190927_101341b.jpg', 'mytools/uploads/20190927_101341c.', 'mytools/uploads/20190927_101341d.', '20190927_101341a.jpg', '20190927_101341b.jpg', '20190927_101341c.', '20190927_101341d.', 'open'),
(26, '2019-09-28 05:47:30', '', 'SUMSEL', '7777', '', '', '', NULL, NULL, 'iskandar', 'aa', 'bb', NULL, '081125885666', NULL, 'is', '40 mbps', '3.6085081508811205', '98.62154312431812', 'ODP-CTD-FAH/103 FAH/D07/103.01', '', '', '3.6086756148', '98.621918693', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190927_104730a.jpg', 'mytools/uploads/20190927_104730b.jpg', 'mytools/uploads/20190927_104730c.', 'mytools/uploads/20190927_104730d.', '20190927_104730a.jpg', '20190927_104730b.jpg', '20190927_104730c.', '20190927_104730d.', 'open'),
(27, '2019-09-28 12:55:15', '', 'MEDAN', '12345', '', '', '', NULL, NULL, 'medium sinusoide', 'aaa', 'tata alam', NULL, '08116091965', NULL, 'medium gmail.com', '50 mbps', '3.608478035854079', '98.62066101282835', 'ODP-CTD-FAJ/032 FAJ/D03/032.01', '', '', '3.6076', '98.6191', '', '', '', '', '', '', '', '', '', '', 'ket1', 'mytools/uploads/20190928_055515a.jpg', 'mytools/uploads/20190928_055515b.jpg', 'mytools/uploads/20190928_055515c.', 'mytools/uploads/20190928_055515d.', '20190928_055515a.jpg', '20190928_055515b.jpg', '20190928_055515c.', '20190928_055515d.', 'open'),
(28, '2019-09-29 05:38:04', '', 'MEDAN', '4667', '', '', '', NULL, NULL, 'medium stpl', 'ssd', 'tata alam', NULL, '08116091965', NULL, 'medsi@gmail.com', '30 mbps', '3.608035010229601', '98.62066201865674', 'ODP-CTD-FAH/116 FAH/D07/116.01', '', '', '3.6088672514', '98.621321583', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190928_103804a.jpg', 'mytools/uploads/20190928_103804b.', 'mytools/uploads/20190928_103804c.', 'mytools/uploads/20190928_103804d.', '20190928_103804a.jpg', '20190928_103804b.', '20190928_103804c.', '20190928_103804d.', 'open'),
(29, '2019-09-29 05:38:28', '', 'MEDAN', '4667', '', '', '', NULL, NULL, 'medium stpl', 'ssd', 'tata alam', NULL, '08116091965', NULL, 'medsi@gmail.com', '30 mbps', '3.608035010229601', '98.62066201865674', 'ODP-CTD-FAH/116 FAH/D07/116.01', '', '', '3.6088672514', '98.621321583', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190928_103828a.jpg', 'mytools/uploads/20190928_103828b.', 'mytools/uploads/20190928_103828c.', 'mytools/uploads/20190928_103828d.', '20190928_103828a.jpg', '20190928_103828b.', '20190928_103828c.', '20190928_103828d.', 'open'),
(30, '2019-09-29 05:39:37', '', 'MEDAN', '4667', '', '', '', NULL, NULL, 'medium stpl', 'ssd', 'tata alam', NULL, '08116091965', NULL, 'medsi@gmail.com', '30 mbps', '3.608035010229601', '98.62066201865674', 'ODP-CTD-FAH/116 FAH/D07/116.01', '', '', '3.6088672514', '98.621321583', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190928_103937a.jpg', 'mytools/uploads/20190928_103937b.jpg', 'mytools/uploads/20190928_103937c.', 'mytools/uploads/20190928_103937d.', '20190928_103937a.jpg', '20190928_103937b.jpg', '20190928_103937c.', '20190928_103937d.', 'open'),
(31, '2019-09-29 18:46:31', '', 'BABEL', '55666', '', '', '', NULL, NULL, 'medium', 'aaa', 'tata alam', NULL, '081158888566', NULL, 'bbbb@gmail.com', '50 mbps', '3.6077689939842217', '98.6207465082407', 'ODP-CTD-FAH/100 FAH/D01/100.01', '', '', '3.6063783061', '98.621570057', '', '', '', '', '', '', '', '', '', '', 'coba', 'mytools/uploads/20190929_114631a.jpg', 'mytools/uploads/20190929_114631b.jpg', 'mytools/uploads/20190929_114631c.', 'mytools/uploads/20190929_114631d.', '20190929_114631a.jpg', '20190929_114631b.jpg', '20190929_114631c.', '20190929_114631d.', 'open'),
(32, '2019-09-29 22:44:40', '', 'MEDAN', '2222', '', '', '', NULL, NULL, 'manuel benedict', 'bandung', 'TATA alam asri', NULL, '0811766767671', NULL, 'nuel@gmail.com', '40 mbps', '3.59132703142524', '98.67876134812832', 'ODP-MDC-FAV/038 FAV/D03/038.01', '', '', '3.592047093', '98.678236414', '', '', '', '', '', '', '', '', '', '', 'ok test', 'mytools/uploads/20190929_034439a.jpg', 'mytools/uploads/20190929_034439b.jpg', 'mytools/uploads/20190929_034439c.', 'mytools/uploads/20190929_034439d.', '20190929_034439a.jpg', '20190929_034439b.jpg', '20190929_034439c.', '20190929_034439d.', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `t_sales_uploadmultiimage`
--

CREATE TABLE `t_sales_uploadmultiimage` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `regional` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `service_order` varchar(50) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `service_number` varchar(50) DEFAULT NULL COMMENT 'SC_Number',
  `internet_number` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_addr` varchar(50) DEFAULT NULL,
  `inst_addr` varchar(50) DEFAULT NULL,
  `latitude_inst_addr` varchar(50) DEFAULT NULL,
  `longitude_inst_addr` varchar(50) DEFAULT NULL,
  `stp_name` varchar(50) DEFAULT NULL,
  `stp_panel` varchar(50) DEFAULT NULL,
  `stp_port` varchar(50) DEFAULT NULL,
  `latitude_odp` varchar(50) DEFAULT NULL,
  `longitude_odp` varchar(50) DEFAULT NULL,
  `kendala_teknis` varchar(50) DEFAULT NULL,
  `kendala_nonteknis` varchar(50) DEFAULT NULL,
  `keterangan_kendala` varchar(50) DEFAULT NULL,
  `barcode_result` varchar(100) DEFAULT NULL,
  `barcode_dw` varchar(50) DEFAULT NULL,
  `barcode_port` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filename2` varchar(50) DEFAULT NULL,
  `filename3` varchar(50) DEFAULT NULL,
  `filename4` varchar(50) DEFAULT NULL,
  `status_valdat` varchar(50) DEFAULT 'open'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `t_status_valdat`
--

CREATE TABLE `t_status_valdat` (
  `status_valdat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table ''db_image_param.t_status_valdat'' doesn''t exist in engine';

--
-- Dumping data for table `t_status_valdat`
--

INSERT INTO `t_status_valdat` (`status_valdat`) VALUES
('open'),
('validated'),
('nihil');

-- --------------------------------------------------------

--
-- Table structure for table `t_status_valdat1`
--

CREATE TABLE `t_status_valdat1` (
  `status_valdat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `c_profile` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `flagging` varchar(50) DEFAULT NULL,
  `userid_enter` varchar(50) DEFAULT NULL,
  `datetime_enter` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `loginid_for` varchar(50) DEFAULT NULL,
  `lat` double UNSIGNED DEFAULT NULL,
  `lgt` double UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `witel`, `userid`, `nama`, `c_profile`, `password`, `hp`, `imei`, `flagging`, `userid_enter`, `datetime_enter`, `keterangan`, `loginid_for`, `lat`, `lgt`) VALUES
(1, NULL, '622512', 'Yusnita', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '640439', 'HERI SUPRIYADI', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '651056', 'firman', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '651084', 'MEDIUM', '01', 'fa845342ff04a7595e896a89c6f99274', '08116091965', '358916050544241', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '660380', 'Ricardo Panggabean', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '720596', 'Ambari', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '730339', 'Sulkan', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '730431', 'Leonard LS Parapat', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '780006', 'Vrisca', '1', 'db9bf600c8f7a769895549b74c13ce45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '820004', 'Tulus Tampubolon', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '84130295', 'RIZKI ANANDA', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '860032', 'Anda Aristia Kurniawan', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '87157190', 'Ivan Pramana Putra', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '87170001', 'DEWI ASTIKA SIMANJUNTAK', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '901539', 'Sefgi Fandi Habibi', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, '90170040', 'Amna Rizky', '1', 'ea77b9ae702e977bd15f6ef79f230c5e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, '910081', 'Anna Yulia Sari', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, '910171', 'Bella Anindita', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, '910172', 'Muhammad Ari Rifki', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, '91140808', 'WILHAN SANJAYA', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, '921502', 'Dimas Teguh Prakoso', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, '92153909', 'RANDY EVRI MARTHA', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, '92159289', 'ABDUL KHALID AK', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, '92159965', 'WAHYU LUHUR W', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, '92160229', 'LISA NINGTIAS', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, '92170160', 'Anton Wahyu Prasetyo', '1', 'c77f5eb4d7d525855522d7ac65c5487d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, '93150127', 'DANIEL JOHANSEN SINAGA', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, '93150202', 'Heidi Diah Herdianty', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, '93160212', 'Sutrisno', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, '93160274', 'MUHAMMAD RAFI', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, '96151360', 'Redho Eka Pratama', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'admin', 'admin', '1', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, '950052', 'AYU', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, '860001', 'EVAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, '633081', 'M.RUSLAN', '01', 'e9b0fbe49805b6d5a592ffb7e1b1fd40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, '860019', 'REZA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, '860019', 'REZA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, '90150101', 'ZAMI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, '89152837', 'YANDA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, '92170123', 'FATHANAH', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, '79152883', 'ACHMAD RIZKIN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, '90152884', 'FADLI', '01', 'e8423dac410517eb09f8633f56a96a0e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, '840034', 'RULLY', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, '650069', 'FENDY', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, '860017', 'JUIS', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, '650226', 'ALEX', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, '93160008', 'IKE OKTARINI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, '17900211', 'ELLANOARY', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, '93150191', 'AZHARI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, '620943', 'YUNIATI   ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, '830100', 'M.IQBAL   ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, '89142153', 'RIYO      ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, '93157284', 'AULIA     ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, '93142152', 'TAUFIK    ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, '88151359', 'SULAIMAN  ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, '81157279', 'AGUSTINUS ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, '89152857', 'SINGGIH   ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, '860013', 'PARINDUNGAN NST', '01', 'ebacddab57a6b32fef84edd0889cfd10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, '621665', 'SYAMSUL BAHRI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, '640205', 'SYAMSIR', '01', '69b58c9717f1dafa38773929c2d38f48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, '860024', 'M. RIVAI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, '86157929', 'INDRA MIZAR', '01', '0d5ccab9e7f4ae3fe040f143046e386c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, '89157917', 'REZA PANE', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, '92152967', 'ILHAM SYAHPUTRA', '01', '762f432d5047f3bcf423369c743717ee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, '89131703', 'YOGI PRASETIO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, '93157176', 'WINARTO ', '01', '780d7f433c410fae6dc160d6152b9d49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, '86155876', 'NITTA   ', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, '97155847', 'ZEGA    ', '01', '8fc1bf4f514bb7783cde4cdecd9beb80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, '84152891', 'KRISTIN ', '01', 'faedcf889eb0645e5a9942cafc1777ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, '97157177', 'KIKI', '01', 'd65b2fa7c2d598b8d4ad8bfe388d47b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, '90160104', 'RENDY', '01', 'e187f3c58a5e9e274711fb52ae6cf75f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, '95130769', 'JULFRI', '01', '5a457d6255b2cfcdd062ab117f788f55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, '700159', 'ERLINA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, '631788', 'HERI IRIADI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, '790020', 'BINTANG', '01', '7289b030a6ab542dc4c76bfca7d69e72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, '17790059', 'OMAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, '92170241', 'OKI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, '92499', 'LUTFI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, '840047', 'JAYA SEMBIRING', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, '631483', 'M. ISMAIL', '01', '008dd5be7d142ffe94f91748e3ae1da4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, '640405', 'AUDI FAHLEVI', '01', '420b57cf03fe40af1b2cd4f528bef03a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, '631883', 'SALMAN', '01', '0de0007d6a542a5d53fe257584585611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, '630178', 'HELDY YURNA', '01', '3379c71d05b3fc11af57f77f01599b1d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, '17860120', 'DODI HARFYAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, '88152913', 'SRI AISHA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, '642239', 'SYAFRIL', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, '640377', 'ISKANDAR RUSDI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, '622512', 'YUSNITA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, '910171', 'BELLA ANINDITA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, '621175', 'ASMAWATI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, '660464', 'KURNAINI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, '651250', 'DEYANTO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, '790107', 'HOLLYANTO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, '650121', 'SUHARTO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, '17770321', 'SUTARWAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, '89154071', 'ARI SITERA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, '955075', 'HAFIZH ARSYAD HANAFI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, '620077', 'BURHANUDDIN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, '860029', 'ADE IRHAM', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, '920231', 'FEBRINA SILALAHI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, '95141931', 'HENDRA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, '9817069', 'M.SONNY PRIBADI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, '99170298', 'RISKY PRATAMA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, '94170411', 'M.FAUZI DAMANIK', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, '780006', 'SAN VRISCA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, '876776', 'AAN WAHYUDI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, '88157041', 'YOPY LINARTO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, '91152905', 'FEBRI KURNIADI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, '97170412', 'FEBRIYANTO RAMADHANI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, '95170356', 'ARIEF HENDRAWAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, '97170467', 'HARRIZKY TASTIAWAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, '99170228', 'JHORDI WARDANA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, '896014', 'ANGGA YUDHISTIRA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, '17920261', 'PRIMA ARTYASTA GUMELAR', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, '97150344', 'GUSTIAN ANDRI WINATA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, '96150311', 'REYNALDI YOGA PRATAMA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, '97150342', 'DIMAS AGUSTINO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, '855783', 'CORRY AGUSTIC', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, '86130740', 'YOGI SM', '01', '7169cfd3d8bdc826607334b3bc36294f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, '906131', 'RHIDO WARDANA', '01', '310f3424926a676d1d18f8186ccabe96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, '955073', 'M ARIE JUNJUNGAN S', '01', 'f3ddf6281c25f53064b172d143828a75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, '965028', 'MAULANA DODY D TAMBUNAN', '01', '7bcffcbd59a2f6194853d4de10143c8e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, '651341', 'JOVINUS', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, '90152884', 'FADLI', '01', 'e8423dac410517eb09f8633f56a96a0e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, '910179', 'Deni Putra', '01', '26a5462a2be570bcc5a91c38c31e1efa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, '93142198', 'IMAM SATRIA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, '97170515', 'ANGGA ADRIAN', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, '94170428', 'BELA REAVI PRANATA', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, '95170388', 'BUDI KHAIRUL ROZIQIN', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, NULL, '96170383', 'DANU HARSYAH', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, NULL, '92170343', 'DIMAS ALFIAN', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, NULL, '98170592', 'ILHAM EGY PRATOMO', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, '96170397', 'M. RAHMAD HIDAYAT', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, '99170274', 'MUHAMMAD REZKY ANWAR RAMBE', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, NULL, '99170277', 'RIVALDO IMANUEL TINAMBUNAN', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, NULL, '92170375', 'RIZKY SANJANI SARAGIH', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, NULL, '99170276', 'VEREINSLIDER SIMAMORA', '01', '3dd512af0201261aa90ac644c24af5c6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, NULL, '840049', 'M RIDWAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, NULL, '640602', 'NASWIR', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, NULL, '850031', 'AZLI SYAHPANDINATA', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, NULL, '633362', 'A.MARBUN', '01', '1840384433ab6d78c62060b072f99acb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, NULL, '651195', 'Binsar U J Silalahi', '01', '205d141f10945b92978b3b9a3fce9413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, NULL, '860110', 'HERNI RAHMADIAH', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, NULL, '935356', 'SURYADI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, NULL, '90153955', 'SEFGI FANDI HABIBI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, NULL, '623104', 'DASRUL', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '085105005887', '866145034249736 ', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(164, NULL, '630195', 'AMINTAS SIRAIT', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '085100205050', '864826028422924', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(150, NULL, '630483', 'Sadiman', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '081325603029', '354462082878186', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, '35446208', 'Aryono', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08117500135', '358761060198541', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(152, NULL, '690025', 'Yuskarnaini', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08118943888', '359999065773723', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, '640770', 'ARFENDRI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '081279164999', '352508080186816', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(154, NULL, '35250808', 'MATTOMI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '082280411872', '352957060416422', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, '633419', 'ARIS SUBROTO', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '082181888166', '357638050124672', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, '35763805', 'Riduan', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '081367498114', '861101036714438', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, '641051', 'Nursal', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '081364554210', '352846073193922', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, '631471', 'Indra Yulius Hardi', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08117670777', '869159025463674', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, '642493', 'Sudarto', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '082167678355', '358796081172026', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(160, NULL, '631674', 'ZAMZAMI', '01', 'b1cc9cb15d4dbc3414500a43ef00804f', '082121490067', '861101036505687', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, '650113', 'MATTOMI', '01', '8c5e5dc30bf46c7f259be59d8aef6484', '082280411872', '352957060416422', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(162, NULL, '640367', 'HOTNER PANGGABEAN', '01', '6c359118c784bdc33b8949db17f52693', '08118200367', '3454204960107935', '01', NULL, NULL, NULL, NULL, NULL, NULL),
(168, NULL, '640367', 'GABE2', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08116134528', '867562025278012', '01', NULL, '2017-12-05 02:34:05', NULL, NULL, NULL, NULL),
(169, NULL, '651084', 'MEDIUM', '01', 'fa845342ff04a7595e896a89c6f99274', '085276203300', '354617089631199', '01', NULL, '2017-12-05 07:03:36', NULL, NULL, NULL, NULL),
(170, NULL, '876772', 'WAWAN', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '0821745580777', '355819063244226', '01', NULL, '2017-12-05 16:52:38', NULL, NULL, NULL, NULL),
(172, NULL, '085268999901', 'Wahyu Purwanto', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '085268999901', '351817070935673', '01', NULL, '2017-12-08 21:23:37', NULL, NULL, NULL, NULL),
(173, NULL, '651195', 'binsar', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '', '', '', NULL, '2018-02-20 04:19:24', NULL, NULL, NULL, NULL),
(174, NULL, '710465', 'PAULUS PARSAORAN DSS', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08119196700', '352161097205748', '01', NULL, '2018-03-15 14:47:21', NULL, NULL, NULL, NULL),
(175, NULL, '710465', 'PAULUS PARSAORAN DSS HP2', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08119196700', '352162097205746', '01', NULL, '2018-03-15 14:49:49', NULL, NULL, NULL, NULL),
(176, NULL, '850014', 'T. SURYA HASRI', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '08116808446', '', '', NULL, '2018-03-28 19:54:26', NULL, NULL, NULL, NULL),
(177, 'TREG1', '085276203300', 'Manuel', '01', 'a2ed39c417316adbd5cd1d0211a5d711', '085276203300', '112233445566', '01', '651084', NULL, 'test', '03_Tagging_Bgest', 3.6082663, 98.6205005),
(178, 'MEDAN', '85276203300', 'med', '03', 'a2ed39c417316adbd5cd1d0211a5d711', '085276203300', '3578999', '01', '0', NULL, 'ket1', '01_Web_Dim', 3.5929609, 98.6774367);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_mobile`
--

CREATE TABLE `t_user_mobile` (
  `idx` int(11) NOT NULL,
  `idy` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL COMMENT 'Database harus tanpa angka 0 (nol) didepan, tapi di user... ngak apa apa ada angka 0 (nol)',
  `nama` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT '54',
  `flagging_2` varchar(6) DEFAULT '51010',
  `handphone` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `android_version` varchar(50) DEFAULT NULL,
  `nama_mitra` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_mobile`
--

INSERT INTO `t_user_mobile` (`idx`, `idy`, `witel`, `userid`, `nama`, `c_profile`, `pass`, `flagging`, `flagging_2`, `handphone`, `imei`, `android_version`, `nama_mitra`) VALUES
(1, '1', 'MEDAN', '8116091965', 'MEDIUM', '02', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116091965', ' 359447096192703', '9', ''),
(2, '2', 'MEDAN', '81274481238', 'CHAIRI AZHAR NASUTION', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081274481238', '', '9', 'SPSI'),
(3, '3', 'MEDAN', '81260003335', 'MHD.IKBAL', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081260003335', '', '8.1', 'TA'),
(4, '4', 'MEDAN', '82316622254', 'MARKUS YOSEPH CHRISTIAN NABABA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082316622254', '', '5.1', 'AIA'),
(5, '5', 'MEDAN', '82213779274', 'KHAIRIL AZWAN SIREGAR', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082213779274', '', '8.1', ''),
(6, '6', 'MEDAN', '81262494390', 'YUDI PRASTYO', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081262494390', '', '5.1', ''),
(7, '7', 'MEDAN', '83188446152', 'RIZKY RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '083188446152', '', '4.4', ''),
(8, '8', 'MEDAN', '81362384969', 'INDRA EKA PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081362384969', '', '8.1', ''),
(9, '9', 'MEDAN', '82272108608', 'RIZQY MULYADI', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082272108608', '', '8.1', ''),
(10, '10', 'MEDAN', '87811521099', 'DIMAS ARIO SETIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '087811521099', '', '5.1', 'AIA'),
(11, '11', 'MEDAN', '87796178539', 'DIPA PRASTYA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '087796178539', '', '5.1', ''),
(12, '12', 'MEDAN', '85830591657', 'CHAIRUL AMIN LUBIS', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085830591657', '', '7.1', 'AIA'),
(13, '13', 'MEDAN', '82299217915', 'PANJI BAKO', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082299217915', '', '7.1', 'AIA'),
(14, '14', 'MEDAN', '85260080832', 'SUGIONO', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085260080832', '', '6', ''),
(15, '15', 'MEDAN', '82260055682', 'SHANDY SUSWANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082260055682', '', '5.1', 'AIA'),
(16, '16', 'MEDAN', '87763710684', 'SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '087763710684', '', '7.1', 'AIA'),
(17, '17', 'MEDAN', '82167109346', 'TEGUH AJI MINANDA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082167109346', '', '8.1', 'AIA'),
(18, '18', 'MEDAN', '82363707388', 'FIKRI HANIF', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082363707388', '', '8.1', 'GTM'),
(19, '19', 'MEDAN', '8116534545', 'LUFTHY HAFIDZ', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116534545', '', '8.1', 'BSA'),
(20, '20', 'MEDAN', '85361752800', 'AHMAD REZA PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085361752800', '', '5.1', 'BSA'),
(21, '21', 'MEDAN', '81361970974', 'septiawan rusdiani', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081361970974', '', '7', 'TA'),
(22, '22', 'MEDAN', '82273022613', 'imam anderiyo', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082273022613', '', '4.4', 'TA'),
(23, '23', 'MEDAN', '81375259991', 'Zulham Effendi Lubis', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081375259991', '', '8.1', 'TA'),
(24, '24', 'MEDAN', '85360972185', 'FADHIL HISYAM', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085360972185', '', '6.1', 'BSA'),
(25, '25', 'MEDAN', '82161676387', 'Yosua Lumban Tobing', '01', 'fa845342ff04a7595e896a89c6f99274', '99', '51010', '082161676387', '', '8.1', 'AIA'),
(26, '26', 'MEDAN', '81276595573', 'M. AJI WARDANA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081276595573', '', '9.1', 'BSA'),
(27, '27', 'MEDAN', '81265550635', 'Marasakti Lubis', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081265550635', '', '8.1', 'TA'),
(28, '28', 'MEDAN', '82212081158', 'Muhammad rizfandy akbar', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082212081158', '', '4.4', 'TA'),
(29, '29', 'MEDAN', '82212081159', 'Muhammad agung prasetyo', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082212081159', '', '8.1', 'TA'),
(30, '30', 'MEDAN', '81396143550', 'Fernando', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081396143550', '', '8.1', 'GTM'),
(31, '31', 'MEDAN', '82167064201', 'Raynaldi riwanka', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082167064201', '', '5.1', 'GTM'),
(32, '32', 'MEDAN', '87896157400', 'Silhan Yazid Nasution', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '087896157400', '', '8.1', 'GTM'),
(33, '33', 'MEDAN', '82274361929', 'Lamhot Samosir', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082274361929', '', '5.1', 'GTM'),
(34, '34', 'MEDAN', '85668454729', 'Rei', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085668454729', '', '5.1', 'GTM'),
(35, '35', 'MEDAN', '82274174147', 'Rifki irawan', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082274174147', '', '8.1', 'GTM'),
(36, '36', 'MEDAN', '82389325149', 'Deni Muktiawan Lubis', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082389325149', '', '9', 'GTM'),
(37, '37', 'MEDAN', '85100260141', 'ANDRIANTA GINTING', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085100260141', '', '9', 'TA'),
(38, '38', 'MEDAN', '85261816904', 'APRINDO SIPAYUNG', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085261816904', '', '8.1', 'GTM'),
(39, '39', 'MEDAN', '82167134421', 'ALFAT', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082167134421', '', '5.1', 'GTM'),
(40, '40', 'MEDAN', '82161326141', 'AULIA ', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082161326141', '', '7', 'TA'),
(41, '41', 'MEDAN', '8116405050', 'YOGI SM', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116405050', '', '7.1', 'TA'),
(42, '42', 'MEDAN', '85372627440', 'AGUNG PRATOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085372627440', '', '5.1', 'TA'),
(43, '43', 'MEDAN', '82273478437', 'KHAIROJJAQ PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082273478437', '', '8', 'TA'),
(44, '44', 'MEDAN', '85361713739', 'FEBRI ARDILES', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085361713739', '', '6', 'TA'),
(45, '45', 'MEDAN', '8116577727', 'IRWAN AFFANDY', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116577727', '', '5.1', 'TA'),
(46, '46', 'MEDAN', '8116316167', 'BIMA DILNOV', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116316167', '', '9.1', 'TA'),
(47, '47', 'MEDAN', '85367502021', 'BOY SHOLIHIN', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085367502021', '', '9', 'SPSI'),
(48, '48', 'MEDAN', '85360161573', 'IMANUEL SINAGA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085360161573', '', '8.1', 'SPSI'),
(49, '49', 'MEDAN', '82284515244', 'RISMAN SIDABUTAR', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082284515244', '', '9', 'SPSI'),
(50, '50', 'MEDAN', '81264460659', 'TRI ALUI PRANA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081264460659', '', '8.1', 'TA'),
(51, '51', 'MEDAN', '85275120339', 'M RISKY ALFAJAR', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085275120339', '', '7', 'AIA'),
(52, '52', 'MEDAN', '81263133030', 'SYAHDAN', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081263133030', '', '7.1', 'AIA'),
(53, '53', 'MEDAN', '82160518231', 'Muhammad Azmi Perdana', '01', 'fa845342ff04a7595e896a89c6f99274', '99', '51010', '082160518231', '', '8.1', 'AIA'),
(54, '54', 'MEDAN', '83198108512', 'muhammd jenny', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '083198108512', '', '4', 'AIA'),
(55, '55', 'MEDAN', '81376192597', 'M YOGI PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081376192597', '', '8.1', 'AIA'),
(56, '56', 'MEDAN', '82166951702', 'SIGIT ARIADY', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082166951702', '', '8.1', 'AIA'),
(57, '57', 'MEDAN', '81397722718', 'Fadli Yuandri', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081397722718', '', '6', 'AIA'),
(58, '58', 'MEDAN', '81223937163', 'Ardian albi R', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081223937163', '', '9', 'AIA'),
(59, '59', 'MEDAN', '82160512740', 'HERMANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082160512740', '', '5.1', 'AIA'),
(60, '60', 'MEDAN', '85276277879', 'ABDUL HALIM HAFIZ', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085276277879', '', '7', 'BSA'),
(61, '1', 'MEDAN', '8116393936', 'ATMAKA ARIF PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '08116393936', '', '', NULL),
(62, '1', 'MEDAN', '85262404020', 'MEDIUM', '02', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085262404020', '', '9', NULL),
(63, '1', 'ACEH', '82366603060', 'Maulana', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '082366603060', '', '9', NULL),
(64, '1', 'MEDAN', '87810236910', 'Rizky Heru', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '087810236910', '', '9', NULL),
(65, '1', 'MEDAN', '85270166670', 'Muliono', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '085270166670', '', '8.1', NULL),
(66, '1', 'MEDAN', '81360293565', 'APRINALDI SIREGAR', '01', 'fa845342ff04a7595e896a89c6f99274', '55', '51010', '081360293565', '', 'VER-7', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_mobile_2`
--

CREATE TABLE `t_user_mobile_2` (
  `idx` int(11) NOT NULL,
  `idy` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL COMMENT 'Database harus tanpa angka 0 (nol) didepan, tapi di user... ngak apa apa ada angka 0 (nol)',
  `nama` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `android_version` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_mobile_2`
--

INSERT INTO `t_user_mobile_2` (`idx`, `idy`, `witel`, `userid`, `nama`, `c_profile`, `pass`, `flagging`, `handphone`, `imei`, `android_version`) VALUES
(1, '1', 'MEDAN', '85262404020', 'MEDIUM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116091965', '359447096192703', '9.0'),
(2, '2', 'MEDAN', '82161676387', 'Yosua LumbanTobing', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082161676387', NULL, '8.1');

-- --------------------------------------------------------

--
-- Table structure for table `t_user_mobile_copy`
--

CREATE TABLE `t_user_mobile_copy` (
  `idx` int(11) NOT NULL,
  `idy` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL COMMENT 'Database harus tanpa angka 0 (nol) didepan, tapi di user... ngak apa apa ada angka 0 (nol)',
  `nama` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `android_version` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_mobile_copy`
--

INSERT INTO `t_user_mobile_copy` (`idx`, `idy`, `witel`, `userid`, `nama`, `c_profile`, `pass`, `flagging`, `handphone`, `imei`, `android_version`) VALUES
(1, '1', 'Riau Daratan', '81266997726', 'AHDY FANSURY AKBAR POHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081266997726', '-', '???'),
(2, '2', 'Riau Daratan', '81270569566', 'AHMAD HABIL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081270569566', '352604080287603', '5.1.1'),
(3, '3', 'Riau Daratan', '82288662579', 'BAYU DWI PERMANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288662579', '351817070461415', '4.4.4'),
(4, '4', 'Riau Daratan', '81363543300', 'DINO AFRIANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081363543300', '356043080909369', '7.1.1'),
(5, '5', 'Riau Daratan', '82390241748', 'DONNY SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082390241748', '875400034467726', '6.0.1 MMB29M'),
(6, '6', 'Riau Daratan', '85274744620', 'DWI SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085274744620', '358796084017384', '8.1.0'),
(7, '7', 'Riau Daratan', '81372608953', 'EDY DARMINTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081372608953', '357202071693254', '7.1.1'),
(8, '8', 'Riau Daratan', '81267499033', 'FEBY YUDHIANTO S', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267499033', '358771061344176', '4.4.4'),
(9, '9', 'Riau Daratan', '81277887173', 'FIRMASYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277887173', '351817070529062', '4.4.4'),
(10, '10', 'Riau Daratan', '82198318836', 'GEMA AIDIL RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082198318836', '863674034131704', '7.1.2 N2G47H'),
(11, '11', 'Riau Daratan', '85356360266', 'HARRY KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085356360266', '354921075344092', '5.1.1'),
(12, '12', 'Riau Daratan', '82385061166', 'HERIYANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082385061166', '354921079683057', '5.1.1'),
(13, '13', 'Riau Daratan', '82387511878', 'HERU RONALDO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082387511878', '351817070469665', '4.4.4'),
(14, '14', 'Riau Daratan', '82285772166', 'IQBAL AZIZ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082285772166', '351817070541430', '4.4.4'),
(15, '15', 'Riau Daratan', '81378523765', 'JEPRI PARLINDUNGAN PASARIBU', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081378523765', '354921075344068', '5.1.1'),
(16, '16', 'Riau Daratan', '82384864538', 'NUZWARDANA FIKRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082384864538', '866657039003363', '7.0 NRD90M'),
(17, '17', 'Riau Daratan', '85279932950', 'RAHMAT FAJRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085279932950', '351817070461431', '4.4.4'),
(18, '18', 'Riau Daratan', '85271013247', 'RENOEL PRADIKA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085271013247', '862032033715079', '5.1.1 LMY47V'),
(19, '19', 'Riau Daratan', '81371730898', 'RIBUT WAHIDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081371730898', '354921075339050', '5.1.1'),
(20, '20', 'Riau Daratan', '82391515622', 'ROMI IRTANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082391515622', '356970081685525', '8.0.0'),
(21, '21', 'Riau Daratan', '85265404026', 'SAFRIZAL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085265404026', '354921075344126', '5.1.1'),
(22, '22', 'Riau Daratan', '81378583068', 'ZAMRUD', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081378583068', '359443067308105', '6.0.1'),
(23, '23', 'Riau Daratan', '8117500135', 'ARYONO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117500135', '358761060198541', '6.0.1'),
(24, '24', 'bengkulu', '81379779141', 'HARRIZKY TASTIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081379779141', '354876060070765', '4.4.2'),
(25, '25', 'MEDAN', '8111905552', 'HAYUNINGTYAS ARDIATI', '', 'fa845342ff04a7595e896a89c6f99274', '53', '08111905552', '359982081487320', '8.0.0'),
(26, '26', 'JAMBI', '85266292977', 'HENDRA SYAHYUDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085266292977', '864209031262779', '5.1'),
(27, '27', 'JAMBI', '85369233343', 'SURANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085369233343', '358771063832053', '4.4.4'),
(28, '28', 'JAMBI', '85366439298', 'PURWANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085366439298', '866907038623038', '7.1.1'),
(29, '29', 'JAMBI', '85269993870', 'FREDY FRISTAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085269993870', '351817070989159', '4.4.4'),
(30, '30', 'JAMBI', '82276974881', 'AGUS RIYANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082276974881', '354921075342211', '5.1.1'),
(31, '31', 'JAMBI', '82374089767', 'DIO ALIZA PERDANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082374089767', '354921075342062', '5.1.1'),
(32, '32', 'JAMBI', '85267372343', 'M.RAJ PUTRA YANSA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085267372343', '864744030713828', '7.1.2n2g47h'),
(33, '33', 'JAMBI', '82313971922', 'ARDIYANSYAH R', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082313971922', '354921075328004', '5.1.1.'),
(34, '34', 'JAMBI', '81366821818', 'DELSI PRATOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081366821818', '`354921075327840', '5.1.1'),
(35, '35', 'JAMBI', '82281249191', 'ADE SETIA PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281249191', '354855066833988', '4.4.2'),
(36, '36', 'JAMBI', '85218319449', 'AHMAT SUKRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085218319449', '`354921075342203', '5.1.1'),
(37, '37', 'JAMBI', '81271140445', 'DENIS FACHRUDIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081271140445', '865255039901859', '6.0.1'),
(38, '38', 'JAMBI', '85789030680', 'HUSNAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085789030680', '351817070989555', '4.4.4'),
(39, '39', 'JAMBI', '81271386315', 'AFDAL HANDIKA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081271386315', '865255031142452', '6.1.0'),
(40, '40', 'JAMBI', '82375778002', 'TEGUH MULYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082375778002', '351817070989571', '4.4.4'),
(41, '41', 'JAMBI', '82176115807', 'SEPRIAN PRASTOWO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082176115807', '`351817070899614', '4.4.4'),
(42, '42', 'JAMBI', '85267035334', 'SUBUR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085267035334', '352723090349847', '8.1.0'),
(43, '43', 'JAMBI', '81367528232', 'WAHYUDI WIDODO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081367528232', '353971087323615', '6.0.1'),
(44, '44', 'JAMBI', '81245047367', 'RAHMAT MANGUN H A K', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081245047367', '357202070656205', '7.1.1'),
(45, '45', 'JAMBI', '85103042883', 'SURYANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085103042883', '351817070989670', '4.4.4'),
(46, '46', 'JAMBI', '82279647248', 'AZHARI TRI RAMADAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082279647248', '353604070147188', '7.0 NRD90M'),
(47, '47', 'JAMBI', '82279815716', 'HASTI ANGGRAINI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082279815716', '354462087853291', '7.0 NRD90M'),
(48, '48', 'BENGKULU', '85105414444', 'HERI SUPRIADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085105414444', '860887031360919', '5.0.2 LRX22G'),
(49, '49', 'BENGKULU', '82281604714', 'ANGGI BERTA VIANO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281604714', '869242033523778', '8.1.0'),
(50, '50', 'MEDAN', '82167696172', 'ERJAN NUGROHO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082167696172', '357059081272176', '8.0.0'),
(51, '51', 'MEDAN', '81361955534', 'M. RIZKY ANANDA PRATAMA NST', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081361955534', '869802030597248', '8.1.0'),
(52, '52', 'RIKEP', '8117635050', 'AMINTAS SIRAIT', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117635050', '863525036249391', '|||'),
(53, '53', 'RIKEP', '85108007001', 'PRIANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085108007001', '863440033297791', '5.1'),
(54, '54', 'RIKEP', '8116915339', 'M TAUFIQ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116915339', '352302082086541', '|||'),
(55, '55', 'RIKEP', '81276888543', 'PRIN HARIANTO HUTAURUK', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276888543', '3535160730122950', '|||'),
(56, '56', 'RIKEP', '8117700400', 'MUHAMMAD KAMIL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117700400', '868618034502922', '|||'),
(57, '57', 'RIKEP', '81261210559', 'MARTIN SITUMEANG', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081261210559', '356578093287147', '|||'),
(58, '58', 'RIKEP', '81374137696', 'ADHNES ZOWTLER', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081374137696', '867325038420249', '|||'),
(59, '59', 'RIKEP', '82170786556', 'ZAKI ZAKARIA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082170786556', '869644020503863', '|||'),
(60, '60', 'RIKEP', '82168075863', 'RENDI HALIM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082168075863', '865723035777607', 'III'),
(61, '61', 'RIKEP', '82284148408', 'RIDO JATENDRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082284148408', '863673031969942', '|||'),
(62, '62', 'RIKEP', '81275748884', 'DIKY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081275748884', '868703034369132', '|||'),
(63, '63', 'RIKEP', '81277883239', 'SAIPUL MUKMIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277883239', '867325037770446', '|||'),
(64, '64', 'RIKEP', '82165671990', 'REZKI MARIO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165671990', '863730039373145', '|||'),
(65, '65', 'RIKEP', '82286615242', 'M.ALFITRA FALFO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082286615242', '867560037404287', '|||'),
(66, '66', 'RIKEP', '8126786781', 'SABRAM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08126786781', '860369032732057', '|||'),
(67, '67', 'RIKEP', '81277620268', 'TEGUH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277620268', '-', '|||'),
(68, '68', 'RIKEP', '82386553323', 'WINDO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082386553323', '868618033486507', '|||'),
(69, '69', 'RIKEP', '81260045361', 'KAMARULLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081260045361', '867255039796182', '8.1.0'),
(70, '70', 'RIKEP', '81364185492', 'M.TAHIR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081364185492', '866417037430427', '|||'),
(71, '71', 'RIKEP', '85105673100', 'WANDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085105673100', '861930043504436', '|||'),
(72, '72', 'RIKEP', '85264911252', 'ISTU YENDRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085264911252', '866004038045758', '|||'),
(73, '73', 'RIKEP', '85364444425', 'MISWANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085364444425', '354921079685375', '|||'),
(74, '74', 'RIKEP', '82169009954', 'MUHAMAD EGIRAHMAT', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082169009954', '358690071901108', '|||'),
(75, '75', 'RIKEP', '81927172578', 'INDAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081927172578', '867325033234686', '|||'),
(76, '76', 'RIKEP', '82285852226', 'DESTRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082285852226', '3532040608534740', '|||'),
(77, '77', 'RIKEP', '81276606846', 'OZZA APRIO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276606846', '355123090563231', '|||'),
(78, '78', 'RIKEP', '85364995974', 'ARIEF PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085364995974', '358338085131516', '|||'),
(79, '79', 'RIKEP', '81267298251', 'EKA SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267298251', '865249038609894', '|||'),
(80, '80', 'RIKEP', '87747410083', 'RANA HADITYO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087747410083', '869794031509787', '|||'),
(81, '81', 'RIKEP', '8117707731', 'SAFUAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117707731', '862123038610975', '6.0.1'),
(82, '82', 'RIKEP', '82197787574', 'APRI DANI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082197787574', '354418071104349', '|||'),
(83, '83', 'RIKEP', '82268600553', 'VICKY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082268600553', '868619039395155', '|||'),
(84, '84', 'RIKEP', '8126472887', 'CITRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08126472887', '865395033393883', '|||'),
(85, '85', 'RIKEP', '8117032108', 'ANDONI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117032108', '351817070508926', '|||'),
(86, '86', 'RIKEP', '82288471337', 'EKO BERNAD', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288471337', '868931030434713', '|||'),
(87, '87', 'RIKEP', '82173061160', 'RIO KURNIADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082173061160', '352604080203964', '|||'),
(88, '88', 'RIKEP', '81270978114', 'RAFIF', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081270978114', '359556063611147', '|||'),
(89, '89', 'MEDAN', '81362228678', 'ZUHARMEN MUZAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081362228678', '357325071466320', '8.0.0'),
(90, '90', 'MEDAN', '85297388999', 'WENDY SOETRISNO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085297388999', '863896041548139', '|||'),
(91, '91', 'MEDAN', '81273413127', 'RIFKY RAMADHANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081273413127', '868203037885085', '|||'),
(92, '92', 'ACEH', '8116851805', 'SUDARTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116851805', '358796081172026', '|||'),
(93, '93', 'SUMBAR', '82171000744', 'RAKHMAD AZMI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082171000744', '861565048199376', '|||'),
(94, '94', 'SUMBAR', '85256559182', 'FEBY KURNIA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085256559182', '867815038674076', '|||'),
(95, '95', 'SUMBAR', '81374161959', 'YORI AMDANI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081374161959', '357926075546262', '|||'),
(96, '96', 'SUMBAR', '81372080349', 'RAHMAT HIDAYAT', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081372080349', '354462087673434', '|||'),
(418, '418', 'SUMBAR', '82390760515', 'Ilham syahyudi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082390760515', '869949035962974', '8.1'),
(98, '98', 'SUMBAR', '82288062431', 'ANDRE HARTA YURI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288062431', '868836038970339', '7.1.1'),
(99, '99', 'BABEL', '85268999901', 'WAHYU PURWANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085268999901', '866764033072335', '7.1.2 N2G47H'),
(100, '100', 'BABEL', '82281329993', 'ALAMSYAH PRAWIRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281329993', '357453062945050', '|||'),
(101, '101', 'BABEL', '82280403578', 'NUGROHO WICAKSONO NYWITADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082280403578', '865759039374942', '|||'),
(102, '102', 'BABEL', '82184088234', 'RISKY NOVRIANDY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082184088234', '867560037286049', '|||'),
(103, '103', 'BABEL', '82176511024', 'DERY SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082176511024', '351817070935673', '|||'),
(104, '104', 'MEDAN', '82277755165', 'FAJAR PRASETYO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082277755165', '353667071501653', '|||'),
(105, '105', 'MEDAN', '81375618662', 'IMAM FAUZAN TAGOR LUBIS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081375618662', '359755082604576', '|||'),
(106, '106', 'MEDAN', '85765943991', 'ANGGI PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085765943991', '867796037312381', '|||'),
(107, '107', 'MEDAN', '81375832207', 'ILHAM EGY PRATOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081375832207', '862049032097499', '|||'),
(108, '108', 'MEDAN', '85757275354', 'RICKY SEPJO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085757275354', '865759036983166', '|||'),
(109, '109', 'MEDAN', '85297128911', 'MHD. IQBAL RAHARJO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085297128911', '354921075344233', '|||'),
(110, '110', 'ACEH', '82360745502', 'ADAM ALAMSYAH PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082360745502', '358771061364414', '|||'),
(111, '111', 'ACEH', '85260954820', 'ANDRIANSYAH MS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085260954820', '358771061365072', '|||'),
(112, '112', 'ACEH', '82272823992', 'M. ENRICO SAYUTI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082272823992', '358771061364992', '|||'),
(113, '113', 'ACEH', '82277686501', 'FADHILAH ASYURA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082277686501', '354921075333970', '|||'),
(114, '114', 'ACEH', '82347312830', 'AULIA RIZKI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082347312830', '-', '|||'),
(115, '115', 'ACEH', '85261425952', 'HERI MUSLIANDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085261425952', '-', '|||'),
(116, '116', 'ACEH', '85145044814', 'RISNALDI SH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085145044814', '354921075342773', '|||'),
(117, '117', 'ACEH', '85276509117', 'M. YUSUF', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085276509117', '351817070464419', '|||'),
(118, '118', 'ACEH', '85260100072', 'FIRDAUS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085260100072', '358771061361626', '|||'),
(119, '119', 'ACEH', '85372857776', 'M. FAHRUL RAZI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085372857776', '358771061361220', '|||'),
(120, '120', 'ACEH', '85310008183', 'RINTIARNO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085310008183', '358771061361659', '|||'),
(121, '121', 'ACEH', '82273789494', 'DANI RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082273789494', '862032031767882', '7.1.2 N2G47H'),
(122, '122', 'ACEH', '82311719591', 'M AZI ZULHADZAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082311719591', '351817070464393', '|||'),
(123, '123', 'ACEH', '85362333371', 'MUKHSIN ANWAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085362333371', '351817070877495', '|||'),
(124, '124', 'ACEH', '85277630352', 'ILHAMDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085277630352', '354921075334499', '|||'),
(125, '125', 'ACEH', '82367535606', 'M. ANGGA ADITYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082367535606', '358771061361089', '|||'),
(126, '126', 'ACEH', '8526003833', 'YULFANDA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08526003833', '-', '|||'),
(127, '127', 'ACEH', '85207863131', 'BIAMRILLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085207863131', '-', '|||'),
(128, '128', 'ACEH', '82360614670', 'DEDDY RAHMAYADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082360614670', '358771061365338', '|||'),
(129, '129', 'ACEH', '82370101593', 'm syukur RIFALDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082370101593', '864698039396292', '7.1.2 N2G47H'),
(130, '130', 'ACEH', '81362315744', 'RAZI AL-FATH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081362315744', '99001149039837', '8.1.0(oreo)'),
(131, '131', 'ACEH', '82165068239', 'RISNANDAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165068239', '35 200706 146947 3', '12.0 (16A366)'),
(132, '132', 'ACEH', '85260155550', 'Syahril', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085260155550', '351817/07/087862/6', 'versi android 4.4.4'),
(133, '133', 'SUMBAR', '82288088553', 'NUR AZLI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288088553', '352604080287652', '|||'),
(134, '134', 'SUMBAR', '82386720852', 'ARIFAL HIDAYATULLAH WR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082386720852', '357931094177792', '|||'),
(135, '135', 'SUMBAR', '82389289091', 'ERIX SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082389289091', '812345678912343', '|||'),
(136, '136', 'SUMBAR', '85210502464', 'YUDHA ISRA APRIDANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085210502464', '351817070428992', '|||'),
(137, '137', 'SUMBAR', '81317900828', 'DOAN ZUBAHASIAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081317900828', '351817070429347', '|||'),
(138, '138', 'SUMBAR', '81297937668', 'ANDRE SAHADAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081297937668', '351817070899622', '|||'),
(139, '139', 'SUMBAR', '8116619985', 'FACHRI KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116619985', '867560037086969', '|||'),
(140, '140', 'SUMBAR', '82384960370', 'JEFRY HENDILA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082384960370', '351817070935640', '|||'),
(141, '141', 'SUMBAR', '85100867333', 'IDRIAL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100867333', '355240076557381', '|||'),
(142, '142', 'SUMBAR', '81267705253', 'JODDI BAKTI KELANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267705253', '351817070935699', '|||'),
(143, '143', 'SUMBAR', '82288411587', 'RIKKI KASANDRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288411587', '354921075338243', '|||'),
(144, '144', 'SUMBAR', '82283751818', 'WANDI MULYADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082283751818', '359556063851206', '|||'),
(145, '145', 'SUMBAR', '82385599789', 'FAJAR SIDDIK', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082385599789', '352806090871728', '|||'),
(146, '146', 'SUMBAR', '81267523794', 'OZY HERSA PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267523794', '351817070424488', '|||'),
(147, '147', 'SUMBAR', '81317901965', 'HERMANA BAGASKARA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081317901965', '351817070420676', '|||'),
(148, '148', 'SUMBAR', '82288599291', 'RICO WARMAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288599291', '865030034122532', '|||'),
(149, '149', 'SUMBAR', '85265227708', 'ARI SATRIA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085265227708', '867815038960517', '|||'),
(150, '150', 'SUMBAR', '81285404090', 'IDRI YOGI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081285404090', '869949032600213', '|||'),
(151, '151', 'SUMBAR', '82386200859', 'RINGGANO APRILIAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082386200859', '864218037271015', '|||'),
(152, '152', 'SUMBAR', '81378355583', 'DASIRWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081378355583', '355123090980963', '|||'),
(153, '153', 'SUMBAR', '85274745333', 'KHAIRIL ANAM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085274745333', '862651030140476', '|||'),
(154, '154', 'BENGKULU', '81271756508', 'DONI KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081271756508', '867325036205626', '8.1.0'),
(155, '155', 'BENGKULU', '85378229177', 'EKA WIJAYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085378229177', '865181036301069', '8.1.0'),
(156, '156', 'BENGKULU', '85377771800', 'CANDRA WIJAYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085377771800', '358107061620234', '7.,0'),
(157, '157', 'BENGKULU', '85266859098', 'SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085266859098', '865181036033662', '8.1.0'),
(158, '158', 'BENGKULU', '85267796690', 'JAKA ADHITYA SUSANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085267796690', '861365032930674', '5.0.2'),
(159, '159', 'BENGKULU', '81274739552', 'khairil ikhsan', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081274739552', '351817070880705', '4.4.4'),
(160, '160', 'BENGKULU', '81298804993', 'Edo Pranata', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081298804993', '354921079683834', '5.1.1'),
(161, '161', 'BENGKULU', '82177721234', 'GUNAWAN ARIYADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082177721234', '355046091416796', '8.0.0'),
(162, '162', 'BENGKULU', '82210067520', 'Rifki Adhitama', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082210067520', '867193036301534', '8.1.0'),
(163, '163', 'BENGKULU', '82376830289', 'Ajuanda Putra', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082376830289', '865815036179880', '7.1.2 N2G47'),
(164, '164', 'BENGKULU', '82371457173', 'Agun Rahwedi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082371457173', '352700063208358', '3.8'),
(165, '165', 'MEDAN', '8116131654', 'M RIVAI HASIBUAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116131654', '358982072794040', '|||'),
(166, '166', 'JAMBI', '82372310711', 'TULUS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082372310711', '355222090284309', '|||'),
(167, '167', 'BABEL', '8117171211', 'SARWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117171211', '352238066312463', '|||'),
(168, '168', 'BABEL', '8116102833', 'SUCIPTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116102833', '869262038789976', '|||'),
(169, '169', 'BABEL', '8117170577', 'ROZALI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117170577', '354462086422353', '|||'),
(170, '170', 'SUMSEL', '85262857704', 'NADYA NOVITA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085262857704', '867626022459410', '6.0.0'),
(171, '171', 'SUMSEL', '82175915791', 'FADEL ARROYAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082175915791', '353270074095854', 'iOS 12.0.1'),
(172, '172', 'SUMSEL', '82280411872', 'MATTOMI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082280411872', '355337090057966', '8.0.0'),
(412, '1', 'SUMSEL', '82360716750', 'M.RONY PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082360716750', '864448038576084', '5.1.1'),
(174, '174', 'SUMSEL', '81279164999', 'ARFENDRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081279164999', '359447095613022', '8.1.0'),
(175, '175', 'MEDAN', '85100380723', 'M.DIAN RIVAI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100380723', '867103030036994', '|||'),
(176, '176', 'BENGKULU', '82371622193', 'BRAM FADLILLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082371622193', '358796083192170', '8.1.0'),
(177, '177', 'BENGKULU', '82175772009', 'Fikhri Widian Pratama', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082175772009', '864984046966750', '8.1.0'),
(178, '178', 'SUMUT', '82277402456', 'CHRYS MAWARDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082277402456', '353749090121463', '7,1,1'),
(179, '179', 'SUMUT', '8116247777', 'ISWANUDDIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116247777', '352191079833407', '6,0'),
(180, '180', 'SUMUT', '82217379774', 'FIKRI ASHARI DAMANIK', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082217379774', '358796084453860', '8,1,0'),
(181, '181', 'SUMUT', '8116202266', 'ANGGA KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116202266', '358796084499541', '8,1,0'),
(182, '182', 'SUMUT', '82307435155', 'FAJAR HIDAYAT', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082307435155', '359556062241615', '6,0,1'),
(183, '183', 'SUMUT', '82294792760', 'RAMADHAN WANDANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082294792760', '355266091224780', '7,1,1'),
(184, '184', 'SUMUT', '82370399191', 'ZEPRI SANDI SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082370399191', '867395034848636', '7.1.2 N2G47H'),
(185, '185', 'SUMUT', '85358063676', 'JOHAN PRANATA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085358063676', '865255032379517', '6,0,1'),
(186, '186', 'SUMUT', '82369950675', 'JULI ARIANUS LASE', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082369950675', '352604080178893', '5,1,1'),
(187, '187', 'SUMUT', '82166460767', 'MAHYUDIN HELMI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082166460767', '354921075331339', '5,1,1'),
(188, '188', 'SUMUT', '81269923889', 'TAUFIQ ASH SHIDDIQ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081269923889', '867836037181228', '8,1,0'),
(189, '189', 'SUMUT', '81213635333', 'MAHDI RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081213635333', '862963033106440', '6,0 MRA58K'),
(190, '190', 'SUMUT', '82166617455', 'M.RIDWAN SYAFII DAMANIK', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082166617455', '869668039733351', '8,1,0'),
(191, '191', 'SUMUT', '82272628968', 'OKTORIANUS ZEGA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082272628968', '866037034826961', '7.0.0'),
(192, '192', 'SUMUT', '8116559393', 'SYAFARUDDIN AL HABIB TANJUNG', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116559393', '358061080871577', '5,1,1'),
(193, '193', 'SUMUT', '81362284230', 'ABDUL RASYID', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081362284230', '359999061915062', '|||'),
(194, '194', 'SUMUT', '8116251129', 'IQBAL YASSER', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116251129', '356970080881695', '8.0.0'),
(195, '195', 'SUMUT', '82166617700', 'RESTU', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082166617700', '866347034579399', '5,1,1'),
(196, '196', 'SUMUT', '81376909708', 'SUHERMAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081376909708', '358631062994322', '5,1,1'),
(197, '197', 'SUMUT', '85206750571', 'BUDI MARDAKHAI NADEAK', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085206750571', '862805031099137', '6,0 MRA58K'),
(198, '198', 'LAMPUNG', '82281001110', 'ery suryadi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281001110', '357453060658523', '5.0.2'),
(423, '1', 'LAMPUNG', '82177952957', 'Krida wijaya', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082177952957', '352604080287660', '5.1.1'),
(200, '200', 'LAMPUNG', '81366424574', 'tarno', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081366424574', '353516072705898', '6.0.1'),
(201, '201', 'LAMPUNG', '8117228090', 'sugiono', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117228090', '359031060992031', '5.0.2'),
(202, '202', 'LAMPUNG', '82306093406', 'redho', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082306093406', '356272066971750', '5.0.2'),
(203, '203', 'LAMPUNG', '82257668831', 'rakhmat oktariza', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082257668831', '864854034176599', '8.0.0'),
(204, '204', 'LAMPUNG', '8127218261', 'gusti rakhmadi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08127218261', '352014091126479', '8.0.0'),
(205, '205', 'SUMUT', '81264116797', 'FEBRI SAHDAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081264116797', '359993092809501', '8,1,0'),
(206, '206', 'SUMUT', '85276694819', 'ANSHARI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085276694819', '356521080434058', '7,0'),
(207, '207', 'SUMUT', '82161844838', 'OIS ALQORANI SEMBIRING', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082161844838', '356521080856334', '7,0'),
(208, '208', 'SUMUT', '81397787989', 'Ryanto Samosir', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081397787989', '358771060013541', '|||'),
(209, '209', 'SUMUT', '85361585645', 'HADI GUNAWAN TAMBUNAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085361585645', '869723031218271', '8.1.0'),
(210, '210', 'SUMUT', '82165107777', 'Arifin syaleh batubara', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165107777', '356521080854677', '7,0'),
(211, '211', 'SUMUT', '81362384888', 'NINGOT MATANARI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081362384888', '356521081268133', '7,0'),
(212, '212', 'SUMUT', '85373523163', 'LIVRATMO.L. MANALU', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085373523163', '86905503722253', '7,0'),
(213, '213', 'Sumsel', '82376604696', 'NOPEN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082376604696', '868774035559682', '7.2.1.N2G47H'),
(214, '214', 'Sumsel', '81272764757', 'M. FAJRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081272764757', '351817070539202', '4.4.4'),
(215, '215', 'Sumsel', '82212083691', 'RAHMAD TRI WAHYUDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212083691', '351817070434834', '4.4.4'),
(216, '216', 'Sumsel', '82282631073', 'ZAINAL ABIDIN NASUTION', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082282631073', '351817070950995', '4.4.4'),
(217, '217', 'Sumsel', '8991414364', 'RIZKO MAULANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08991414364', '356472097950456', '8.0.0'),
(218, '218', 'Sumsel', '82212709081', 'RENDY SETIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212709081', '868203037235323', '7.1.2'),
(219, '219', 'Sumsel', '8117470822', 'HARRY GUNAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117470822', '860570034526062O', '7.1.2 N2G47H'),
(220, '220', 'Sumsel', '87798140648', 'ACHMAD SURKATI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087798140648', '868222033916587', '7.1.2'),
(221, '221', 'Sumsel', '81287342774', 'YULI SULISTIYONO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081287342774', '358771061397562', '4.4.4'),
(222, '222', 'Sumsel', '82278557278', 'SYARIF HIDAYATULLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082278557278', '357379051939111', '4.2.2'),
(223, '223', 'Sumsel', '82212934179', 'GUNA SULAIMAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212934179', '351818070983556', '4,4,4'),
(224, '224', 'Sumsel', '8978731356', 'ZULKARNAIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08978731356', '862115038642164', '6.0.1'),
(225, '225', 'Sumsel', '81283827068', 'DEDY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081283827068', '358771061362970', '4.4.4'),
(226, '226', 'Sumsel', '85224235000', 'ACHMAD SHOLIHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085224235000', '356578090170460', '8.1.0'),
(227, '227', 'Sumsel', '85100418117', 'WIYONO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100418117', '35492107653760', '5.1.1'),
(228, '228', 'Sumsel', '83177192841', 'M. RIZKI FIRDAUS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '083177192841', '869350037759494', '8.1.0'),
(229, '229', 'Sumsel', '82282932781', 'HANIFA RIADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082282932781', '352018096343617', '5.1.1'),
(230, '230', 'Sumsel', '82281488444', 'ALVI NIZAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281488444', '865354034640313', '7.1.2 N2G47H'),
(231, '231', 'Sumsel', '85100032152', 'WARSITO TEGUH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100032152', '358771061594721', '4.4.4'),
(232, '232', 'Sumsel', '82212709084', 'EDWARD SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212709084', '351817070427374', '4.4.4'),
(233, '233', 'Sumsel', '82280404352', 'MUHAMMAT MUAMAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082280404352', '351817070950490', '4.4.4'),
(234, '234', 'Sumsel', '89687809680', 'ALAM SYAHNUR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '089687809680', '869700026415393', '5.1'),
(235, '235', 'Sumsel', '89651156198', 'IMAM RIZKY PRIMAYANI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '089651156198', '866400027161327', '4.4.4'),
(236, '236', 'Sumsel', '81278753780', 'DIANSYAH PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081278753780', '862805030986177', '6'),
(237, '237', 'Sumsel', '82212934164', 'JAYA MARGO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212934164', '351817070950847', '4.4.4'),
(238, '238', 'Sumsel', '81283826973', 'ANDRI JULIANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081283826973', '358771061366351', '4.4.4'),
(239, '239', 'Sumsel', '85363955279', 'RANGGA ADESTIA PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085363955279', '356911079295679', '7'),
(240, '240', 'Sumsel', '82212934181', 'SIIL SAHFITRI ALI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212934181', '351817070950813', '4.4.4'),
(241, '241', 'Sumsel', '85367768887', 'TARISNA HADISIMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085367768887', '357884080779925', '7.1.1'),
(242, '242', 'Sumsel', '81369126862', 'RAHMAD JUNLIANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081369126862', '352191079857174', '6.0.0'),
(243, '243', 'Sumsel', '81809164476', 'ABDUL CHALID', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081809164476', '356876058200826', '4.1.2'),
(244, '244', 'Sumsel', '81291718385', 'HARIS WAHYUDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081291718385', '351817070950706', '4.4.4'),
(245, '245', 'Sumsel', '85378140090', 'INPAHRI NOVIANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085378140090', '869949036942330', '8.1.0'),
(246, '246', 'Sumsel', '82212934175', 'RYZKA AJI PURNOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212934175', '351817070950870', '4.4.4'),
(247, '247', 'Sumsel', '85767171529', 'IMAN ELFASHA HIKMATULLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085767171529', '867708036398964', '7.1.2 N2G47H'),
(248, '248', 'Sumsel', '81274265110', 'AGUNG SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081274265110', '353552082371934', '6.0.1'),
(411, '1', 'SUMSEL', '81281878394', 'RADEN NANDA ALFIAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081281878394', '861250040924044', '8.1.0'),
(250, '250', 'Sumsel', '82114599141', 'M WAHYU MARDIANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082114599141', '863526034697771', '5.1'),
(251, '251', 'Sumsel', '85100626191', 'ABDUL FATTAH FADHLY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100626191', '359755085667372', '5.1'),
(252, '252', 'Sumsel', '85377602061', 'OCHINTILASANI DEWI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085377602061', '862049033831656', '5.1'),
(253, '253', 'Sumsel', '81278452665', 'M FIKRI HIDAYATULLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081278452665', '863674032273243', '7.1.2 N2G47H'),
(254, '254', 'Sumsel', '82212709080', 'UJI ANDERTA SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212709080', '358771061396739', '4.4'),
(255, '255', 'Sumsel', '81287342812', 'HERLAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081287342812', '358771061395780', '4.4.4'),
(256, '256', 'Sumsel', '89635440974', 'MOCH SOLEH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '089635440974', '867561035274128', '8.1.0'),
(257, '257', 'Sumsel', '81297917132', 'JUNAIDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081297917132', '865819036605167', '7.1.2 N2G47H'),
(258, '258', 'BENGKULU', '82175772009', 'Fikhri Widian Pratama', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082175772009', '864984046966750', '8.1.0'),
(259, '259', 'BENGKULU', '82306334991', 'ACHMAD AZHAR BASYIR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082306334991', '865990035655345', '7.1.2'),
(260, '260', 'SUMBAR', '81289149112', 'ALFIAN GHIFARI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081289149112', '357325071161632', '7'),
(261, '261', 'LAMPUNG', '82178604535', 'andika saputra', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082178604535', '351817070855426', '|||'),
(262, '262', 'LAMPUNG', '8997001519', 'rio sentanu', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08997001519', '352205061799382', '|||'),
(263, '263', 'LAMPUNG', '85103026878', 'patuh riyadi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085103026878', '354921075342898', '|||'),
(264, '264', 'LAMPUNG', '82177556189', 'mochammad iqbal', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082177556189', '354921075339654', '|||'),
(265, '265', 'LAMPUNG', '81281124424', 'arif syaikhul muslimin', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081281124424', '354921075339654', '|||'),
(266, '266', 'LAMPUNG', '81277066529', 'febri adetya suryaman', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277066529', '352604080309639', '|||'),
(422, '1', 'LAMPUNG', '82374660462', 'fadzar zulkarnain', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082374660462', '867560036071509', '9'),
(268, '268', 'LAMPUNG', '82186551323', 'candra kusuma', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082186551323', '354418077461230', '|||'),
(269, '269', 'LAMPUNG', '82176553919', 'riki trisandi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082176553919', '352723090237810', '|||'),
(270, '270', 'LAMPUNG', '82176323865', 'yoga setiawan', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082176323865', '351817070609831', '|||'),
(271, '271', 'LAMPUNG', '82376333166', 'agung tri nugroho', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082376333166', '353634096403877', '|||'),
(272, '272', 'LAMPUNG', '85273354418', 'dimas kusuma', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085273354418', '353516078325378', '|||'),
(273, '273', 'LAMPUNG', '8127307637', 'muhammad iqbal', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08127307637', '865431032284797', '|||'),
(274, '274', 'LAMPUNG', '81271672669', 'riki hermawan', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081271672669', '865569030987232', '|||'),
(275, '275', 'LAMPUNG', '85273878111', 'deni febriawan', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085273878111', '354921075334465', '|||'),
(276, '276', 'LAMPUNG', '81368647903', 'muhammad rizki', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081368647903', '351817070410883', '|||'),
(277, '277', 'LAMPUNG', '85101593310', 'jumiyati', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085101593310', '351651066881470', '|||'),
(278, '278', 'LAMPUNG', '8987781978', 'jamaludin', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08987781978', '351817070855418', '|||'),
(279, '279', 'LAMPUNG', '8117865585', 'agung yudhantoro', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117865585', '354921079683917', '|||'),
(280, '280', 'MEDAN', '83199141425', 'RIO SAFINDO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '083199141425', '866200031582975', '|||'),
(281, '281', 'MEDAN', '81375469952', 'MUHAMMAD ASHRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081375469952', '352604080313904', '|||'),
(282, '282', 'MEDAN', '83177993079', 'EDI MARTONO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '083177993079', '352723091606047', '|||'),
(283, '283', 'MEDAN', '85100321299', 'TONI NURSANDI PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100321299', '352723091700519', '|||'),
(284, '284', 'MEDAN', '82212065231', 'M. ARIEF HERMAWAN S', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212065231', '353516070440290', '|||'),
(285, '285', 'MEDAN', '82389194232', 'TENGKU M ZIKRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082389194232', '356472097061502', '|||'),
(286, '286', 'MEDAN', '85397560442', 'ANDI SIMORANGKIR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085397560442', '354462089380475', '|||'),
(287, '287', 'MEDAN', '85261359005', 'DUWAN PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085261359005', '354658070134280', '|||'),
(288, '288', 'MEDAN', '82165835065', 'SAUDARA EFENSIUS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165835065', '865646039265180', '|||'),
(289, '289', 'MEDAN', '85100382415', 'ARIEF HIDAYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100382415', '354921075346162', '|||'),
(290, '290', 'MEDAN', '85297259666', 'DARMA SUGANDA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085297259666', '354921075346212', '|||'),
(291, '291', 'MEDAN', '85297876627', 'RAFSANJANI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085297876627', '356088083038120', '|||'),
(292, '292', 'MEDAN', '81287179007', 'HABBY EMASTYO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081287179007', '356514081328577', '|||'),
(293, '293', 'MEDAN', '85277129641', 'NURAHMAD FADIL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085277129641', '357202071205125', '|||'),
(294, '294', 'MEDAN', '85100022363', 'RONI ZULKARNAIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100022363', '358463076538600', '|||'),
(295, '295', 'MEDAN', '85101405578', 'ERWIN SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085101405578', '358771061311431', '|||'),
(296, '296', 'MEDAN', '85108275252', 'M. NUR LUBIS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085108275252', '358771061311613', '|||'),
(297, '297', 'MEDAN', '85270526812', 'T. RACHMADSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085270526812', '358771061317784', '|||'),
(298, '298', 'MEDAN', '85101699617', 'M. FAISAL NASUTION', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085101699617', '358771061358309', '|||'),
(299, '299', 'MEDAN', '81248934779', 'ASWIN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081248934779', '358771061545608', '|||'),
(300, '300', 'MEDAN', '82360479041', 'HERU', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082360479041', '358796082487365', '|||'),
(301, '301', 'MEDAN', '82166984048', 'RANDI SYAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082166984048', '861111034925761', '|||'),
(302, '302', 'MEDAN', '81265260441', 'ABDUL HADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081265260441', '861230033007114', '|||'),
(303, '303', 'MEDAN', '82165001194', 'KELVIN ANDIKA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165001194', '861980037442762', '|||'),
(304, '304', 'MEDAN', '87768880869', 'ILHAM EGY PRATOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087768880869', '862049032097499', '|||'),
(305, '305', 'MEDAN', '88261713276', 'FIKRI ABDILLAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '088261713276', '862973030903830', '|||'),
(306, '306', 'MEDAN', '81262919698', 'INDRA ROMIGO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081262919698', '863391034013812', '|||'),
(307, '307', 'MEDAN', '85833707079', 'RIZKIANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085833707079', '863410030831967', '|||'),
(308, '308', 'MEDAN', '82165744641', 'HOTBER ANDREAS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165744641', '863441037652890', '|||'),
(309, '309', 'MEDAN', '85757275354', 'RICKY SEPJO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085757275354', '865759036983166', '|||'),
(310, '310', 'MEDAN', '81263246115', 'INDRIANTO PRABOWO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081263246115', '866400024304706', '|||'),
(311, '311', 'MEDAN', '82294183319', 'M WINDI KESUMA ATMAJA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082294183319', '868346022856999', '|||'),
(312, '312', 'MEDAN', '82274728689', 'DANA SAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082274728689', '868616033457528', '|||'),
(313, '313', 'MEDAN', '83179375664', 'RIFA RULIANSYAH', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '083179375664', '869050035180897', '|||'),
(314, '314', 'MEDAN', '81260878162', 'JOKO SUHENDRO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081260878162', '869355020754352', '|||'),
(315, '315', 'MEDAN', '82277845492', 'M BILAL SYAHPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082277845492', '869792030520664', '|||'),
(316, '316', 'MEDAN', '82267188287', 'DAYU OKI KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082267188287', '869815033016842', '|||'),
(317, '317', 'MEDAN', '85362506017', 'ILHAM RIZKY SIREGAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085362506017', '896730030796017', '|||'),
(318, '318', 'MEDAN', '81269312780', 'HABIBI ISMO PRATOMO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081269312780', '352604080288569', '|||'),
(319, '319', 'MEDAN', '81262030362', 'M. AJMAL WILDAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081262030362', '354921075341833', '|||'),
(320, '320', 'MEDAN', '85100900230', 'DONY BASTIAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100900230', '354921075344217', '|||'),
(321, '321', 'MEDAN', '85275183799', 'ANDI ASMARA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085275183799', '354921075346188', '|||'),
(322, '322', 'MEDAN', '85103928555', 'DEDEK ANDIKA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085103928555', '354921075346204', '|||'),
(323, '323', 'MEDAN', '82167925876', 'M. MUSJIAN SYARIL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082167925876', '354921075346279', '|||'),
(324, '324', 'MEDAN', '82165431044', 'DESMON MARANATHA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082165431044', '358771061288670', '|||'),
(325, '325', 'MEDAN', '85102476661', 'BAMBANG NOVRAL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085102476661', '359162061597808', '|||'),
(326, '326', 'MEDAN', '81375766161', 'DANDY', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081375766161', '359443061552286', '|||'),
(327, '327', 'MEDAN', '81260857077', 'MEGI AKBAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081260857077', '863620047403101', '8.1.0'),
(328, '328', 'MEDAN', '82197996860', 'SAID AHMAD IBRAHIM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082197996860', '868415026200916', '|||'),
(329, '329', 'MEDAN', '85270191248', 'RIZALDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085270191248', '868498030028770', '|||'),
(330, '330', 'MEDAN', '82364236603', 'FAUZI RIZKI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082364236603', '868703038964169', '|||'),
(331, '331', 'MEDAN', '82166160054', 'ROBERTO KRISWARDAYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082166160054', '358061080111412', '|||'),
(332, '332', 'MEDAN', '81287179007', 'HABY EMASTYO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081287179007', '356514081328577', '|||'),
(333, '333', 'MEDAN', '82277462555', 'Dedi rahmadi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082277462555', '358771062097138', '|||'),
(334, '334', 'RIKEP', '82141713858', 'BOB SANDRA DEWANTARA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082141713858', '868698036598367', '|||'),
(335, '335', 'RIKEP', '85265882363', 'BAYU IRHAM PUTRA WIBAWA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085265882363', '359252062171917', '|||'),
(336, '336', 'RIKEP', '81268993688', 'EKA FEBRI ERNANDO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081268993688', '863526034251553', '|||'),
(337, '337', 'RIKEP', '81267349241', 'JONI SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267349241', '352722092382384', '|||'),
(338, '338', 'RIKEP', '85220799557', 'PEBRIANTO LUMBANGAOL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085220799557', '869350033563270', '|||'),
(339, '339', 'RIKEP', '81276660238', 'TISON DEDI PUTRA AMBARITA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276660238', '865643032219512', '|||'),
(340, '340', 'RIKEP', '81276355123', 'AKHMAD TAUFIQ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276355123', '868939037471208', '|||'),
(341, '341', 'RIKEP', '8117731310', 'AGUSMAN GANDO PUTA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08117731310', '861875040896451', '|||'),
(342, '342', 'RIKEP', '81277662133', 'FIRMA DOANI MARTAHAN SIMAMORA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277662133', '867458035362450', '|||'),
(343, '343', 'RIKEP', '81267809225', 'MUHAMMAD YUNAIDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267809225', '358796084631101', '|||'),
(344, '344', 'RIKEP', '81267560172', 'RUSLI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267560172', '86869026722364', '|||');
INSERT INTO `t_user_mobile_copy` (`idx`, `idy`, `witel`, `userid`, `nama`, `c_profile`, `pass`, `flagging`, `handphone`, `imei`, `android_version`) VALUES
(345, '345', 'RIKEP', '82212708106', 'MUHAMMAD HANDYAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212708106', '865431034885278', '|||'),
(346, '346', 'RIKEP', '82386061083', 'KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082386061083', '866623035187089', '|||'),
(347, '347', 'RIKEP', '82384658165', 'RIZKI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082384658165', '865815035827901', '|||'),
(348, '348', 'TREG1', '811698865', 'IKHSAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '0811698865', '357832073164993', '|||'),
(349, '349', 'TREG1', '8116091965', 'MEDIUM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116091965', '359447096192703', '|||'),
(350, '1', 'MEDAN', '85362506017', 'RIZKI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085362506017', '869730030796017', 'III'),
(351, '1', 'BABEL', '85379201115', 'Afrizal', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085379201115', '866764035461973', 'redmi 5+'),
(352, '1', 'BABEL', '85369854095', 'Barin Falo', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085369854095', '357931094525941', 'III'),
(353, '1', 'BENGKULU', '82184026820', 'Elwanda Suhendra', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082184026820', '866988031725418', '7.1.2'),
(354, '1', 'BENGKULU', '82280743875', 'Okta Wahyudi', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082280743875', '866347032642454', '5.1.1'),
(355, '1', 'BENGKULU', '82184026820', 'Elwanda Suhendra', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082184026820', '866988031725418', '7.1.2'),
(356, '1', 'ACEH', '81360969688', 'Zulfikar Idris', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081360969688', '865354037966756', '7.1.2 N2G47H'),
(357, '1', 'RIKEP', '85220799557', 'FEBRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085220799557', '869350033563270', 'III'),
(358, '1', 'RIKEP', '81267349241', 'JONI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267349241', '352721092382386', 'III'),
(359, '1', 'RIKEP', '85363590574', 'PILIPI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085363590574', '869350038155270', 'III'),
(360, '1', 'SUMBAR', '82387842220', 'FAUZUL AUFAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082387842220', '357572060830855', ''),
(361, '1', 'SUMBAR', '85376261361', 'RANDA YULIANDI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085376261361', '866347031600917', ''),
(362, '1', 'RIKEP', '82384658165', 'RIZKI KURNIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082384658165', '865815035827901', 'III'),
(363, '1', 'RIKEP', '81267560172', 'RUSLI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081267560172', '868689026722364', 'III'),
(364, '1', 'SUMUT', '82122554914', 'AHMAD RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082122554914', '352014090973475', '8.0.0'),
(365, '1', 'RIKEP', '81277457254', 'ISWANTRI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081277457254', '869050032951977', 'III'),
(366, '1', 'LAMPUNG', '81325603029', 'SADIMAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081325603029', '354462082878186/01', 'III'),
(367, '1', 'RIKEP', '81276660238', 'TISON', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276660238', '865643032219512', 'III'),
(368, '1', 'ACEH', '81360026665', 'BELLY PANGESTU', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081360026665', '99000874149891', '8.0.0'),
(369, '1', 'SUMBAR', '85100011899', 'JASMAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085100011899', '867142036775650', '8.0.0'),
(370, '1', 'TREG1', '81363680000', 'AZLI SYAHPANDINATA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081363680000', '354557080213243', '7.1.1'),
(380, '1', 'BABEL', '85384615889', 'Gerry ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085384615889', '354921079679188/01', 'redmi 5+'),
(373, '1', 'BABEL', '81348525373', 'ANGGAA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081348525373', '862049031273711', 'III'),
(377, '1', 'BABEL', '82183709876', 'Ansori', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082183709876', '866200031217770', 'vivo1714'),
(378, '1', 'BABEL', '82212934590', 'ludiman', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082212934590', '869777036308420', 'III'),
(379, '1', 'BABEL', '81373412800', 'Mediono', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081373412800', '866414030798595', 'III'),
(381, '1', 'BABEL', '81293446100', 'Sujoko', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081293446100', '869777036195942', 'III'),
(382, '1', 'ACEH', '82361519006', 'ROYADI HALOMOAN POHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082361519006', '359376095724705', '8.0.0'),
(383, '1', 'ACEH', '85362035690', 'MUHAMMAD KHADAFI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085362035690', '866400036214661', 'redmi 5+'),
(385, '385', 'RIKEP', '82383294686', 'Juliarno', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082383294686', '868835032270555', ''),
(386, '386', 'RIKEP', '8566511805', 'Herdy', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08566511805', '353632099279070', ''),
(387, '387', 'BABEL', '85267105262', 'Doni Lesmana', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085267105262', '862589031026171', ''),
(388, '388', 'BABEL', '81278402717', 'SCIFO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081278402717', '352604080114906', ''),
(392, '1', 'TREG1', '85276203300', 'manuel', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085276203300', '358240051111110', 'ver-6'),
(393, '1', 'BABEL', '82281329993', 'Alamsyah', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082281329993', '357453062945050', 'III'),
(394, '1', 'SUMSEL', '85210933202', 'ARDIYANSA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085210933202', '352126100082863', '5.0'),
(395, '1', 'SUMSEL', '81368813672', 'M. IMAM NURYANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081368813672', '358489091732969', '5.0'),
(413, '413', 'SUMBAR', '81363820758', 'KHAIRIL ANAM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081363820758', '867211031726412', '6'),
(417, '417', 'SUMBAR', '81372232237', 'Angga sukma putra ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081372232237', '865086038914662', '6.0.1'),
(421, '1', 'SUMBAR', '82288599291', 'Rico Warman', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288599291', '358771061366302', '7.1.1'),
(420, '1', 'SUMBAR', '81275271567', 'Anshari', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081275271567', '868939038892683', '7.1.1'),
(424, '1', 'SUMBAR', '82288599291', 'Rico Warman', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288599291', '863661045884363', '7.1.1'),
(425, '1', 'SUMBAR', '85272206525', 'Kamba deri', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085272206525', '359454077968267', '5.1.1'),
(426, '1', 'SUMBAR', '82283751818', 'Wandi Mulyadi ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082283751818', '352383100821481', '7.1.1'),
(427, '1', 'SUMBAR', '82288787175', 'Rifqa Octaviady Nugraha', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288787175', '869050034155270', '7.1.1'),
(432, '1', 'SUMBAR', '82212935275', 'TOMMY ALEXANDRA', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '082212935275', '358772061347383', '7.1.1'),
(430, '1', 'SUMBAR', '85398900668', 'Yudha isra apridana', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085398900668', '868889036223797', '7.1.1'),
(431, '1', 'SUMBAR', '82288411587', 'Rikki Kasandra', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082288411587', '356578092781967', '7.1.1'),
(433, '1', 'TREG1', '85276203300', 'benedict', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '085276203300', '358240051111110', '10'),
(434, '1', 'SUMBAR', '82298922020', 'Fauzul Aufan', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '082298922020', '357572060830855', '5.0.2'),
(435, '1', 'SUMBAR', '85100867333', 'Idrial', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '085100867333', '864366027100742', '7.1.1'),
(436, '1', 'SUMBAR', '85100867333', 'Idrial', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '085100867333', '864366027100759', '7.1.1'),
(437, '1', 'SUMBAR', '85100011899', 'Jasman', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '085100011899', '867142035375650', '7.1.1'),
(438, '1', 'TREG1', '8116091965', 'MEDIUM STP', '01', 'fa845342ff04a7595e896a89c6f99274', '50', '08116091965', '358240051111110', 'VER-9'),
(439, '1111', 'medium', '85262404020', 'medium', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085262404020', '358240051111110', 'V9');

-- --------------------------------------------------------

--
-- Table structure for table `t_user_mobile_copy2`
--

CREATE TABLE `t_user_mobile_copy2` (
  `idx` int(11) NOT NULL,
  `idy` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL COMMENT 'Database harus tanpa angka 0 (nol) didepan, tapi di user... ngak apa apa ada angka 0 (nol)',
  `nama` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `android_version` varchar(50) DEFAULT NULL,
  `nama_mitra` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_mobile_copy2`
--

INSERT INTO `t_user_mobile_copy2` (`idx`, `idy`, `witel`, `userid`, `nama`, `c_profile`, `pass`, `flagging`, `handphone`, `imei`, `android_version`, `nama_mitra`) VALUES
(1, '1', 'MEDAN', '85276203300', 'MEDIUM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116091965', ' ', '9.0', NULL),
(2, '2', 'MEDAN', '81274481238', 'CHAIRI AZHAR NASUTION', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081274481238', '', '9.0', NULL),
(3, '3', 'MEDAN', '81260003335', 'MHD.IKBAL', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081260003335', '', '8.1', NULL),
(4, '4', 'MEDAN', '82316622254', 'MARKUS YOSEPH CHRISTIAN NABABA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082316622254', '', '5.1', NULL),
(5, '5', 'MEDAN', '82213779274', 'KHAIRIL AZWAN SIREGAR', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082213779274', '', '8.1', NULL),
(6, '6', 'MEDAN', '81262494390', 'YUDI PRASTYO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081262494390', '', '5.1', NULL),
(7, '7', 'MEDAN', '83188446152', 'RIZKY RAMADHAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '083188446152', '', '4.4', NULL),
(8, '8', 'MEDAN', '81362384969', 'INDRA EKA PUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081362384969', '', '8.1', NULL),
(9, '9', 'MEDAN', '82272108608', 'RIZQY MULYADI', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082272108608', '', '8.1', NULL),
(10, '10', 'MEDAN', '87811521099', 'DIMAS ARIO SETIAWAN', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087811521099', '', '5.1', NULL),
(11, '11', 'MEDAN', '87796178539', 'DIPA PRASTYA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087796178539', '', '5.1', NULL),
(12, '12', 'MEDAN', '85830591657', 'CHAIRUL AMIN LUBIS', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085830591657', '', '7.1', NULL),
(13, '13', 'MEDAN', '82299217915', 'PANJI BAKO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082299217915', '', '7.1', NULL),
(14, '14', 'MEDAN', '85260080832', 'SUGIONO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085260080832', '', '6.0', NULL),
(15, '15', 'MEDAN', '82260055682', 'SHANDY SUSWANTO', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082260055682', '', '5.1', NULL),
(16, '16', 'MEDAN', '87763710684', 'SAPUTRA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '087763710684', '', '7.1', NULL),
(17, '17', 'MEDAN', '82167109346', 'TEGUH AJI MINANDA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082167109346', '', '8.1', NULL),
(18, '18', 'MEDAN', '82363707388', 'FIKRI HANIF', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082363707388', '', '8.1', NULL),
(19, '19', 'MEDAN', '8116534545', 'LUFTHY HAFIDZ', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116534545', '', '8.1', NULL),
(20, '20', 'MEDAN', '85361752800', 'AHMAD REZA PRATAMA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085361752800', '', '5.1', NULL),
(21, '21', 'MEDAN', '81361970974', 'septiawan rusdiani', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081361970974', '', '7.0', NULL),
(22, '22', 'MEDAN', '82273022613', 'imam anderiyo', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082273022613', '', '4.4', NULL),
(23, '23', 'MEDAN', '81375259991', 'Zulham Effendi Lubis', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081375259991', '', '8.1', NULL),
(24, '24', 'MEDAN', '85360972185', 'FADHIL HISYAM', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '085360972185', '', '6.1', NULL),
(25, '25', 'MEDAN', '82161676387', 'Yosua Lumban Tobing', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '082161676387', '', '8.1', NULL),
(26, '26', 'MEDAN', '81276595573', 'M. AJI WARDANA', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081276595573', '', '9.1', NULL),
(27, '27', 'MEDAN', '81265550635', 'Marasakti Lubis', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '081265550635', '', '8.1', NULL),
(28, '28', 'MEDAN', '85262404020', 'MEDIUM sitompul', '01', 'fa845342ff04a7595e896a89c6f99274', '53', '08116091965', ' ', '9.0', NULL),
(29, '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_web`
--

CREATE TABLE `t_user_web` (
  `id` int(10) UNSIGNED NOT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `c_profile` varchar(50) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_web`
--

INSERT INTO `t_user_web` (`id`, `witel`, `unit`, `nama`, `userid`, `password`, `c_profile`, `handphone`, `nik`) VALUES
(1, 'TREG1', 'RAM', 'MEDIUM', '08116091965', 'fa845342ff04a7595e896a89c6f99274', '03', '08116091965', '651084'),
(3, 'MEDAN', 'RAM', 'SAMSIR', '08116092778', 'fa845342ff04a7595e896a89c6f99274', '03', '08116092778', NULL),
(4, 'MEDAN', 'DAMAN', 'SEFGI FANDI HABIBI', '08116369009', 'fa845342ff04a7595e896a89c6f99274', '03', '08116369009', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_user_web_copy`
--

CREATE TABLE `t_user_web_copy` (
  `id` int(10) UNSIGNED NOT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `c_profile` varchar(50) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_user_web_copy`
--

INSERT INTO `t_user_web_copy` (`id`, `witel`, `unit`, `nama`, `userid`, `password`, `c_profile`, `handphone`, `nik`) VALUES
(1, 'MEDAN', 'CCAN', 'DINI RAHMAYATI PUTRI', '085761343161', 'fa845342ff04a7595e896a89c6f99274', '01', '085761343161', '96160412'),
(2, 'MEDAN', 'CCAN', 'PRIDA APRIANI', '082165802567', 'fa845342ff04a7595e896a89c6f99274', '01', '082165802567', '18960380'),
(3, 'MEDAN', 'DAMAN', 'M. AFFAN AZHARI HARAHAP', '0895601213892', 'fa845342ff04a7595e896a89c6f99274', '01', '0895601213892', '95159963'),
(4, 'MEDAN', 'DAMAN', 'FAHMI HUSEIN', '081296652090', 'fa845342ff04a7595e896a89c6f99274', '01', '081296652090', 'infomedia'),
(5, 'MEDAN', 'DAMAN', 'SAHRIAL BATUBARA', '081260402413', 'fa845342ff04a7595e896a89c6f99274', '01', '081260402413', 'infomedia'),
(6, 'JAMBI', 'DAMAN', 'DWI SEPTIAN', '081377926047', 'fa845342ff04a7595e896a89c6f99274', '02', '081377926047', '97160270'),
(7, 'JAMBI', 'CCAN', 'AZHARI TRI RAMADAN', '082279647248', 'fa845342ff04a7595e896a89c6f99274', '02', '082279647248', '93150191'),
(8, 'JAMBI', 'CCAN', 'HASTI ANGGRAINI', '082279815716', 'fa845342ff04a7595e896a89c6f99274', '02', '082279815716', '93160413'),
(9, 'SUMUT', 'DAMAN', 'Irma Fajar Ningsih', '085270182524', 'fa845342ff04a7595e896a89c6f99274', '01', '085270182524', '-'),
(10, 'SUMUT', 'DAMAN', 'Sri Ayu Dewi', '081396941702', 'fa845342ff04a7595e896a89c6f99274', '01', '081396941702', '-'),
(11, 'SUMBAR', 'DAMAN', 'Alfian Ghifari', '081289149112', 'fa845342ff04a7595e896a89c6f99274', '01', '081289149112', '940106'),
(12, 'MEDAN', 'CCAN', 'MHD. IQBAL RAHARJO', '085297128911', 'fa845342ff04a7595e896a89c6f99274', '01', '085297128911', '18900116'),
(13, 'MEDAN', 'CCAN', 'M. ILHAM EGY PRATOMO', '081375832207', 'fa845342ff04a7595e896a89c6f99274', '01', '081375832207', '18980214'),
(14, 'MEDAN', 'CCAN', 'RICKY SEPJO', '085757275354', 'fa845342ff04a7595e896a89c6f99274', '01', '085757275354', '18990200'),
(15, 'ACEH', 'DAMAN', 'Aidil Azhar', '082117578121', 'fa845342ff04a7595e896a89c6f99274', '01', '082117578121', '-'),
(16, 'ACEH', 'DAMAN', 'Subki Munanzir', '085277394766', 'fa845342ff04a7595e896a89c6f99274', '01', '085277394766', '-'),
(17, 'ACEH', 'DAMAN', 'Maulidar', '082364648426', 'fa845342ff04a7595e896a89c6f99274', '01', '082364648426', '-'),
(18, 'ACEH', 'CCAN', 'DEVID YADI YN', '085346125488', 'fa845342ff04a7595e896a89c6f99274', '01', '085346125488', '90157439'),
(19, 'ACEH', 'CCAN', 'Fanki Saldi', '085226751236', 'fa845342ff04a7595e896a89c6f99274', '01', '085226751236', '17930278'),
(20, 'SUMSEL', 'CCAN', 'FELIX SATRIA AL-KABIR', '081291717524', 'fa845342ff04a7595e896a89c6f99274', '01', '081291717524', '97150086'),
(21, 'BENGKULU', 'DAMAN', 'Anggi Berta Viano', '082281604714', 'fa845342ff04a7595e896a89c6f99274', '01', '082281604714', '92151901'),
(22, 'RIKEP', 'CCAN', 'Syafuan Razidin', '08117707731', 'fa845342ff04a7595e896a89c6f99274', '01', '08117707731', '18880028'),
(23, 'RIKEP', 'CCAN', 'Citra Dewi Sari', '08126472887', 'fa845342ff04a7595e896a89c6f99274', '01', '08126472887', '18940524'),
(24, 'RIKEP', 'CCAN', 'Prianto', '085108007001', 'fa845342ff04a7595e896a89c6f99274', '01', '085108007001', '642083'),
(25, 'RIKEP', 'DAMAN', 'NATALIUS ARAPENTA TARIGAN', '085260100355', 'fa845342ff04a7595e896a89c6f99274', '01', '085260100355', '99180241'),
(26, 'RIKEP', 'DAMAN', 'ARIEF PANJI LURUS', '082172272500', 'fa845342ff04a7595e896a89c6f99274', '01', '082172272500', '92170043'),
(27, 'SUMSEL', 'CCAN', 'OCHINTILASANI DEWI', '085377602061', 'fa845342ff04a7595e896a89c6f99274', '01', '085377602061', '18930230'),
(28, 'SUMSEL', 'CCAN', 'RYZKA AJI PURNOMO', '082212934175', 'fa845342ff04a7595e896a89c6f99274', '01', '082212934175', '93157098'),
(29, 'SUMSEL', 'CCAN', 'Nadya Novita', '085262857704', 'fa845342ff04a7595e896a89c6f99274', '01', '085262857704', '101412'),
(30, 'SUMSEL', 'CCAN', 'FADEL ARROYAN', '082175915791', 'fa845342ff04a7595e896a89c6f99274', '01', '082175915791', '108558'),
(31, 'SUMSEL', 'CCAN', 'M FIKRI HIDAYATULLAH', '081278452665', 'fa845342ff04a7595e896a89c6f99274', '01', '081278452665', '18980304'),
(32, 'SUMSEL', 'CCAN', 'ABDUL CHALID', '081809164476', 'fa845342ff04a7595e896a89c6f99274', '01', '081809164476', '18880010'),
(33, 'SUMSEL', 'DAMAN', 'BELLA ANINDITA', '082175712493', 'fa845342ff04a7595e896a89c6f99274', '01', '082175712493', '910171'),
(34, 'TREG1', 'RAM', 'MEDIUM', '08116091965', 'fa845342ff04a7595e896a89c6f99274', '02', '08116091965', '651084'),
(35, 'TREG1', 'RAM', 'IKHSAN', '0811698865', 'fa845342ff04a7595e896a89c6f99274', '01', '0811698865', '-'),
(36, 'TREG1', 'RAM', 'AZLI', '081363680000', 'fa845342ff04a7595e896a89c6f99274', '01', '081363680000', '-'),
(37, 'TREG1', 'RAM', 'AYU', '08111905552', 'fa845342ff04a7595e896a89c6f99274', '01', '08111905552', '-'),
(58, 'LAMPUNG', 'ASO/CC', 'SADIMAN', '081325603029', 'fa845342ff04a7595e896a89c6f99274', '01', '081325603029', '630483'),
(48, 'SUMUT', 'CCAN', 'Hotner Panggabean', '08116134528', 'fa845342ff04a7595e896a89c6f99274', '01', '08116134528', '640367'),
(40, 'BABEL', 'CCAN', 'SANWAN', '08117171211', '1c004cfa4f2a3a1512a9719daaf8fe04', '01', '08117171211', '680100'),
(41, 'BABEL', 'CCAN', 'PURWANTO', '085268999901', 'fa845342ff04a7595e896a89c6f99274', '01', '085268999901', '91157052'),
(42, 'BABEL', 'DAMAN', 'sefgi fandi habibi', '08116369009', 'a2ed39c417316adbd5cd1d0211a5d711', '01', '08116369009', ''),
(44, 'SUMBAR', 'CCAN', 'Wegia Laurestika', '082389435553', 'fa845342ff04a7595e896a89c6f99274', '01', '082389435553', '92152921'),
(45, 'SUMUT', 'DAMAN', 'Ahmad Ramadhan', '082122554914', 'fa845342ff04a7595e896a89c6f99274', '01', '082122554914', '940217'),
(47, 'JAMBI', 'DAMAN', 'TULUS', '082372310711', 'fa845342ff04a7595e896a89c6f99274', '02', '082372310711', '820004'),
(49, 'SUMUT', 'CCAN', 'Iswanuddin', '082174580777', 'fa845342ff04a7595e896a89c6f99274', '01', '082174580777', '876772'),
(50, 'BABEL', 'DAMAN', 'RIAWATI', '081322721900', 'fa845342ff04a7595e896a89c6f99274', '01', '081322721900', '641818'),
(51, 'BABEL', 'DAMAN', 'SAGIF', '082142547477', 'fa845342ff04a7595e896a89c6f99274', '01', '082142547477', '-'),
(52, 'BABEL', 'DAMAN', 'HILDA NOVITA SARI', '085267835764', 'fa845342ff04a7595e896a89c6f99274', '01', '085267835764', '-'),
(59, 'BABEL', 'DAMAN', 'SUCIPTO', '08116102833', 'fa845342ff04a7595e896a89c6f99274', '02', '08116102833', '08116102833'),
(57, 'BABEL', 'DAMAN', 'marlisa', '082280025746', 'fa845342ff04a7595e896a89c6f99274', '01', '082280025746', '940002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_witel`
--
ALTER TABLE `b_witel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images0`
--
ALTER TABLE `images0`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images1`
--
ALTER TABLE `images1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images4`
--
ALTER TABLE `images4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images5`
--
ALTER TABLE `images5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_backup`
--
ALTER TABLE `images_backup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_copy`
--
ALTER TABLE `images_copy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_copy6`
--
ALTER TABLE `images_copy6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_copy_17juni2019`
--
ALTER TABLE `images_copy_17juni2019`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_copy_20190625`
--
ALTER TABLE `images_copy_20190625`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_new_photo3`
--
ALTER TABLE `images_new_photo3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `images_upload_multi`
--
ALTER TABLE `images_upload_multi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `p_profile`
--
ALTER TABLE `p_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_profile_copy`
--
ALTER TABLE `p_profile_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_sales_force`
--
ALTER TABLE `t_sales_force`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `id` (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_sales_force_copy`
--
ALTER TABLE `t_sales_force_copy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `t_sales_force_copy2`
--
ALTER TABLE `t_sales_force_copy2`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `id` (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_sales_uploadmultiimage`
--
ALTER TABLE `t_sales_uploadmultiimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `NewIndex` (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `t_user_mobile`
--
ALTER TABLE `t_user_mobile`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_user_mobile_2`
--
ALTER TABLE `t_user_mobile_2`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_user_mobile_copy`
--
ALTER TABLE `t_user_mobile_copy`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_user_mobile_copy2`
--
ALTER TABLE `t_user_mobile_copy2`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `NewIndex` (`idx`);

--
-- Indexes for table `t_user_web`
--
ALTER TABLE `t_user_web`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `t_user_web_copy`
--
ALTER TABLE `t_user_web_copy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b_witel`
--
ALTER TABLE `b_witel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `images0`
--
ALTER TABLE `images0`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images1`
--
ALTER TABLE `images1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `images4`
--
ALTER TABLE `images4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `images5`
--
ALTER TABLE `images5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `images_backup`
--
ALTER TABLE `images_backup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `images_copy`
--
ALTER TABLE `images_copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `images_copy6`
--
ALTER TABLE `images_copy6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `images_copy_17juni2019`
--
ALTER TABLE `images_copy_17juni2019`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `images_copy_20190625`
--
ALTER TABLE `images_copy_20190625`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `images_new_photo3`
--
ALTER TABLE `images_new_photo3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images_upload_multi`
--
ALTER TABLE `images_upload_multi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `p_profile`
--
ALTER TABLE `p_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `p_profile_copy`
--
ALTER TABLE `p_profile_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `t_sales_force`
--
ALTER TABLE `t_sales_force`
  MODIFY `idx` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_sales_force_copy`
--
ALTER TABLE `t_sales_force_copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `t_sales_force_copy2`
--
ALTER TABLE `t_sales_force_copy2`
  MODIFY `idx` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `t_sales_uploadmultiimage`
--
ALTER TABLE `t_sales_uploadmultiimage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `t_user_mobile`
--
ALTER TABLE `t_user_mobile`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `t_user_mobile_2`
--
ALTER TABLE `t_user_mobile_2`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `t_user_mobile_copy`
--
ALTER TABLE `t_user_mobile_copy`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `t_user_mobile_copy2`
--
ALTER TABLE `t_user_mobile_copy2`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `t_user_web`
--
ALTER TABLE `t_user_web`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_user_web_copy`
--
ALTER TABLE `t_user_web_copy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
