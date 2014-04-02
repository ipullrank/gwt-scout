-- --------------------------------------------------------
-- Host:                         N/A
-- Server version:               5.6.13-log - MySQL Community Server (GPL)
-- Server OS:                    Linux
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
  `Occurrences` int(11) DEFAULT NULL,
  `Variants encountered` text,
  `Top URLs` text,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table gwt.external_links
CREATE TABLE IF NOT EXISTS `external_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Domains` text,
  `Links` int(11) DEFAULT NULL,
  `Linked pages` int(11) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table gwt.internal_links
CREATE TABLE IF NOT EXISTS `internal_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Target pages` text,
  `Links` int(11) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table gwt.latest_backlinks
CREATE TABLE IF NOT EXISTS `latest_backlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Links` text,
  `First discovered` date DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table gwt.top_pages
CREATE TABLE IF NOT EXISTS `top_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Page` text,
  `Impressions` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `CTR` int(11) DEFAULT NULL,
  `Avg. position` float DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table gwt.top_queries
CREATE TABLE IF NOT EXISTS `top_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Query` text,
  `Impressions` int(11) DEFAULT NULL,
  `Change` int(11) DEFAULT NULL,
  `Clicks` int(11) DEFAULT NULL,
  `Clicks_Change` int(11) DEFAULT NULL,
  `CTR` int(11) DEFAULT NULL,
  `CTR_Change` int(11) DEFAULT NULL,
  `Avg. Position` float DEFAULT NULL,
  `AvgPosChange` int(11) DEFAULT NULL,
  `domain` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
