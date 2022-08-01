-- --------------------------------------------------------
-- Host:                         36.89.34.66
-- Server version:               10.3.15-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_mytools.t_material
DROP TABLE IF EXISTS `t_material`;
CREATE TABLE IF NOT EXISTS `t_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` text NOT NULL DEFAULT '',
  `user_id2` text NOT NULL DEFAULT '',
  `internet_number` text NOT NULL DEFAULT '',
  `phone_number` text NOT NULL DEFAULT '',
  `odp_qrcode` varchar(100) NOT NULL,
  `odp_jlh_soc` int(11) NOT NULL,
  `odp_jlh_s_clamp` int(11) NOT NULL,
  `odp_jlh_clamp_ring` int(11) NOT NULL,
  `odp_eviden_img` varchar(100) NOT NULL,
  `tiang1_jlh_s_clamp` int(11) NOT NULL,
  `tiang1_jlh_clamp_ring` int(11) NOT NULL,
  `tiang1_jlh_tiang` int(11) NOT NULL,
  `tiang1_jlh_split_stopper` int(11) NOT NULL,
  `tiang1_eviden_img` varchar(100) NOT NULL,
  `tiang2_jlh_s_clamp` int(11) NOT NULL,
  `tiang2_jlh_clamp_ring` int(11) NOT NULL,
  `tiang2_jlh_tiang` int(11) NOT NULL,
  `tiang2_jlh_split_stopper` int(11) NOT NULL,
  `tiang2_eviden_img` varchar(100) NOT NULL,
  `tiang3_jlh_s_clamp` int(11) NOT NULL,
  `tiang3_jlh_clamp_ring` int(11) NOT NULL,
  `tiang3_jlh_tiang` int(11) NOT NULL,
  `tiang3_jlh_split_stopper` int(11) NOT NULL,
  `tiang3_eviden_img` varchar(100) NOT NULL,
  `outdoor_jlh_clamp_hook` int(11) NOT NULL,
  `outdoor_jlh_s_clamp` int(11) NOT NULL,
  `outdoor_jlh_split_stopper` int(11) NOT NULL,
  `outdoor_eviden_img` varchar(100) NOT NULL,
  `indoor_jlh_roset_optic` int(11) NOT NULL,
  `indoor_jlh_soc` int(11) NOT NULL,
  `indoor_eviden_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_mytools.t_material: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_material` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
