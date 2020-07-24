-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 student.dprtmt 구조 내보내기
CREATE TABLE IF NOT EXISTS `dprtmtinformation_schemamysql` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `headcount` int(11) DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `updt_id` int(11) DEFAULT NULL,
  `updt_date` datetime DEFAULT NULL,
  `del_id` int(11) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='department';

-- 테이블 데이터 student.dprtmt:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `dprtmt` DISABLE KEYS */;
INSERT INTO `dprtmt` (`id`, `name`, `headcount`, `reg_id`, `reg_date`, `updt_id`, `updt_date`, `del_id`, `del_date`) VALUES
	(1, 'HQ', 3, 1, '2020-07-21 16:38:17', 1, '2020-07-21 16:38:21', NULL, NULL),
	(2, 'management support team', 1, 1, '2020-07-21 16:39:09', 1, '2020-07-21 16:39:13', NULL, NULL),
	(3, 'HR team', 2, 1, '2020-07-21 16:39:36', 1, '2020-07-21 16:39:40', NULL, NULL),
	(4, 'R&D team', 3, 1, '2020-07-21 16:40:20', 1, '2020-07-21 16:40:24', NULL, NULL);
/*!40000 ALTER TABLE `dprtmt` ENABLE KEYS */;

-- 테이블 student.rank 구조 내보내기
CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `updt_id` int(11) DEFAULT NULL,
  `updt_date` datetime DEFAULT NULL,
  `del_id` int(11) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='rank';

-- 테이블 데이터 student.rank:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` (`id`, `name`, `reg_id`, `reg_date`, `updt_id`, `updt_date`, `del_id`, `del_date`) VALUES
	(1, 'ceo', 1, '2020-07-21 16:29:46', 1, '2020-07-21 16:29:47', NULL, NULL),
	(2, 'chairmen', 1, '2020-07-21 16:30:40', 1, '2020-07-21 16:30:43', NULL, NULL),
	(3, 'managin director', 1, '2020-07-21 16:31:10', 1, '2020-07-21 16:31:13', NULL, NULL),
	(4, 'general manager', 1, '2020-07-21 16:31:39', 1, '2020-07-21 16:31:49', NULL, NULL),
	(5, 'Deputy General Manager', 1, '2020-07-21 16:32:31', 1, '2020-07-21 16:32:35', NULL, NULL),
	(6, 'Manager', 1, '2020-07-21 16:32:57', 1, '2020-07-21 16:33:00', NULL, NULL),
	(7, 'Assistant Manager', 1, '2020-07-21 16:33:19', 1, '2020-07-21 16:33:22', NULL, NULL),
	(8, 'Supervisor', 1, '2020-07-21 16:36:27', 1, '2020-07-21 16:36:32', NULL, NULL),
	(9, 'staff', 1, '2020-07-21 16:36:49', 1, '2020-07-21 16:36:52', NULL, NULL);
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;

-- 테이블 student.salary 구조 내보내기
CREATE TABLE IF NOT EXISTS `salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `mount` int(11) DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `updt_id` int(11) DEFAULT NULL,
  `updt_date` datetime DEFAULT NULL,
  `del_id` int(11) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='salary';

-- 테이블 데이터 student.salary:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` (`id`, `user_id`, `year`, `month`, `mount`, `reg_id`, `reg_date`, `updt_id`, `updt_date`, `del_id`, `del_date`) VALUES
	(1, 1, 2020, 1, 100000, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 2, 2020, 1, 60000, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 3, 2020, 1, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 4, 2020, 1, 40000, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 5, 2020, 1, 40000, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 6, 2020, 1, 51064, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 7, 2020, 1, 35485, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 8, 2020, 1, 12304, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 9, 2020, 1, 15874, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 2020, 2, 434838, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 2, 2020, 2, 534886, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 3, 2020, 2, 354587, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 4, 2020, 2, 53884, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 5, 2020, 2, 486488, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 6, 2020, 2, 45688, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 7, 2020, 2, 54568, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 8, 2020, 2, 45488, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 9, 2020, 2, 45688, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 1, 2020, 3, 2121215, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 2, 2020, 3, 1224552, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;

-- 테이블 student.user 구조 내보내기user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dprtmt_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `updt_id` int(11) DEFAULT NULL,
  `updt_date` datetime DEFAULT NULL,
  `del_id` int(11) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='company member';

-- 테이블 데이터 student.user:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `dprtmt_id`, `rank_id`, `reg_id`, `reg_date`, `updt_id`, `updt_date`, `del_id`, `del_date`) VALUES
	(1, 'tom', 1, 1, 1, '2020-07-21 16:24:35', 1, '2020-07-21 16:24:34', NULL, NULL),
	(2, 'an', 1, 2, 1, '2020-07-21 16:24:50', 1, '2020-07-21 16:24:51', NULL, NULL),
	(3, 'tony', 1, 3, 1, '2020-07-21 16:25:08', 1, '2020-07-21 16:25:12', NULL, NULL),
	(4, 'andrew', 2, 5, 1, '2020-07-21 16:25:32', 1, '2020-07-21 16:25:36', NULL, NULL),
	(5, 'jessica', 3, 4, 1, '2020-07-21 16:25:50', 1, '2020-07-21 16:25:53', NULL, NULL),
	(6, 'maria', 3, 6, 1, '2020-07-21 16:26:12', 1, '2020-07-21 16:26:16', NULL, NULL),
	(7, 'java', 3, 7, 1, '2020-07-21 16:26:39', 1, '2020-07-21 16:26:42', NULL, NULL),
	(8, 'basic', 4, 2, 1, '2020-07-21 16:27:01', 1, '2020-07-21 16:27:05', NULL, NULL),
	(9, 'one', 4, 5, 1, '2020-07-21 16:27:55', 1, '2020-07-21 16:27:58', NULL, NULL),
	(10, 'two', 4, 8, 1, '2020-07-21 16:28:16', 1, '2020-07-21 16:28:19', NULL, NULL),
	(11, 'sun', 4, 9, 1, '2020-07-21 16:28:40', 1, '2020-07-21 16:28:43', NULL, NULL),
	(12, 'oracle', 4, 9, 1, '2020-07-21 16:29:01', 1, '2020-07-21 16:29:04', NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
