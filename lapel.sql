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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` VALUES (4,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` VALUES (5,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` VALUES (6,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` VALUES (7,'Can add group',3,'add_group');
INSERT INTO `auth_permission` VALUES (8,'Can change group',3,'change_group');
INSERT INTO `auth_permission` VALUES (9,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` VALUES (10,'Can add user',4,'add_user');
INSERT INTO `auth_permission` VALUES (11,'Can change user',4,'change_user');
INSERT INTO `auth_permission` VALUES (12,'Can delete user',4,'delete_user');
INSERT INTO `auth_permission` VALUES (13,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` VALUES (14,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` VALUES (15,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16,'Can add session',6,'add_session');
INSERT INTO `auth_permission` VALUES (17,'Can change session',6,'change_session');
INSERT INTO `auth_permission` VALUES (18,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` VALUES (19,'Can add order',7,'add_order');
INSERT INTO `auth_permission` VALUES (20,'Can change order',7,'change_order');
INSERT INTO `auth_permission` VALUES (21,'Can delete order',7,'delete_order');
INSERT INTO `auth_permission` VALUES (25,'Can add client',9,'add_client');
INSERT INTO `auth_permission` VALUES (26,'Can change client',9,'change_client');
INSERT INTO `auth_permission` VALUES (27,'Can delete client',9,'delete_client');
INSERT INTO `auth_permission` VALUES (28,'Can add interests',10,'add_interests');
INSERT INTO `auth_permission` VALUES (29,'Can change interests',10,'change_interests');
INSERT INTO `auth_permission` VALUES (30,'Can delete interests',10,'delete_interests');
INSERT INTO `auth_permission` VALUES (31,'Can add subscriptions',11,'add_subscriptions');
INSERT INTO `auth_permission` VALUES (32,'Can change subscriptions',11,'change_subscriptions');
INSERT INTO `auth_permission` VALUES (33,'Can delete subscriptions',11,'delete_subscriptions');
INSERT INTO `auth_permission` VALUES (34,'Can add api access',12,'add_apiaccess');
INSERT INTO `auth_permission` VALUES (35,'Can change api access',12,'change_apiaccess');
INSERT INTO `auth_permission` VALUES (36,'Can delete api access',12,'delete_apiaccess');
INSERT INTO `auth_permission` VALUES (37,'Can add api key',13,'add_apikey');
INSERT INTO `auth_permission` VALUES (38,'Can change api key',13,'change_apikey');
INSERT INTO `auth_permission` VALUES (39,'Can delete api key',13,'delete_apikey');
INSERT INTO `auth_permission` VALUES (40,'Can add products',14,'add_products');
INSERT INTO `auth_permission` VALUES (41,'Can change products',14,'change_products');
INSERT INTO `auth_permission` VALUES (42,'Can delete products',14,'delete_products');
INSERT INTO `auth_permission` VALUES (43,'Can add user profile',15,'add_userprofile');
INSERT INTO `auth_permission` VALUES (44,'Can change user profile',15,'change_userprofile');
INSERT INTO `auth_permission` VALUES (45,'Can delete user profile',15,'delete_userprofile');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$fTDSLv9yq2xj$GlpzWIEj/OFVfYbcRxd4D8zzsJRIow4tZwd5QLl2Zto=','2015-02-06 18:29:11',1,'davechason','','','davidchason@gmail.com',1,1,'2015-02-01 00:01:00');
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
INSERT INTO `clients_client` VALUES (1,'Mike Ovitz','123456789','movitz@ovitz.com','22','123 Baked Goods St','Cell','Talent Agent / Investor','3','December 14, 1946','Married','Taylor','La Lakers Game','Himself','2015/02/01/ovitz.jpg');
INSERT INTO `clients_client` VALUES (2,'Drew Houston','0000000000','drew@dropbox.com','28','Drop Box','Phone','CEO @ Dropbox','3','none','Single','Taylor','Bar','Himself','2015/02/02/drew.jpg');
INSERT INTO `clients_client` VALUES (3,'Mark Zuckerburg','123456789','zuck@facebook.com','28','Facebook inc.','Cell','CEO @ Facebook','3','01/13/1985','Married','Jeff','Coffee Shop','Himself','2015/02/02/zuck.jpg');
INSERT INTO `clients_client` VALUES (4,'Mike Bloomberg','123456789','unclemike@bloomberg.com','old','Hidden','Cell','Former Mayor of NYC','3','/03/18/1959','Married','Will','Del Friscos','Assistant','2015/02/02/unclemike.jpg');
INSERT INTO `clients_client` VALUES (5,'Rob Reiner','123456789','rreiner@madmax.com','67','Hollywood','Cell','Actor','3','March 6, 1947','Married','Taylor','Office','Himself','2015/02/02/rob-reiner-4.jpg');
INSERT INTO `clients_client` VALUES (6,'Arne Sorenson','1238760','arnesorenso@marriot.com','57','Hotel','Cell','Marriot CEO','3','1959','Married','Jeff','Bar','Himself','2015/02/02/headshot.jpg');
INSERT INTO `clients_client` VALUES (7,'Taylor Haddix','814-795-1111','taylor@lapel.co','21','Your moms house','Phone','Drug Dealer','3','8-31-93','wifed up as fuck','jonny carson','Behind the Strip Club','big wally','2015/02/02/taylor.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-02-01 00:18:05','1','Client object',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (2,'2015-02-01 00:18:58','1','Interests object',1,'',10,1);
INSERT INTO `django_admin_log` VALUES (3,'2015-02-01 20:39:31','1','Client object',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (4,'2015-02-01 22:50:31','1','Dave Chason',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (5,'2015-02-02 01:06:22','2','Drew Houston',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (6,'2015-02-02 04:06:50','1','Mike Ovitz',2,'Changed full_name, phone, email, occupation, birthday, relationship_status and meeting_location.',9,1);
INSERT INTO `django_admin_log` VALUES (7,'2015-02-02 04:11:13','3','Mark Zuckerburg',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (8,'2015-02-02 04:15:20','4','Mike Bloomberg',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (9,'2015-02-02 04:26:00','5','Rob Reiner',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (10,'2015-02-02 04:32:54','6','Arne Sorenson',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (11,'2015-02-02 04:34:08','6','Arne Sorenson',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (12,'2015-02-02 04:34:43','6','Arne Sorenson',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (13,'2015-02-02 04:35:13','6','Arne Sorenson',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (14,'2015-02-02 04:36:10','6','Arne Sorenson',2,'Changed profie_pic.',9,1);
INSERT INTO `django_admin_log` VALUES (15,'2015-02-02 06:28:55','7','Taylor Haddix',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (16,'2015-02-03 00:30:18','1','Order object',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (18,'2015-02-03 01:27:16','2','Order object',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (20,'2015-02-03 03:23:40','1','Order object',2,'Changed order_total_price.',7,1);
INSERT INTO `django_admin_log` VALUES (21,'2015-02-04 19:10:32','3','3',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (22,'2015-02-04 19:22:35','3','3',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (23,'2015-02-04 19:22:35','2','2',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (24,'2015-02-04 19:22:35','1','1',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (25,'2015-02-04 19:29:31','3','3',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (26,'2015-02-04 19:43:58','1','Savatore Ferragamo High Top Black Sneakers',1,'',14,1);
INSERT INTO `django_admin_log` VALUES (27,'2015-02-04 22:53:44','2','Versace Sunglasses Black',1,'',14,1);
INSERT INTO `django_admin_log` VALUES (28,'2015-02-06 18:32:45','8','Charlie Manson',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (29,'2015-02-06 18:38:56','9','Jeffrey Dahmer',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (30,'2015-02-06 18:43:15','9','Jeffrey Dahmer',3,'',9,1);
INSERT INTO `django_admin_log` VALUES (31,'2015-02-06 18:43:15','8','Charlie Manson',3,'',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'permission','auth','permission');
INSERT INTO `django_content_type` VALUES (3,'group','auth','group');
INSERT INTO `django_content_type` VALUES (4,'user','auth','user');
INSERT INTO `django_content_type` VALUES (5,'content type','contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'session','sessions','session');
INSERT INTO `django_content_type` VALUES (7,'order','orders','order');
INSERT INTO `django_content_type` VALUES (9,'client','clients','client');
INSERT INTO `django_content_type` VALUES (10,'interests','clients','interests');
INSERT INTO `django_content_type` VALUES (11,'subscriptions','clients','subscriptions');
INSERT INTO `django_content_type` VALUES (12,'api access','tastypie','apiaccess');
INSERT INTO `django_content_type` VALUES (13,'api key','tastypie','apikey');
INSERT INTO `django_content_type` VALUES (14,'products','products','products');
INSERT INTO `django_content_type` VALUES (15,'user profile','page','userprofile');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-02-01 00:00:27');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2015-02-01 00:00:27');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2015-02-01 00:00:27');
INSERT INTO `django_migrations` VALUES (4,'sessions','0001_initial','2015-02-01 00:00:27');
INSERT INTO `django_migrations` VALUES (5,'clients','0001_initial','2015-02-01 00:01:21');
INSERT INTO `django_migrations` VALUES (6,'clients','0002_client_profie_pic','2015-02-01 19:45:20');
INSERT INTO `django_migrations` VALUES (7,'clients','0003_auto_20150201_2038','2015-02-01 20:39:09');
INSERT INTO `django_migrations` VALUES (8,'tastypie','0001_initial','2015-02-04 19:01:22');
INSERT INTO `django_migrations` VALUES (9,'products','0001_initial','2015-02-04 19:18:23');
INSERT INTO `django_migrations` VALUES (10,'products','0002_products_product_pic','2015-02-04 19:40:59');
INSERT INTO `django_migrations` VALUES (11,'page','0001_initial','2015-02-05 17:58:01');
INSERT INTO `django_migrations` VALUES (12,'page','0002_auto_20150205_1802','2015-02-05 18:02:06');
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
INSERT INTO `django_session` VALUES ('eyrlk2rfsfmj7uu6g8b3eeb53yy5tr8e','YWEwNTU3NDk5NDdhOTcxNjY0NDJlYzVmOGI5ZjhiNDVhMGNlMDZkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhMGQyNzNiY2QzNDQzYzZiNmNkN2RlYTAzZjU2MDUwMmI1Mjg5NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-15 00:02:46');
INSERT INTO `django_session` VALUES ('uyf49wkwbk72fi7f38hp8vzfvcyh92dp','YWEwNTU3NDk5NDdhOTcxNjY0NDJlYzVmOGI5ZjhiNDVhMGNlMDZkOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhMGQyNzNiY2QzNDQzYzZiNmNkN2RlYTAzZjU2MDUwMmI1Mjg5NzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-20 18:29:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,3,'Not Shipped','3,000','2015-02-03 00:30:18');
INSERT INTO `orders_order` VALUES (2,1,'Shipped','4,000','2015-02-03 01:27:16');
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
INSERT INTO `products_products` VALUES (1,'Savatore Ferragamo High Top Black Sneakers','Sneakers','none','Black','Calfskin',780,'2015/02/04/604569_00.png');
INSERT INTO `products_products` VALUES (2,'Versace Sunglasses Black','Sunglasses','none','Black','Plastic/Metal',400,'2015/02/04/90_O4289-OGB187_ONUL_20.jpeg');
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
INSERT INTO `products_products_product_order` VALUES (1,1,2);
INSERT INTO `products_products_product_order` VALUES (2,2,2);
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

-- Dump completed on 2015-02-11  0:41:46
