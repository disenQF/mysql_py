drop database if exists goodsdb;
create database goodsdb;
use goodsdb;

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `factory` varchar(100) NOT NULL,
  `create_date` date DEFAULT NULL,
  `price` float DEFAULT NULL,
  `holddays` int(11) DEFAULT '30',
  `img` varchar(200) DEFAULT NULL,
  `nums` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'book-Java','Java SE and JavaEE,jdbc','QFEdu','2017-07-18',45.5,30,NULL,100),(2,'book-JSP','JSP,Servlet','QFEdu','2017-07-18',45.5,30,NULL,100),(3,'book-Ajax','Ajax? JQuery,JQueryUI,Bootstrap','QFEdu','2017-07-18',55.5,160,NULL,100);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;




DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

insert into dept(name) values('软件部');
insert into dept(name) values('人力部');
insert into dept(name) values('财务部');
insert into dept(name) values('销售部');

insert into post(name,dept_id) values('技术总监',1);
insert into post(name,dept_id) values('技术经理',1);
insert into post(name,dept_id) values('UI美工',1);
insert into post(name,dept_id) values('Java程序嫒',1);

insert into level(name,post_id) values('P1级',4);
insert into level(name,post_id) values('P2级',4);
insert into level(name,post_id) values('P3级',4);


DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `passwd` varchar(30) NOT NULL,
  `regist_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'disen','888','2017-07-17 10:24:10',NULL),(3,'Jack','123','2017-07-17 23:50:18',NULL),(4,'picker','888','2017-07-18 04:00:05',NULL),(5,'yuanzhao','888','2017-07-18 08:27:06',NULL),(6,'guoliang','888','2017-07-18 09:53:27','uploads/mm_bg.jpg'),(7,'faker','333','2017-07-18 09:54:53','uploads/5f2654cf28e193db2edc3b17cbcd62f1.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
