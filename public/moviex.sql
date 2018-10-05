-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: moviex
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `achivments`
--

DROP TABLE IF EXISTS `achivments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achivments` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `badge_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achivments`
--

LOCK TABLES `achivments` WRITE;
/*!40000 ALTER TABLE `achivments` DISABLE KEYS */;
/*!40000 ALTER TABLE `achivments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `featuring_id` int(11) NOT NULL,
  `from_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badges` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condidtion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `me` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,17,'wtf dude',NULL,'2018-09-29 03:11:53','2018-09-29 03:11:53'),(2,2,17,'hell o',NULL,'2018-09-29 03:15:32','2018-09-29 03:15:32'),(3,2,17,'hell o','2018-09-29 03:15:57','2018-09-29 03:15:35','2018-09-29 03:15:57'),(4,2,18,'yeah she needs the D and',NULL,'2018-09-29 03:42:08','2018-09-29 03:42:08'),(5,2,18,'yeah she needs the D and',NULL,'2018-09-29 03:44:57','2018-09-29 03:44:57'),(6,2,9,'reload',NULL,'2018-09-29 15:14:44','2018-09-29 15:14:44'),(7,2,16,'t',NULL,'2018-09-29 15:16:45','2018-09-29 15:16:45'),(8,2,18,'game',NULL,'2018-09-29 15:17:55','2018-09-29 15:17:55'),(9,2,18,'of',NULL,'2018-09-29 15:18:58','2018-09-29 15:18:58'),(10,2,18,'thrones','2018-10-02 03:43:55','2018-09-29 15:20:31','2018-10-02 03:43:55');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,238,2,'movie','2018-09-30 23:25:00','2018-09-30 23:25:00',NULL),(2,1402,2,'tv','2018-09-30 23:27:37','2018-09-30 23:27:37',NULL),(3,12628,2,'movie','2018-10-01 00:27:30','2018-10-01 00:27:30',NULL),(4,39651,2,'tv','2018-10-02 12:14:58','2018-10-02 12:14:58',NULL),(5,74306,2,'movie','2018-10-02 15:07:41','2018-10-02 15:07:41',NULL);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,2,1,0,'2018-10-01 04:09:18','2018-10-01 04:09:18',NULL),(2,2,2,0,'2018-10-02 06:25:04','2018-10-02 06:25:04',NULL);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupentries`
--

DROP TABLE IF EXISTS `groupentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupentries` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupentries`
--

LOCK TABLES `groupentries` WRITE;
/*!40000 ALTER TABLE `groupentries` DISABLE KEYS */;
INSERT INTO `groupentries` VALUES (NULL,1,1,'2018-09-10 22:19:59.000000','2018-09-11 02:41:21.000000','2018-09-11 02:41:21.000000'),(NULL,1,2,'2018-09-11 02:36:35.000000','2018-09-11 02:40:05.000000','2018-09-11 02:40:05.000000'),(NULL,1,2,'2018-09-11 02:40:06.000000','2018-09-11 02:40:09.000000','2018-09-11 02:40:09.000000'),(NULL,1,2,'2018-09-11 02:40:11.000000','2018-09-11 02:40:12.000000','2018-09-11 02:40:12.000000'),(NULL,1,2,'2018-09-11 02:40:13.000000','2018-09-11 02:40:13.000000',NULL),(NULL,1,1,'2018-09-11 02:41:22.000000','2018-09-11 02:41:24.000000','2018-09-11 02:41:24.000000'),(NULL,1,6,'2018-09-11 02:42:09.000000','2018-09-11 02:42:09.000000',NULL),(NULL,2,1,'2018-09-26 02:40:08.000000','2018-09-29 17:29:32.000000','2018-09-29 17:29:32.000000'),(NULL,2,4,'2018-09-26 02:40:18.000000','2018-09-29 17:28:47.000000','2018-09-29 17:28:47.000000'),(NULL,2,2,'2018-09-29 17:29:53.000000','2018-09-29 17:30:13.000000','2018-09-29 17:30:13.000000'),(NULL,2,3,'2018-09-29 17:29:55.000000','2018-09-29 17:30:05.000000','2018-09-29 17:30:05.000000'),(NULL,2,4,'2018-09-29 17:29:59.000000','2018-09-29 17:29:59.000000',NULL),(NULL,2,1,'2018-10-01 06:59:34.000000','2018-10-01 06:59:36.000000','2018-10-01 06:59:36.000000'),(NULL,2,1,'2018-10-01 06:59:37.000000','2018-10-01 06:59:38.000000','2018-10-01 06:59:38.000000'),(NULL,2,1,'2018-10-01 06:59:39.000000','2018-10-01 06:59:41.000000','2018-10-01 06:59:41.000000'),(NULL,2,1,'2018-10-01 06:59:42.000000','2018-10-01 06:59:42.000000',NULL);
/*!40000 ALTER TABLE `groupentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creater_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,1,'av.png','Tarntino Art','mob for everyone who appreciate the real art of Tarantnio','movies',NULL,NULL,NULL,NULL),(2,1,'av.png','Classics','mob for everyone who appreciate the real art ','movies',NULL,NULL,NULL,NULL),(3,1,'got.png','GOT','game of thrones group ','tv',NULL,NULL,NULL,NULL),(4,1,'robot.png','hakers','mr robot group ','tv',NULL,NULL,NULL,NULL),(5,1,'402116768','f','kf','Movies','2018-07-30 21:43:14','2018-07-30 21:43:14',NULL,NULL),(6,1,'48613638.jpg','The new Lifters','all lift parties should participate in here','Movies','2018-09-11 01:35:45','2018-09-11 01:35:45',NULL,NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `library_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `ep_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (2,2,NULL,'3','2018-09-27 09:08:26.000000','2018-09-27 09:08:26.000000',NULL,4,'watching',0,2),(3,2,NULL,'3','2018-09-27 09:08:26.000000','2018-09-27 09:08:26.000000',NULL,4,'watching',0,3),(4,2,NULL,'3','2018-09-27 09:08:27.000000','2018-09-27 09:08:27.000000',NULL,4,'watching',0,4),(5,2,NULL,'3','2018-09-27 09:08:27.000000','2018-09-27 09:08:27.000000',NULL,4,'watching',0,4),(6,2,NULL,'3','2018-09-27 09:08:28.000000','2018-09-27 09:08:28.000000',NULL,5,'watching',0,5),(7,2,NULL,'3','2018-09-27 09:08:30.000000','2018-09-27 09:08:30.000000',NULL,7,'watching',0,3),(8,2,NULL,'3','2018-09-27 09:08:32.000000','2018-09-27 09:08:32.000000',NULL,9,'watching',0,1),(9,2,NULL,'3','2018-09-27 09:08:35.000000','2018-09-27 09:08:35.000000',NULL,15,'watching',0,0),(15,2,NULL,'3','2018-09-27 09:12:03.000000','2018-09-27 09:12:03.000000',NULL,5,'watching',0,6),(16,2,NULL,'3','2018-09-27 09:14:08.000000','2018-09-27 09:14:08.000000',NULL,9,'watching',0,2),(17,2,NULL,'3','2018-09-27 09:15:14.000000','2018-09-27 09:15:14.000000',NULL,7,'watching',0,4),(18,2,NULL,'3','2018-09-27 09:46:05.000000','2018-09-27 09:46:05.000000',NULL,5,'watching',0,7),(19,2,NULL,'3','2018-09-27 09:46:29.000000','2018-09-27 09:46:29.000000',NULL,4,'watching',0,6),(47,2,NULL,'4','2018-09-29 09:19:32.000000','2018-09-29 09:19:32.000000',NULL,17,'completed',1399,0),(48,2,NULL,'2','2018-09-29 09:20:04.000000','2018-09-29 09:20:04.000000',NULL,17,'completed',4,0),(49,2,NULL,'1','2018-09-29 11:29:10.000000','2018-09-29 11:29:10.000000',NULL,18,'watching',NULL,0),(50,2,NULL,'1','2018-09-29 11:29:13.000000','2018-09-29 11:29:13.000000',NULL,19,'watching',NULL,0),(51,2,NULL,'4','2018-09-29 11:29:14.000000','2018-09-29 11:29:14.000000',NULL,20,'completed',NULL,0),(52,2,NULL,'1','2018-09-29 11:29:15.000000','2018-09-29 11:29:15.000000',NULL,21,'watching',NULL,0),(53,2,NULL,'4','2018-09-29 11:29:17.000000','2018-09-29 11:29:17.000000',NULL,22,'completed',NULL,0),(54,2,NULL,'4','2018-09-29 11:29:19.000000','2018-09-29 11:29:19.000000',NULL,23,'completed',NULL,0),(55,2,NULL,'1','2018-09-29 11:29:22.000000','2018-09-29 11:29:22.000000',NULL,24,'watching',NULL,0),(56,2,NULL,'4','2018-09-29 11:29:23.000000','2018-09-29 11:29:23.000000',NULL,25,'completed',NULL,0),(57,2,NULL,'1','2018-09-29 11:29:30.000000','2018-09-29 11:29:30.000000',NULL,26,'watching',NULL,0),(58,2,NULL,'4','2018-09-29 11:29:34.000000','2018-09-29 11:29:34.000000',NULL,27,'completed',NULL,0),(59,2,NULL,'1','2018-09-29 11:29:37.000000','2018-09-29 11:29:37.000000',NULL,28,'watchlist',NULL,0),(60,2,NULL,'1','2018-09-29 11:29:40.000000','2018-09-29 11:29:40.000000',NULL,29,'watchlist',NULL,0),(61,2,NULL,'4','2018-09-29 11:29:42.000000','2018-09-29 11:29:42.000000',NULL,30,'completed',NULL,0),(62,2,NULL,'4','2018-09-29 11:29:44.000000','2018-09-29 11:29:44.000000',NULL,31,'completed',NULL,0),(63,2,NULL,'4','2018-09-29 11:29:47.000000','2018-09-29 11:29:47.000000',NULL,32,'completed',NULL,0),(64,2,NULL,'1','2018-09-29 11:29:50.000000','2018-09-29 11:29:50.000000',NULL,33,'watching',NULL,0),(65,2,NULL,'1','2018-09-29 11:29:55.000000','2018-09-29 11:29:55.000000',NULL,34,'watching',NULL,0),(66,2,NULL,'4','2018-09-29 11:30:03.000000','2018-09-29 11:30:03.000000',NULL,35,'completed',NULL,0),(67,2,NULL,'1','2018-09-29 11:30:04.000000','2018-09-29 11:30:04.000000',NULL,36,'watching',NULL,0),(68,2,NULL,'4','2018-09-29 11:30:06.000000','2018-09-29 11:30:06.000000',NULL,37,'completed',NULL,0),(69,2,NULL,'4','2018-09-29 18:23:55.000000','2018-09-29 18:23:55.000000',NULL,2,'watching',NULL,0),(70,2,NULL,'1','2018-09-29 18:24:41.000000','2018-09-29 18:24:41.000000',NULL,6,'watching',NULL,47),(71,2,NULL,'4','2018-09-29 18:24:41.000000','2018-09-29 18:24:41.000000',NULL,6,'watching',NULL,0),(72,2,NULL,'4','2018-09-29 18:27:17.000000','2018-09-29 18:27:17.000000',NULL,10,'watching',NULL,0),(73,2,NULL,'4','2018-09-29 18:29:33.000000','2018-09-29 18:29:33.000000',NULL,11,'watching',NULL,0),(74,2,NULL,'3','2018-09-29 18:34:53.000000','2018-09-29 18:34:53.000000',NULL,15,'watching',NULL,1),(75,2,NULL,'3','2018-09-29 22:13:04.000000','2018-09-29 22:13:04.000000',NULL,2,'watching',NULL,0),(76,2,NULL,'3','2018-09-30 20:46:08.000000','2018-09-30 20:46:08.000000',NULL,2,'watching',0,14),(77,2,NULL,'3','2018-09-30 20:46:11.000000','2018-09-30 20:46:11.000000',NULL,2,'watching',0,15),(78,2,NULL,'3','2018-09-30 20:46:13.000000','2018-09-30 20:46:13.000000',NULL,2,'watching',0,16),(79,2,NULL,'3','2018-09-30 20:46:29.000000','2018-09-30 20:46:29.000000',NULL,2,'watching',0,17),(80,2,NULL,'3','2018-09-30 20:48:39.000000','2018-09-30 20:48:39.000000',NULL,2,'watching',0,18),(81,2,NULL,'3','2018-09-30 20:49:08.000000','2018-09-30 20:49:08.000000',NULL,2,'watching',0,19),(82,2,NULL,'3','2018-09-30 20:50:04.000000','2018-09-30 20:50:04.000000',NULL,2,'watching',0,20),(83,2,NULL,'3','2018-09-30 20:50:08.000000','2018-09-30 20:50:08.000000',NULL,2,'watching',0,21),(84,2,NULL,'3','2018-09-30 20:51:01.000000','2018-09-30 20:51:01.000000',NULL,2,'watching',0,22),(85,2,NULL,'3','2018-09-30 21:38:10.000000','2018-09-30 21:38:10.000000',NULL,2,'watching',0,23),(86,2,NULL,'3','2018-09-30 21:38:27.000000','2018-09-30 21:38:27.000000',NULL,2,'watching',0,23),(87,2,NULL,'3','2018-09-30 21:43:33.000000','2018-09-30 21:43:33.000000',NULL,2,'watching',0,24),(88,2,NULL,'3','2018-09-30 21:44:20.000000','2018-09-30 21:44:20.000000',NULL,2,'watching',0,24),(89,2,NULL,'3','2018-09-30 21:44:51.000000','2018-09-30 21:44:51.000000',NULL,2,'watching',0,25),(90,2,NULL,'3','2018-09-30 21:45:25.000000','2018-09-30 21:45:25.000000',NULL,2,'watching',0,25),(91,2,NULL,'3','2018-09-30 21:47:13.000000','2018-09-30 21:47:13.000000',NULL,2,'watching',0,25),(92,2,NULL,'3','2018-09-30 21:47:30.000000','2018-09-30 21:47:30.000000',NULL,2,'watching',0,25),(93,2,NULL,'4','2018-10-01 01:08:27.000000','2018-10-01 01:08:27.000000',NULL,38,'completed',1,0),(94,2,NULL,'4','2018-10-01 01:08:29.000000','2018-10-01 01:08:29.000000',NULL,39,'completed',3,0),(95,2,NULL,'2','2018-10-01 01:11:56.000000','2018-10-01 01:11:56.000000',NULL,38,'completed',5,0),(96,2,NULL,'2','2018-10-01 01:12:11.000000','2018-10-01 01:12:11.000000',NULL,38,'completed',1,0),(97,2,NULL,'3','2018-10-01 05:08:10.000000','2018-10-01 05:08:10.000000',NULL,4,'watching',0,7),(98,2,NULL,'4','2018-10-01 05:09:07.000000','2018-10-01 05:09:07.000000',NULL,40,'completed',NULL,0),(99,2,NULL,'4','2018-10-01 05:09:15.000000','2018-10-01 05:09:15.000000',NULL,41,'completed',NULL,0),(100,2,NULL,'4','2018-10-01 05:09:18.000000','2018-10-01 05:09:18.000000',NULL,42,'completed',NULL,0),(101,2,NULL,'4','2018-10-01 05:09:21.000000','2018-10-01 05:09:21.000000',NULL,43,'completed',NULL,0),(102,2,NULL,'4','2018-10-01 05:09:28.000000','2018-10-01 05:09:28.000000',NULL,44,'completed',NULL,0),(103,2,NULL,'4','2018-10-01 05:09:30.000000','2018-10-01 05:09:30.000000',NULL,45,'completed',NULL,0),(104,2,NULL,'4','2018-10-01 05:09:34.000000','2018-10-01 05:09:34.000000',NULL,46,'completed',NULL,0),(105,2,NULL,'4','2018-10-01 05:09:39.000000','2018-10-01 05:09:39.000000',NULL,47,'completed',NULL,0),(106,2,NULL,'4','2018-10-01 08:56:28.000000','2018-10-01 08:56:28.000000',NULL,2,'completed',NULL,26),(107,2,NULL,'3','2018-10-01 09:00:57.000000','2018-10-01 09:00:57.000000',NULL,4,'watching',0,8),(108,2,NULL,'3','2018-10-01 09:00:58.000000','2018-10-01 09:00:58.000000',NULL,4,'watching',0,8),(109,2,NULL,'4','2018-10-01 09:01:08.000000','2018-10-01 09:01:08.000000',NULL,4,'completed',NULL,10),(110,2,NULL,'3','2018-10-01 09:01:51.000000','2018-10-01 09:01:51.000000',NULL,4,'completed',NULL,8),(111,2,NULL,'3','2018-10-01 09:02:24.000000','2018-10-01 09:02:24.000000',NULL,12,'completed',NULL,0),(112,2,NULL,'4','2018-10-01 09:02:42.000000','2018-10-01 09:02:42.000000',NULL,37,'watching',NULL,0),(113,2,NULL,'3','2018-10-02 06:16:43.000000','2018-10-02 06:16:43.000000',NULL,6,'watching',0,47),(114,2,NULL,'3','2018-10-02 06:17:34.000000','2018-10-02 06:17:34.000000',NULL,5,'watching',0,8),(115,2,NULL,'4','2018-10-02 11:44:50.000000','2018-10-02 11:44:50.000000',NULL,48,'completed',0,0),(116,2,NULL,'2','2018-10-02 11:45:08.000000','2018-10-02 11:45:08.000000',NULL,48,'completed',4,0),(117,2,NULL,'1','2018-10-02 11:47:02.000000','2018-10-02 11:47:02.000000',NULL,49,'watchlist',NULL,0),(118,2,NULL,'4','2018-10-02 13:43:50.000000','2018-10-02 13:43:50.000000',NULL,50,'completed',NULL,0),(119,2,NULL,'1','2018-10-02 13:43:53.000000','2018-10-02 13:43:53.000000',NULL,51,'watchlist',NULL,0),(120,2,NULL,'4','2018-10-02 13:43:54.000000','2018-10-02 13:43:54.000000',NULL,52,'completed',NULL,0),(121,2,NULL,'4','2018-10-02 13:43:56.000000','2018-10-02 13:43:56.000000',NULL,53,'completed',NULL,0),(122,2,NULL,'4','2018-10-02 13:43:59.000000','2018-10-02 13:43:59.000000',NULL,54,'completed',NULL,0),(123,2,NULL,'4','2018-10-02 13:44:02.000000','2018-10-02 13:44:02.000000',NULL,55,'completed',NULL,0),(124,2,NULL,'4','2018-10-02 13:44:07.000000','2018-10-02 13:44:07.000000',NULL,56,'completed',NULL,0),(125,2,NULL,'4','2018-10-02 13:44:10.000000','2018-10-02 13:44:10.000000',NULL,57,'completed',NULL,0),(126,2,NULL,'1','2018-10-02 13:44:15.000000','2018-10-02 13:44:15.000000',NULL,58,'watchlist',NULL,0),(127,2,NULL,'1','2018-10-02 13:44:17.000000','2018-10-02 13:44:17.000000',NULL,59,'watchlist',NULL,0),(128,2,NULL,'4','2018-10-02 13:44:22.000000','2018-10-02 13:44:22.000000',NULL,60,'completed',NULL,0);
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laists`
--

DROP TABLE IF EXISTS `laists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `list_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laists`
--

LOCK TABLES `laists` WRITE;
/*!40000 ALTER TABLE `laists` DISABLE KEYS */;
INSERT INTO `laists` VALUES (1,2,'Public','2018-10-02 13:15:38','2018-10-02 13:15:38','Black movies','This is a list made for Black ppl movies',NULL,'284229410.jpg',NULL,'Movies');
/*!40000 ALTER TABLE `laists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraries`
--

DROP TABLE IF EXISTS `libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libraries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'watching',
  `rate` int(11) DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ep_count` int(11) DEFAULT '0',
  `rewatch_count` int(11) DEFAULT '0',
  `finished_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `record` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraries`
--

LOCK TABLES `libraries` WRITE;
/*!40000 ALTER TABLE `libraries` DISABLE KEYS */;
INSERT INTO `libraries` VALUES (1,2,1399,'2018-09-29 07:09:36','2018-09-26 07:55:52','2018-09-29 07:09:36','dropped',5,'tv',71,NULL,'2018-09-27 00:00:00.000','2018-09-11 00:00:00.000',NULL,'true'),(2,2,1402,NULL,'2018-09-26 07:55:54','2018-10-01 08:56:28','completed',0,'tv',26,NULL,NULL,NULL,'null','false'),(3,2,1418,NULL,'2018-09-26 07:55:55','2018-09-26 07:55:55','watchlist',0,'tv',0,NULL,NULL,NULL,NULL,'true'),(4,2,1396,NULL,'2018-09-26 07:55:58','2018-10-01 09:01:51','completed',0,'tv',62,NULL,NULL,NULL,'null','true'),(5,2,60735,NULL,'2018-09-26 07:56:02','2018-10-02 06:17:34','watching',0,'tv',9,NULL,NULL,NULL,NULL,'true'),(6,2,1412,NULL,'2018-09-26 07:56:04','2018-10-02 06:16:44','watching',0,'tv',48,NULL,NULL,NULL,'null','true'),(7,2,66732,NULL,'2018-09-26 07:56:05','2018-09-27 09:15:14','watching',0,'tv',5,NULL,NULL,NULL,NULL,'true'),(8,2,456,NULL,'2018-09-26 07:56:07','2018-09-26 07:56:07','watchlist',0,'tv',0,NULL,NULL,NULL,NULL,'true'),(9,2,1434,NULL,'2018-09-27 08:18:18','2018-09-27 09:14:08','watching',0,'tv',3,NULL,NULL,NULL,NULL,'true'),(10,2,1403,NULL,'2018-09-27 08:20:18','2018-09-29 18:27:17','watching',0,'tv',0,NULL,NULL,NULL,'null','true'),(11,2,1405,NULL,'2018-09-27 08:20:56','2018-09-29 18:29:33','watching',0,'tv',0,NULL,NULL,NULL,'null','true'),(12,2,4607,NULL,'2018-09-27 08:21:20','2018-10-01 09:02:23','completed',0,'tv',120,NULL,NULL,NULL,'null','true'),(13,2,60059,NULL,'2018-09-27 08:21:36','2018-09-27 08:21:36','completed',0,'tv',0,NULL,NULL,NULL,NULL,'true'),(14,2,1416,NULL,'2018-09-27 08:32:14','2018-09-27 08:32:14','completed',0,'tv',0,NULL,NULL,NULL,NULL,'true'),(15,2,62688,NULL,'2018-09-27 08:32:34','2018-09-29 18:34:53','watching',0,'tv',6,NULL,NULL,NULL,'null','true'),(16,2,1399,'2018-09-29 07:14:54','2018-09-29 07:11:48','2018-09-29 07:14:54','watchlist',4,'tv',0,NULL,NULL,NULL,NULL,'true'),(17,2,1399,NULL,'2018-09-29 09:19:31','2018-09-29 09:20:04','completed',4,'tv',0,NULL,NULL,NULL,NULL,'true'),(18,2,44217,NULL,'2018-09-29 11:29:10','2018-09-29 11:29:10','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(19,2,4613,NULL,'2018-09-29 11:29:13','2018-09-29 11:29:13','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(20,2,1668,NULL,'2018-09-29 11:29:13','2018-09-29 11:29:13','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(21,2,48866,NULL,'2018-09-29 11:29:15','2018-09-29 11:29:15','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(22,2,19885,NULL,'2018-09-29 11:29:17','2018-09-29 11:29:17','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(23,2,62560,NULL,'2018-09-29 11:29:19','2018-09-29 11:29:19','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(24,2,57243,NULL,'2018-09-29 11:29:22','2018-09-29 11:29:22','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(25,2,61889,NULL,'2018-09-29 11:29:23','2018-09-29 11:29:23','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(26,2,42009,NULL,'2018-09-29 11:29:30','2018-09-29 11:29:30','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(27,2,60625,NULL,'2018-09-29 11:29:34','2018-09-29 11:29:34','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(28,2,1425,NULL,'2018-09-29 11:29:37','2018-09-29 11:29:37','watchlist',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(29,2,60708,NULL,'2018-09-29 11:29:40','2018-09-29 11:29:40','watchlist',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(30,2,1408,NULL,'2018-09-29 11:29:42','2018-09-29 11:29:42','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(31,2,1413,NULL,'2018-09-29 11:29:44','2018-09-29 11:29:44','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(32,2,62286,NULL,'2018-09-29 11:29:47','2018-09-29 11:29:47','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(33,2,38472,NULL,'2018-09-29 11:29:50','2018-09-29 11:29:50','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(34,2,39272,NULL,'2018-09-29 11:29:55','2018-09-29 11:29:55','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(35,2,1705,NULL,'2018-09-29 11:30:03','2018-09-29 11:30:03','completed',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(36,2,66788,NULL,'2018-09-29 11:30:03','2018-09-29 11:30:03','watching',NULL,'tv',0,NULL,NULL,NULL,NULL,'true'),(37,2,4614,NULL,'2018-09-29 11:30:05','2018-10-01 09:02:42','watching',NULL,'tv',250,NULL,NULL,NULL,'null','true'),(38,2,175528,NULL,'2018-10-01 01:08:27','2018-10-01 01:12:10','completed',1,'movie',0,0,NULL,NULL,'','true'),(40,2,489999,NULL,'2018-10-01 05:09:06','2018-10-01 05:09:06','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(41,2,76341,NULL,'2018-10-01 05:09:15','2018-10-01 05:09:15','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(42,2,297762,NULL,'2018-10-01 05:09:18','2018-10-01 05:09:18','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(43,2,263115,NULL,'2018-10-01 05:09:21','2018-10-01 05:09:21','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(44,2,205596,NULL,'2018-10-01 05:09:28','2018-10-01 05:09:28','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(45,2,27205,NULL,'2018-10-01 05:09:29','2018-10-01 05:09:29','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(46,2,210577,NULL,'2018-10-01 05:09:34','2018-10-01 05:09:34','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(47,2,127585,NULL,'2018-10-01 05:09:39','2018-10-01 05:09:39','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(48,2,505039,NULL,'2018-10-02 11:44:50','2018-10-02 11:45:08','completed',4,'movie',0,0,NULL,NULL,'','true'),(49,2,454983,NULL,'2018-10-02 11:47:02','2018-10-02 11:47:02','watchlist',NULL,'movie',0,0,NULL,NULL,'','true'),(50,2,24,NULL,'2018-10-02 13:43:50','2018-10-02 13:43:50','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(51,2,419430,NULL,'2018-10-02 13:43:52','2018-10-02 13:43:52','watchlist',NULL,'movie',0,0,NULL,NULL,'','true'),(52,2,168259,NULL,'2018-10-02 13:43:54','2018-10-02 13:43:54','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(53,2,8358,NULL,'2018-10-02 13:43:56','2018-10-02 13:43:56','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(54,2,1422,NULL,'2018-10-02 13:43:59','2018-10-02 13:43:59','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(55,2,68718,NULL,'2018-10-02 13:44:02','2018-10-02 13:44:02','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(56,2,393,NULL,'2018-10-02 13:44:07','2018-10-02 13:44:07','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(57,2,339403,NULL,'2018-10-02 13:44:10','2018-10-02 13:44:10','completed',NULL,'movie',0,0,NULL,NULL,'','true'),(58,2,11324,NULL,'2018-10-02 13:44:15','2018-10-02 13:44:15','watchlist',NULL,'movie',0,0,NULL,NULL,'','true'),(59,2,281957,NULL,'2018-10-02 13:44:17','2018-10-02 13:44:17','watchlist',NULL,'movie',0,0,NULL,NULL,'','true'),(60,2,37799,NULL,'2018-10-02 13:44:22','2018-10-02 13:44:22','completed',NULL,'movie',0,0,NULL,NULL,'','true');
/*!40000 ALTER TABLE `libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,4,'2018-07-13 21:47:33','2018-07-13 21:47:33',NULL,NULL),(2,1,3,'2018-07-13 21:47:48','2018-07-13 21:47:48',NULL,NULL),(3,1,2,'2018-07-15 15:49:52','2018-07-15 15:49:52',NULL,NULL),(4,1,2,'2018-09-06 20:44:27','2018-09-06 20:44:27','reaction',NULL),(5,1,2,'2018-09-06 21:40:44','2018-09-06 21:40:44','reaction',NULL),(6,1,2,'2018-09-06 21:40:49','2018-09-06 21:40:49','reaction',NULL),(7,1,2,'2018-09-06 21:42:05','2018-09-06 21:42:05','reaction',NULL),(8,1,2,'2018-09-06 21:42:12','2018-09-06 21:42:12','reaction',NULL),(9,1,2,'2018-09-06 21:42:48','2018-09-06 21:42:48','reaction',NULL),(10,1,2,'2018-09-06 21:42:55','2018-09-06 21:42:55','reaction',NULL),(11,1,2,'2018-09-06 21:42:56','2018-09-06 21:42:56','reaction',NULL),(12,1,2,'2018-09-06 21:43:35','2018-09-06 21:43:35','reaction',NULL),(13,1,2,'2018-09-06 21:44:03','2018-09-06 21:44:03','reaction',NULL),(14,1,2,'2018-09-06 21:44:05','2018-09-06 21:44:05','reaction',NULL),(15,1,2,'2018-09-06 21:44:05','2018-09-06 21:44:05','reaction',NULL),(16,1,2,'2018-09-06 21:44:05','2018-09-06 21:44:05','reaction',NULL),(17,1,2,'2018-09-06 21:44:06','2018-09-06 21:44:06','reaction',NULL),(18,1,2,'2018-09-06 21:44:06','2018-09-06 21:44:06','reaction',NULL),(19,1,2,'2018-09-06 21:44:06','2018-09-06 21:44:06','reaction',NULL),(20,1,2,'2018-09-06 21:44:07','2018-09-06 21:44:07','reaction',NULL),(21,1,2,'2018-09-06 21:44:37','2018-09-06 21:44:37','reaction',NULL),(22,1,2,'2018-09-06 21:44:42','2018-09-06 21:44:42','reaction',NULL),(23,1,2,'2018-09-06 21:44:44','2018-09-06 21:44:44','reaction',NULL),(24,1,2,'2018-09-06 21:45:18','2018-09-06 21:45:18','reaction',NULL),(25,1,2,'2018-09-06 21:45:21','2018-09-06 21:45:21','reaction',NULL),(26,1,2,'2018-09-06 21:45:24','2018-09-06 21:45:24','reaction',NULL),(27,1,2,'2018-09-06 21:46:15','2018-09-06 21:46:15','reaction',NULL),(28,1,2,'2018-09-06 21:46:16','2018-09-06 21:46:16','reaction',NULL),(29,1,2,'2018-09-06 21:46:18','2018-09-06 21:46:18','reaction',NULL),(30,1,1,'2018-09-07 03:40:42','2018-09-07 03:40:42','reaction',NULL),(31,1,1,NULL,'2018-09-24 13:38:35','comment','2018-09-24 13:38:35.000000'),(35,1,9,'2018-09-08 18:09:09','2018-09-24 13:39:10','comment','2018-09-24 13:39:10.000000'),(46,1,11,'2018-09-08 18:21:00','2018-09-08 18:21:00','comment',NULL),(47,1,8,'2018-09-08 18:21:05','2018-09-24 13:39:09','comment','2018-09-24 13:39:09.000000'),(48,1,7,'2018-09-08 18:21:07','2018-09-08 18:21:07','comment',NULL),(49,1,30,'2018-09-24 22:18:00','2018-09-24 22:18:00','post',NULL),(50,1,29,'2018-09-24 22:18:32','2018-09-24 22:18:32','post',NULL),(51,1,28,'2018-09-25 11:35:41','2018-10-01 07:12:45','post','2018-10-01 07:12:45.000000'),(52,1,27,'2018-09-25 12:22:26','2018-09-25 12:22:26','post',NULL),(53,1,26,'2018-09-25 12:23:03','2018-09-25 12:23:03','post',NULL),(54,1,8,'2018-09-25 12:23:05','2018-09-25 12:23:05','comment',NULL),(55,1,9,'2018-09-25 12:23:08','2018-09-25 12:23:08','comment',NULL),(56,1,1,'2018-09-25 12:26:34','2018-09-25 12:26:34','reply',NULL),(57,1,19,'2018-09-25 12:26:40','2018-09-25 12:26:40','comment',NULL),(58,1,17,'2018-09-25 12:27:41','2018-09-25 12:27:41','comment',NULL),(59,1,3,'2018-09-25 12:27:57','2018-09-25 12:27:57','reply',NULL),(60,1,2,'2018-09-25 12:28:52','2018-09-25 12:28:52','reply',NULL),(61,1,4,'2018-09-25 12:34:00','2018-09-25 12:34:00','reply',NULL),(62,1,13,'2018-09-25 12:35:43','2018-09-25 12:35:43','comment',NULL),(63,1,4,'2018-09-25 12:35:47','2018-09-25 12:35:47','reply',NULL),(64,1,20,'2018-09-25 12:38:21','2018-09-25 12:38:21','comment',NULL),(65,1,22,'2018-09-25 12:38:22','2018-09-25 19:23:30','comment','2018-09-25 19:23:30.000000'),(66,1,21,'2018-09-25 12:38:25','2018-09-25 19:23:37','comment','2018-09-25 19:23:37.000000'),(67,1,31,'2018-09-25 19:14:58','2018-09-25 19:14:58','post',NULL),(68,1,22,'2018-09-25 20:13:05','2018-09-25 20:13:05','post',NULL),(69,2,1,'2018-09-27 08:11:15','2018-09-27 08:11:15','post',NULL),(70,2,15,'2018-09-29 00:08:15','2018-10-02 06:16:18','post','2018-10-02 06:16:18.000000'),(71,2,18,'2018-09-29 03:43:40','2018-09-29 21:06:25','post','2018-09-29 21:06:25.000000'),(72,2,4,'2018-09-29 03:48:50','2018-10-01 17:23:12','comment','2018-10-01 17:23:12.000000'),(73,2,5,'2018-09-29 03:48:57','2018-10-01 17:23:08','comment','2018-10-01 17:23:08.000000'),(74,2,8,'2018-10-01 16:57:43','2018-10-02 06:16:28','post','2018-10-02 06:16:28.000000'),(75,2,5,'2018-10-01 17:02:10','2018-10-01 17:02:10','reply',NULL),(76,2,6,'2018-10-01 17:02:12','2018-10-01 17:02:12','comment',NULL),(77,2,25,'2018-10-01 17:04:11','2018-10-01 17:06:09','post','2018-10-01 17:06:09.000000'),(78,2,24,'2018-10-01 17:04:17','2018-10-02 03:34:37','post','2018-10-02 03:34:37.000000'),(79,2,27,'2018-10-01 17:05:39','2018-10-01 17:21:28','post','2018-10-01 17:21:28.000000'),(80,2,26,'2018-10-01 17:05:43','2018-10-01 17:21:39','post','2018-10-01 17:21:39.000000'),(81,2,25,'2018-10-01 17:13:25','2018-10-01 17:18:33','post','2018-10-01 17:18:33.000000'),(82,2,27,'2018-10-01 17:22:16','2018-10-01 17:22:18','post','2018-10-01 17:22:18.000000'),(83,2,27,'2018-10-01 17:22:19','2018-10-01 17:22:20','post','2018-10-01 17:22:20.000000'),(84,2,27,'2018-10-01 17:22:38','2018-10-01 17:22:39','post','2018-10-01 17:22:39.000000'),(85,2,27,'2018-10-01 17:22:40','2018-10-01 17:22:43','post','2018-10-01 17:22:43.000000'),(86,2,26,'2018-10-01 17:22:45','2018-10-01 17:22:46','post','2018-10-01 17:22:46.000000'),(87,2,10,'2018-10-01 17:23:01','2018-10-01 17:23:03','comment','2018-10-01 17:23:03.000000'),(88,2,5,'2018-10-01 17:23:09','2018-10-02 03:33:15','comment','2018-10-02 03:33:15.000000'),(89,2,4,'2018-10-01 17:23:13','2018-10-02 03:33:21','comment','2018-10-02 03:33:21.000000'),(90,2,1,'2018-10-01 17:23:18','2018-10-01 17:23:19','comment','2018-10-01 17:23:19.000000'),(91,2,5,'2018-10-02 03:33:17','2018-10-02 03:33:18','comment','2018-10-02 03:33:18.000000'),(92,2,27,'2018-10-02 04:23:17','2018-10-02 04:43:37','post','2018-10-02 04:43:37.000000'),(93,2,26,'2018-10-02 04:23:23','2018-10-02 04:43:44','post','2018-10-02 04:43:44.000000'),(94,2,25,'2018-10-02 04:23:25','2018-10-02 05:38:50','post','2018-10-02 05:38:50.000000'),(95,2,24,'2018-10-02 04:43:48','2018-10-02 06:11:00','post','2018-10-02 06:11:00.000000'),(96,2,25,'2018-10-02 05:38:51','2018-10-02 05:38:53','post','2018-10-02 05:38:53.000000'),(97,2,6,'2018-10-02 05:39:33','2018-10-02 06:15:47','reply','2018-10-02 06:15:47.000000'),(98,2,5,'2018-10-02 05:39:35','2018-10-02 05:39:36','comment','2018-10-02 05:39:36.000000'),(99,2,4,'2018-10-02 05:39:37','2018-10-02 06:15:44','comment','2018-10-02 06:15:44.000000'),(100,2,1,'2018-10-02 05:39:44','2018-10-02 06:11:28','comment','2018-10-02 06:11:28.000000'),(101,2,2,'2018-10-02 05:39:57','2018-10-02 05:39:58','comment','2018-10-02 05:39:58.000000'),(102,2,17,'2018-10-02 05:41:59','2018-10-02 06:16:13','post','2018-10-02 06:16:13.000000'),(103,2,23,'2018-10-02 05:44:34','2018-10-02 06:11:06','post','2018-10-02 06:11:06.000000'),(104,2,21,'2018-10-02 05:45:20','2018-10-02 05:45:21','post','2018-10-02 05:45:21.000000'),(105,2,21,'2018-10-02 05:45:21','2018-10-02 05:45:21','post','2018-10-02 05:45:21.000000'),(106,2,21,'2018-10-02 05:45:23','2018-10-02 05:45:23','post','2018-10-02 05:45:23.000000'),(107,2,21,'2018-10-02 05:45:23','2018-10-02 05:45:23','post','2018-10-02 05:45:23.000000'),(108,2,21,'2018-10-02 05:45:24','2018-10-02 05:45:24','post','2018-10-02 05:45:24.000000'),(109,2,21,'2018-10-02 05:45:24','2018-10-02 05:45:24','post','2018-10-02 05:45:24.000000'),(110,2,21,'2018-10-02 05:45:25','2018-10-02 05:45:25','post','2018-10-02 05:45:25.000000'),(111,2,21,'2018-10-02 05:45:25','2018-10-02 05:45:25','post','2018-10-02 05:45:25.000000'),(112,2,21,'2018-10-02 05:45:28','2018-10-02 05:45:30','post','2018-10-02 05:45:30.000000'),(113,2,21,'2018-10-02 05:45:32','2018-10-02 05:45:33','post','2018-10-02 05:45:33.000000'),(114,2,21,'2018-10-02 05:45:33','2018-10-02 05:45:33','post','2018-10-02 05:45:33.000000'),(115,2,21,'2018-10-02 05:45:33','2018-10-02 05:45:35','post','2018-10-02 05:45:35.000000'),(116,2,21,'2018-10-02 05:45:33','2018-10-02 05:45:35','post','2018-10-02 05:45:35.000000'),(117,2,21,'2018-10-02 05:45:36','2018-10-02 05:47:06','post','2018-10-02 05:47:06.000000'),(118,2,20,'2018-10-02 05:45:43','2018-10-02 06:15:57','post','2018-10-02 06:15:57.000000'),(119,2,21,'2018-10-02 05:47:07','2018-10-02 05:47:08','post','2018-10-02 05:47:08.000000'),(120,2,21,'2018-10-02 05:47:07','2018-10-02 05:47:08','post','2018-10-02 05:47:08.000000'),(121,2,21,'2018-10-02 05:47:08','2018-10-02 05:47:08','post','2018-10-02 05:47:08.000000'),(122,2,21,'2018-10-02 05:47:08','2018-10-02 05:47:09','post','2018-10-02 05:47:09.000000'),(123,2,21,'2018-10-02 05:47:09','2018-10-02 05:47:09','post','2018-10-02 05:47:09.000000'),(124,2,21,'2018-10-02 05:47:09','2018-10-02 05:47:09','post','2018-10-02 05:47:09.000000'),(125,2,21,'2018-10-02 05:47:09','2018-10-02 05:47:10','post','2018-10-02 05:47:10.000000'),(126,2,21,'2018-10-02 05:47:10','2018-10-02 05:47:10','post','2018-10-02 05:47:10.000000'),(127,2,21,'2018-10-02 05:47:10','2018-10-02 05:47:10','post','2018-10-02 05:47:10.000000'),(128,2,21,'2018-10-02 05:47:10','2018-10-02 05:47:11','post','2018-10-02 05:47:11.000000'),(129,2,21,'2018-10-02 05:47:11','2018-10-02 05:47:11','post','2018-10-02 05:47:11.000000'),(130,2,21,'2018-10-02 05:47:11','2018-10-02 05:47:12','post','2018-10-02 05:47:12.000000'),(131,2,21,'2018-10-02 05:47:11','2018-10-02 05:47:12','post','2018-10-02 05:47:12.000000'),(132,2,21,'2018-10-02 05:47:12','2018-10-02 05:47:13','post','2018-10-02 05:47:13.000000'),(133,2,21,'2018-10-02 05:47:12','2018-10-02 05:47:13','post','2018-10-02 05:47:13.000000'),(134,2,21,'2018-10-02 05:47:13','2018-10-02 05:47:13','post','2018-10-02 05:47:13.000000'),(135,2,21,'2018-10-02 05:47:13','2018-10-02 05:47:13','post','2018-10-02 05:47:13.000000'),(136,2,21,'2018-10-02 05:47:14','2018-10-02 05:47:14','post','2018-10-02 05:47:14.000000'),(137,2,21,'2018-10-02 05:47:14','2018-10-02 05:47:14','post','2018-10-02 05:47:14.000000'),(138,2,21,'2018-10-02 05:47:15','2018-10-02 05:47:16','post','2018-10-02 05:47:16.000000'),(139,2,21,'2018-10-02 05:47:17','2018-10-02 05:47:18','post','2018-10-02 05:47:18.000000'),(140,2,21,'2018-10-02 05:47:17','2018-10-02 05:47:18','post','2018-10-02 05:47:18.000000'),(141,2,21,'2018-10-02 05:47:18','2018-10-02 05:47:20','post','2018-10-02 05:47:20.000000'),(142,2,21,'2018-10-02 05:47:20','2018-10-02 05:47:21','post','2018-10-02 05:47:21.000000'),(143,2,21,'2018-10-02 05:47:20','2018-10-02 05:47:21','post','2018-10-02 05:47:21.000000'),(144,2,21,'2018-10-02 05:47:21','2018-10-02 05:47:23','post','2018-10-02 05:47:23.000000'),(145,2,21,'2018-10-02 05:47:23','2018-10-02 05:47:24','post','2018-10-02 05:47:24.000000'),(146,2,21,'2018-10-02 05:47:24','2018-10-02 05:47:24','post','2018-10-02 05:47:24.000000'),(147,2,21,'2018-10-02 05:47:24','2018-10-02 05:47:24','post','2018-10-02 05:47:24.000000'),(148,2,21,'2018-10-02 05:47:26','2018-10-02 05:47:27','post','2018-10-02 05:47:27.000000'),(149,2,21,'2018-10-02 05:47:26','2018-10-02 05:47:27','post','2018-10-02 05:47:27.000000'),(150,2,21,'2018-10-02 05:47:26','2018-10-02 05:47:27','post','2018-10-02 05:47:27.000000'),(151,2,21,'2018-10-02 05:47:27','2018-10-02 05:47:28','post','2018-10-02 05:47:28.000000'),(152,2,21,'2018-10-02 05:47:27','2018-10-02 05:47:28','post','2018-10-02 05:47:28.000000'),(153,2,21,'2018-10-02 05:47:28','2018-10-02 05:47:29','post','2018-10-02 05:47:29.000000'),(154,2,21,'2018-10-02 05:47:28','2018-10-02 05:47:29','post','2018-10-02 05:47:29.000000'),(155,2,16,'2018-10-02 05:48:51','2018-10-02 05:48:51','post','2018-10-02 05:48:51.000000'),(156,2,16,'2018-10-02 05:48:52','2018-10-02 05:48:52','post','2018-10-02 05:48:52.000000'),(157,2,16,'2018-10-02 05:48:53','2018-10-02 05:48:53','post','2018-10-02 05:48:53.000000'),(158,2,16,'2018-10-02 05:48:53','2018-10-02 05:48:53','post','2018-10-02 05:48:53.000000'),(159,2,16,'2018-10-02 05:48:54','2018-10-02 05:48:54','post','2018-10-02 05:48:54.000000'),(160,2,16,'2018-10-02 05:48:55','2018-10-02 05:48:55','post','2018-10-02 05:48:55.000000'),(161,2,16,'2018-10-02 05:48:57','2018-10-02 06:12:05','post','2018-10-02 06:12:05.000000'),(162,2,21,'2018-10-02 05:49:26','2018-10-02 06:11:16','post','2018-10-02 06:11:16.000000'),(163,2,19,'2018-10-02 05:49:30','2018-10-02 05:49:31','post','2018-10-02 05:49:31.000000'),(164,2,19,'2018-10-02 05:49:31','2018-10-02 05:49:31','post','2018-10-02 05:49:31.000000'),(165,2,19,'2018-10-02 05:49:32','2018-10-02 05:49:32','post','2018-10-02 05:49:32.000000'),(166,2,19,'2018-10-02 05:49:33','2018-10-02 05:49:33','post','2018-10-02 05:49:33.000000'),(167,2,19,'2018-10-02 05:49:34','2018-10-02 05:49:34','post','2018-10-02 05:49:34.000000'),(168,2,19,'2018-10-02 05:49:35','2018-10-02 05:49:35','post','2018-10-02 05:49:35.000000'),(169,2,19,'2018-10-02 05:49:36','2018-10-02 05:49:36','post','2018-10-02 05:49:36.000000'),(170,2,19,'2018-10-02 05:49:37','2018-10-02 05:49:37','post','2018-10-02 05:49:37.000000'),(171,2,19,'2018-10-02 05:49:37','2018-10-02 06:15:54','post','2018-10-02 06:15:54.000000'),(172,2,18,'2018-10-02 05:59:52','2018-10-02 06:15:51','post','2018-10-02 06:15:51.000000'),(173,2,14,'2018-10-02 06:00:06','2018-10-02 06:16:16','post','2018-10-02 06:16:16.000000');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_id` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'twitter','www.twitter.com/user/therealdonaldtrumb',1,NULL,'2018-09-14 16:04:26.000000',NULL,'2018-09-14 16:04:26.000000');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listentries`
--

DROP TABLE IF EXISTS `listentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listentries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `laist_id` int(11) DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listentries`
--

LOCK TABLES `listentries` WRITE;
/*!40000 ALTER TABLE `listentries` DISABLE KEYS */;
INSERT INTO `listentries` VALUES (1,2,'2018-10-02 13:16:09.000000','2018-10-02 13:16:09.000000',NULL,1,74306,'movie');
/*!40000 ALTER TABLE `listentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_06_26_113955_create_posts_table',1),(4,'2018_06_26_114015_create_comments_table',1),(5,'2018_06_26_114029_create_follows_table',1),(6,'2018_06_26_114046_create_walls_table',1),(7,'2018_06_26_114056_create_movies_table',1),(8,'2018_06_26_114110_create_searches_table',1),(9,'2018_06_26_114142_create_libraries_table',1),(10,'2018_06_26_114205_create_tvs_table',1),(11,'2018_06_26_114247_create_laists_table',1),(12,'2018_06_26_114329_create_favorites_table',1),(13,'2018_06_26_114348_create_quotes_table',1),(14,'2018_06_26_114403_create_likes_table',1),(15,'2018_06_26_114420_create_actors_table',1),(16,'2018_06_26_114554_create_discussions_table',1),(17,'2018_06_26_114614_create_tv_eps_table',1),(18,'2018_06_26_114702_create_groups_table',1),(19,'2018_06_26_114719_create_ads_table',1),(20,'2018_06_26_114804_create_reviews_table',1),(21,'2018_06_26_120522_create_reactions_table',1),(22,'2018_06_26_121728_create_notifications_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ep_count` int(11) DEFAULT NULL,
  `show_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL,
  `show_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `show_popularity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES ('2018-09-26 04:36:27','2018-09-26 04:36:27',1,'The Big Bang Theory','/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg',259,'/nGsNruW3W27V6r4gkyc3iiEGsKR.jpg',12,'6.8','The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon\'s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny\'s social skills and common sense.','232.219','2007-09-24','movie',1418),('2018-09-26 04:48:20','2018-09-26 04:48:20',2,'Breaking Bad','/1yeVJox3rjo2jBKrrihIMj7uoS9.jpg',62,'/eSzpy96DwBujGFj0xMbXBcGcfxX.jpg',5,'8.3','When Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live, he becomes filled with a sense of fearlessness and an unrelenting desire to secure his family\'s financial future at any cost as he enters the dangerous world of drugs and crime.','48.71','2008-01-20','movie',1396),('2018-09-26 04:49:36','2018-09-26 04:49:36',3,'The Flash','/lUFK7ElGCk9kVEryDJHICeNdmd1.jpg',93,'/mmxxEpTqVdwBlu5Pii7tbedBkPC.jpg',5,'6.7','After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \'meta-human\' who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.','59.396','2014-10-07','movie',60735),('2018-09-26 05:56:54','2018-09-26 05:56:54',4,'Game of Thrones','/gwPSoYUHAKmdyVywgLpKKA4BjRr.jpg',73,'/gX8SYlnL9ZznfZwEH4KJUePBFUM.jpg',8,'8.2','Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.','66.753','2011-04-17','movie',1399),('2018-09-26 05:58:30','2018-09-26 05:58:30',5,'The Walking Dead','/yn7psGTZsHumHOkLUmYpyrIcA2G.jpg',116,'/xVzvD5BPAU4HpleFSo8QOdHkndo.jpg',9,'7.3','Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.','102.617','2010-10-31','movie',1402),('2018-09-26 06:03:51','2018-09-26 06:03:51',6,'Stranger Things','/lXS60geme1LlEob5Wgvj3KilClA.jpg',17,'/56v2KjBlU4XaOv9rVYEQypROD7P.jpg',2,'8.4','When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.','29.209','2016-07-15','movie',66732),('2018-09-26 06:09:14','2018-09-26 06:09:14',7,'The Simpsons','/yTZQkSsxUFJZJe67IenRM0AEklc.jpg',639,'/4jMlfAIlN1zKNcqE6xjuQsrFse2.jpg',29,'7.1','Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.','84.571','1989-12-17','movie',456),('2018-09-26 06:09:25','2018-09-26 06:09:25',8,'Westworld','/6aj09UTMQNyfSfk0ZX8rYOEsXL2.jpg',20,'/yp94aOXzuqcQHva90B3jxLfnOO9.jpg',2,'8.1','A dark odyssey about the dawn of artificial consciousness and the evolution of sin. Set at the intersection of the near future and the reimagined past, it explores a world in which every human appetite, no matter how noble or depraved, can be indulged.','39.079','2016-10-02','movie',63247),('2018-09-26 06:10:02','2018-09-26 06:10:02',9,'Sherlock','/f9zGxLHGyQB10cMDZNY5ZcGKhZi.jpg',12,'/bvS50jBZXtglmLu72EAt5KgJBrL.jpg',4,'8.3','A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.','33.795','2010-07-25','movie',19885),('2018-09-26 06:14:38','2018-09-26 06:14:38',10,'Vikings','/oktTNFM8PzdseiK1X0E0XhB6LvP.jpg',60,'/A30ZqEoDbchvE7mCZcSp6TEwB1Q.jpg',6,'7.5','Vikings follows the adventures of Ragnar Lothbrok, the greatest hero of his age. The series tells the sagas of Ragnar\'s band of Viking brothers and his family, as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods. Legend has it that he was a direct descendant of Odin, the god of war and warriors.','47.037','2013-03-03','movie',44217),('2018-09-26 06:14:42','2018-09-26 06:14:42',11,'Friends','/7buCWBTpiPrCF5Lt023dSC60rgS.jpg',236,'/efiX8iir6GEBWCD0uCFIi5NAyYA.jpg',10,'7.9','The misadventures of a group of friends as they navigate the pitfalls of work, life and love in Manhattan.','54.374','1994-09-22','movie',1668),('2018-09-26 06:20:20','2018-09-26 06:20:20',12,'Band of Brothers','/yjqu0KEVAWz9eJQBvzrQMFlGD84.jpg',10,'/1LrtAhWPSEetJLjblXvnaYtl7eA.jpg',1,'8.2','Drawn from interviews with survivors of Easy Company, as well as their journals and letters, Band of Brothers chronicles the experiences of these men from paratrooper training in Georgia through the end of the war. As an elite rifle company parachuting into Normandy early on D-Day morning, participants in the Battle of the Bulge, and witness to the horrors of war, the men of Easy knew extraordinary bravery and extraordinary fear - and became the stuff of legend. Based on Stephen E. Ambrose\'s acclaimed book of the same name.','17.767','2001-09-09','movie',4613),('2018-09-26 06:21:29','2018-09-26 06:21:29',13,'Mr. Robot','/qE0t9rlClIReax0d5tr3j300wUt.jpg',32,'/toZQ9IN51cQMzy6fruBZ6024No3.jpg',3,'7.9','A contemporary and culturally resonant drama about a young programmer, Elliot, who suffers from a debilitating anti-social disorder and decides that he can only connect to people by hacking them. He wields his skills as a weapon to protect the people that he cares about. Elliot will find himself in the intersection between a cybersecurity firm he works for and the underworld organizations that are recruiting him to bring down corporate America.','27.97','2015-05-27','movie',62560),('2018-09-26 06:26:28','2018-09-26 06:26:28',14,'Family Guy','/gBGUL1UTUNmdRQT8gA1LUV4yg39.jpg',312,'/pH38r4TWTqq7Mcs6XAlwgzNUeJe.jpg',17,'6.5','Sick, twisted, politically incorrect and Freakin\' Sweet animated series featuring the adventures of the dysfunctional Griffin family. Bumbling Peter and long-suffering Lois have three kids. Stewie (a brilliant but sadistic baby bent on killing his mother and taking over the world), Meg (the oldest, and is the most unpopular girl in town) and Chris (the middle kid, he\'s not very bright but has a passion for movies). The final member of the family is Brian - a talking dog and much more than a pet, he keeps Stewie in check whilst sipping Martinis and sorting through his own life issues.','53.496','1999-01-31','movie',1434),('2018-09-26 06:26:46','2018-09-26 06:26:46',15,'Doctor Who','/3EcYZhBMAvVw4czcDLg9Sd0FuzQ.jpg',129,'/tQkigP2fItdzJWvtIhBvHxgs5yE.jpg',11,'7','The Doctor looks and seems human. He\'s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living – more of a hobby actually, and he\'s very, very good at it. He\'s saved us from alien menaces and evil from before time began – but just who is he?','60.096','2005-03-26','movie',57243),('2018-09-26 06:27:39','2018-09-26 06:27:39',16,'Marvel\'s Daredevil','/wVadC1BT2w3hDh5Vq0J0LFFTrLP.jpg',27,'/dpNeXLEnuKzAvbNwveJhNEiQvXZ.jpg',3,'7.8','Lawyer-by-day Matt Murdock uses his heightened senses from being blinded as a young boy to fight crime at night on the streets of Hell’s Kitchen as Daredevil.','44.717','2015-04-10','movie',61889),('2018-09-26 06:28:47','2018-09-26 06:28:47',17,'Marvel\'s Agents of S.H.I.E.L.D.','/xjm6uVktPuKXNILwjLXwVG5d5BU.jpg',110,'/qtr5i6hOm6oVzTYl3jOQAYP3oc7.jpg',6,'6.7','Agent Phil Coulson of S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement and Logistics Division) puts together a team of agents to investigate the new, the strange and the unknown around the globe, protecting the ordinary from the extraordinary.','58.136','2013-09-24','movie',1403),('2018-09-26 06:52:12','2018-09-26 06:52:12',18,'Supernatural','/pui1V389cQft0BVFu9pbsYLEW1Q.jpg',295,'/koMUCyGWNtH5LXYbGqjsUwvgtsT.jpg',14,'7.2','When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their \'67 Chevy Impala, battling every kind of supernatural threat they encounter along the way. ','63.265','2005-09-13','movie',1622),('2018-09-26 06:59:13','2018-09-26 06:59:13',19,'The 100','/wHIMMLFsk32wIzDmawWkYVbxFCS.jpg',71,'/qYTIuJJ7fIehicAt3bl0vW70Sq6.jpg',5,'6.4','Based on the books by Kass Morgan, this show takes place 100 years in the future, when the Earth has been abandoned due to radioactivity. The last surviving humans live on an ark orbiting the planet — but the ark won\'t last forever. So the repressive regime picks 100 expendable juvenile delinquents to send down to Earth to see if the planet is still habitable.','43.631','2014-03-19','movie',48866),('2018-09-26 06:59:34','2018-09-26 06:59:34',20,'Arrow','/mo0FP1GxOFZT4UDde7RFDz5APXF.jpg',139,'/dKxkwAJfGuznW8Hu0mhaDJtna0n.jpg',7,'6','Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.','52.148','2012-10-10','movie',1412);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `saw` int(11) DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `liker_id` int(11) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `refrence_tbl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,69,1,'like','2018-09-27 08:11:16','2018-09-27 09:42:47',2,NULL,'post'),(2,2,70,1,'like','2018-09-29 00:08:15','2018-09-29 03:53:40',2,NULL,'post'),(3,2,71,1,'like','2018-09-29 03:43:40','2018-09-29 03:53:40',2,NULL,'post'),(4,2,5,1,'comment','2018-09-29 03:44:57','2018-09-29 03:53:40',2,NULL,NULL),(5,2,72,1,'like','2018-09-29 03:48:51','2018-09-29 03:53:40',2,NULL,'comment'),(6,2,73,1,'like','2018-09-29 03:48:58','2018-09-29 03:53:40',2,NULL,'comment'),(7,2,6,1,'comment','2018-09-29 15:14:44','2018-09-29 16:18:53',2,NULL,NULL),(8,2,7,1,'comment','2018-09-29 15:16:45','2018-09-29 16:18:53',2,NULL,NULL),(9,2,8,1,'comment','2018-09-29 15:17:55','2018-09-29 16:18:53',2,NULL,NULL),(10,2,9,1,'comment','2018-09-29 15:18:58','2018-09-29 16:18:53',2,NULL,NULL),(11,2,10,1,'comment','2018-09-29 15:20:31','2018-09-29 16:18:53',2,NULL,NULL),(12,2,74,1,'like','2018-10-01 16:57:43','2018-10-02 04:37:42',2,NULL,'post'),(13,2,75,1,'like','2018-10-01 17:02:10','2018-10-02 04:37:42',2,NULL,'reply'),(14,2,76,1,'like','2018-10-01 17:02:12','2018-10-02 04:37:42',2,NULL,'comment'),(15,2,77,1,'like','2018-10-01 17:04:11','2018-10-02 04:37:42',2,NULL,'post'),(16,2,78,1,'like','2018-10-01 17:04:17','2018-10-02 04:37:42',2,NULL,'post'),(17,2,79,1,'like','2018-10-01 17:05:39','2018-10-02 04:37:42',2,NULL,'post'),(18,2,80,1,'like','2018-10-01 17:05:43','2018-10-02 04:37:42',2,NULL,'post'),(19,2,81,1,'like','2018-10-01 17:13:25','2018-10-02 04:37:42',2,NULL,'post'),(20,2,82,1,'like','2018-10-01 17:22:16','2018-10-02 04:37:42',2,NULL,'post'),(21,2,83,1,'like','2018-10-01 17:22:20','2018-10-02 04:37:42',2,NULL,'post'),(22,2,84,1,'like','2018-10-01 17:22:38','2018-10-02 04:37:42',2,NULL,'post'),(23,2,85,1,'like','2018-10-01 17:22:40','2018-10-02 04:37:42',2,NULL,'post'),(24,2,86,1,'like','2018-10-01 17:22:46','2018-10-02 04:37:42',2,NULL,'post'),(25,2,87,1,'like','2018-10-01 17:23:02','2018-10-02 04:37:42',2,NULL,'comment'),(26,2,88,1,'like','2018-10-01 17:23:09','2018-10-02 04:37:42',2,NULL,'comment'),(27,2,89,1,'like','2018-10-01 17:23:13','2018-10-02 04:37:42',2,NULL,'comment'),(28,2,90,1,'like','2018-10-01 17:23:18','2018-10-02 04:37:42',2,NULL,'comment'),(29,2,91,1,'like','2018-10-02 03:33:17','2018-10-02 04:37:42',2,NULL,'comment'),(30,2,92,1,'like','2018-10-02 04:23:17','2018-10-02 04:37:42',2,NULL,'post'),(31,2,93,1,'like','2018-10-02 04:23:23','2018-10-02 04:37:42',2,NULL,'post'),(32,2,94,1,'like','2018-10-02 04:23:25','2018-10-02 04:37:42',2,NULL,'post');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('mohasmed@moviex.com','$2y$10$YpYKh1BbyFwLCkmEVxuNmuJ2tus.3RUqGxN.nQzAK/YcWMHZA1ICu','2018-10-01 08:49:39');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postcontents`
--

DROP TABLE IF EXISTS `postcontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postcontents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcontents`
--

LOCK TABLES `postcontents` WRITE;
/*!40000 ALTER TABLE `postcontents` DISABLE KEYS */;
INSERT INTO `postcontents` VALUES (1,17,2,'/posts/17/0.jpg','2018-09-29 00:30:29.000000','2018-09-29 00:30:29.000000',NULL,NULL,NULL),(2,17,2,'/posts/17/1.jpg','2018-09-29 00:30:29.000000','2018-09-29 00:30:29.000000',NULL,NULL,NULL),(3,33,2,'/posts/33/0.jpg','2018-10-02 13:51:24.000000','2018-10-02 13:51:51.000000','2018-10-02 13:51:51.000000',NULL,NULL),(4,34,2,'/posts/34/0.jpg','2018-10-02 13:52:05.000000','2018-10-02 13:53:04.000000','2018-10-02 13:53:04.000000',NULL,NULL),(5,35,2,'/posts/35/0.jpg','2018-10-02 13:52:41.000000','2018-10-02 13:53:03.000000','2018-10-02 13:53:03.000000',NULL,NULL),(6,37,2,'/posts/37/0.jpg','2018-10-02 14:00:50.000000','2018-10-02 14:00:50.000000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `postcontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ep_id` int(11) DEFAULT NULL,
  `spoiler` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,'i dont like this show',0,1,NULL,'2018-09-26 17:23:20','2018-09-26 17:23:20',1418,1,'tv'),(2,2,'good ep',1,1,NULL,'2018-09-27 09:14:08','2018-09-27 09:14:08',NULL,1,'tv'),(3,2,'il liked this episode',5,1,NULL,'2018-09-27 09:15:13','2018-09-27 09:15:13',NULL,1,'tv'),(4,2,'well well weel, looks good till now',6,1,NULL,'2018-09-27 09:46:34','2018-09-27 09:46:34',1396,1,'tv'),(5,2,'Say my fucking naaame !!',NULL,0,NULL,'2018-09-28 23:23:48','2018-09-28 23:23:48',1396,1,'tv'),(6,2,'old school',NULL,0,NULL,'2018-09-28 23:48:32','2018-09-28 23:48:32',2288,1,'tv'),(7,2,'hello and godbeeeeeeeeeeeeyyyyyyyyy',NULL,0,NULL,'2018-09-28 23:52:53','2018-09-28 23:52:53',2288,1,'tv'),(8,2,'ff',NULL,0,NULL,'2018-09-28 23:54:03','2018-09-28 23:54:03',2288,1,'tv'),(9,2,'Nigga',NULL,0,NULL,'2018-09-28 23:56:37','2018-09-28 23:56:37',79086,1,'tv'),(10,2,'Coreleone',NULL,0,NULL,'2018-09-28 23:59:36','2018-09-28 23:59:36',238,1,'tv'),(11,2,'fds',NULL,0,NULL,'2018-09-29 00:00:38','2018-09-29 00:00:38',238,1,'tv'),(12,2,'coreleone',NULL,0,NULL,'2018-09-29 00:03:44','2018-09-29 00:03:44',238,1,'tv'),(13,2,'parzini',NULL,0,NULL,'2018-09-29 00:04:29','2018-09-29 00:04:29',238,1,'tv'),(14,2,'tagtalia',NULL,0,NULL,'2018-09-29 00:05:17','2018-09-29 00:05:17',238,1,'tv'),(15,2,'fuckers',NULL,0,NULL,'2018-09-29 00:08:07','2018-09-29 00:08:07',31011,1,'tv'),(16,2,'heyoooo',NULL,0,NULL,'2018-09-29 00:29:03','2018-09-29 00:29:03',62560,1,'tv'),(17,2,'heyoooo',NULL,0,NULL,'2018-09-29 00:30:29','2018-09-29 00:30:29',62560,1,'tv'),(18,2,'mother of dragons needs the D',28,1,NULL,'2018-09-29 03:17:08','2018-09-29 03:17:08',1399,1,'tv'),(19,2,'fdsfds',NULL,0,NULL,'2018-09-30 08:25:23','2018-09-30 08:25:23',NULL,1,'tv'),(20,2,'now playing on AMC',NULL,0,NULL,'2018-10-01 00:51:40','2018-10-01 00:51:40',175528,1,'tv'),(21,2,'if u like black ppl movies then dont watch it, it will change ur mind forever. worst movie ever',NULL,0,NULL,'2018-10-01 01:01:49','2018-10-01 01:01:49',175528,1,'tv'),(22,2,'this movie sucks',NULL,0,NULL,'2018-10-01 01:03:11','2018-10-01 01:03:11',175528,1,'tv'),(23,2,'no comment',NULL,0,NULL,'2018-10-01 01:04:03','2018-10-01 01:04:03',175528,1,'tv'),(24,2,'one of the best defective  scifi shows',1008571414,0,NULL,'2018-10-01 04:46:25','2018-10-01 04:46:25',1705,1,'tv'),(25,2,'like to this show',8,0,NULL,'2018-10-01 04:59:15','2018-10-01 04:59:15',1402,1,'tv'),(26,2,'google',100,0,NULL,'2018-10-01 05:01:21','2018-10-01 05:01:21',1402,1,'tv'),(27,2,'We fucking miss tarantino',NULL,0,NULL,'2018-10-01 07:01:31','2018-10-01 07:01:31',NULL,1,NULL),(28,2,'we fucking miss tar',NULL,0,'2018-10-01 07:12:45','2018-10-01 07:06:18','2018-10-01 07:12:45',NULL,1,NULL),(29,2,'good ep',47,1,NULL,'2018-10-02 06:16:45','2018-10-02 06:16:45',1412,1,'tv'),(30,2,'good ep',8,1,NULL,'2018-10-02 06:17:36','2018-10-02 06:17:36',60735,1,'tv'),(31,2,'Hiyoooooooooooooo',NULL,0,NULL,'2018-10-02 07:20:54','2018-10-02 07:20:54',NULL,1,NULL),(32,2,'zuckerburging ppl like a boss',NULL,0,'2018-10-02 13:52:22','2018-10-02 13:48:41','2018-10-02 13:52:22',37799,NULL,'movie'),(33,2,'Lool, cant stop laughing',NULL,0,'2018-10-02 13:51:51','2018-10-02 13:51:22','2018-10-02 13:51:51',37799,NULL,'movie'),(34,2,'Lool Cant stop laughing',NULL,0,'2018-10-02 13:53:04','2018-10-02 13:52:05','2018-10-02 13:53:04',37799,NULL,'movie'),(35,2,'zuckerburging ppl like a boss',NULL,0,'2018-10-02 13:53:03','2018-10-02 13:52:40','2018-10-02 13:53:03',37799,NULL,'movie'),(36,2,'zuckerburging ppl like a boss',NULL,0,NULL,'2018-10-02 13:53:13','2018-10-02 13:53:13',37799,NULL,'movie'),(37,2,'Lool cant stop laughing at this\n\nits so describtive',NULL,0,NULL,'2018-10-02 14:00:49','2018-10-02 14:00:49',37799,NULL,'movie'),(38,2,'<script> alert(\'hello\') </script>',NULL,0,'2018-10-02 14:05:13','2018-10-02 14:02:01','2018-10-02 14:05:13',37799,NULL,'movie'),(39,2,'&lt;script&gt; alert(&#039;hello&#039;) &lt;/script&gt;',NULL,0,NULL,'2018-10-02 14:06:28','2018-10-02 14:06:28',37799,NULL,'movie');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `reaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (1,2,1399,'Great Show, only if author didnt bring whitewalkers in','2018-09-29 03:33:42','2018-09-29 03:33:42',NULL,'tv'),(9,2,60735,'Seriously, this show is so stupid and filled with too much drama. then it\'s gets repetitive along the way. avoid it.','2018-10-02 13:08:02','2018-10-02 13:08:02',NULL,'tv');
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tagged_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,1,2,NULL,'2018-09-29 03:14:16.000000','2018-09-29 03:16:06.000000','2018-09-29 03:16:06.000000','what s the issue'),(2,1,2,NULL,'2018-09-29 03:14:31.000000','2018-09-29 03:14:31.000000',NULL,'Mohamed Kira none man'),(3,1,2,NULL,'2018-09-29 03:14:46.000000','2018-09-29 03:16:12.000000','2018-09-29 03:16:12.000000','Mohamed Kira im really door'),(4,1,2,NULL,'2018-09-29 03:15:14.000000','2018-09-29 03:15:14.000000',NULL,'Mohamed Kira how deep can replies be nested ?'),(5,6,2,NULL,'2018-10-01 17:00:24.000000','2018-10-01 17:00:24.000000',NULL,'i wont'),(6,8,2,NULL,'2018-10-01 17:27:24.000000','2018-10-01 17:27:24.000000',NULL,'over');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shows` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ep_count` int(11) DEFAULT NULL,
  `show_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL,
  `show_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `show_popularity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES ('2018-09-26 04:48:20','2018-09-27 09:46:33',2,'Breaking Bad','/1yeVJox3rjo2jBKrrihIMj7uoS9.jpg',62,'/eSzpy96DwBujGFj0xMbXBcGcfxX.jpg',5,'8.3','When Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live, he becomes filled with a sense of fearlessness and an unrelenting desire to secure his family\'s financial future at any cost as he enters the dangerous world of drugs and crime.','38.715','2008-01-20','tv',1396),('2018-09-26 04:49:36','2018-10-02 06:17:36',3,'The Flash','/lUFK7ElGCk9kVEryDJHICeNdmd1.jpg',94,'/mmxxEpTqVdwBlu5Pii7tbedBkPC.jpg',5,'6.7','After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \'meta-human\' who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.','61.544','2014-10-07','tv',60735),('2018-09-26 05:56:54','2018-09-29 03:17:08',4,'Game of Thrones','/gwPSoYUHAKmdyVywgLpKKA4BjRr.jpg',73,'/gX8SYlnL9ZznfZwEH4KJUePBFUM.jpg',8,'8.2','Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.','57.271','2011-04-17','tv',1399),('2018-09-26 05:58:30','2018-09-30 23:27:38',5,'The Walking Dead','/yn7psGTZsHumHOkLUmYpyrIcA2G.jpg',116,'/xVzvD5BPAU4HpleFSo8QOdHkndo.jpg',9,'7.3','Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.','110.35','2010-10-31','tv',1402),('2018-09-26 06:03:51','2018-09-27 05:53:41',6,'Stranger Things','/lXS60geme1LlEob5Wgvj3KilClA.jpg',17,'/56v2KjBlU4XaOv9rVYEQypROD7P.jpg',2,'8.4','When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.','29.209','2016-07-15','tv',66732),('2018-09-26 06:09:14','2018-09-27 05:53:41',7,'The Simpsons','/yTZQkSsxUFJZJe67IenRM0AEklc.jpg',639,'/4jMlfAIlN1zKNcqE6xjuQsrFse2.jpg',29,'7.1','Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.','84.571','1989-12-17','tv',456),('2018-09-26 06:09:25','2018-09-27 05:53:41',8,'Westworld','/6aj09UTMQNyfSfk0ZX8rYOEsXL2.jpg',20,'/yp94aOXzuqcQHva90B3jxLfnOO9.jpg',2,'8.1','A dark odyssey about the dawn of artificial consciousness and the evolution of sin. Set at the intersection of the near future and the reimagined past, it explores a world in which every human appetite, no matter how noble or depraved, can be indulged.','39.079','2016-10-02','tv',63247),('2018-09-26 06:10:02','2018-09-29 11:29:17',9,'Sherlock','/f9zGxLHGyQB10cMDZNY5ZcGKhZi.jpg',12,'/bvS50jBZXtglmLu72EAt5KgJBrL.jpg',4,'8.3','A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.','25.903','2010-07-25','tv',19885),('2018-09-26 06:14:38','2018-09-29 11:29:10',10,'Vikings','/oktTNFM8PzdseiK1X0E0XhB6LvP.jpg',60,'/A30ZqEoDbchvE7mCZcSp6TEwB1Q.jpg',6,'7.5','Vikings follows the adventures of Ragnar Lothbrok, the greatest hero of his age. The series tells the sagas of Ragnar\'s band of Viking brothers and his family, as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods. Legend has it that he was a direct descendant of Odin, the god of war and warriors.','35.124','2013-03-03','tv',44217),('2018-09-26 06:14:42','2018-09-29 11:29:13',11,'Friends','/7buCWBTpiPrCF5Lt023dSC60rgS.jpg',236,'/efiX8iir6GEBWCD0uCFIi5NAyYA.jpg',10,'7.9','The misadventures of a group of friends as they navigate the pitfalls of work, life and love in Manhattan.','47.463','1994-09-22','tv',1668),('2018-09-26 06:20:20','2018-09-29 11:29:13',12,'Band of Brothers','/yjqu0KEVAWz9eJQBvzrQMFlGD84.jpg',10,'/1LrtAhWPSEetJLjblXvnaYtl7eA.jpg',1,'8.2','Drawn from interviews with survivors of Easy Company, as well as their journals and letters, Band of Brothers chronicles the experiences of these men from paratrooper training in Georgia through the end of the war. As an elite rifle company parachuting into Normandy early on D-Day morning, participants in the Battle of the Bulge, and witness to the horrors of war, the men of Easy knew extraordinary bravery and extraordinary fear - and became the stuff of legend. Based on Stephen E. Ambrose\'s acclaimed book of the same name.','14.738','2001-09-09','tv',4613),('2018-09-26 06:21:29','2018-09-29 11:29:19',13,'Mr. Robot','/qE0t9rlClIReax0d5tr3j300wUt.jpg',32,'/toZQ9IN51cQMzy6fruBZ6024No3.jpg',3,'7.9','A contemporary and culturally resonant drama about a young programmer, Elliot, who suffers from a debilitating anti-social disorder and decides that he can only connect to people by hacking them. He wields his skills as a weapon to protect the people that he cares about. Elliot will find himself in the intersection between a cybersecurity firm he works for and the underworld organizations that are recruiting him to bring down corporate America.','27.383','2015-05-27','tv',62560),('2018-09-26 06:26:28','2018-09-27 08:18:18',14,'Family Guy','/gBGUL1UTUNmdRQT8gA1LUV4yg39.jpg',312,'/pH38r4TWTqq7Mcs6XAlwgzNUeJe.jpg',17,'6.5','Sick, twisted, politically incorrect and Freakin\' Sweet animated series featuring the adventures of the dysfunctional Griffin family. Bumbling Peter and long-suffering Lois have three kids. Stewie (a brilliant but sadistic baby bent on killing his mother and taking over the world), Meg (the oldest, and is the most unpopular girl in town) and Chris (the middle kid, he\'s not very bright but has a passion for movies). The final member of the family is Brian - a talking dog and much more than a pet, he keeps Stewie in check whilst sipping Martinis and sorting through his own life issues.','55.642','1999-01-31','tv',1434),('2018-09-26 06:26:46','2018-09-29 11:29:21',15,'Doctor Who','/3EcYZhBMAvVw4czcDLg9Sd0FuzQ.jpg',129,'/mQ9yeCuofNatSyErUKAPD1uOq8Q.jpg',11,'7','The Doctor is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living – more of a hobby actually, and the Doctor\'s very, very good at it.','51.778','2005-03-26','tv',57243),('2018-09-26 06:27:39','2018-09-29 11:29:23',16,'Marvel\'s Daredevil','/wVadC1BT2w3hDh5Vq0J0LFFTrLP.jpg',27,'/dpNeXLEnuKzAvbNwveJhNEiQvXZ.jpg',3,'7.8','Lawyer-by-day Matt Murdock uses his heightened senses from being blinded as a young boy to fight crime at night on the streets of Hell’s Kitchen as Daredevil.','39.793','2015-04-10','tv',61889),('2018-09-26 06:28:47','2018-09-27 08:20:18',17,'Marvel\'s Agents of S.H.I.E.L.D.','/xjm6uVktPuKXNILwjLXwVG5d5BU.jpg',110,'/qtr5i6hOm6oVzTYl3jOQAYP3oc7.jpg',6,'6.7','Agent Phil Coulson of S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement and Logistics Division) puts together a team of agents to investigate the new, the strange and the unknown around the globe, protecting the ordinary from the extraordinary.','49.028','2013-09-24','tv',1403),('2018-09-26 06:52:12','2018-09-27 05:53:41',18,'Supernatural','/pui1V389cQft0BVFu9pbsYLEW1Q.jpg',295,'/koMUCyGWNtH5LXYbGqjsUwvgtsT.jpg',14,'7.2','When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their \'67 Chevy Impala, battling every kind of supernatural threat they encounter along the way. ','63.265','2005-09-13','tv',1622),('2018-09-26 06:59:13','2018-09-29 11:29:15',19,'The 100','/wHIMMLFsk32wIzDmawWkYVbxFCS.jpg',71,'/qYTIuJJ7fIehicAt3bl0vW70Sq6.jpg',5,'6.4','Based on the books by Kass Morgan, this show takes place 100 years in the future, when the Earth has been abandoned due to radioactivity. The last surviving humans live on an ark orbiting the planet — but the ark won\'t last forever. So the repressive regime picks 100 expendable juvenile delinquents to send down to Earth to see if the planet is still habitable.','34.17','2014-03-19','tv',48866),('2018-09-26 06:59:34','2018-10-02 06:16:45',20,'Arrow','/mo0FP1GxOFZT4UDde7RFDz5APXF.jpg',139,'/dKxkwAJfGuznW8Hu0mhaDJtna0n.jpg',7,'6','Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.','42.934','2012-10-10','tv',1412),(NULL,'2018-09-27 05:53:41',200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'movie',1418),('2018-09-27 08:20:55','2018-09-27 08:20:55',201,'Dexter','/ydmfheI5cJ4NrgcupDEwk8I8y5q.jpg',96,'/5m05BIoMHgTd4zvJ5OBh7gZFGWV.jpg',8,'8','Dexter is an American television drama series. The series centers on Dexter Morgan, a blood spatter pattern analyst for \'Miami Metro Police Department\' who also leads a secret life as a serial killer, hunting down criminals who have slipped through the cracks of justice.','21.224','2006-10-01','tv',1405),('2018-09-27 08:21:19','2018-09-27 08:21:19',202,'Lost','/jyGspygDXJMydTOJj7iWNx9Elyd.jpg',120,'/pRPJj3oczSIxo8L80qNweXaWnrp.jpg',6,'7.8','Stripped of everything, the survivors of a horrific plane crash  must work together to stay alive. But the island holds many secrets.','29.328','2004-09-22','tv',4607),('2018-09-27 08:21:36','2018-09-27 08:21:36',203,'Better Call Saul','/zjg4jpK1Wp2kiRvtt5ND0kznako.jpg',40,'/AlqSvfI6bmxh31iaJTgjNSemF3D.jpg',4,'8','Six years before Saul Goodman meets Walter White. We meet him when the man who will become Saul Goodman is known as Jimmy McGill, a small-time lawyer searching for his destiny, and, more immediately, hustling to make ends meet. Working alongside, and, often, against Jimmy, is “fixer” Mike Erhmantraut. The series will track Jimmy\'s transformation into Saul Goodman, the man who puts “criminal” in “criminal lawyer\'.','49.767','2015-02-08','tv',60059),('2018-09-27 08:32:14','2018-09-27 08:32:14',204,'Grey\'s Anatomy','/mgOZSS2FFIGtfVeac1buBw3Cx5w.jpg',321,'/y6JABtgWMVYPx84Rvy7tROU5aNH.jpg',15,'6.2','Follows the personal and professional lives of a group of doctors at Seattle’s Grey Sloan Memorial Hospital.','109.868','2005-03-27','tv',1416),('2018-09-27 08:32:34','2018-09-27 08:32:34',205,'Supergirl','/ufoGrTRbItHvqk42yNHcyoE0afM.jpg',66,'/2qou2R47XZ1N6SlqGZcoCHDyEhN.jpg',4,'5.8','Twenty-four-year-old Kara Zor-El, who was taken in by the Danvers family when she was 13 after being sent away from Krypton, must learn to embrace her powers after previously hiding them. The Danvers teach her to be careful with her powers, until she has to reveal them during an unexpected disaster, setting her on her journey of heroism.','37.637','2015-10-26','tv',62688),('2018-09-26 04:36:27','2018-09-27 05:53:41',1418,'The Big Bang Theory','/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg',259,'/nGsNruW3W27V6r4gkyc3iiEGsKR.jpg',12,'6.8','The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon\'s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny\'s social skills and common sense.','232.219','2007-09-24','tv',1418),('2018-09-29 00:00:38','2018-10-02 08:21:40',1419,'The Godfather','/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg',NULL,'/6xKCYgH16UuwEGAyroLU6p8HLIn.jpg',NULL,'8.6','Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.','30.947','1972-03-14','movie',238),('2018-09-29 00:08:07','2018-09-29 00:08:07',1420,'Mr. Nobody','/jxd2XSsnUHHUbo50nzVnVnHRPVJ.jpg',NULL,'/r9jAdQDK1tYq2wlFPBJBH9UX5TX.jpg',NULL,'7.9','Nemo Nobody leads an ordinary existence with his wife and 3 children; one day, he wakes up as a mortal centenarian in the year 2092.','8.565','2009-11-06','movie',31011),('2018-09-29 11:29:30','2018-09-29 11:29:30',1421,'Black Mirror','/vGrS1mzlSHQQdOcmqH1zlE2iViY.jpg',18,'/zSaEw7H0KpAFXQp8LzoBfoTUhwh.jpg',4,'8.2','A contemporary British re-working of The Twilight Zone with stories that tap into the collective unease about our modern world. \n\nOver the last ten years, technology has transformed almost every aspect of our lives before we\'ve had time to stop and question it. In every home; on every desk; in every palm - a plasma screen; a monitor; a smartphone - a black mirror of our 21st Century existence.','30.25','2011-12-04','tv',42009),('2018-09-29 11:29:34','2018-09-29 11:29:34',1422,'Rick and Morty','/qJdfO3ahgAMf2rcmhoqngjBBZW1.jpg',31,'/mzzHr6g1yvZ05Mc7hNj3tUdy2bM.jpg',3,'8.5','Rick is a mentally-unbalanced but scientifically-gifted old man who has recently reconnected with his family. He spends most of his time involving his young grandson Morty in dangerous, outlandish adventures throughout space and alternate universes. Compounded with Morty\'s already unstable family life, these events cause Morty much distress at home and school.','27.27','2013-12-02','tv',60625),('2018-09-29 11:29:37','2018-09-29 11:29:37',1423,'House of Cards','/hKWxWjFwnMvkWQawbhvC0Y7ygQ8.jpg',70,'/3RognQsjLyE50cy5VMo28auGe9q.jpg',6,'8.2','Set in present day Washington, D.C., House of Cards is the story of Frank Underwood, a ruthless and cunning politician, and his wife Claire who will stop at nothing to conquer everything. This wicked political drama penetrates the shadowy world of greed, sex and corruption in modern D.C. \n\nHouse of Cards is an adaptation of a previous BBC miniseries of the same name, which is based on the novel by Michael Dobbs.','24.18','2013-02-01','tv',1425),('2018-09-29 11:29:39','2018-09-29 11:29:39',1424,'Gotham','/5tSHzkJ1HBnyGdcpr6wSyw7jYnJ.jpg',88,'/mKBP1OCgCG0jw8DwVYlnYqVILtc.jpg',4,'7','Before there was Batman, there was GOTHAM. \n\nEveryone knows the name Commissioner Gordon. He is one of the crime world\'s greatest foes, a man whose reputation is synonymous with law and order. But what is known of Gordon\'s story and his rise from rookie detective to Police Commissioner? What did it take to navigate the multiple layers of corruption that secretly ruled Gotham City, the spawning ground of the world\'s most iconic villains? And what circumstances created them – the larger-than-life personas who would become Catwoman, The Penguin, The Riddler, Two-Face and The Joker? ','34.426','2014-09-22','tv',60708),('2018-09-29 11:29:41','2018-09-29 11:29:41',1425,'House','/lxSzRZ49NXwsiyHuvMsd19QxduC.jpg',177,'/qvUxoJhfARTmHUmK9StpB7SViPg.jpg',8,'8.2','Dr. Gregory House, a drug-addicted, unconventional, misanthropic medical genius, leads a team of diagnosticians at the fictional Princeton–Plainsboro Teaching Hospital in New Jersey.','27.061','2004-11-16','tv',1408),('2018-09-29 11:29:44','2018-09-29 11:29:44',1426,'American Horror Story','/7htwyZzjIUFIIkGQ6HhMgv2kVmM.jpg',89,'/ilKE2RPD8tkynAOHefX9ZclG1yq.jpg',8,'7','An anthology horror drama series centering on different characters and locations, including a house with a murderous past, an asylum, a witch coven, a freak show, a hotel, a farmhouse in Roanoke and a cult.','67.237','2011-10-05','tv',1413),('2018-09-29 11:29:47','2018-09-29 11:29:47',1427,'Fear the Walking Dead','/gAEZitvNudXr9kphSd4XOlOkjPX.jpg',53,'/okhLwP26UXHJ4KYGVsERQqp3129.jpg',4,'6.3','What did the world look like as it was transforming into the horrifying apocalypse depicted in \'The Walking Dead\'? This spin-off set in Los Angeles, following new characters as they face the beginning of the end of the world, will answer that question.','38.929','2015-08-23','tv',62286),('2018-09-29 11:29:50','2018-09-29 11:29:50',1428,'Marvel\'s Jessica Jones','/8a7e2GNpMnjI2hgRZH3jq2c7ffv.jpg',26,'/ibU4iTytIlcxYJqRJsNUEBp6te5.jpg',2,'7.6','After a tragic ending to her short-lived super hero stint, Jessica Jones is rebuilding her personal life and career as a detective who gets pulled into cases involving people with extraordinary abilities in New York City.','15.536','2015-11-20','tv',38472),('2018-09-29 11:29:55','2018-09-29 11:29:55',1429,'Once Upon a Time','/49qD372jeHUTmdNMGJkjCFZdv9y.jpg',156,'/Otzq1sny6BAuvZdAO1EMdUkDUc.jpg',7,'6.4','There is a town in Maine where every story book character you\'ve ever known is trapped between two worlds, victims of a powerful curse. Only one knows the truth and only one can break the spell.\n\nEmma Swan is a 28-year-old bail bonds collector who has been supporting herself since she was abandoned as a baby. Things change for her when her son Henry, whom she abandoned years ago, finds her and asks for her help explaining that she is from a different world where she is Snow White\'s missing daughter.','25.581','2011-10-23','tv',39272),('2018-09-29 11:30:03','2018-10-01 04:46:25',1430,'Fringe','/42At9ZbMmimCUsWIwFbJMSiI2QL.jpg',100,'/qZGbLaRJ0FVekRWCRDu2ZdBFcJI.jpg',5,'8.1','FBI Special Agent Olivia Dunham, brilliant but formerly institutionalized scientist Walter Bishop and his scheming, reluctant son Peter uncover a deadly mystery involving a series of unbelievable events and realize they may be a part of a larger, more disturbing pattern that blurs the line between science fiction and technology.','17.143','2008-09-09','tv',1705),('2018-09-29 11:30:03','2018-09-29 11:30:03',1431,'13 Reasons Why','/gpULvrgvq1Qidu8EpWevrRUfVhw.jpg',26,'/sZb21d6EWKAEKZ9GrLQeMwX4cWN.jpg',2,'7.2','After a teenage girl\'s perplexing suicide, a classmate receives a series of tapes that unravel the mystery of her tragic choice.','28.41','2017-03-31','tv',66788),('2018-09-29 11:30:05','2018-09-29 11:30:05',1432,'NCIS','/1ubAPydzsb9VzhqeUGGDA7DZCUy.jpg',358,'/nymeWHYQ1JaWP2wyNW5a5WHiDCd.jpg',16,'6.8','From murder and espionage to terrorism and stolen submarines, a team of special agents investigates any crime that has a shred of evidence connected to Navy and Marine Corps personnel, regardless of rank or position.','62.794','2003-09-23','tv',4614),('2018-10-01 00:27:30','2018-10-01 00:27:30',1433,'Playing God','/mZLG1QdusU9IdtQTmLkdr5t3ilv.jpg',NULL,'/6HoX25QQpauFGFjZ8rr250cHy0L.jpg',NULL,'5.6','Stripped of his medical license after performing an operation while high on amphetamines, famed LA surgeon Dr Eugene Sands abandons his former life only to find himself crossing paths with Raymond Blossom, an infamous counterfeiter. Employed as a \'gun-shot doctor\' when Raymond\'s associates cannot risk visiting a hospital, Eugene is lured deep into the criminal world and becomes entangled with his boss\'s girlfriend.','3.491','1997-10-17','movie',12628),('2018-10-01 01:04:03','2018-10-01 01:04:03',1434,'Baggage Claim','/1IYtZuuUXbCVR8uXDoKLAtPHlQU.jpg',NULL,'/cscAgvypnVvwaN9quwclm3DYUln.jpg',NULL,'5.5','Pledging to keep herself from being the oldest and the only woman in her entire family never to wed, Montana embarks on a thirty-day, thirty-thousand-mile expedition to charm a potential suitor into becoming her fiancé.','5.951','2013-09-27','movie',175528),('2018-10-01 05:09:06','2018-10-01 05:09:06',1435,'Searching','/9N0T3BaHZNdUCcMZQIM3yMUFwEh.jpg',NULL,'/3CCfgSvtvN3HwVs5hbcC1NhOAzw.jpg',NULL,'7.7','After his 16-year-old daughter goes missing, a desperate father breaks into her laptop to look for clues to find her. A thriller that unfolds entirely on computer screens.','37.262','2018-08-24','movie',489999),('2018-10-01 05:09:14','2018-10-01 05:09:14',1436,'Mad Max: Fury Road','/kqjL17yufvn9OVLyXYpvtyrFfak.jpg',NULL,'/phszHPFVhPHhMZgo0fWTKBDQsJA.jpg',NULL,'7.4','An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and most everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There\'s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.','37.357','2015-05-13','movie',76341),('2018-10-01 05:09:18','2018-10-01 05:09:18',1437,'Wonder Woman','/imekS7f1OuHyUP2LAiTEM0zBzUz.jpg',NULL,'/6iUNJZymJBMXXriQyFZfLAKnjO6.jpg',NULL,'7.2','An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.','35.543','2017-05-30','movie',297762),('2018-10-01 05:09:21','2018-10-01 05:09:21',1438,'Logan','/gGBu0hKw9BGddG8RkRAMX7B6NDB.jpg',NULL,'/5pAGnkFYSsFJ99ZxDIYnhQbQFXs.jpg',NULL,'7.7','In the near future, a weary Logan cares for an ailing Professor X in a hideout on the Mexican border. But Logan\'s attempts to hide from the world and his legacy are upended when a young mutant arrives, pursued by dark forces.','33.796','2017-02-28','movie',263115),('2018-10-01 05:09:28','2018-10-01 05:09:28',1439,'The Imitation Game','/noUp0XOqIcmgefRnRZa1nhtRvWO.jpg',NULL,'/qcb6z1HpokTOKdjqDTsnjJk0Xvg.jpg',NULL,'8.1','Based on the real life story of legendary cryptanalyst Alan Turing, the film portrays the nail-biting race against time by Turing and his brilliant team of code-breakers at Britain\'s top-secret Government Code and Cypher School at Bletchley Park, during the darkest days of World War II.','32.002','2014-11-14','movie',205596),('2018-10-01 05:09:29','2018-10-01 05:09:29',1440,'Inception','/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg',NULL,'/s2bT29y0ngXxxu2IA8AOzzXTRhd.jpg',NULL,'8.2','Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \'inception\', the implantation of another person\'s idea into a target\'s subconscious.','32.151','2010-07-14','movie',27205),('2018-10-01 05:09:34','2018-10-01 05:09:34',1441,'Gone Girl','/gdiLTof3rbPDAmPaCf4g6op46bj.jpg',NULL,'/8ZNGBfGoN3uI5Akj5vEUDMxvmGO.jpg',NULL,'7.9','With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.','31.049','2014-10-01','movie',210577),('2018-10-01 05:09:39','2018-10-01 05:09:39',1442,'X-Men: Days of Future Past','/pb1IURTkK5rImP9ZV83lxJO2us7.jpg',NULL,'/5LBcSLHAtEIIgvNkA2dPmYH5wR7.jpg',NULL,'7.5','The ultimate X-Men ensemble fights a war for the survival of the species across two time periods as they join forces with their younger selves in an epic battle that must change the past – to save our future.','30.236','2014-05-15','movie',127585),('2018-10-02 07:39:27','2018-10-02 07:39:27',1443,'Wal-Mart: The High Cost of Low Price','/6jh2yA236Dh6TX7hya0qbrnAQtK.jpg',NULL,'/3wFeNr1TBXeGNnjKWDZVxXNVY4J.jpg',NULL,'6.6','This documentary takes the viewer on a deeply personal journey into the everyday lives of families struggling to fight Goliath. From a family business owner in the Midwest to a preacher in California, from workers in Florida to a poet in Mexico, dozens of film crews on three continents bring the intensely personal stories of an assault on families and American values.','2.342','2005-11-04','movie',29595),('2018-10-02 07:47:45','2018-10-02 07:47:45',1444,'Cast Away','/w515BrZvczKIxbHurG6HIiYYrba.jpg',NULL,'/frbW3kQXhVZPhceuQa1EqwZPXQr.jpg',NULL,'7.6','Chuck, a top international manager for FedEx, and Kelly, a Ph.D. student, are in love and heading towards marriage. Then Chuck\'s plane to Malaysia ditches at sea during a terrible storm. He\'s the only survivor, and he washes up on a tiny island with nothing but some flotsam and jetsam from the aircraft\'s cargo.','21.097','2000-12-22','movie',8358),('2018-10-02 08:21:16','2018-10-02 08:21:16',1445,'Only God Forgives','/8KUPbn7gBm5o4cHM1K8SFfCpxOg.jpg',NULL,'/bWOeaxfLBf5G7qfsC2a2gGuKx6X.jpg',NULL,'5.8','Julian, who runs a Thai boxing club as a front organization for his family\'s drug smuggling operation, is forced by his mother Crystal to find and kill the individual responsible for his brother\'s recent death.','7.081','2013-05-22','movie',77987),('2018-10-02 09:01:11','2018-10-02 09:01:11',1446,'Lord of War','/nwPUI9WlYtDmE5VO6eEFCfrNXWl.jpg',NULL,'/l31Gz3jLhDOlt3MRY7nbltwbptm.jpg',NULL,'7.2','Yuri Orlov is a globetrotting arms dealer and, through some of the deadliest war zones, he struggles to stay one step ahead of a relentless Interpol agent, his business rivals and even some of his customers who include many of the world\'s most notorious dictators. Finally, he must also face his own conscience.','9.882','2005-09-16','movie',1830),('2018-10-02 09:19:01','2018-10-02 09:19:01',1447,'Walkin The Pups','/yskN8ZvpCtDwfd02Ge7ULuBRA5I.jpg',NULL,NULL,NULL,'7','A heavily edited look at a routine dog walk with 3 small pups.','0.6','2011-01-01','movie',448809),('2018-10-02 09:19:16','2018-10-02 09:19:16',1448,'The Pursuit of Happyness','/iMNp6gTeDBXbzjKRNYtorxZ76G2.jpg',NULL,'/yFQg8nKzAWGNNBg277bvHyWSCJu.jpg',NULL,'7.8','A struggling salesman takes custody of his son as he\'s poised to begin a life-changing professional career.','14.386','2006-12-14','movie',1402),('2018-10-02 11:44:49','2018-10-02 11:44:49',1449,'Illicit Desires','/mndCeIXbFH4pTtjaVUzf3eEOPZp.jpg',NULL,NULL,NULL,'4.4','\'Illicit Desires\' peeks behind the curtain into the world of an adult toy manufacturer (played by Valerie Baber). And what a world it is! Greed and betrayal run wild in the corporate world of sensual oddities as a new, young, office intern (the legendary August Ames) sets her sights on moving right to the top. What she\'s willing to do to get where she wants to be will absolutely kill you. It also helps if you\'re a psychopathic murderess.','49.402','2017-04-01','movie',505039),('2018-10-02 11:47:02','2018-10-02 11:47:02',1450,'The Kissing Booth','/7Dktk2ST6aL8h9Oe5rpk903VLhx.jpg',NULL,'/xEKx7zPEjN6meomZ7OhV82Mm2jm.jpg',NULL,'7.5','When teenager Elle’s first kiss leads to a forbidden romance with the hottest boy in high school, she risks her relationship with her best friend.','38.322','2018-05-11','movie',454983),('2018-10-02 12:14:59','2018-10-02 12:14:59',1451,'Mario Puzo\'s The Godfather: The complete Novel for Television','/dZyQnXKB1P29GJWC5tXUxPvSvE7.jpg',4,'/msB1q3B5LUt8Ci94BOM50JrOmak.jpg',1,'8.6','A miniseries adaptation of Francis Ford Coppola\'s The Godfather and The Godfather, Part II.','3.43','1977-11-12','tv',39651),('2018-10-02 13:16:08','2018-10-02 13:16:08',1452,'God Bless America','/9xnVLPkWbrywjrUrwwiDeQ6obCC.jpg',NULL,'/roz9IbL7ygpPdv8ezbG1DSDDY40.jpg',NULL,'7.1','Fed up with the cruelty and stupidity of American culture, an unlikely duo goes on a killing spree, killing reality TV stars, bigots and others they find repugnant in this black comedy.','7.897','2011-09-09','movie',74306),('2018-10-02 13:43:50','2018-10-02 13:43:50',1453,'Kill Bill: Vol. 1','/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg',NULL,'/kkS8PKa8c134vXsj2fQkNqOaCXU.jpg',NULL,'7.9','An assassin is shot by her ruthless employer, Bill, and other members of their assassination circle – but she lives to plot her vengeance.','20.881','2003-10-10','movie',24),('2018-10-02 13:43:52','2018-10-02 13:43:52',1454,'Get Out','/1SwAVYpuLj8KsHxllTF8Dt9dSSX.jpg',NULL,'/5OlAmzEUaO0A12cM7g5g420w4d7.jpg',NULL,'7.4','Chris and his girlfriend Rose go upstate to visit her parents for the weekend. At first, Chris reads the family\'s overly accommodating behavior as nervous attempts to deal with their daughter\'s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.','20.853','2017-02-24','movie',419430),('2018-10-02 13:43:54','2018-10-02 13:43:54',1455,'Furious 7','/dCgm7efXDmiABSdWDHBDBx2jwmn.jpg',NULL,'/ypyeMfKydpyuuTMdp36rMlkGDUL.jpg',NULL,'7.3','Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.','20.835','2015-04-01','movie',168259),('2018-10-02 13:43:59','2018-10-02 13:43:59',1456,'The Departed','/tGLO9zw5ZtCeyyEWgbYGgsFxC6i.jpg',NULL,'/8Od5zV7Q7zNOX0y9tyNgpTmoiGA.jpg',NULL,'8.1','To take down South Boston\'s Irish Mafia, the police send in one of their own to infiltrate the underworld, not realizing the syndicate has done likewise. While an undercover cop curries favor with the mob kingpin, a career criminal rises through the police ranks. But both sides soon discover there\'s a mole among them.','21.133','2006-10-05','movie',1422),('2018-10-02 13:44:02','2018-10-02 13:44:02',1457,'Django Unchained','/5WJnxuw41sddupf8cwOxYftuvJG.jpg',NULL,'/qUcmEqnzIwlwZxSyTf3WliSfAjJ.jpg',NULL,'8','With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.','21.41','2012-12-25','movie',68718),('2018-10-02 13:44:07','2018-10-02 13:44:07',1458,'Kill Bill: Vol. 2','/2yhg0mZQMhDyvUQ4rG1IZ4oIA8L.jpg',NULL,'/33WfP01Pu8SMuuHYnoJXMRCMtmI.jpg',NULL,'7.8','The Bride unwaveringly continues on her roaring rampage of revenge against the band of assassins who had tried to kill her and her unborn child. She visits each of her former associates one-by-one, checking off the victims on her Death List Five until there\'s nothing left to do … but kill Bill.','20.465','2004-04-16','movie',393),('2018-10-02 13:44:10','2018-10-02 13:44:10',1459,'Baby Driver','/dN9LbVNNZFITwfaRjl4tmwGWkRg.jpg',NULL,'/q5iixYCuDzDx5IoQXt4kZaLDIbr.jpg',NULL,'7.4','After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.','20.693','2017-06-28','movie',339403),('2018-10-02 13:44:15','2018-10-02 13:44:15',1460,'Shutter Island','/aZqKsvpJDFy2UzUMsdskNFbfkOd.jpg',NULL,'/bcb3FYtLbuPgNYO4M1IY7rfeMal.jpg',NULL,'8','World War II soldier-turned-U.S. Marshal Teddy Daniels investigates the disappearance of a patient from a hospital for the criminally insane, but his efforts are compromised by his troubling visions and also by a mysterious doctor.','20.115','2010-02-14','movie',11324),('2018-10-02 13:44:17','2018-10-02 13:44:17',1461,'The Revenant','/oXUWEc5i3wYyFnL1Ycu8ppxxPvs.jpg',NULL,'/kiWvoV78Cc3fUwkOHKzyBgVdrDD.jpg',NULL,'7.4','In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.','19.732','2015-12-25','movie',281957),('2018-10-02 13:44:22','2018-10-02 13:44:22',1462,'The Social Network','/ok5Wh8385Kgblq9MSU4VGvazeMH.jpg',NULL,'/5NGK7YnypChaA9E2wADXEptU4Iz.jpg',NULL,'7.2','On a fall night in 2003, Harvard undergrad and computer programming genius Mark Zuckerberg sits down at his computer and heatedly begins working on a new idea. In a fury of blogging and programming, what begins in his dorm room as a small site among friends soon becomes a global social network and a revolution in communication. A mere six years and 500 million friends later, Mark Zuckerberg is the youngest billionaire in history... but for this entrepreneur, success leads to both personal and legal complications.','19.399','2010-10-01','movie',37799);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_eps`
--

DROP TABLE IF EXISTS `tv_eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_eps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_eps`
--

LOCK TABLES `tv_eps` WRITE;
/*!40000 ALTER TABLE `tv_eps` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvs` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ep_count` int(11) DEFAULT NULL,
  `show_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL,
  `show_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `show_popularity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvs`
--

LOCK TABLES `tvs` WRITE;
/*!40000 ALTER TABLE `tvs` DISABLE KEYS */;
INSERT INTO `tvs` VALUES ('2018-09-26 04:36:27','2018-09-26 04:36:27',1,'The Big Bang Theory','/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg',259,'/nGsNruW3W27V6r4gkyc3iiEGsKR.jpg',12,'6.8','The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon\'s equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny\'s social skills and common sense.','232.219','2007-09-24','tv',1418),('2018-09-26 04:48:20','2018-09-26 04:48:20',2,'Breaking Bad','/1yeVJox3rjo2jBKrrihIMj7uoS9.jpg',62,'/eSzpy96DwBujGFj0xMbXBcGcfxX.jpg',5,'8.3','When Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live, he becomes filled with a sense of fearlessness and an unrelenting desire to secure his family\'s financial future at any cost as he enters the dangerous world of drugs and crime.','48.71','2008-01-20','tv',1396),('2018-09-26 04:49:36','2018-09-26 04:49:36',3,'The Flash','/lUFK7ElGCk9kVEryDJHICeNdmd1.jpg',93,'/mmxxEpTqVdwBlu5Pii7tbedBkPC.jpg',5,'6.7','After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \'meta-human\' who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.','59.396','2014-10-07','tv',60735),('2018-09-26 05:56:54','2018-09-26 05:56:54',4,'Game of Thrones','/gwPSoYUHAKmdyVywgLpKKA4BjRr.jpg',73,'/gX8SYlnL9ZznfZwEH4KJUePBFUM.jpg',8,'8.2','Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.','66.753','2011-04-17','tv',1399),('2018-09-26 05:58:30','2018-09-26 05:58:30',5,'The Walking Dead','/yn7psGTZsHumHOkLUmYpyrIcA2G.jpg',116,'/xVzvD5BPAU4HpleFSo8QOdHkndo.jpg',9,'7.3','Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.','102.617','2010-10-31','tv',1402),('2018-09-26 06:03:51','2018-09-26 06:03:51',6,'Stranger Things','/lXS60geme1LlEob5Wgvj3KilClA.jpg',17,'/56v2KjBlU4XaOv9rVYEQypROD7P.jpg',2,'8.4','When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.','29.209','2016-07-15','tv',66732),('2018-09-26 06:09:14','2018-09-26 06:09:14',7,'The Simpsons','/yTZQkSsxUFJZJe67IenRM0AEklc.jpg',639,'/4jMlfAIlN1zKNcqE6xjuQsrFse2.jpg',29,'7.1','Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.','84.571','1989-12-17','tv',456),('2018-09-26 06:09:25','2018-09-26 06:09:25',8,'Westworld','/6aj09UTMQNyfSfk0ZX8rYOEsXL2.jpg',20,'/yp94aOXzuqcQHva90B3jxLfnOO9.jpg',2,'8.1','A dark odyssey about the dawn of artificial consciousness and the evolution of sin. Set at the intersection of the near future and the reimagined past, it explores a world in which every human appetite, no matter how noble or depraved, can be indulged.','39.079','2016-10-02','tv',63247),('2018-09-26 06:10:02','2018-09-26 06:10:02',9,'Sherlock','/f9zGxLHGyQB10cMDZNY5ZcGKhZi.jpg',12,'/bvS50jBZXtglmLu72EAt5KgJBrL.jpg',4,'8.3','A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.','33.795','2010-07-25','tv',19885),('2018-09-26 06:14:38','2018-09-26 06:14:38',10,'Vikings','/oktTNFM8PzdseiK1X0E0XhB6LvP.jpg',60,'/A30ZqEoDbchvE7mCZcSp6TEwB1Q.jpg',6,'7.5','Vikings follows the adventures of Ragnar Lothbrok, the greatest hero of his age. The series tells the sagas of Ragnar\'s band of Viking brothers and his family, as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods. Legend has it that he was a direct descendant of Odin, the god of war and warriors.','47.037','2013-03-03','tv',44217),('2018-09-26 06:14:42','2018-09-26 06:14:42',11,'Friends','/7buCWBTpiPrCF5Lt023dSC60rgS.jpg',236,'/efiX8iir6GEBWCD0uCFIi5NAyYA.jpg',10,'7.9','The misadventures of a group of friends as they navigate the pitfalls of work, life and love in Manhattan.','54.374','1994-09-22','tv',1668),('2018-09-26 06:20:20','2018-09-26 06:20:20',12,'Band of Brothers','/yjqu0KEVAWz9eJQBvzrQMFlGD84.jpg',10,'/1LrtAhWPSEetJLjblXvnaYtl7eA.jpg',1,'8.2','Drawn from interviews with survivors of Easy Company, as well as their journals and letters, Band of Brothers chronicles the experiences of these men from paratrooper training in Georgia through the end of the war. As an elite rifle company parachuting into Normandy early on D-Day morning, participants in the Battle of the Bulge, and witness to the horrors of war, the men of Easy knew extraordinary bravery and extraordinary fear - and became the stuff of legend. Based on Stephen E. Ambrose\'s acclaimed book of the same name.','17.767','2001-09-09','tv',4613),('2018-09-26 06:21:29','2018-09-26 06:21:29',13,'Mr. Robot','/qE0t9rlClIReax0d5tr3j300wUt.jpg',32,'/toZQ9IN51cQMzy6fruBZ6024No3.jpg',3,'7.9','A contemporary and culturally resonant drama about a young programmer, Elliot, who suffers from a debilitating anti-social disorder and decides that he can only connect to people by hacking them. He wields his skills as a weapon to protect the people that he cares about. Elliot will find himself in the intersection between a cybersecurity firm he works for and the underworld organizations that are recruiting him to bring down corporate America.','27.97','2015-05-27','tv',62560),('2018-09-26 06:26:28','2018-09-26 06:26:28',14,'Family Guy','/gBGUL1UTUNmdRQT8gA1LUV4yg39.jpg',312,'/pH38r4TWTqq7Mcs6XAlwgzNUeJe.jpg',17,'6.5','Sick, twisted, politically incorrect and Freakin\' Sweet animated series featuring the adventures of the dysfunctional Griffin family. Bumbling Peter and long-suffering Lois have three kids. Stewie (a brilliant but sadistic baby bent on killing his mother and taking over the world), Meg (the oldest, and is the most unpopular girl in town) and Chris (the middle kid, he\'s not very bright but has a passion for movies). The final member of the family is Brian - a talking dog and much more than a pet, he keeps Stewie in check whilst sipping Martinis and sorting through his own life issues.','53.496','1999-01-31','tv',1434),('2018-09-26 06:26:46','2018-09-26 06:26:46',15,'Doctor Who','/3EcYZhBMAvVw4czcDLg9Sd0FuzQ.jpg',129,'/tQkigP2fItdzJWvtIhBvHxgs5yE.jpg',11,'7','The Doctor looks and seems human. He\'s handsome, witty, and could be mistaken for just another man in the street. But he is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living – more of a hobby actually, and he\'s very, very good at it. He\'s saved us from alien menaces and evil from before time began – but just who is he?','60.096','2005-03-26','tv',57243),('2018-09-26 06:27:39','2018-09-26 06:27:39',16,'Marvel\'s Daredevil','/wVadC1BT2w3hDh5Vq0J0LFFTrLP.jpg',27,'/dpNeXLEnuKzAvbNwveJhNEiQvXZ.jpg',3,'7.8','Lawyer-by-day Matt Murdock uses his heightened senses from being blinded as a young boy to fight crime at night on the streets of Hell’s Kitchen as Daredevil.','44.717','2015-04-10','tv',61889),('2018-09-26 06:28:47','2018-09-26 06:28:47',17,'Marvel\'s Agents of S.H.I.E.L.D.','/xjm6uVktPuKXNILwjLXwVG5d5BU.jpg',110,'/qtr5i6hOm6oVzTYl3jOQAYP3oc7.jpg',6,'6.7','Agent Phil Coulson of S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement and Logistics Division) puts together a team of agents to investigate the new, the strange and the unknown around the globe, protecting the ordinary from the extraordinary.','58.136','2013-09-24','tv',1403),('2018-09-26 06:52:12','2018-09-26 06:52:12',18,'Supernatural','/pui1V389cQft0BVFu9pbsYLEW1Q.jpg',295,'/koMUCyGWNtH5LXYbGqjsUwvgtsT.jpg',14,'7.2','When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their \'67 Chevy Impala, battling every kind of supernatural threat they encounter along the way. ','63.265','2005-09-13','tv',1622),('2018-09-26 06:59:13','2018-09-26 06:59:13',19,'The 100','/wHIMMLFsk32wIzDmawWkYVbxFCS.jpg',71,'/qYTIuJJ7fIehicAt3bl0vW70Sq6.jpg',5,'6.4','Based on the books by Kass Morgan, this show takes place 100 years in the future, when the Earth has been abandoned due to radioactivity. The last surviving humans live on an ark orbiting the planet — but the ark won\'t last forever. So the repressive regime picks 100 expendable juvenile delinquents to send down to Earth to see if the planet is still habitable.','43.631','2014-03-19','tv',48866),('2018-09-26 06:59:34','2018-09-26 06:59:34',20,'Arrow','/mo0FP1GxOFZT4UDde7RFDz5APXF.jpg',139,'/dKxkwAJfGuznW8Hu0mhaDJtna0n.jpg',7,'6','Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.','52.148','2012-10-10','tv',1412);
/*!40000 ALTER TABLE `tvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '../av.png',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '../header.jpg',
  `active` int(11) NOT NULL DEFAULT '0',
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Apparently, this user prefers to keep an air of mystery about them.',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'its a secret',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'its a secret',
  `birthday` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'socrates',NULL,'mohasmed@moviex.com','$2y$10$gtkb.W4wpzN/Ww8aDP4Z/.SHn8bSqc0AkNakhVTffw0iL6XW/sB/S','/users/1/1537011636.jpg','/users/1/1537011590.jpg',0,'War Doesnt determine who\'s right only who is left',NULL,NULL,'127.0.0.1','1996-07-16 00:00:00','i3y6kRgMy1lBWVBiDviviISSp0aIoRhW19Xk6BFe2nAeto5hznptlH36Fv74','2018-07-07 23:58:42','2018-09-20 23:24:43',NULL),(2,'ddsadsadsadsa&lt;script&gt;alert(&quot;TI&quot;) &lt;/script&gt;',NULL,'mohamd.d.kadmal.mk@gmail.com','$2y$10$6Lv3IjC97008Yiajf1.7heB5EYw4NEWDuewLxVLHX4Kh6gYaUYxvC','https://lh5.googleusercontent.com/-W6BbiAYzRS0/AAAAAAAAAAI/AAAAAAAABaQ/p02KcIgYuzk/photo.jpg','/users/2/1538373059.jpg',0,NULL,NULL,NULL,NULL,NULL,'YQ15UNR7hgfETBauOK2BPBmfxFbGcNtFVIG3LTqVMGoAXlTPM2MTlxQvytZB','2018-09-25 08:50:14','2018-10-02 15:16:35','NYOgLhcvPGqdY8KcyW3IkNnnPQgJJ9rKq9BZEyBmSIB0q75mNxyWrvP3cx0tljGw');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walls`
--

DROP TABLE IF EXISTS `walls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `record` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walls`
--

LOCK TABLES `walls` WRITE;
/*!40000 ALTER TABLE `walls` DISABLE KEYS */;
INSERT INTO `walls` VALUES (2,2,'2018-09-26 07:55:54','2018-10-01 08:56:28','library',NULL,2,'false'),(3,3,'2018-09-26 07:55:56','2018-09-26 07:55:56','library',NULL,2,'true'),(4,4,'2018-09-26 07:55:58','2018-10-01 09:01:51','library',NULL,2,'true'),(5,5,'2018-09-26 07:56:02','2018-10-02 06:17:34','library',NULL,2,'true'),(6,6,'2018-09-26 07:56:04','2018-10-02 06:16:44','library',NULL,2,'true'),(7,7,'2018-09-26 07:56:05','2018-09-26 07:56:05','library',NULL,2,'true'),(8,8,'2018-09-26 07:56:08','2018-09-26 07:56:08','library',NULL,2,'true'),(9,1,NULL,NULL,'post',NULL,2,'true'),(10,9,'2018-09-27 08:18:18','2018-09-27 08:18:18','library',NULL,2,'true'),(11,10,'2018-09-27 08:20:18','2018-09-27 08:20:18','library',NULL,2,'true'),(12,11,'2018-09-27 08:20:56','2018-09-27 08:20:56','library',NULL,2,'true'),(13,12,'2018-09-27 08:21:20','2018-10-01 09:02:24','library',NULL,2,'true'),(14,13,'2018-09-27 08:21:37','2018-09-27 08:21:37','library',NULL,2,'true'),(15,14,'2018-09-27 08:32:15','2018-09-27 08:32:15','library',NULL,2,'true'),(16,15,'2018-09-27 08:32:34','2018-09-27 08:32:34','library',NULL,2,'true'),(17,2,NULL,NULL,'post',NULL,2,'true'),(18,3,NULL,NULL,'post',NULL,2,'true'),(19,4,NULL,NULL,'post',NULL,2,'true'),(20,5,NULL,NULL,'post',NULL,2,'true'),(21,6,NULL,NULL,'post',NULL,2,'true'),(22,7,NULL,NULL,'post',NULL,2,'true'),(23,8,NULL,NULL,'post',NULL,2,'true'),(24,9,NULL,NULL,'post',NULL,2,'true'),(25,10,NULL,NULL,'post',NULL,2,'true'),(26,11,NULL,NULL,'post',NULL,2,'true'),(27,12,NULL,NULL,'post',NULL,2,'true'),(28,13,NULL,NULL,'post',NULL,2,'true'),(29,14,NULL,NULL,'post',NULL,2,'true'),(30,15,NULL,NULL,'post',NULL,2,'true'),(31,17,'2018-09-29 00:30:29','2018-09-29 00:30:29','post',NULL,2,'true'),(32,18,'2018-09-29 03:17:08','2018-09-29 03:17:08','post',NULL,2,'true'),(34,16,'2018-09-29 07:11:48','2018-09-29 07:14:54','library','2018-09-29 07:14:54.000000',2,'true'),(35,17,'2018-09-29 09:19:32','2018-09-29 09:19:32','library',NULL,2,'true'),(36,18,'2018-09-29 11:29:10','2018-09-29 11:29:10','library',NULL,2,'true'),(37,19,'2018-09-29 11:29:13','2018-09-29 11:29:13','library',NULL,2,'true'),(38,20,'2018-09-29 11:29:14','2018-09-29 11:29:14','library',NULL,2,'true'),(39,21,'2018-09-29 11:29:15','2018-09-29 11:29:15','library',NULL,2,'true'),(40,22,'2018-09-29 11:29:17','2018-09-29 11:29:17','library',NULL,2,'true'),(41,23,'2018-09-29 11:29:19','2018-09-29 11:29:19','library',NULL,2,'true'),(42,24,'2018-09-29 11:29:22','2018-09-29 11:29:22','library',NULL,2,'true'),(43,25,'2018-09-29 11:29:23','2018-09-29 11:29:23','library',NULL,2,'true'),(44,26,'2018-09-29 11:29:31','2018-09-29 11:29:31','library',NULL,2,'true'),(45,27,'2018-09-29 11:29:34','2018-09-29 11:29:34','library',NULL,2,'true'),(46,28,'2018-09-29 11:29:37','2018-09-29 11:29:37','library',NULL,2,'true'),(47,29,'2018-09-29 11:29:40','2018-09-29 11:29:40','library',NULL,2,'true'),(48,30,'2018-09-29 11:29:42','2018-09-29 11:29:42','library',NULL,2,'true'),(49,31,'2018-09-29 11:29:44','2018-09-29 11:29:44','library',NULL,2,'true'),(50,32,'2018-09-29 11:29:47','2018-09-29 11:29:47','library',NULL,2,'true'),(51,33,'2018-09-29 11:29:50','2018-09-29 11:29:50','library',NULL,2,'true'),(52,34,'2018-09-29 11:29:55','2018-09-29 11:29:55','library',NULL,2,'true'),(53,35,'2018-09-29 11:30:03','2018-09-29 11:30:03','library',NULL,2,'true'),(54,36,'2018-09-29 11:30:04','2018-09-29 11:30:04','library',NULL,2,'true'),(55,37,'2018-09-29 11:30:06','2018-10-01 09:02:42','library',NULL,2,'false'),(56,19,'2018-09-30 08:25:23','2018-09-30 08:25:23','post',NULL,2,'true'),(58,20,'2018-10-01 00:51:40','2018-10-01 00:51:40','post',NULL,2,'true'),(59,21,'2018-10-01 01:01:49','2018-10-01 01:01:49','post',NULL,2,'true'),(60,22,'2018-10-01 01:03:11','2018-10-01 01:03:11','post',NULL,2,'true'),(61,23,'2018-10-01 01:04:03','2018-10-01 01:04:03','post',NULL,2,'true'),(62,38,'2018-10-01 01:08:27','2018-10-01 01:12:11','library',NULL,2,'true'),(64,1,NULL,NULL,'follow',NULL,NULL,'true'),(65,24,'2018-10-01 04:46:25','2018-10-01 04:46:25','post',NULL,2,'true'),(66,25,'2018-10-01 04:59:16','2018-10-01 04:59:16','post',NULL,2,'true'),(67,26,'2018-10-01 05:01:21','2018-10-01 05:01:21','post',NULL,2,'true'),(68,40,'2018-10-01 05:09:07','2018-10-01 05:09:07','library',NULL,2,'true'),(69,41,'2018-10-01 05:09:15','2018-10-01 05:09:15','library',NULL,2,'true'),(70,42,'2018-10-01 05:09:18','2018-10-01 05:09:19','library',NULL,2,'true'),(71,43,'2018-10-01 05:09:21','2018-10-01 05:09:21','library',NULL,2,'true'),(72,44,'2018-10-01 05:09:28','2018-10-01 05:09:28','library',NULL,2,'true'),(73,45,'2018-10-01 05:09:30','2018-10-01 05:09:30','library',NULL,2,'true'),(74,46,'2018-10-01 05:09:34','2018-10-01 05:09:34','library',NULL,2,'true'),(75,47,'2018-10-01 05:09:40','2018-10-01 05:09:40','library',NULL,2,'true'),(76,27,'2018-10-01 07:01:31','2018-10-01 07:01:31','post',NULL,2,'true'),(77,28,'2018-10-01 07:06:19','2018-10-01 07:12:45','post','2018-10-01 07:12:45.000000',2,'true'),(78,29,'2018-10-02 06:16:45','2018-10-02 06:16:45','post',NULL,2,'true'),(79,30,'2018-10-02 06:17:36','2018-10-02 06:17:36','post',NULL,2,'true'),(80,2,NULL,NULL,'follow',NULL,NULL,'true'),(81,31,'2018-10-02 07:20:54','2018-10-02 07:20:54','post',NULL,2,'true'),(82,48,'2018-10-02 11:44:50','2018-10-02 12:15:34','library',NULL,2,'false'),(83,49,'2018-10-02 11:47:02','2018-10-02 11:47:02','library',NULL,2,'true'),(84,1,NULL,NULL,'follow',NULL,NULL,'true'),(85,1,NULL,NULL,'follow',NULL,NULL,'true'),(86,2,NULL,NULL,'follow',NULL,NULL,'true'),(87,1,NULL,NULL,'follow',NULL,NULL,'true'),(88,50,'2018-10-02 13:43:50','2018-10-02 13:43:50','library',NULL,2,'true'),(89,51,'2018-10-02 13:43:53','2018-10-02 13:43:53','library',NULL,2,'true'),(90,52,'2018-10-02 13:43:54','2018-10-02 13:43:55','library',NULL,2,'true'),(91,53,'2018-10-02 13:43:56','2018-10-02 13:43:56','library',NULL,2,'true'),(92,54,'2018-10-02 13:43:59','2018-10-02 13:43:59','library',NULL,2,'true'),(93,55,'2018-10-02 13:44:02','2018-10-02 13:44:02','library',NULL,2,'true'),(94,56,'2018-10-02 13:44:07','2018-10-02 13:44:07','library',NULL,2,'true'),(95,57,'2018-10-02 13:44:10','2018-10-02 13:44:10','library',NULL,2,'true'),(96,58,'2018-10-02 13:44:15','2018-10-02 13:44:15','library',NULL,2,'true'),(97,59,'2018-10-02 13:44:17','2018-10-02 13:44:17','library',NULL,2,'true'),(98,60,'2018-10-02 13:44:22','2018-10-02 13:44:22','library',NULL,2,'true'),(99,32,'2018-10-02 13:48:41','2018-10-02 13:52:22','post','2018-10-02 13:52:22.000000',2,'true'),(100,33,'2018-10-02 13:51:24','2018-10-02 13:51:51','post','2018-10-02 13:51:51.000000',2,'true'),(101,34,'2018-10-02 13:52:05','2018-10-02 13:53:04','post','2018-10-02 13:53:04.000000',2,'true'),(102,35,'2018-10-02 13:52:40','2018-10-02 13:53:03','post','2018-10-02 13:53:03.000000',2,'true'),(103,36,'2018-10-02 13:53:13','2018-10-02 13:53:13','post',NULL,2,'true'),(104,37,'2018-10-02 14:00:50','2018-10-02 14:00:50','post',NULL,2,'true'),(105,38,'2018-10-02 14:02:02','2018-10-02 14:05:13','post','2018-10-02 14:05:13.000000',2,'true'),(106,39,'2018-10-02 14:06:29','2018-10-02 14:06:29','post',NULL,2,'true');
/*!40000 ALTER TABLE `walls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-04 10:23:28
