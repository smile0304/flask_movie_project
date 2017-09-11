-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `Oplog`
--

DROP TABLE IF EXISTS `Oplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Oplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `reason` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `ix_Oplog_addtime` (`addtime`),
  CONSTRAINT `Oplog_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oplog`
--

LOCK TABLES `Oplog` WRITE;
/*!40000 ALTER TABLE `Oplog` DISABLE KEYS */;
INSERT INTO `Oplog` VALUES (1,1,'127.0.0.1','2017-09-02 04:42:50','添加标签admin'),(2,1,'127.0.0.1','2017-09-02 04:43:03','添加标签456'),(3,1,'127.0.0.1','2017-09-02 04:44:18','添加标签DFDSAFSADF'),(4,1,'127.0.0.1','2017-09-02 04:44:20','添加标签REWREWR'),(5,1,'127.0.0.1','2017-09-02 04:44:21','添加标签GFDSAGADS'),(6,4,'127.0.0.1','2017-09-03 10:15:19','添加标签12121212');
/*!40000 ALTER TABLE `Oplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `is_super` smallint(6) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `role_id` (`role_id`),
  KEY `ix_admin_addtime` (`addtime`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'smile','pbkdf2:sha256:50000$Z2Ddn1Cl$2ea192b129afba444489b2417c195d9b96ea4def2c9bc4bafca393465c5b2b09',0,1,'2017-08-16 15:21:01'),(2,'smile1','pbkdf2:sha256:50000$rIiaGxkQ$9c25445729036de726b8d5979531f64ccbf595d68364cc20d70057069dee35a7',0,1,'2017-08-16 08:24:35'),(3,'admin','pbkdf2:sha256:50000$XTbmfV2w$73689cac6a8fc9be0d5b1df29340b781926807f52d87e73af73179e004e00794',NULL,1,'2017-09-03 09:42:51'),(4,'AAAAA','pbkdf2:sha256:50000$6vxrWNII$585d8907d256a7852841edafa3ff01c84cec99484e3bab8b6b8534a773f43d6d',1,2,'2017-09-03 09:57:11');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `ix_adminlog_addtime` (`addtime`),
  CONSTRAINT `adminlog_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlog`
--

LOCK TABLES `adminlog` WRITE;
/*!40000 ALTER TABLE `adminlog` DISABLE KEYS */;
INSERT INTO `adminlog` VALUES (1,1,'127.0.0.1','2017-09-02 04:59:25'),(2,2,'127.0.0.1','2017-09-02 04:59:32'),(3,1,'127.0.0.1','2017-09-02 04:59:39'),(4,1,'127.0.0.1','2017-09-03 05:15:25'),(5,4,'127.0.0.1','2017-09-03 10:08:13'),(6,4,'127.0.0.1','2017-09-03 10:18:58'),(7,4,'127.0.0.1','2017-09-03 10:21:02'),(8,1,'127.0.0.1','2017-09-04 22:35:30'),(9,4,'127.0.0.1','2017-09-04 22:53:38'),(10,1,'127.0.0.1','2017-09-05 00:15:57'),(11,4,'127.0.0.1','2017-09-05 00:16:09'),(12,1,'127.0.0.1','2017-09-05 00:17:52'),(13,1,'127.0.0.1','2017-09-08 09:14:55');
/*!40000 ALTER TABLE `adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`),
  KEY `ix_auth_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'添加标签','/admin/tag/add/','2017-09-02 22:33:17'),(4,'编辑标签','/admin/tag/edit/<int:id>/','2017-09-02 22:35:40'),(6,'标签列表','/admin/tag/list/<int:page>/','2017-09-02 22:36:49'),(7,'删除标签','/admin/tag/del/<int:id>/','2017-09-02 22:37:19');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_comment_addtime` (`addtime`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (17,'好看',1,1,'2017-09-01 22:43:51'),(20,'无感',2,3,'2017-09-01 22:44:29'),(25,'乏味',1,4,'2017-09-01 22:45:05'),(29,'乏味',2,6,'2017-09-01 22:45:58'),(30,'乏味',2,6,'2017-09-01 22:46:16'),(33,'给力',2,4,'2017-09-01 22:46:18'),(34,'难看',1,5,'2017-09-01 22:46:18'),(35,'<p>我是一条测试数据<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\" style=\"white-space: normal;\"/></p>',2,11,'2017-09-08 05:51:53'),(36,'<p>&lt;script&gt;alert(&quot;我是xss测试数据&quot;)&lt;/script&gt;</p>',2,11,'2017-09-08 05:53:07'),(37,'<p><img src=\"http://img.baidu.com/hi/jx2/j_0060.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>',2,11,'2017-09-08 05:53:54'),(38,'<p><img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>',2,11,'2017-09-08 05:53:59'),(39,'<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>',2,11,'2017-09-08 06:46:13'),(40,'<p>123</p>',1,15,'2017-09-11 04:47:53'),(41,'<p>123456</p>',2,16,'2017-09-11 04:52:27');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movicecol`
--

DROP TABLE IF EXISTS `movicecol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movicecol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_movicecol_addtime` (`addtime`),
  CONSTRAINT `movicecol_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movicecol_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movicecol`
--

LOCK TABLES `movicecol` WRITE;
/*!40000 ALTER TABLE `movicecol` DISABLE KEYS */;
INSERT INTO `movicecol` VALUES (1,1,1,'2017-09-02 00:08:22'),(3,1,3,'2017-09-02 00:08:22'),(4,2,4,'2017-09-02 00:08:22'),(5,1,5,'2017-09-02 00:08:22'),(6,2,6,'2017-09-02 00:08:22'),(7,1,7,'2017-09-02 00:08:22'),(8,2,8,'2017-09-02 00:08:23'),(9,2,11,'2017-09-08 08:14:40');
/*!40000 ALTER TABLE `movicecol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `info` text,
  `logo` varchar(255) DEFAULT NULL,
  `star` smallint(6) DEFAULT NULL,
  `playnum` bigint(20) DEFAULT NULL,
  `commentnum` bigint(20) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `release_time` date DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `logo` (`logo`),
  KEY `tag_id` (`tag_id`),
  KEY `ix_movie_addtime` (`addtime`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'变形金刚3','201708312108508d9d9bbb835a478480fd57bf22e9486c.mp4','aaa','2017083121085044c205675fb54a5e9286e682ac97b595.jpg',2,14,1,1,'a','2017-09-01','a','2017-08-31 21:08:50'),(2,'木乃伊','20170831213552693ba8b9c746474f8c49b3a840a7e1d2.mp4','a','20170901234958940a2a43758b4ab8a09c6013795c8731.jpg',1,31,2,1,'a','2017-09-08','15','2017-08-31 21:35:53'),(3,'test','201709080915475e7be12592a74de3be4d940f7cd77118.mp4','test','2017090809154783306049039048c6b5ae55b276001771.jpg',1,6,0,1,'a','2017-09-23','15:00','2017-09-08 09:15:47');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preview`
--

DROP TABLE IF EXISTS `preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `logo` (`logo`),
  KEY `ix_preview_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview`
--

LOCK TABLES `preview` WRITE;
/*!40000 ALTER TABLE `preview` DISABLE KEYS */;
INSERT INTO `preview` VALUES (11,'aaaaaaaabbbbb1','20170901081902a4054fa1bc5b48d7adab97d4e4985d77.jpg','2017-09-01 08:15:18'),(12,'123','2017090500193761c7d971dbe14a1fbeb2933e2d85b41e.jpg','2017-09-05 00:19:37'),(13,'123456','20170905001943849ba9c2fa514ff0adcafcc8f4b46883.jpg','2017-09-05 00:19:44');
/*!40000 ALTER TABLE `preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `auths` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_role_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'超级管理员','','2017-08-16 15:16:50'),(2,'标签管理员','1,4,6,7','2017-09-03 05:09:30');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_tag_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'爱情','2017-08-28 06:11:59'),(2,'动作','2017-08-28 06:51:42'),(5,'科技1','2017-08-29 05:49:21'),(6,'123','2017-09-02 03:45:54'),(7,'love','2017-09-02 04:42:08'),(8,'admin','2017-09-02 04:42:50'),(9,'456','2017-09-02 04:43:03'),(10,'DFDSAFSADF','2017-09-02 04:44:18'),(11,'REWREWR','2017-09-02 04:44:20'),(12,'GFDSAGADS','2017-09-02 04:44:21');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `info` text,
  `face` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `face` (`face`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `ix_user_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'鼠','1231','1231@123.com','13888888881','鼠','1f401.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc0'),(3,'虎','1233','1233@123.com','13888888883','虎','1f405.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc2'),(4,'兔','1234','1234@123.com','13888888884','兔','1f407.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc3'),(5,'龙','1235','1235@123.com','13888888885','龙','1f409.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc4'),(6,'蛇','1236','1236@123.com','13888888886','蛇','1f40d.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc5'),(7,'马','1237','1237@123.com','13888888887','马','1f434.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc6'),(8,'羊','1238','1238@123.com','13888888888','羊','1f411.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc7'),(9,'猴','1239','1239@123.com','13888888889','猴','1f412.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc8'),(10,'鸡','1240','1240@123.com','13888888891','鸡','1f413.png','2017-09-01 20:32:34','d32a72bdac524478b7e4f6dfc8394fc9'),(11,'test','pbkdf2:sha256:50000$SIWVuxIS$55c897adf7d2aaa3c69f2df1c33fe54643be18acaf203957104d2938b2e8149e','test@qq.com','18820172017','a','201709040344388ce4022f6ea341a481b8efe95ff30504.jpg','2017-09-04 00:26:37','623547d7e6ed41be8bec3edb05033c93'),(14,'testtest','pbkdf2:sha256:50000$7Intwbsg$281b63f1f220960d196a8dc68b77ca3476f704a83634e3b765840543325ea590','test123@qq.com','13712341234',NULL,NULL,'2017-09-11 04:33:24','0797ffbb9bf24f60a642d56a3dc06d31'),(15,'smile','pbkdf2:sha256:50000$oSUBUXIj$2a29ccab297610719e5fa4be839355650f71044e0f489aac720f63c06c6c8317','smile@qq.com','18850071234',NULL,NULL,'2017-09-11 04:46:23','14c8292f86eb448d9ee947a340fc3397'),(16,'smile123','pbkdf2:sha256:50000$dNvP0SNK$1df7380f37b93dbf9890fc690ead95c5ae3a22b9094e786e209995ed304c7e9b','smile123@qq.com','18150121234',NULL,NULL,'2017-09-11 04:49:22','f7518816272541b895357eba29122b10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ix_userlog_addtime` (`addtime`),
  CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (1,1,'192.168.4.1','2017-09-02 06:00:50'),(3,3,'192.168.4.3','2017-09-02 06:00:50'),(4,4,'192.168.4.4','2017-09-02 06:00:50'),(5,5,'192.168.4.5','2017-09-02 06:00:50'),(6,6,'192.168.4.6','2017-09-02 06:00:50'),(7,7,'192.168.4.7','2017-09-02 06:00:50'),(8,8,'192.168.4.8','2017-09-02 06:00:50'),(9,9,'192.168.4.9','2017-09-02 06:00:59'),(10,11,'127.0.0.1','2017-09-04 02:41:28'),(11,11,'127.0.0.1','2017-09-04 02:47:49'),(12,11,'127.0.0.1','2017-09-04 22:19:04'),(13,11,'127.0.0.1','2017-09-04 23:17:22'),(14,11,'127.0.0.1','2017-09-08 05:18:57'),(15,11,'127.0.0.1','2017-09-08 05:31:34'),(16,11,'127.0.0.1','2017-09-08 08:10:40'),(17,11,'127.0.0.1','2017-09-11 04:38:41'),(18,15,'127.0.0.1','2017-09-11 04:46:31'),(19,15,'127.0.0.1','2017-09-11 04:47:44'),(20,16,'127.0.0.1','2017-09-11 04:49:28');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11  5:53:19
