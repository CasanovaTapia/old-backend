-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lapel
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add order',7,'add_order'),(20,'Can change order',7,'change_order'),(21,'Can delete order',7,'delete_order'),(25,'Can add client',9,'add_client'),(26,'Can change client',9,'change_client'),(27,'Can delete client',9,'delete_client'),(28,'Can add interests',10,'add_interests'),(29,'Can change interests',10,'change_interests'),(30,'Can delete interests',10,'delete_interests'),(31,'Can add subscriptions',11,'add_subscriptions'),(32,'Can change subscriptions',11,'change_subscriptions'),(33,'Can delete subscriptions',11,'delete_subscriptions'),(34,'Can add api access',12,'add_apiaccess'),(35,'Can change api access',12,'change_apiaccess'),(36,'Can delete api access',12,'delete_apiaccess'),(37,'Can add api key',13,'add_apikey'),(38,'Can change api key',13,'change_apikey'),(39,'Can delete api key',13,'delete_apikey'),(40,'Can add products',14,'add_products'),(41,'Can change products',14,'change_products'),(42,'Can delete products',14,'delete_products'),(43,'Can add user profile',15,'add_userprofile'),(44,'Can change user profile',15,'change_userprofile'),(45,'Can delete user profile',15,'delete_userprofile'),(46,'Can add avatar',16,'add_avatar'),(47,'Can change avatar',16,'change_avatar'),(48,'Can delete avatar',16,'delete_avatar'),(49,'Can add token',17,'add_token'),(50,'Can change token',17,'change_token'),(51,'Can delete token',17,'delete_token'),(52,'Can add brand',18,'add_brand'),(53,'Can change brand',18,'change_brand'),(54,'Can delete brand',18,'delete_brand');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$jZPWgbkfM178$0SKF//yzTrSas9+siT2jO0dR5xm3AECFORdZNZ0xfjw=','2015-03-15 19:50:52',1,'davechason','','','davidchason@gmail.com',1,1,'2015-02-01 00:01:00');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_1d10c57f535fb363_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar_avatar`
--

DROP TABLE IF EXISTS `avatar_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avatar_avatar_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_673d80a4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar_avatar`
--

LOCK TABLES `avatar_avatar` WRITE;
/*!40000 ALTER TABLE `avatar_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `avatar_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_client`
--

DROP TABLE IF EXISTS `clients_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `age` varchar(3) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_method` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `tier` varchar(30) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `relationship_status` varchar(30) NOT NULL,
  `sales_rep` varchar(30) NOT NULL,
  `meeting_location` varchar(30) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `profie_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_client`
--

LOCK TABLES `clients_client` WRITE;
/*!40000 ALTER TABLE `clients_client` DISABLE KEYS */;
INSERT INTO `clients_client` VALUES (1,'Mike Ovitz','123456789','movitz@ovitz.com','22','123 Baked Goods St','Cell','Talent Agent / Investor','3','December 14, 1946','Married','Taylor','La Lakers Game','Himself','2015/02/01/ovitz.jpg'),(2,'Drew Houston','0000000000','drew@dropbox.com','28','Drop Box','Phone','CEO @ Dropbox','3','none','Single','Taylor','Bar','Himself','2015/02/02/drew.jpg'),(3,'Mark Zuckerburg','123456789','zuck@facebook.com','28','Facebook inc.','Cell','CEO @ Facebook','3','01/13/1985','Married','Jeff','Coffee Shop','Himself','2015/02/02/zuck.jpg'),(4,'Mike Bloomberg','123456789','unclemike@bloomberg.com','old','Hidden','Cell','Former Mayor of NYC','3','/03/18/1959','Married','Will','Del Friscos','Assistant','2015/02/02/unclemike.jpg'),(5,'Rob Reiner','123456789','rreiner@madmax.com','67','Hollywood','Cell','Actor','3','March 6, 1947','Married','Taylor','Office','Himself','2015/02/02/rob-reiner-4.jpg'),(6,'Arne Sorenson','1238760','arnesorenso@marriot.com','57','Hotel','Cell','Marriot CEO','3','1959','Married','Jeff','Bar','Himself','2015/02/02/headshot.jpg'),(7,'Taylor Haddix','814-795-1111','taylor@lapel.co','21','Your moms house','Phone','Drug Dealer','3','8-31-93','wifed up as fuck','jonny carson','Behind the Strip Club','big wally','2015/02/02/taylor.jpg');
/*!40000 ALTER TABLE `clients_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_interests`
--

DROP TABLE IF EXISTS `clients_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_interests`
--

LOCK TABLES `clients_interests` WRITE;
/*!40000 ALTER TABLE `clients_interests` DISABLE KEYS */;
INSERT INTO `clients_interests` VALUES (1,'PCP,LSD,Shrooms');
/*!40000 ALTER TABLE `clients_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_interests_client_interests`
--

DROP TABLE IF EXISTS `clients_interests_client_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_interests_client_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interests_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `interests_id` (`interests_id`,`client_id`),
  KEY `clients_interests_client_interests_8b069c8f` (`interests_id`),
  KEY `clients_interests_client_interests_2bfe9d72` (`client_id`),
  CONSTRAINT `clients_interest_client_id_5c27fcf5688c1cf9_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  CONSTRAINT `clients_int_interests_id_8159050474b2cc6_fk_clients_interests_id` FOREIGN KEY (`interests_id`) REFERENCES `clients_interests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_interests_client_interests`
--

LOCK TABLES `clients_interests_client_interests` WRITE;
/*!40000 ALTER TABLE `clients_interests_client_interests` DISABLE KEYS */;
INSERT INTO `clients_interests_client_interests` VALUES (1,1,1);
/*!40000 ALTER TABLE `clients_interests_client_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_subscriptions`
--

DROP TABLE IF EXISTS `clients_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_subscriptions`
--

LOCK TABLES `clients_subscriptions` WRITE;
/*!40000 ALTER TABLE `clients_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_subscriptions_client_subscriptions`
--

DROP TABLE IF EXISTS `clients_subscriptions_client_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_subscriptions_client_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriptions_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_id` (`subscriptions_id`,`client_id`),
  KEY `clients_subscriptions_client_subscriptions_a52d8d41` (`subscriptions_id`),
  KEY `clients_subscriptions_client_subscriptions_2bfe9d72` (`client_id`),
  CONSTRAINT `clients_subscrip_client_id_4faeef5eb8a42289_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  CONSTRAINT `cl_subscriptions_id_62c6fe08821adcd5_fk_clients_subscriptions_id` FOREIGN KEY (`subscriptions_id`) REFERENCES `clients_subscriptions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_subscriptions_client_subscriptions`
--

LOCK TABLES `clients_subscriptions_client_subscriptions` WRITE;
/*!40000 ALTER TABLE `clients_subscriptions_client_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients_subscriptions_client_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-02-01 00:18:05','1','Client object',1,'',9,1),(2,'2015-02-01 00:18:58','1','Interests object',1,'',10,1),(3,'2015-02-01 20:39:31','1','Client object',2,'Changed profie_pic.',9,1),(4,'2015-02-01 22:50:31','1','Dave Chason',2,'Changed profie_pic.',9,1),(5,'2015-02-02 01:06:22','2','Drew Houston',1,'',9,1),(6,'2015-02-02 04:06:50','1','Mike Ovitz',2,'Changed full_name, phone, email, occupation, birthday, relationship_status and meeting_location.',9,1),(7,'2015-02-02 04:11:13','3','Mark Zuckerburg',1,'',9,1),(8,'2015-02-02 04:15:20','4','Mike Bloomberg',1,'',9,1),(9,'2015-02-02 04:26:00','5','Rob Reiner',1,'',9,1),(10,'2015-02-02 04:32:54','6','Arne Sorenson',1,'',9,1),(11,'2015-02-02 04:34:08','6','Arne Sorenson',2,'Changed profie_pic.',9,1),(12,'2015-02-02 04:34:43','6','Arne Sorenson',2,'Changed profie_pic.',9,1),(13,'2015-02-02 04:35:13','6','Arne Sorenson',2,'Changed profie_pic.',9,1),(14,'2015-02-02 04:36:10','6','Arne Sorenson',2,'Changed profie_pic.',9,1),(15,'2015-02-02 06:28:55','7','Taylor Haddix',1,'',9,1),(16,'2015-02-03 00:30:18','1','Order object',1,'',7,1),(18,'2015-02-03 01:27:16','2','Order object',1,'',7,1),(20,'2015-02-03 03:23:40','1','Order object',2,'Changed order_total_price.',7,1),(21,'2015-02-04 19:10:32','3','3',1,'',7,1),(22,'2015-02-04 19:22:35','3','3',3,'',7,1),(23,'2015-02-04 19:22:35','2','2',3,'',7,1),(24,'2015-02-04 19:22:35','1','1',3,'',7,1),(25,'2015-02-04 19:29:31','3','3',3,'',7,1),(26,'2015-02-04 19:43:58','1','Savatore Ferragamo High Top Black Sneakers',1,'',14,1),(27,'2015-02-04 22:53:44','2','Versace Sunglasses Black',1,'',14,1),(28,'2015-02-06 18:32:45','8','Charlie Manson',1,'',9,1),(29,'2015-02-06 18:38:56','9','Jeffrey Dahmer',1,'',9,1),(30,'2015-02-06 18:43:15','9','Jeffrey Dahmer',3,'',9,1),(31,'2015-02-06 18:43:15','8','Charlie Manson',3,'',9,1),(32,'2015-03-11 19:49:59','2','2',2,'No fields changed.',7,1),(33,'2015-03-11 19:50:05','1','1',2,'Changed order_status.',7,1),(34,'2015-03-12 05:43:55','3','3',3,'',7,1),(35,'2015-03-15 19:59:59','1','Splendid Mills',1,'',18,1),(36,'2015-03-15 20:00:12','2','Tom Ford',1,'',18,1),(37,'2015-03-15 20:00:23','3','Alexander Wang',1,'',18,1),(38,'2015-03-15 20:00:31','4','Paul Smith',1,'',18,1),(39,'2015-03-15 20:00:37','5','A.P.C',1,'',18,1),(40,'2015-03-15 20:00:55','6','Alexander McQueen',1,'',18,1),(41,'2015-03-15 20:01:10','7','Facconable',1,'',18,1),(42,'2015-03-15 20:01:26','8','Margiela',1,'',18,1),(43,'2015-03-15 20:01:42','9','Loro Piana',1,'',18,1),(44,'2015-03-15 20:01:53','10','Lanvin',1,'',18,1),(45,'2015-03-15 20:02:01','11','Balmain',1,'',18,1),(46,'2015-03-15 20:02:08','12','Gucci',1,'',18,1),(47,'2015-03-15 20:02:16','13','Etro',1,'',18,1),(48,'2015-03-15 20:02:29','14','Jill Sander',1,'',18,1),(49,'2015-03-15 20:05:56','15','Bottega Veneta',1,'',18,1),(50,'2015-03-15 20:06:07','16','Exemplire',1,'',18,1),(51,'2015-03-15 20:06:14','17','J. Crew',1,'',18,1),(52,'2015-03-15 20:06:21','18','Pantheralla',1,'',18,1),(53,'2015-03-15 20:06:28','19','Marc McNairy',1,'',18,1),(54,'2015-03-15 20:06:34','20','Arthur George',1,'',18,1),(55,'2015-03-15 20:06:41','21','Robert Graham',1,'',18,1),(56,'2015-03-15 20:06:46','22','Salvartore Ferragamo',1,'',18,1),(57,'2015-03-15 20:06:55','23','Brunello Cuccinelli',1,'',18,1),(58,'2015-03-15 20:07:01','24','Tods',1,'',18,1),(59,'2015-03-15 20:07:07','25','Red wing',1,'',18,1),(60,'2015-03-15 20:07:12','26','Common Projects',1,'',18,1),(61,'2015-03-15 20:07:18','27','Givenchy',1,'',18,1),(62,'2015-03-15 20:07:24','28','Balenciaga',1,'',18,1),(63,'2015-03-15 20:07:30','29','Rag and Bone',1,'',18,1),(64,'2015-03-15 20:07:35','30','Nike',1,'',18,1),(65,'2015-03-15 20:07:42','31','Prada',1,'',18,1),(66,'2015-03-15 20:07:49','32','Jimmy Choo',1,'',18,1),(67,'2015-03-15 20:07:56','33','Jordan',1,'',18,1),(68,'2015-03-15 20:08:08','34','To Boot New york',1,'',18,1),(69,'2015-03-15 20:08:13','35','Fiorentini And Baker',1,'',18,1),(70,'2015-03-15 20:08:19','36','New Balance',1,'',18,1),(71,'2015-03-15 20:08:24','37','Puma',1,'',18,1),(72,'2015-03-15 20:08:30','38','Adidas',1,'',18,1),(73,'2015-03-15 20:08:36','39','Kitsune',1,'',18,1),(74,'2015-03-15 20:08:42','40','John Lobb',1,'',18,1),(75,'2015-03-15 20:08:48','41','Louboutin',1,'',18,1),(76,'2015-03-15 20:08:57','42','Hunter',1,'',18,1),(77,'2015-03-15 20:09:04','43','Frye',1,'',18,1),(78,'2015-03-15 20:09:10','44','7 For All Mankind',1,'',18,1),(79,'2015-03-15 20:09:16','45','AG',1,'',18,1),(80,'2015-03-15 20:09:47','46','3x1',1,'',18,1),(81,'2015-03-15 20:09:52','47','Acne',1,'',18,1),(82,'2015-03-15 20:09:57','48','Naked and Famous',1,'',18,1),(83,'2015-03-15 20:10:02','49','Nudie',1,'',18,1),(84,'2015-03-15 20:10:08','50','Levi\'s',1,'',18,1),(85,'2015-03-15 20:10:14','51','Cavali',1,'',18,1),(86,'2015-03-15 20:10:20','52','Joe\'s',1,'',18,1),(87,'2015-03-15 20:10:26','53','J Brand',1,'',18,1),(88,'2015-03-15 20:10:32','54','Canali',1,'',18,1),(89,'2015-03-15 20:10:40','55','Theory',1,'',18,1),(90,'2015-03-15 20:10:46','56','Armani',1,'',18,1),(91,'2015-03-15 20:10:51','57','Brooks Brothers',1,'',18,1),(92,'2015-03-15 20:10:56','58','Burberry',1,'',18,1),(93,'2015-03-15 20:11:01','59','J Lenburg',1,'',18,1),(94,'2015-03-15 20:11:06','60','Cornelioni',1,'',18,1),(95,'2015-03-15 20:11:15','61','Gant',1,'',18,1),(96,'2015-03-15 20:11:25','62','PRPS',1,'',18,1),(97,'2015-03-15 20:11:30','63','Richard Chai',1,'',18,1),(98,'2015-03-15 20:11:36','64','Ray Ban',1,'',18,1),(99,'2015-03-15 20:11:45','65','Warby Parker',1,'',18,1),(100,'2015-03-15 20:11:50','66','Phillip Lim',1,'',18,1),(101,'2015-03-15 20:11:57','67','Persol',1,'',18,1),(102,'2015-03-15 20:12:02','68','Oliver Peoples',1,'',18,1),(103,'2015-03-15 20:12:07','69','Lulelemon',1,'',18,1),(104,'2015-03-15 20:12:13','70','James Perse',1,'',18,1),(105,'2015-03-15 20:12:21','71','Vince',1,'',18,1),(106,'2015-03-15 20:12:28','72','Saucony',1,'',18,1),(107,'2015-03-15 20:12:34','73','Babolat',1,'',18,1),(108,'2015-03-15 20:12:40','74','Newton',1,'',18,1),(109,'2015-03-15 20:12:50','75','Arcteryx',1,'',18,1),(110,'2015-03-15 20:12:56','76','Smartwool',1,'',18,1),(111,'2015-03-15 20:13:00','77','The North Face',1,'',18,1),(112,'2015-03-15 20:13:07','78','Patagonia',1,'',18,1),(113,'2015-03-15 20:13:13','79','Ibex',1,'',18,1),(114,'2015-03-15 20:13:18','80','Onia',1,'',18,1),(115,'2015-03-15 20:13:23','81','Chubbies',1,'',18,1),(116,'2015-03-15 20:13:29','82','Montecler',1,'',18,1),(117,'2015-03-15 20:13:36','83','Viberkin',1,'',18,1),(118,'2015-03-15 20:13:43','84','Olebar Brown',1,'',18,1),(119,'2015-03-15 20:13:49','85','TAG',1,'',18,1),(120,'2015-03-15 20:13:54','86','Omega',1,'',18,1),(121,'2015-03-15 20:13:59','87','Rolex',1,'',18,1),(122,'2015-03-15 20:14:04','88','Pate Phillippe',1,'',18,1),(123,'2015-03-15 20:14:10','89','Jaeger',1,'',18,1),(124,'2015-03-15 20:14:15','90','BVLGARI',1,'',18,1),(125,'2015-03-15 20:14:20','91','Chanel',1,'',18,1),(126,'2015-03-15 20:14:24','92','Gloverall',1,'',18,1),(127,'2015-03-15 20:14:31','93','Barbour',1,'',18,1),(128,'2015-03-15 20:14:37','94','Schott',1,'',18,1),(129,'2015-03-15 20:14:45','95','Fjallraven',1,'',18,1),(130,'2015-03-15 20:14:50','96','Valentino',1,'',18,1),(131,'2015-03-15 20:14:55','97','Band of Outsiders',1,'',18,1),(132,'2015-03-15 20:15:03','98','Zegna',1,'',18,1),(133,'2015-03-15 20:15:09','99','Mackage',1,'',18,1),(134,'2015-03-15 20:15:15','100','Ted Baker',1,'',18,1),(135,'2015-03-15 20:15:22','101','Y3',1,'',18,1),(136,'2015-03-15 20:15:27','102','Hermes',1,'',18,1),(137,'2015-03-15 20:15:53','103','Ralph Lauren',1,'',18,1),(138,'2015-03-15 20:15:59','104','Filson',1,'',18,1),(139,'2015-03-15 20:16:04','105','Bonn no. 9',1,'',18,1),(140,'2015-03-15 20:16:10','106','Varvatos',1,'',18,1),(141,'2015-03-15 20:16:16','107','Alfred Dunhill',1,'',18,1),(142,'2015-03-15 20:16:21','108','Louis Vuitton',1,'',18,1),(143,'2015-03-15 20:16:27','109','Balley',1,'',18,1),(144,'2015-03-15 20:16:33','110','Billy Ried',1,'',18,1),(145,'2015-03-15 20:16:39','111','Berlutti',1,'',18,1),(146,'2015-03-15 20:16:44','112','Mulberry',1,'',18,1),(147,'2015-03-15 20:16:51','113','Tumi',1,'',18,1),(148,'2015-03-15 20:16:57','114','Mont Blanc',1,'',18,1),(149,'2015-03-15 20:17:05','115','Hoyard',1,'',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'order','orders','order'),(9,'client','clients','client'),(10,'interests','clients','interests'),(11,'subscriptions','clients','subscriptions'),(12,'api access','tastypie','apiaccess'),(13,'api key','tastypie','apikey'),(14,'products','products','products'),(15,'user profile','page','userprofile'),(16,'avatar','avatar','avatar'),(17,'token','authtoken','token'),(18,'brand','products','brand');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-02-01 00:00:27'),(2,'auth','0001_initial','2015-02-01 00:00:27'),(3,'admin','0001_initial','2015-02-01 00:00:27'),(4,'sessions','0001_initial','2015-02-01 00:00:27'),(5,'clients','0001_initial','2015-02-01 00:01:21'),(6,'clients','0002_client_profie_pic','2015-02-01 19:45:20'),(7,'clients','0003_auto_20150201_2038','2015-02-01 20:39:09'),(8,'tastypie','0001_initial','2015-02-04 19:01:22'),(9,'products','0001_initial','2015-02-04 19:18:23'),(10,'products','0002_products_product_pic','2015-02-04 19:40:59'),(11,'page','0001_initial','2015-02-05 17:58:01'),(12,'page','0002_auto_20150205_1802','2015-02-05 18:02:06'),(13,'authtoken','0001_initial','2015-03-11 19:46:43'),(14,'page','0003_auto_20150212_1307','2015-03-11 19:46:43'),(15,'products','0003_brand','2015-03-15 19:55:57');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('81vylo36cdlkhu774v4xnas936q8h80k','ZGVkMWJmYTkzNjA4MmYxMzgwNjFkNzYxMzdhMTc1OTk1MWNhZmJjYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiX2F1dGhfdXNlcl9oYXNoIjoiNmQ2M2NiMDExZTI2Mjk1M2M5N2I2NDFiZjY3YmVlMjRhYzJiZDg0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-03-15 20:50:52'),('eyrlk2rfsfmj7uu6g8b3eeb53yy5tr8e','YWEwNTU3NDk5NDdhOTcxNjY0NDJlYzVmOGI5ZjhiNDVhMGNlMDZkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhMGQyNzNiY2QzNDQzYzZiNmNkN2RlYTAzZjU2MDUwMmI1Mjg5NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-15 00:02:46'),('qbg2i6qwi5g7xpfdbordams2b20kl8k5','ZGVkMWJmYTkzNjA4MmYxMzgwNjFkNzYxMzdhMTc1OTk1MWNhZmJjYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiX2F1dGhfdXNlcl9oYXNoIjoiNmQ2M2NiMDExZTI2Mjk1M2M5N2I2NDFiZjY3YmVlMjRhYzJiZDg0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-03-12 02:13:27'),('sx48s0r4hi4e7wlda5s4j58x50xb4s06','ZGVkMWJmYTkzNjA4MmYxMzgwNjFkNzYxMzdhMTc1OTk1MWNhZmJjYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiX2F1dGhfdXNlcl9oYXNoIjoiNmQ2M2NiMDExZTI2Mjk1M2M5N2I2NDFiZjY3YmVlMjRhYzJiZDg0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-03-11 20:46:19'),('u2y1tbsc8u6cfy091acce47ldy13a8jk','ZGVkMWJmYTkzNjA4MmYxMzgwNjFkNzYxMzdhMTc1OTk1MWNhZmJjYjp7Il9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiX2F1dGhfdXNlcl9oYXNoIjoiNmQ2M2NiMDExZTI2Mjk1M2M5N2I2NDFiZjY3YmVlMjRhYzJiZDg0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2015-03-12 06:20:24'),('uyf49wkwbk72fi7f38hp8vzfvcyh92dp','YWEwNTU3NDk5NDdhOTcxNjY0NDJlYzVmOGI5ZjhiNDVhMGNlMDZkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhMGQyNzNiY2QzNDQzYzZiNmNkN2RlYTAzZjU2MDUwMmI1Mjg5NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-20 18:29:11');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `order_status` varchar(30) NOT NULL,
  `order_total_price` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_4fea5d6a` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,3,'Not Fullfilled','3,000','2015-02-03 00:30:18'),(2,1,'Shipped','4,000','2015-02-03 01:27:16'),(4,3,'Tailoring','','2015-03-12 05:50:49'),(5,3,'Tailoring','','2015-03-12 06:06:33');
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_userprofile`
--

DROP TABLE IF EXISTS `page_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `page_userprofile_user_id_294ebc0a4b06ab99_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_userprofile`
--

LOCK TABLES `page_userprofile` WRITE;
/*!40000 ALTER TABLE `page_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_brand`
--

DROP TABLE IF EXISTS `products_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_brand`
--

LOCK TABLES `products_brand` WRITE;
/*!40000 ALTER TABLE `products_brand` DISABLE KEYS */;
INSERT INTO `products_brand` VALUES (1,'Splendid Mills'),(2,'Tom Ford'),(3,'Alexander Wang'),(4,'Paul Smith'),(5,'A.P.C'),(6,'Alexander McQueen'),(7,'Facconable'),(8,'Margiela'),(9,'Loro Piana'),(10,'Lanvin'),(11,'Balmain'),(12,'Gucci'),(13,'Etro'),(14,'Jill Sander'),(15,'Bottega Veneta'),(16,'Exemplire'),(17,'J. Crew'),(18,'Pantheralla'),(19,'Marc McNairy'),(20,'Arthur George'),(21,'Robert Graham'),(22,'Salvartore Ferragamo'),(23,'Brunello Cuccinelli'),(24,'Tods'),(25,'Red wing'),(26,'Common Projects'),(27,'Givenchy'),(28,'Balenciaga'),(29,'Rag and Bone'),(30,'Nike'),(31,'Prada'),(32,'Jimmy Choo'),(33,'Jordan'),(34,'To Boot New york'),(35,'Fiorentini And Baker'),(36,'New Balance'),(37,'Puma'),(38,'Adidas'),(39,'Kitsune'),(40,'John Lobb'),(41,'Louboutin'),(42,'Hunter'),(43,'Frye'),(44,'7 For All Mankind'),(45,'AG'),(46,'3x1'),(47,'Acne'),(48,'Naked and Famous'),(49,'Nudie'),(50,'Levi\'s'),(51,'Cavali'),(52,'Joe\'s'),(53,'J Brand'),(54,'Canali'),(55,'Theory'),(56,'Armani'),(57,'Brooks Brothers'),(58,'Burberry'),(59,'J Lenburg'),(60,'Cornelioni'),(61,'Gant'),(62,'PRPS'),(63,'Richard Chai'),(64,'Ray Ban'),(65,'Warby Parker'),(66,'Phillip Lim'),(67,'Persol'),(68,'Oliver Peoples'),(69,'Lulelemon'),(70,'James Perse'),(71,'Vince'),(72,'Saucony'),(73,'Babolat'),(74,'Newton'),(75,'Arcteryx'),(76,'Smartwool'),(77,'The North Face'),(78,'Patagonia'),(79,'Ibex'),(80,'Onia'),(81,'Chubbies'),(82,'Montecler'),(83,'Viberkin'),(84,'Olebar Brown'),(85,'TAG'),(86,'Omega'),(87,'Rolex'),(88,'Pate Phillippe'),(89,'Jaeger'),(90,'BVLGARI'),(91,'Chanel'),(92,'Gloverall'),(93,'Barbour'),(94,'Schott'),(95,'Fjallraven'),(96,'Valentino'),(97,'Band of Outsiders'),(98,'Zegna'),(99,'Mackage'),(100,'Ted Baker'),(101,'Y3'),(102,'Hermes'),(103,'Ralph Lauren'),(104,'Filson'),(105,'Bonn no. 9'),(106,'Varvatos'),(107,'Alfred Dunhill'),(108,'Louis Vuitton'),(109,'Balley'),(110,'Billy Ried'),(111,'Berlutti'),(112,'Mulberry'),(113,'Tumi'),(114,'Mont Blanc'),(115,'Hoyard');
/*!40000 ALTER TABLE `products_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_products`
--

DROP TABLE IF EXISTS `products_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `product_size` varchar(30) NOT NULL,
  `product_color` varchar(30) NOT NULL,
  `product_material` varchar(30) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_products`
--

LOCK TABLES `products_products` WRITE;
/*!40000 ALTER TABLE `products_products` DISABLE KEYS */;
INSERT INTO `products_products` VALUES (1,'Savatore Ferragamo High Top Black Sneakers','Sneakers','none','Black','Calfskin',780,'2015/02/04/604569_00.png'),(2,'Versace Sunglasses Black','Sunglasses','none','Black','Plastic/Metal',400,'2015/02/04/90_O4289-OGB187_ONUL_20.jpeg');
/*!40000 ALTER TABLE `products_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_products_product_order`
--

DROP TABLE IF EXISTS `products_products_product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_products_product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_id` (`products_id`,`order_id`),
  KEY `products_products_product_order_7a6b6708` (`products_id`),
  KEY `products_products_product_order_69dfcb07` (`order_id`),
  CONSTRAINT `products_products_p_order_id_17a603a41267bb5a_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `products_pr_products_id_10f0e7ae48fbf01f_fk_products_products_id` FOREIGN KEY (`products_id`) REFERENCES `products_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_products_product_order`
--

LOCK TABLES `products_products_product_order` WRITE;
/*!40000 ALTER TABLE `products_products_product_order` DISABLE KEYS */;
INSERT INTO `products_products_product_order` VALUES (1,1,2),(2,2,2);
/*!40000 ALTER TABLE `products_products_product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastypie_apiaccess`
--

DROP TABLE IF EXISTS `tastypie_apiaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastypie_apiaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `accessed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastypie_apiaccess`
--

LOCK TABLES `tastypie_apiaccess` WRITE;
/*!40000 ALTER TABLE `tastypie_apiaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `tastypie_apiaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastypie_apikey`
--

DROP TABLE IF EXISTS `tastypie_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastypie_apikey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `tastypie_apikey_3c6e0b8a` (`key`),
  CONSTRAINT `tastypie_apikey_user_id_ffeb4840e0b406b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastypie_apikey`
--

LOCK TABLES `tastypie_apikey` WRITE;
/*!40000 ALTER TABLE `tastypie_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `tastypie_apikey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-15 20:33:01
