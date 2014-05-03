-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.11 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table gwt.content_keywords
CREATE TABLE IF NOT EXISTS `content_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Keyword` text,
  `Occurrences` varchar(50) DEFAULT NULL,
  `Variants encountered` text,
  `Top URLs` text,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.content_keywords: ~0 rows (approximately)
/*!40000 ALTER TABLE `content_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_keywords` ENABLE KEYS */;


-- Dumping structure for table gwt.external_links
CREATE TABLE IF NOT EXISTS `external_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Domains` text,
  `Links` varchar(50) DEFAULT NULL,
  `Linked pages` varchar(50) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.external_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `external_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_links` ENABLE KEYS */;


-- Dumping structure for table gwt.internal_links
CREATE TABLE IF NOT EXISTS `internal_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Target pages` text,
  `Links` varchar(50) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.internal_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `internal_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `internal_links` ENABLE KEYS */;


-- Dumping structure for table gwt.latest_backlinks
CREATE TABLE IF NOT EXISTS `latest_backlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Links` varchar(50) DEFAULT NULL,
  `First discovered` date DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.latest_backlinks: ~0 rows (approximately)
/*!40000 ALTER TABLE `latest_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `latest_backlinks` ENABLE KEYS */;


-- Dumping structure for table gwt.top_pages
CREATE TABLE IF NOT EXISTS `top_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Page` text,
  `Impressions` varchar(50) DEFAULT NULL,
  `Clicks` varchar(50) DEFAULT NULL,
  `CTR` varchar(50) DEFAULT NULL,
  `Avg. position` varchar(50) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.top_pages: ~0 rows (approximately)
/*!40000 ALTER TABLE `top_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_pages` ENABLE KEYS */;


-- Dumping structure for table gwt.top_queries
CREATE TABLE IF NOT EXISTS `top_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Query` text,
  `Impressions` varchar(50) DEFAULT NULL,
  `Change` float DEFAULT NULL,
  `Clicks` varchar(50) DEFAULT NULL,
  `Clicks_Change` float DEFAULT NULL,
  `CTR` varchar(50) DEFAULT NULL,
  `CTR_Change` float DEFAULT NULL,
  `Avg. Position` float DEFAULT NULL,
  `AvgPosChange` varchar(50) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gwt.top_queries: ~0 rows (approximately)
/*!40000 ALTER TABLE `top_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_queries` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
