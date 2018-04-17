-- MySQL dump 10.13  Distrib 5.1.63, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: bbsdb
-- ------------------------------------------------------
-- Server version	5.1.63

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `body_msg` varchar(255) NOT NULL,
  `create_time` date DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `UK_31ox5skgrdxqp8x570jge6pru` (`title`),
  KEY `FK9cfdm8do6wxm594bax1oqj2ug` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_reply`
--

DROP TABLE IF EXISTS `banner_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_reply` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `body_msg` varchar(255) NOT NULL,
  `create_time` date DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `FKbkctfpk0sccr9m5ul9t50j8gc` (`banner_id`),
  KEY `FKmkd6pwjnvfc8irkwbyqxbd8dt` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_reply`
--

LOCK TABLES `banner_reply` WRITE;
/*!40000 ALTER TABLE `banner_reply` DISABLE KEYS */;
INSERT INTO `banner_reply` VALUES (1,'haha @Enity so easy..','2017-03-23',9,5),(2,'no no no @Enity so not easy..','2017-03-23',9,4),(3,'haha @Table so easy..','2017-03-23',9,5),(4,'no no no @Table so not easy..','2017-03-23',9,4),(5,'hihi HQL','2017-03-23',10,3),(6,'Group by Having....','2017-03-23',10,2);
/*!40000 ALTER TABLE `banner_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT 'ç”·',
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110036 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (110010,'marry','234324','marry-di','029-234234','女','2017-01-01'),(110005,'jack','123','jack-wang','029-187661109','女',NULL),(110006,'mack','123','mack-liu','18766543219',NULL,NULL),(110007,'22322323','234324','234234','029-234234','女','2017-01-01'),(110008,'22322323','234324','234234','029-234234','女','2017-01-01'),(1,'disen','123','Disen','029-88967541','男','2015-09-10'),(110009,'22322323','234324','234234','029-234234','女','2017-01-01'),(110011,'22322323','234324','234234','029-234234','女','2017-01-01'),(110012,'22322323','234324','234234','029-234234','女','2017-01-01'),(110013,'22322323','234324','234234','029-234234','女','2017-01-01'),(110014,'22322323','234324','234234','029-234234','女','2017-01-01'),(110015,'22322323','234324','234234','029-234234','女','2017-01-01'),(110016,'22322323','234324','234234','029-234234','女','2017-01-01'),(110017,'22322323','234324','234234','029-234234','女','2017-01-01'),(110018,'22322323','234324','234234','029-234234','女','2017-01-01'),(110019,'22322323','234324','234234','029-234234','女','2017-01-01'),(110020,'22322323','234324','234234','029-234234','女','2017-01-01'),(110021,'22322323','234324','234234','029-234234','女','2017-01-01'),(110034,'aadd','dd11','1122','111133444','男','2008-10-01'),(110033,'ss','sss','sss','sss','男','2008-10-01'),(110032,'disen766','123','disen_8888','1876655444','男','2008-10-01'),(110031,'disen9999','123','disen','10086','男','2008-10-01'),(110026,'22322323','234324','234234','029-234234','女','2017-01-01'),(110027,'22322323','234324','234234','029-234234','女','2017-01-01'),(110028,'22322323','234324','234234','029-234234','女','2017-01-01'),(110029,'jack','123456','老王','123',NULL,'2016-12-20'),(110035,'ali','520','小丽','18699082347','女','2012-10-11');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 16:22:14
