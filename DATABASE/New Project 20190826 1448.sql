-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema spammer
--

CREATE DATABASE IF NOT EXISTS spammer;
USE spammer;

--
-- Definition of table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;


--
-- Definition of table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `photo` longblob NOT NULL,
  `status1` varchar(45) NOT NULL default 'No',
  `spam` varchar(45) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;


--
-- Definition of table `swords`
--

DROP TABLE IF EXISTS `swords`;
CREATE TABLE `swords` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swords`
--

/*!40000 ALTER TABLE `swords` DISABLE KEYS */;
INSERT INTO `swords` (`id`,`word`) VALUES 
 (1,'fuck'),
 (2,'Kill'),
 (3,'Fuck'),
 (4,'Sex'),
 (5,'Fucker'),
 (6,'faggot'),
 (7,'fuck around'),
 (8,'fuck up'),
 (9,'fucking'),
 (10,'kick ass'),
 (11,'dildo'),
 (12,'shitty'),
 (13,'sons of bitches'),
 (14,'BITCH'),
 (15,'bitch');
/*!40000 ALTER TABLE `swords` ENABLE KEYS */;


--
-- Definition of table `trends`
--

DROP TABLE IF EXISTS `trends`;
CREATE TABLE `trends` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `toptrends` varchar(45) NOT NULL,
  `msg` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

/*!40000 ALTER TABLE `trends` DISABLE KEYS */;
/*!40000 ALTER TABLE `trends` ENABLE KEYS */;


--
-- Definition of table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE `tweet` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `msg` longtext NOT NULL,
  `photo` longblob NOT NULL,
  `reply` varchar(45) NOT NULL default '0',
  `retweet` varchar(45) NOT NULL default '0',
  `likes` varchar(45) NOT NULL default '0',
  `twid` varchar(45) default '0',
  `stress` varchar(45) default NULL,
  `status` varchar(45) NOT NULL default 'No',
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweet`
--

/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
