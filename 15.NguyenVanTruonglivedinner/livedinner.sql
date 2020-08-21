-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.4-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for livedinner
CREATE DATABASE IF NOT EXISTS `livedinner` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `livedinner`;

-- Dumping structure for table livedinner.book
CREATE TABLE IF NOT EXISTS `book` (
  `bkid` int(11) NOT NULL AUTO_INCREMENT,
  `bkname` varchar(45) NOT NULL,
  `bkemail` varchar(45) NOT NULL,
  `bkphone` varchar(45) NOT NULL,
  `bktime` varchar(50) NOT NULL DEFAULT '',
  `bknum` int(11) NOT NULL,
  `booking` varchar(45) NOT NULL,
  `bkmemo` text DEFAULT NULL,
  PRIMARY KEY (`bkid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.book: ~3 rows (approximately)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`bkid`, `bkname`, `bkemail`, `bkphone`, `bktime`, `bknum`, `booking`, `bkmemo`) VALUES
	(53, 'sushi', 'ha@gmailc.om', '121212', '2020-08-20T15:58', 123, '11', '111'),
	(62, 'pork', '', '121212', '2020-08-20T16:07', 112, 'yes', '111'),
	(63, 'chicken', 'asdad', '121212', '2020-08-20T16:07', 112, 'yes', '111');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table livedinner.category
CREATE TABLE IF NOT EXISTS `category` (
  `ctgid` int(11) NOT NULL AUTO_INCREMENT,
  `ctname` varchar(45) NOT NULL,
  `service` char(11) NOT NULL,
  PRIMARY KEY (`ctgid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.category: ~4 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ctgid`, `ctname`, `service`) VALUES
	(3, 'gogi', 'N'),
	(4, 'food', 'N'),
	(5, 'meat', 'N'),
	(6, 'gigo', 'B');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table livedinner.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `coname` varchar(45) NOT NULL,
  `priphone` varchar(45) NOT NULL,
  `subphone` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `unused` bit(1) NOT NULL,
  `opening` varchar(45) DEFAULT NULL,
  `weekday` varchar(45) DEFAULT NULL,
  `weekend` varchar(45) DEFAULT NULL,
  `aboutus` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `logitude` double DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.contact: ~2 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`coid`, `coname`, `priphone`, `subphone`, `email`, `address`, `unused`, `opening`, `weekday`, `weekend`, `aboutus`, `latitude`, `logitude`) VALUES
	(1, 'dae', '1', '1', 'ha@gmailcom.com', 'hcmc', b'1', 'soon', NULL, NULL, NULL, NULL, NULL),
	(2, 'jang', '1221', 'ada', 'haa@gmail.com', 'tokyo', b'0', 'sdadas', 'sdad', 'asda', 'dasda', 111, 2221111);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table livedinner.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `muid` int(11) NOT NULL AUTO_INCREMENT,
  `ctgid` int(11) NOT NULL,
  `muname` varchar(45) NOT NULL,
  `intro` varchar(45) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `price` double NOT NULL,
  `currency` char(3) DEFAULT NULL,
  PRIMARY KEY (`muid`),
  KEY `FK_menu_ctgid_cateory_ctgid` (`ctgid`),
  CONSTRAINT `FK_menu_ctgid_cateory_ctgid` FOREIGN KEY (`ctgid`) REFERENCES `category` (`ctgid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.menu: ~5 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`muid`, `ctgid`, `muname`, `intro`, `details`, `price`, `currency`) VALUES
	(1, 6, 'Kobe', 'food japan', 'best', 1333, '10'),
	(2, 5, 'SuShi', 'food japan', 'very good', 200, '10'),
	(3, 6, 'Spagetti', 'Italy', 'Good', 300, '10'),
	(4, 6, 'Soup', 'VietNam', 'Feel good', 100, '10'),
	(5, 3, 'Banh mi', 'Vietnam', 'number 1', 50, '100');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table livedinner.post
CREATE TABLE IF NOT EXISTS `post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `byname` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `content` text DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `tagid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_post_tagid_tag_tagid` (`tagid`),
  CONSTRAINT `FK_post_tagid_tag_tagid` FOREIGN KEY (`tagid`) REFERENCES `tag` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.post: ~0 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Dumping structure for table livedinner.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tgname` varchar(45) NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table livedinner.tag: ~2 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` (`tagid`, `tgname`) VALUES
	(1, 'hello'),
	(12, 'null');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
