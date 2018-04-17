-- MySQL dump 10.13  Distrib 5.1.63, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: nxu_pm
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
-- Table structure for table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_category` (
  `category_id` varchar(50) NOT NULL,
  `category_name` varchar(50) NOT NULL COMMENT '分类名称',
  `BZ` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_category`
--

LOCK TABLES `project_category` WRITE;
/*!40000 ALTER TABLE `project_category` DISABLE KEYS */;
INSERT INTO `project_category` VALUES ('1','科研',''),('2','教改','');
/*!40000 ALTER TABLE `project_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_info`
--

DROP TABLE IF EXISTS `project_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_info` (
  `pro_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL COMMENT '用户ID',
  `pro_name` varchar(255) NOT NULL COMMENT '项目名称',
  `pro_content` text COMMENT '项目内容',
  `pro_level` varchar(50) DEFAULT NULL COMMENT '项目级别',
  `pro_cate` varchar(50) DEFAULT NULL COMMENT '项目类型',
  `pro_start` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `pro_end` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态: 0正常 1 结题',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `outlay` float DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_info`
--

LOCK TABLES `project_info` WRITE;
/*!40000 ALTER TABLE `project_info` DISABLE KEYS */;
INSERT INTO `project_info` VALUES ('0fe4f1fce079469eb7ddfda43b9854dd','1c36b625696a449bb0124f61f892c668','2017年Java软件版本升级v8.0',NULL,'院级','教改','2017-11-01','2017-11-30',0,NULL,800),('10102','1c36b625696a449bb0124f61f892c668','智能研究02','','区级','科研','2014-06-10','2017-12-28',2,'',120000),('10103','1c36b625696a449bb0124f61f892c668','智能研究03','','区级','科研','2015-07-15','2017-11-28',1,'',120000),('10104','1c36b625696a449bb0124f61f892c668','智能研究04','','区级','科研','2016-08-20','2019-08-20',0,'',120000),('16e63332b42441edaf82678b68c17942','1','人工智能001',NULL,'国家级','科研','2017-11-29','2020-12-29',0,NULL,2e+06),('335af1326c784a3bb20ae202c3ec0f66','1c36b625696a449bb0124f61f892c668','语音智能01',NULL,'校级','教改','2017-11-01','2017-11-30',0,NULL,1000),('eed52f289f1841248eeb4177fc3bb2dc','1','升级项目管理系统v1.2',NULL,'校级','教改','2017-11-29','2017-12-29',0,NULL,40000),('f01e5147ba274e8f8c2310b2e6f73ad3','1c36b625696a449bb0124f61f892c668','2017年Java软件版本升级v7.0',NULL,'院级','教改','2017-01-01','2018-03-01',0,NULL,2000);
/*!40000 ALTER TABLE `project_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_level`
--

DROP TABLE IF EXISTS `project_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_level` (
  `level_id` varchar(50) NOT NULL,
  `level_name` varchar(50) NOT NULL COMMENT '级别名称',
  `BZ` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_level`
--

LOCK TABLES `project_level` WRITE;
/*!40000 ALTER TABLE `project_level` DISABLE KEYS */;
INSERT INTO `project_level` VALUES ('1','国家级',''),('2','区级',''),('3','校级',''),('4','院级','');
/*!40000 ALTER TABLE `project_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_app_user`
--

DROP TABLE IF EXISTS `sys_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_user`
--

LOCK TABLES `sys_app_user` WRITE;
/*!40000 ALTER TABLE `sys_app_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries` (
  `ZD_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BIANMA` varchar(100) DEFAULT NULL,
  `ORDY_BY` int(10) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `JB` int(10) DEFAULT NULL,
  `P_BM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ZD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES ('212a6765fddc4430941469e1ec8c8e6c','人事部','001',1,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_001'),('3cec73a7cc8a4cb79e3f6ccc7fc8858c','行政部','002',2,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_002'),('48724375640341deb5ef01ac51a89c34','北京','dq001',1,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_dq001'),('5a1547632cca449db378fbb9a042b336','研发部','004',4,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_004'),('7f9cd74e60a140b0aea5095faa95cda3','财务部','003',3,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_003'),('b861bd1c3aba4934acdb5054dd0d0c6e','科技不','kj',7,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_kj'),('c067fdaf51a141aeaa56ed26b70de863','部门','BM',1,'0',1,'BM'),('cdba0b5ef20e4fc0a5231fa3e9ae246a','地区','DQ',2,'0',1,'DQ'),('f184bff5081d452489271a1bd57599ed','上海','SH',2,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_SH'),('f30bf95e216d4ebb8169ff0c86330b8f','客服部','006',6,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_006');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_gl_qx`
--

DROP TABLE IF EXISTS `sys_gl_qx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_gl_qx`
--

LOCK TABLES `sys_gl_qx` WRITE;
/*!40000 ALTER TABLE `sys_gl_qx` DISABLE KEYS */;
INSERT INTO `sys_gl_qx` VALUES ('1','2',1,1,1,1,1,1),('2','1',0,0,1,1,1,1),('4f140ce173734690823ed10b8e673373','1',0,0,0,0,0,0),('55896f5ce3c0494fa6850775a4e29ff6','7',0,0,1,1,0,0),('d7f2c7bfd8824e9c9fc6368e5fc0a20c','1',0,0,0,0,0,0),('e74f713314154c35bd7fc98897859fe3','6',1,0,1,1,0,0);
/*!40000 ALTER TABLE `sys_gl_qx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理','#','0','1','icon-desktop','2'),(2,'组织管理','role.do','1','2',NULL,'2'),(4,'会员管理','happuser/listUsers.do','1','4',NULL,'2'),(5,'系统用户','user/listUsers.do','1','3',NULL,'2'),(6,'信息管理','#','0','2','icon-list-alt','2'),(7,'图片管理','pictures/list.do','6','4',NULL,'2'),(20,'在线管理','onlinemanager/list.do','1','5',NULL,'2'),(22,'项目管理','project/list.do','6','1',NULL,'2'),(23,'项目类别','category/list.do','6','2',NULL,'2'),(24,'项目级别','level/list.do','6','3',NULL,'2');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','系统管理员','4194294','0','1','1','1','1','1'),('2','超级管理员','30408946','1','30408950','30408950','30408950','30408950','2'),('4f140ce173734690823ed10b8e673373','系统管理员','30408946','1','5243122','5243122','5243122','5243122','4f140ce173734690823ed10b8e673373'),('55896f5ce3c0494fa6850775a4e29ff6','特级会员','4194496','7','4194368','4194368','4194368','4194496','55896f5ce3c0494fa6850775a4e29ff6'),('7','会员组','4194496','0','0','0','0','1',NULL),('d7f2c7bfd8824e9c9fc6368e5fc0a20c','普通用户','4194368','1','4194368','4194368','4194368','29360320','d7f2c7bfd8824e9c9fc6368e5fc0a20c');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','admin','de41b7fb99201d8334c23c014db35ecd92df81bc','系统管理员','1133671055321055258374707980945218933803269864762743594642571294','1','2017-12-01 16:28:45','0:0:0:0:0:0:0:1','0','最高统治者','default','admin@main.com','001','18788888888'),('1c36b625696a449bb0124f61f892c668','dyh','cfdbf7623931a090247982f5be44106448a83ccd','狄老师','','d7f2c7bfd8824e9c9fc6368e5fc0a20c','2017-12-01 16:41:37','0:0:0:0:0:0:0:1','0','','skin-1','610039018@qq.com','109000','17791692095'),('2e29b3e20c3e4f7784cf1e4c173aace2','kong','efbea15b78fe4b8d458f4ecb4f5a5e81df420240','孔老师','','4f140ce173734690823ed10b8e673373','2017-12-01 16:39:31','0:0:0:0:0:0:0:1','0','管理员','default','1000@qq.com','171201','17791761101');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_qx`
--

DROP TABLE IF EXISTS `sys_user_qx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_qx`
--

LOCK TABLES `sys_user_qx` WRITE;
/*!40000 ALTER TABLE `sys_user_qx` DISABLE KEYS */;
INSERT INTO `sys_user_qx` VALUES ('1',1,0,0,0,0,0,0,0),('2',1,1,1,1,1,1,1,1),('4f140ce173734690823ed10b8e673373',0,0,0,0,0,0,0,0),('55896f5ce3c0494fa6850775a4e29ff6',100,0,0,0,0,0,0,0),('d7f2c7bfd8824e9c9fc6368e5fc0a20c',0,0,0,0,0,0,0,0),('e74f713314154c35bd7fc98897859fe3',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `sys_user_qx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pictures`
--

DROP TABLE IF EXISTS `tb_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pictures`
--

LOCK TABLES `tb_pictures` WRITE;
/*!40000 ALTER TABLE `tb_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_command`
--

DROP TABLE IF EXISTS `weixin_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_command` (
  `COMMAND_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `COMMANDCODE` varchar(255) DEFAULT NULL COMMENT '应用路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(1) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`COMMAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_command`
--

LOCK TABLES `weixin_command` WRITE;
/*!40000 ALTER TABLE `weixin_command` DISABLE KEYS */;
INSERT INTO `weixin_command` VALUES ('2636750f6978451b8330874c9be042c2','锁定服务器','rundll32.exe user32.dll,LockWorkStation','2015-05-10 21:25:06',1,'锁定计算机'),('46217c6d44354010823241ef484f7214','打开浏览器','C:/Program Files/Internet Explorer/iexplore.exe','2015-05-09 02:43:02',1,'打开浏览器操作'),('576adcecce504bf3bb34c6b4da79a177','关闭浏览器','taskkill /f /im iexplore.exe','2015-05-09 02:36:48',1,'关闭浏览器操作'),('854a157c6d99499493f4cc303674c01f','关闭QQ','taskkill /f /im qq.exe','2015-05-10 21:25:46',1,'关闭QQ'),('ab3a8c6310ca4dc8b803ecc547e55ae7','打开QQ','D:/SOFT/QQ/QQ/Bin/qq.exe','2015-05-10 21:25:25',1,'打开QQ');
/*!40000 ALTER TABLE `weixin_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_imgmsg`
--

DROP TABLE IF EXISTS `weixin_imgmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_imgmsg` (
  `IMGMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '标题1',
  `DESCRIPTION1` varchar(255) DEFAULT NULL COMMENT '描述1',
  `IMGURL1` varchar(255) DEFAULT NULL COMMENT '图片地址1',
  `TOURL1` varchar(255) DEFAULT NULL COMMENT '超链接1',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '标题2',
  `DESCRIPTION2` varchar(255) DEFAULT NULL COMMENT '描述2',
  `IMGURL2` varchar(255) DEFAULT NULL COMMENT '图片地址2',
  `TOURL2` varchar(255) DEFAULT NULL COMMENT '超链接2',
  `TITLE3` varchar(255) DEFAULT NULL COMMENT '标题3',
  `DESCRIPTION3` varchar(255) DEFAULT NULL COMMENT '描述3',
  `IMGURL3` varchar(255) DEFAULT NULL COMMENT '图片地址3',
  `TOURL3` varchar(255) DEFAULT NULL COMMENT '超链接3',
  `TITLE4` varchar(255) DEFAULT NULL COMMENT '标题4',
  `DESCRIPTION4` varchar(255) DEFAULT NULL COMMENT '描述4',
  `IMGURL4` varchar(255) DEFAULT NULL COMMENT '图片地址4',
  `TOURL4` varchar(255) DEFAULT NULL COMMENT '超链接4',
  `TITLE5` varchar(255) DEFAULT NULL COMMENT '标题5',
  `DESCRIPTION5` varchar(255) DEFAULT NULL COMMENT '描述5',
  `IMGURL5` varchar(255) DEFAULT NULL COMMENT '图片地址5',
  `TOURL5` varchar(255) DEFAULT NULL COMMENT '超链接5',
  `TITLE6` varchar(255) DEFAULT NULL COMMENT '标题6',
  `DESCRIPTION6` varchar(255) DEFAULT NULL COMMENT '描述6',
  `IMGURL6` varchar(255) DEFAULT NULL COMMENT '图片地址6',
  `TOURL6` varchar(255) DEFAULT NULL COMMENT '超链接6',
  `TITLE7` varchar(255) DEFAULT NULL COMMENT '标题7',
  `DESCRIPTION7` varchar(255) DEFAULT NULL COMMENT '描述7',
  `IMGURL7` varchar(255) DEFAULT NULL COMMENT '图片地址7',
  `TOURL7` varchar(255) DEFAULT NULL COMMENT '超链接7',
  `TITLE8` varchar(255) DEFAULT NULL COMMENT '标题8',
  `DESCRIPTION8` varchar(255) DEFAULT NULL COMMENT '描述8',
  `IMGURL8` varchar(255) DEFAULT NULL COMMENT '图片地址8',
  `TOURL8` varchar(255) DEFAULT NULL COMMENT '超链接8',
  PRIMARY KEY (`IMGMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_imgmsg`
--

LOCK TABLES `weixin_imgmsg` WRITE;
/*!40000 ALTER TABLE `weixin_imgmsg` DISABLE KEYS */;
INSERT INTO `weixin_imgmsg` VALUES ('380b2cb1f4954315b0e20618f7b5bd8f','首页','2015-05-10 20:51:09',1,'图文回复','图文回复标题','图文回复描述','http://a.hiphotos.baidu.com/image/h%3D360/sign=c6c7e73ebc389b5027ffe654b535e5f1/a686c9177f3e6709392bb8df3ec79f3df8dc55e3.jpg','www.baidu.com','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `weixin_imgmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixin_textmsg`
--

DROP TABLE IF EXISTS `weixin_textmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixin_textmsg` (
  `TEXTMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '内容',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TEXTMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixin_textmsg`
--

LOCK TABLES `weixin_textmsg` WRITE;
/*!40000 ALTER TABLE `weixin_textmsg` DISABLE KEYS */;
INSERT INTO `weixin_textmsg` VALUES ('303c190498a045bdbba4c940c2f0d9f9','1ss','1ssddd','2015-05-18 20:17:02',1,'1ssdddsd'),('63681adbe7144f10b66d6863e07f23c2','你好','你也好','2015-05-09 02:39:23',1,'文本回复'),('695cd74779734231928a253107ab0eeb','吃饭','吃了噢噢噢噢','2015-05-10 22:52:27',1,'文本回复'),('d4738af7aea74a6ca1a5fb25a98f9acb','关注','关注','2015-05-11 02:12:36',1,'关注回复');
/*!40000 ALTER TABLE `weixin_textmsg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-01 16:45:30
