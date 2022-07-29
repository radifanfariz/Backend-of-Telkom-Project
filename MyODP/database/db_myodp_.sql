-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.3.15-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_myodp
DROP DATABASE IF EXISTS `db_myodp`;
CREATE DATABASE IF NOT EXISTS `db_myodp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_myodp`;

-- Dumping structure for table db_myodp.p_profile
DROP TABLE IF EXISTS `p_profile`;
CREATE TABLE IF NOT EXISTS `p_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_profile` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `l_profile` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `d_profile` varchar(50) DEFAULT NULL,
  `nama_form` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_myodp.p_profile: 2 rows
/*!40000 ALTER TABLE `p_profile` DISABLE KEYS */;
INSERT INTO `p_profile` (`id`, `c_profile`, `l_profile`, `d_profile`, `nama_form`) VALUES
	(12, '01', 'admin', 'user', '/myodp/scripts/omg/index.php'),
	(13, '01', 'admin', 'myodp', '/myodp/scripts/omg/myodp_list.php');
/*!40000 ALTER TABLE `p_profile` ENABLE KEYS */;

-- Dumping structure for table db_myodp.t_log_mobile
DROP TABLE IF EXISTS `t_log_mobile`;
CREATE TABLE IF NOT EXISTS `t_log_mobile` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` varchar(100) NOT NULL,
  `apps_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table db_myodp.t_log_mobile: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_log_mobile` DISABLE KEYS */;
INSERT INTO `t_log_mobile` (`id`, `timestamp`, `userid`, `apps_name`) VALUES
	(1, '2021-04-11 12:59:34', '651084', 'myodp'),
	(2, '2021-04-11 12:59:34', '651084', 'myodp');
/*!40000 ALTER TABLE `t_log_mobile` ENABLE KEYS */;

-- Dumping structure for table db_myodp.t_odp
DROP TABLE IF EXISTS `t_odp`;
CREATE TABLE IF NOT EXISTS `t_odp` (
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

-- Dumping data for table db_myodp.t_odp: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_odp` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_odp` ENABLE KEYS */;

-- Dumping structure for table db_myodp.t_odp_checked
DROP TABLE IF EXISTS `t_odp_checked`;
CREATE TABLE IF NOT EXISTS `t_odp_checked` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `odp_name` varchar(50) DEFAULT NULL,
  `odp_status` varchar(50) DEFAULT NULL,
  `current_latitude` varchar(50) DEFAULT NULL,
  `current_longitude` varchar(50) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_myodp.t_odp_checked: 0 rows
/*!40000 ALTER TABLE `t_odp_checked` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_odp_checked` ENABLE KEYS */;

-- Dumping structure for table db_myodp.t_user
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(16) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `imei` varchar(30) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  `lgt` varchar(16) DEFAULT NULL,
  `witel` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_myodp.t_user: 2 rows
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `userid`, `pass`, `nama`, `email`, `imei`, `nik`, `c_profile`, `flagging`, `lat`, `lgt`, `witel`) VALUES
	(1, '08116091965', 'fa845342ff04a7595e896a89c6f99274', 'MEDIUM', 'mediumsitompul@gmail.com', '4f363b849d6d9afc', '651084', '01', '05', '37.4219983', '-122.084', 'MEDAN'),
	(2, '08116091965', 'fa845342ff04a7595e896a89c6f99274', 'MEDIUM', 'mediumsitompul@gmail.com', '4f363b849d6d9afc', '651084', '01', '05', '37.4219983', '-122.084', 'SUMUT');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

-- Dumping structure for table db_myodp.t_user_mobile
DROP TABLE IF EXISTS `t_user_mobile`;
CREATE TABLE IF NOT EXISTS `t_user_mobile` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `idy` varchar(50) DEFAULT NULL,
  `witel` varchar(50) DEFAULT NULL,
  `userid` text DEFAULT NULL COMMENT 'Database harus tanpa angka 0 (nol) didepan, tapi di user... ngak apa apa ada angka 0 (nol)',
  `nama` varchar(30) DEFAULT NULL,
  `c_profile` varchar(2) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `flagging` varchar(2) DEFAULT NULL,
  `flagging_2` varchar(6) DEFAULT '51010',
  `handphone` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `android_version` varchar(50) DEFAULT NULL,
  `nama_mitra` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`) USING BTREE,
  KEY `NewIndex` (`idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_myodp.t_user_mobile: 0 rows
/*!40000 ALTER TABLE `t_user_mobile` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_mobile` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
