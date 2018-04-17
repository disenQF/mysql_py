-- MySQL dump 10.13  Distrib 5.1.63, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: xa_java_1602
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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cart`
--

DROP TABLE IF EXISTS `t_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cart` (
  `_id` int(11) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cart`
--

LOCK TABLES `t_cart` WRITE;
/*!40000 ALTER TABLE `t_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cart_goods`
--

DROP TABLE IF EXISTS `t_cart_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cart_goods` (
  `goods_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`,`goods_id`),
  KEY `FKp8bifwxuicqs185t5othyj1ns` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cart_goods`
--

LOCK TABLES `t_cart_goods` WRITE;
/*!40000 ALTER TABLE `t_cart_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cart_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dept` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  `persons` int(11) DEFAULT NULL,
  `mgr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,'Java',15,'Jack'),(2,'H5',9,'Match'),(3,'Android',5,NULL),(5,'Java1611',6,'Match'),(7,'Java1613',15,'Disen'),(11,'Java1617',20,'Disen'),(12,'Java1618',11,'Disen'),(13,'Java1619',6,'Match'),(14,'Java16110',3,'Jack'),(15,'Java16111',14,'Match'),(16,'Java16112',3,'Jack'),(17,'Java16113',4,'Match'),(18,'Java16114',13,'Match'),(19,'Java16115',15,'Disen'),(20,'Java16116',10,'Disen'),(21,'Java16117',11,'Jack'),(22,'Java16118',10,'Match'),(23,'Java16119',14,'Match');
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept_t_person`
--

DROP TABLE IF EXISTS `t_dept_t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dept_t_person` (
  `Dept__id` int(11) NOT NULL,
  `personList__id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`Dept__id`,`personList__id`),
  UNIQUE KEY `UK_eb716u9d5of2dnwttxcw8o62h` (`personList__id`),
  KEY `FKokbscmyqqlfqoh5rnb8c70pna` (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept_t_person`
--

LOCK TABLES `t_dept_t_person` WRITE;
/*!40000 ALTER TABLE `t_dept_t_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dept_t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_goods`
--

DROP TABLE IF EXISTS `t_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goods` (
  `_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `info` longtext,
  `price` float DEFAULT NULL,
  `vip_price` float DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_goods`
--

LOCK TABLES `t_goods` WRITE;
/*!40000 ALTER TABLE `t_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sex` varchar(4) DEFAULT 'ç”·',
  `salary` float DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `FKiygt97lrxia6qppf1xtgk3oie` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` VALUES (25,'Disen',NULL,19999,11),(26,'Rose',NULL,29999,11),(27,'Jack',NULL,19999,11),(28,'Match',NULL,29999,11),(29,'Kaka',NULL,20009,7),(30,'Nana',NULL,9999,7);
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person_project`
--

DROP TABLE IF EXISTS `t_person_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person_project` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `elt` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `FKec144sbrwg0jicj1hri8kg4b1` (`elt`),
  KEY `FKjvtbnakaxej33ybovre4yi900` (`person_id`),
  KEY `FK7xul0uonfonsjou8lepk5pa2k` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_project`
--

LOCK TABLES `t_person_project` WRITE;
/*!40000 ALTER TABLE `t_person_project` DISABLE KEYS */;
INSERT INTO `t_person_project` VALUES (1,25,1,''),(2,26,1,''),(3,27,2,''),(4,28,2,''),(5,29,3,''),(6,30,3,''),(7,25,2,''),(8,26,2,''),(9,27,3,'');
/*!40000 ALTER TABLE `t_person_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_project`
--

DROP TABLE IF EXISTS `t_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_project` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_title` varchar(200) NOT NULL,
  `p_text` text,
  `p_price` float DEFAULT '10000',
  `p_weeks` int(11) DEFAULT '4',
  `dept_id` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `prj_dept_fk` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_project`
--

LOCK TABLES `t_project` WRITE;
/*!40000 ALTER TABLE `t_project` DISABLE KEYS */;
INSERT INTO `t_project` VALUES (1,'Android 2017 pLayer App','ddddddd',100000,18,11,NULL,3),(2,'Bluetooth 4.1 Datas',NULL,150000,4,11,NULL,0),(3,'JavaEE CRM120.1',NULL,200000,4,7,NULL,0);
/*!40000 ALTER TABLE `t_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `_id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `user_paswd` varchar(20) NOT NULL,
  `user_tel` varchar(11) DEFAULT NULL,
  `user_rname` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `account_money` float DEFAULT NULL,
  `is_vip` bit(1) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (101,'$b_abca$bd','10000','10010',NULL,'',NULL,NULL,NULL),(102,'_cc_$','10000','17789999',NULL,'',NULL,NULL,NULL),(104,'b__dd$','10086','10008',NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-12 10:23:31
