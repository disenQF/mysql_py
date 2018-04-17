-- MySQL dump 10.13  Distrib 5.1.63, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: oa
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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2,'jack'),(3,'mack');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger delete_person_trigger
   before delete on person
   for each row
   begin
       delete from sale where person_id=old.id;
       delete from spend where person_id=old.id;
   end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `person_id` int(11) DEFAULT NULL,
  `sdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `snum` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (2,'2017-10-11 02:00:07',33),(2,'2017-11-10 07:49:43',27.5),(2,'2017-10-14 03:00:25',28.5),(3,'2017-10-09 02:00:07',40),(3,'2017-11-10 07:49:43',41.8),(3,'2017-10-25 02:00:25',33.7);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spend`
--

DROP TABLE IF EXISTS `spend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spend` (
  `person_id` int(11) DEFAULT NULL,
  `fdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fnum` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spend`
--

LOCK TABLES `spend` WRITE;
/*!40000 ALTER TABLE `spend` DISABLE KEYS */;
INSERT INTO `spend` VALUES (2,'2017-10-11 02:00:07',13),(2,'2017-11-10 07:58:33',17.5),(2,'2017-10-14 03:00:25',18.5),(3,'2017-10-09 02:00:07',10),(3,'2017-11-10 07:58:33',11.8),(3,'2017-10-25 02:00:25',13.7);
/*!40000 ALTER TABLE `spend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'第一组：菜鸡队','王锦龙'),(2,'第一组：菜鸡队','李伟东'),(3,'第一组：菜鸡队','关斌洋'),(4,'第一组：菜鸡队','刘望'),(5,'第一组：菜鸡队','孙博'),(6,'第二组：孤独风中五品狼','曹明凯'),(7,'第二组：孤独风中五品狼','赵君佳'),(8,'第二组：孤独风中五品狼','刘玮涛'),(9,'第二组：孤独风中五品狼','李昕阳'),(10,'第二组：孤独风中五品狼','张国龙'),(11,'第三组：爸爸队','张占平'),(12,'第三组：爸爸队','王高杰'),(13,'第三组：爸爸队','汪莉'),(14,'第三组：爸爸队','李港乐'),(15,'第三组：爸爸队','张丽莹'),(16,'第四组：友谊队','郑建强'),(17,'第四组：友谊队','陈怡宁'),(18,'第四组：友谊队','赵萍'),(19,'第四组：友谊队','赵妮娜'),(20,'第四组：友谊队','裴佳'),(21,'第五组：中华好诗词','张正琛'),(22,'第五组：中华好诗词','卫鹏辉'),(23,'第五组：中华好诗词','吴雨泽'),(24,'第五组：中华好诗词','李鹏军'),(25,'第五组：中华好诗词','王玉新'),(26,'第六组：菜鸟队','陈学虎'),(27,'第六组：菜鸟队','张博杰'),(28,'第六组：菜鸟队','张继宏'),(29,'第六组：菜鸟队','苟旭岗'),(30,'第六组：菜鸟队','宋东东'),(31,'第七组：婷婷玉丽队','蒋彩婷'),(32,'第七组：婷婷玉丽队','满丽萍'),(33,'第七组：婷婷玉丽队','孙文玉'),(34,'第七组：婷婷玉丽队','薛冬'),(35,'第七组：婷婷玉丽队','朱景辉'),(36,'第八组：龚家湾战斗小组','李建永'),(37,'第八组：龚家湾战斗小组','王永建'),(38,'第八组：龚家湾战斗小组','邵志君'),(39,'第八组：龚家湾战斗小组','李昊'),(40,'第八组：龚家湾战斗小组','马海龙'),(41,'第九组：云之南队','刘慧麟'),(42,'第九组：云之南队','石洁'),(43,'第九组：云之南队','李翾'),(44,'第九组：云之南队','魏佩玮');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `orderno` varchar(255) DEFAULT NULL,
  `payState` varchar(255) DEFAULT NULL,
  `payType` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sumPrice` float NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKho2r4qgj3txpy8964fnla95ub` (`user_id`),
  CONSTRAINT `FKho2r4qgj3txpy8964fnla95ub` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES (1,NULL,'jd92001991288','已支付','微信支付',NULL,99.98,'充值服务',4);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (4,'disen@qq.com','123','disen');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_advice`
--

DROP TABLE IF EXISTS `tb_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `createDate` datetime DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9fo157q52mu535licxhsvfwfp` (`uid`),
  CONSTRAINT `FK9fo157q52mu535licxhsvfwfp` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_advice`
--

LOCK TABLES `tb_advice` WRITE;
/*!40000 ALTER TABLE `tb_advice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dept`
--

DROP TABLE IF EXISTS `tb_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dept`
--

LOCK TABLES `tb_dept` WRITE;
/*!40000 ALTER TABLE `tb_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_doc`
--

DROP TABLE IF EXISTS `tb_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL,
  `remark` text,
  `title` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqotp8dpcld7dkdg84wnh0sbyn` (`uid`),
  CONSTRAINT `FKqotp8dpcld7dkdg84wnh0sbyn` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_doc`
--

LOCK TABLES `tb_doc` WRITE;
/*!40000 ALTER TABLE `tb_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_employee`
--

DROP TABLE IF EXISTS `tb_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `cardId` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `party` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `qqNum` varchar(12) DEFAULT NULL,
  `race` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK20rb7xemki9d1uelw062oj32x` (`did`),
  KEY `FKqw823gjf4xdm6hnf69oe5ec7h` (`jid`),
  CONSTRAINT `FK20rb7xemki9d1uelw062oj32x` FOREIGN KEY (`did`) REFERENCES `tb_dept` (`id`),
  CONSTRAINT `FKqw823gjf4xdm6hnf69oe5ec7h` FOREIGN KEY (`jid`) REFERENCES `tb_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_employee`
--

LOCK TABLES `tb_employee` WRITE;
/*!40000 ALTER TABLE `tb_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_job`
--

DROP TABLE IF EXISTS `tb_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_job`
--

LOCK TABLES `tb_job` WRITE;
/*!40000 ALTER TABLE `tb_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sign`
--

DROP TABLE IF EXISTS `tb_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlll66hyar28qupsy32umn3bms` (`uid`),
  CONSTRAINT `FKlll66hyar28qupsy32umn3bms` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sign`
--

LOCK TABLES `tb_sign` WRITE;
/*!40000 ALTER TABLE `tb_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `loginame` varchar(16) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-28  0:24:20
