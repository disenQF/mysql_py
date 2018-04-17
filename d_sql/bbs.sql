-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: bbs
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `managerId` int(11) NOT NULL AUTO_INCREMENT,
  `managerName` varchar(16) NOT NULL,
  `managerPassword` varchar(12) NOT NULL,
  PRIMARY KEY (`managerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `matter` varchar(1000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`postId`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (12,1,'不要问我为什么迟到','\r\n不要问我为什么迟到？\r\n\r\n我也不过是茫茫红尘中一粒浮尘而已，这个世界上有很多东西我无法解释！','2009-03-22 23:16:36'),(13,1,'我是一滴远方孤星的泪水','藏在你身上已几万年！所有你的心事都被我发现，让我温暖你的脸！\r\n','2009-03-18 17:45:14'),(14,1,'不要问我，一生曾经恨过多少人','    你不懂我恨有多深！\r\n哎！这是为什么呢！','2009-03-18 18:24:01'),(15,1,'有过多少往事','仿佛就在昨天！','2009-03-18 18:59:54'),(16,2,'雪花飘','雪花飘，飘起了多少爱恋。雪花飞，飞起了多少情缘。烟花开在雪中间！','2009-03-22 23:36:24'),(17,2,'在那遥远的小山村','在那遥远的小山村，小呀小山村！','2009-03-22 23:35:24'),(18,1,'等了好久终于等到今天','等了好久终于把梦实现，前途茫茫任我闯，幸亏还有你，在身旁！','2009-03-22 23:34:10'),(19,1,'曾经年少爱追梦','一心只想入前飞，行遍千山和万水，一路走来不能回！','2009-03-22 23:33:24'),(20,1,'如果有一天','如果有一天，汽车与飞机再不足够，别害怕，你拥有的，天赋的，一对双脚伴你可漫游！','2009-03-19 01:05:26'),(21,1,'难道','难道，出生当天我已给归类做坏人。难道，爱我会毁了你一生！','2009-03-19 01:06:32'),(22,1,'爱火烧不尽','爱火为你烧呀烧不尽，泪水为你一生流也流不停！','2009-03-22 23:13:57'),(23,1,'爱你等你到最后','虽然我知道你心中从不曾爱过我，对你没有怨尤，能够陪在你的左右，做痴心的朋友，也是一种快乐！','2009-03-19 01:11:34'),(24,1,'给我一点时间','给我一点时间，我可以吃光整个地球！','2009-03-22 23:15:30'),(48,1,'我有一个梦','我有一个梦，梦见我来生，是一个很有钱的人！','2009-03-22 23:15:46'),(50,1,'为什么迟到的总是你',' 今天堵车了，我上车的时候才8：29，还没到8：30上班时间。','2009-03-19 18:16:40'),(51,1,'浪子心声','难分真与假，人面多险诈，几许有共享荣华，檐畔水滴不分差。\r\n无知井里蛙，徒望添声价，空得意目光如麻，谁料金屋变败瓦。\r\n命里有时终须有，命里无时莫强求！\r\n雷声风雨打，何用多惊怕，心公正白璧无瑕，行善积德最乐也。\r\n命里有时终须有，命里无时莫强求！\r\n人比海里沙，何用多牵挂，君可见漫天落霞，名利息间似雾化！','2009-03-23 00:04:16'),(52,1,'跟我两辈子','你可否啊，跟我一辈子啊，把那昨天的恩和怨，丢进东江水啊。\r\n你可否啊，跟我一辈子啊，不再夜里空守在孤灯旁呀，跟我去个好地方！','2009-03-22 23:29:53'),(67,2,'安到付','手动阀手动阀阿斯蒂芬阿斯蒂芬大师傅安到付安到付ad','2017-05-12 11:16:14'),(71,2,'东方广东省','是大法官','2017-05-12 11:17:07'),(83,2,'撒地方','安到付','2017-05-12 13:17:11'),(87,2,'小星星','一闪一闪亮晶晶你是我的小星星，好喜欢你哦','2017-05-13 03:39:18'),(88,2,'你好中国','撒地方','2017-05-13 06:03:18'),(89,2,'你好中国电饭锅','撒地方是大法官电饭锅的双方各','2017-05-13 06:03:52'),(90,2,'电饭锅','dfsg单方事故','2017-05-13 06:14:52'),(91,2,'是大法官','是大法官','2017-05-13 06:34:33');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) NOT NULL,
  `userPassword` varchar(12) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userNickname` varchar(20) NOT NULL,
  `userBirthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` int(11) NOT NULL,
  `userPoints` int(11) NOT NULL,
  `userRemark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'xiaoqi','xiaoqi0101','xiaoqi@163.com','小起','1985-08-31 08:00:00',1,102,'为什么！'),(2,'xiaoxue','010101','xiaoqi@163.com','小雪','1985-01-23 08:00:00',2,12,'雪花飘'),(3,'asdasd','asdasd','xiaoqi@163.com','asdasd','2008-03-16 08:00:00',1,0,NULL);
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

-- Dump completed on 2017-05-18 17:37:57
