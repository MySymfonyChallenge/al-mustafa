-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: almustafa
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
INSERT INTO `ezbinaryfile` VALUES (833,0,'945f0cb7072e3b4d5101fa73695a876e.jpg','image/jpeg','13 - 1.jpg',1),(847,0,'962de22b116eb4aadb60a0ef73a12769.jpg','image/jpeg','13 - 1.jpg',1);
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',2);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)'),(0,4,'ger-DE','Deutsch');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,2,1481048844,14,'a3d405b81be900468eb153d774f4f0d2','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,2,1482637036,14,'c15b600eb9198b1924063b5a68758232','b:0;','a:1:{s:6:\"eng-GB\";s:7:\"Article\";}',1,1,NULL,0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,2,1483020426,14,'40faa822edc579b02c25f6bb7beec3ad','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"User\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1480380009,14,13,'application',2,0,2,1482887230,14,'5bbf5190e1e47c1bb05d51f6a98adf33','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Application\";}',2,0,'',0),(1,'<title>',1480551193,14,14,'event',2,1,2,1482517052,14,'8b414d609e96ba561a2463bb17a7ef56','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Event\";}',2,0,'',0),(1,'<first_name> <last_name>',1480551381,14,15,'attendee',2,0,2,1483019959,14,'612d38f4afcd632193e0a157eb5a90ef','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Attendee\";}',2,0,'',0),(1,'<name>',1480551543,14,16,'blog',2,1,2,1481073123,14,'2d9f3d0b6c2e6b57cd5864b815cbe5dc','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Blog\";}',2,0,'',0),(1,'<title>',1480551600,14,17,'blog_post',2,0,2,1481335889,14,'b0e4e5af9ed5e162520c9a5654cd65e0','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Blog Post\";}',2,0,'',0),(1,'<title>',1480877045,14,18,'home',2,1,2,1482464128,14,'f57a2f16dc09e0713817861099024d5b','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Home\";}',2,0,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'New article',NULL,NULL,NULL,NULL,'ezstring',1,'title',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring',4,'name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',8,'first_name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"First name\";}',0),(1,'',4,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',9,'last_name',0,1,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:9:\"Last name\";}',0),(0,'',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezuser',12,'user_account',0,1,0,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:12:\"User account\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',119,'short_description',0,0,1,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}',0),(1,'',2,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',121,'body',0,0,1,5,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Body\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezobjectrelation',154,'image',0,0,1,7,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',155,'short_name',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}',0),(1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',156,'description',0,0,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',181,'first_name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',182,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',184,'first_name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',185,'last_name',0,1,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',186,'name',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',187,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',188,'description',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',189,'title',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',190,'description',0,0,0,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',191,'show_menu',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',192,'show_menu',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',193,'publication_date',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',194,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',195,'listing_image',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',196,'cv',0,1,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:2:\"CV\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',197,'last_name',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',198,'image1',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 1\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',199,'image2',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 2\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',200,'image3',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 3\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',201,'image4',0,0,0,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 4\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',202,'image5',0,0,0,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 5\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',203,'image_bottom',0,0,0,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Bottom Image\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',204,'title_bottom',0,0,1,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Title Bottom\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',205,'text_bottom',0,0,0,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Text bottom\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',206,'listing_image',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',207,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',208,'publication_date',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<adjustment><year value=\"0\"/><month value=\"1\"/><day value=\"0\"/><hour value=\"0\"/><minute value=\"0\"/><second value=\"0\"/></adjustment>\n','ezdatetime',209,'deadline',0,0,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Deadline\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',210,'description',0,0,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,400,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',211,'father_name',0,1,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Vorname des Vaters\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Männlich\"/><option id=\"1\" name=\"Weiblich\"/></options></ezselection>\n','ezselection',212,'gender',0,1,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Geschlecht\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',213,'degree',0,1,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Akademischer Grad\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',214,'specification',0,1,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:32:\"Wissenschaftliche Spezifizierung\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',215,'job',0,1,1,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Berufstätigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',217,'confession',0,1,1,11,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Konfession\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',218,'nationality',0,1,1,12,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Staatsangehörigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',219,'experience',0,1,1,13,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:35:\"Erfahrungen im  kulturellen Bereich\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',220,'language',0,1,1,14,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Sprachkenntnisse\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',221,'residence_iran',0,1,1,15,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:30:\"Aufenthaltserfahrungen im Iran\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',222,'show_menu',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',225,'birthday',0,1,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Birthday\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',226,'birthday',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Geburstag\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(2,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(5,0,3,'Media'),(12,0,3,'Media'),(13,0,4,'Al-mustafa'),(14,0,4,'Al-mustafa'),(15,0,4,'Al-mustafa'),(16,0,4,'Al-mustafa'),(17,0,4,'Al-mustafa'),(18,0,4,'Al-mustafa');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,2,'eng-GB','Folder'),(2,0,2,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,2,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(12,0,3,'eng-GB','File'),(13,0,2,'eng-GB','Application'),(14,0,2,'eng-GB','Event'),(15,0,2,'eng-GB','Attendee'),(16,0,2,'eng-GB','Blog'),(17,0,2,'eng-GB','Blog Post'),(18,0,2,'eng-GB','Home');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1480380006,14,4,1480380006,14,'Al-mustafa');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,8,14,2,3,1482635649,'Amir Koklan',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(4,1,54,2,3,1480382570,'Amir Test Amir Test',14,1480382570,'0e290e8ddd593c956ce978e920688f08',2,1),(1,2,63,4,5,1482639020,'Über uns',14,1480886445,'cb42c6d41024ba0dd623dc35854e184e',1,1),(1,3,65,4,5,1482635717,'Studium',14,1480901813,'61b7594e99cb23db57ef56c11c3de084',1,1),(1,4,69,4,5,1482638367,'Forschung',14,1480902015,'76db0e8d7ba793509c928fc2f34257d8',1,1),(16,3,75,4,5,1482540280,'Veranstaltungen',14,1480987917,'ac532cf14bfd97ad0a7ce203df7a373e',1,1),(17,4,76,4,7,1482469213,'First Blog',14,1481073301,'002610dba64998387f0b932633c3c2d5',1,1),(16,1,77,4,5,1481239640,'Forschungreisen',14,1481239640,'d95ec8497384a566d659e880b153fc48',1,1),(14,8,80,4,5,1482518590,'Qom 2016',14,1481337197,'6b926032c7c2b1bbf03523da6a531afd',1,1),(17,2,101,4,5,1482469064,'Lorem Ipsum ist ein einfacher Demo',14,1482467232,'5e5309153f03b3c4c85858f0f33c43b7',1,1),(17,1,102,4,5,1482509239,'Blog Post 3',14,1482509239,'646fe62915471b7c80fc4615a44f8e52',1,1),(5,1,103,2,3,1482517381,'Qom2',14,1482517381,'db48b64037838563cc252b8f6958271f',3,1),(2,2,105,4,4,1482636168,'Islamische Theologie (B.A.)',14,1482635909,'9272d5ab2c0b67e2c2b241f009c95fbd',1,1),(2,1,106,4,4,1482636598,'Modulhandbuch',14,1482636598,'2419dbfb219bcb8809af8c184b0cc693',1,1),(2,1,107,4,4,1482636915,'Kooperation',14,1482636915,'b1a223a5781fb066257f6a246cc105c8',1,1),(2,2,108,4,4,1482636982,'Dozenten',14,1482636972,'eb30ea631fb23642ff614acf9eeeea51',1,1),(2,2,109,4,4,1482653720,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)',14,1482637147,'759d2c8442383009a76941279273a035',1,1),(2,1,110,4,4,1482638406,'Forschungsprojekte',14,1482638406,'748146f858e9899026093e6c48f910d2',1,1),(2,1,111,4,4,1482638615,'Publikationen',14,1482638615,'cb9ca9c84ac4dbc6f519b9fdaf6f3b10',1,1),(2,1,112,4,4,1482638662,'Institutszeitschrift',14,1482638662,'7097ab9fb88d2c4b6b57e01768839119',1,1),(2,2,113,4,4,1483059690,'Über uns',14,1482638992,'abb9b6480838b1e2bb934a10321bdafd',1,1),(2,2,114,4,4,1482639083,'Partneruniversität',14,1482639073,'51774f50cd9e8d93f0213873b6c18320',1,1),(2,2,115,4,4,1482639182,'Impressum',14,1482639161,'a43053a773d03e857883bdfd46ebf551',1,1),(2,1,116,4,4,1482641127,'Kontakt',14,1482641127,'ec09d6de676e9b4a8f615ad5633e4a34',1,1),(5,1,117,2,3,1482653677,'Esfahani',14,1482653677,'70c1448508ee0d7a42ba9ad3c3d251fd',3,1),(18,4,146,4,5,1483018413,'AL Mustafa',14,1482887849,'3453d7924566e8cb4be9a2e764b8b3d6',1,1),(1,1,147,4,5,1482887942,'Applications',14,1482887942,'e1fe0c15a4f8cfe783893eee1c0e825c',1,1),(14,1,151,4,5,1482946564,'Qom 2018',14,1482946564,'9ce075290e8f5e81a3d86333e733a8b7',1,1),(15,1,154,4,4,1483022177,'Amir Koklan',14,1483022177,'24ae94028eaa9a479bfeb4cc9e7e4893',1,2),(15,1,155,4,4,1483027597,'Amir Koklan',14,1483027597,'122a02bc6990b594044e353feaaa4ecd',1,2);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,8,14,NULL,NULL,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',5),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',6),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',7),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',8),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(0,9,14,NULL,NULL,'User','ezstring',29,'eng-GB',3,0,'user',4),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',5),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',6),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',7),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',8),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',4),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',5),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',6),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',7),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',8),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',105,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',126,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',145,'eng-GB',3,0,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',150,'eng-GB',3,0,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',155,'eng-GB',3,0,'',1),(0,8,54,NULL,NULL,'Amir Test','ezstring',186,'eng-GB',3,0,'amir test',1),(0,9,54,NULL,NULL,'Amir Test','ezstring',187,'eng-GB',3,0,'amir test',1),(0,12,54,NULL,NULL,NULL,'ezuser',188,'eng-GB',3,0,'',1),(0,4,63,NULL,NULL,'Über uns','ezstring',204,'ger-DE',5,0,'über uns',1),(0,4,63,NULL,NULL,'Über uns','ezstring',204,'ger-DE',5,0,'über uns',2),(0,155,63,NULL,NULL,'Über uns','ezstring',205,'ger-DE',5,0,'über uns',1),(0,155,63,NULL,NULL,'Über uns','ezstring',205,'ger-DE',5,0,'über uns',2),(0,119,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hi There</para></section>\n','ezrichtext',206,'ger-DE',5,0,'',1),(0,119,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',206,'ger-DE',5,0,'',2),(0,156,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hello!</para></section>\n','ezrichtext',207,'ger-DE',5,0,'',1),(0,156,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',207,'ger-DE',5,0,'',2),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',1),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',2),(0,4,65,NULL,NULL,'Studium','ezstring',212,'ger-DE',5,0,'studium',3),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',1),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',2),(0,155,65,NULL,NULL,'Studium','ezstring',213,'ger-DE',5,0,'studium',3),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',1),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',2),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',3),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',1),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',2),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',3),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',1),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',2),(0,4,69,NULL,NULL,'Forschungsprojekte','ezstring',228,'ger-DE',5,0,'forschungsprojekte',3),(0,4,69,NULL,NULL,'Forschung','ezstring',228,'ger-DE',5,0,'forschung',4),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',1),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',2),(0,155,69,NULL,NULL,'Forschungsprojekte','ezstring',229,'ger-DE',5,0,'forschungsprojekte',3),(0,155,69,NULL,NULL,'Forschung','ezstring',229,'ger-DE',5,0,'forschung',4),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',1),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',2),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',3),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',4),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',1),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',2),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',3),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',4),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',1),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',2),(0,186,75,NULL,NULL,'Veranstaltungen','ezstring',252,'ger-DE',5,0,'veranstaltungen',3),(0,191,41,NULL,0,NULL,'ezboolean',254,'eng-GB',3,0,'',1),(0,191,45,NULL,0,NULL,'ezboolean',255,'eng-GB',3,0,'',1),(0,191,49,NULL,0,NULL,'ezboolean',256,'eng-GB',3,0,'',1),(0,191,50,NULL,0,NULL,'ezboolean',257,'eng-GB',3,0,'',1),(0,191,51,NULL,0,NULL,'ezboolean',258,'eng-GB',3,0,'',1),(0,191,63,NULL,0,NULL,'ezboolean',261,'ger-DE',5,0,'',1),(0,191,63,NULL,1,NULL,'ezboolean',261,'ger-DE',5,1,'',2),(0,191,65,NULL,0,NULL,'ezboolean',263,'ger-DE',5,0,'',1),(0,191,65,NULL,1,NULL,'ezboolean',263,'ger-DE',5,1,'',2),(0,191,65,NULL,1,NULL,'ezboolean',263,'ger-DE',5,1,'',3),(0,191,69,NULL,0,NULL,'ezboolean',267,'ger-DE',5,0,'',1),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',2),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',3),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',4),(0,192,75,NULL,0,NULL,'ezboolean',273,'ger-DE',5,0,'',1),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',2),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',1),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',2),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',1),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',2),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',4),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',1),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',2),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',3),(0,193,76,NULL,1480546800,NULL,'ezdate',276,'ger-DE',5,1480546800,'',4),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',1),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',2),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',3),(0,194,76,NULL,NULL,'If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.','eztext',277,'ger-DE',5,0,'',4),(0,195,76,NULL,NULL,NULL,'ezimage',278,'ger-DE',5,0,'',1),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481074441\">\n  <original attribute_id=\"278\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',2),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"278\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"278\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',4),(0,186,77,NULL,NULL,'Forschungreisen','ezstring',279,'ger-DE',5,0,'forschungreisen',1),(0,192,77,NULL,1,NULL,'ezboolean',280,'ger-DE',5,1,'',1),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',4),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',3),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',4),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',3),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',4),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"295\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"295\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',4),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',3),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',4),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',5),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',6),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',7),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',8),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',1),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',2),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',1),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',2),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',1),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',2),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',1),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',2),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/6/7/3/0/376-1-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467232\">\n  <original attribute_id=\"376\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',1),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469064\">\n  <original attribute_id=\"376\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',2),(0,187,102,NULL,NULL,'Blog Post 3','ezstring',377,'ger-DE',5,0,'blog post 3',1),(0,188,102,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks)</para></section>\n','ezrichtext',378,'ger-DE',5,0,'',1),(0,193,102,NULL,1482447600,NULL,'ezdate',379,'ger-DE',5,1482447600,'',1),(0,194,102,NULL,NULL,'Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks)','eztext',380,'ger-DE',5,0,'',1),(0,195,102,NULL,NULL,NULL,'ezimage',381,'ger-DE',5,0,'',1),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482516265\">\n  <original attribute_id=\"382\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',3),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517091\">\n  <original attribute_id=\"382\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',4),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517478\">\n  <original attribute_id=\"382\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',5),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518220\">\n  <original attribute_id=\"382\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',6),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518440\">\n  <original attribute_id=\"382\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',7),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518590\">\n  <original attribute_id=\"382\" attribute_version=\"8\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',8),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',3),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',4),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',5),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',6),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',7),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',8),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',3),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',4),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',5),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',6),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',7),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',8),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',3),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',4),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',5),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',6),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',7),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',8),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',386,'ger-DE',5,0,'',3),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para></section>\n','ezrichtext',386,'ger-DE',5,0,'',4),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',5),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',6),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',7),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',8),(0,116,103,NULL,NULL,'Qom2','ezstring',387,'eng-GB',3,0,'qom2',1),(0,117,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',388,'eng-GB',3,0,'',1),(0,118,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Qom1.jpg\"\n    suffix=\"jpg\" basename=\"Qom1\" dirpath=\"var/site/storage/images/9/8/3/0/389-1-eng-GB\" url=\"var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg\"\n    original_filename=\"Qom1.jpg\" mime_type=\"image/jpeg\" width=\"1438\"\n    height=\"900\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517381\">\n  <original attribute_id=\"389\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"900\" Width=\"1438\" IsColor=\"1\"/>\n</ezimage>','ezimage',389,'eng-GB',3,0,'',1),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',1),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',2),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Zulassungsvoraussetzungen </para><para>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para>Bewerbung </para><para>Bewerbungszeitraum: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para>Gebühren </para><para>Inhalte </para><para>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen </para><para>(hier die Broschüre und wenn man drauf klickt erscheint die ganze Brsoschüre mit den Inhalten zu dem Studium)     </para><para> </para><para>Kenndaten </para><para>Zulassungsbeschränkung, Studienbeginn, Art des Bachelor (Mono- oder Kombi-Bachelor), Regelstudienzeit, etc. </para><para> </para><para>Studienaufbau </para><para>Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para>Berufsperspektiven </para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist><para>Literatur </para><para>Beispiel (dient der Gestaltung): Kitāb al-ʿAyn (Alef Verlag, 2003); Musnad as-Sanadayn (Berta Verlag, 1996); Mağmuʿ al-ʿAṣāfīr (Fair-Lag, 2012) </para></section>\n','ezrichtext',440,'ger-DE',4,0,'',1),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Zulassungsvoraussetzungen </para><para>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para>Bewerbung </para><para>Bewerbungszeitraum: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para>Gebühren </para><para>Inhalte </para><para>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen </para><para>(hier die Broschüre und wenn man drauf klickt erscheint die ganze Brsoschüre mit den Inhalten zu dem Studium)     </para><para> </para><para>Kenndaten </para><para>Zulassungsbeschränkung, Studienbeginn, Art des Bachelor (Mono- oder Kombi-Bachelor), Regelstudienzeit, etc. </para><para> </para><para>Studienaufbau </para><para>Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para>Berufsperspektiven </para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist><para>Literatur </para><para>Beispiel (dient der Gestaltung): Kitāb al-ʿAyn (Alef Verlag, 2003); Musnad as-Sanadayn (Berta Verlag, 1996); Mağmuʿ al-ʿAṣāfīr (Fair-Lag, 2012) </para></section>\n','ezrichtext',440,'ger-DE',4,0,'',2),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',1),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',2),(0,222,105,NULL,0,NULL,'ezboolean',443,'ger-DE',4,0,'',1),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',2),(0,1,106,NULL,NULL,'Modulhandbuch','ezstring',444,'ger-DE',4,0,'modulhandbuch',1),(0,121,106,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Koran gilt im islamischen Glauben als Wort Gottes, das dem Propheten Muhammad zwischen 610 und 632 offenbart wurde. Die von Muhammad verkündeten Worte wurden zu seinen Lebzeiten sowohl mündlich überliefert als auch  schriftlich fixiert. Die wissenschaftliche Überzeugung, damit liege der Originaltext vor, prägte die Koranrezeption der Muslime entscheidend. Im Laufe der Geschichte wurde der Korantext fortwährend als solcher rezitiert, rezipiert und interpretiert.</para><para>Im Zuge dieser rezeptionsgeschichtlichen Entwicklung entstanden viele wissenschaftliche Disziplinen, in denen der Koran mit seinem Offenbarungscharakter im Zentrum steht. Angesichts einer fehlenden institutionalisierten religiösen Kontrollinstanz, die den christlichen Kirchen vergleichbar wäre, hat sich bei Muslimen eine historisch vielschichtige und diskussionsfreudige Auslegungskultur entwickelt, die außerfachliche Kenntnisse vorbehaltlos integrierte. So widmeten sich die koranwissenschaftlichen und -exegetischen Disziplinen der Textgenese, sprachlichen Struktur und Interpretation des Korans und setzten sich mit Fragen nach seiner Historizität, Kontextualität, Intertextualität und Intratextualität auseinander.</para><para>Jenseits der wortwörtlichen Verstehens- und Deutungsweise haben sich verschiedene Formen der Koranauslegung etabliert, denen das Überlieferungsgut und die eigene Meinung sowie die innere und mystische Erfahrung zugrunde liegen. Eine ausgewiesene Koranwissenschaft setzt sich daher u.a. mit der Bedeutung und aktuellen Relevanz des Offenbartseins des Korans, seiner Entstehungs- und Textwerdungsgeschichte sowie den Koranauslegungstraditionen in sunnitischen, schiitischen und anderen Richtungen auseinander.</para><para>Einen weiteren Schwerpunkt bildet die Erschließung der jüdischen und christlichen exegetischen Traditionen sowie der modernen Kommunikationstheorien und historisch-kritischen Methoden.</para></section>\n','ezrichtext',448,'ger-DE',4,0,'',1),(0,154,106,NULL,NULL,NULL,'ezobjectrelation',449,'ger-DE',4,0,'',1),(0,222,106,NULL,1,NULL,'ezboolean',450,'ger-DE',4,1,'',1),(0,1,107,NULL,NULL,'Kooperation','ezstring',451,'ger-DE',4,0,'kooperation',1),(0,121,107,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Studiengang Islamische Theologie (B.A.) wird in Kooperation mit der Al-Mustafa Universität (raufklicken um auf folgenden Link weitergeleitet zu werden: <link xlink:href=\"ezurl://30\" xlink:show=\"none\">http://en.miu.ac.ir/</link>) in Qum, Iran angeboten. Das Al-Mustafa Institut in Berlin handelt als Bevollmächtigter (Link zur Vollmacht) der Universität. Die im Laufe des Studiums auszuhändigenden Zeugnisse stammen von der Universität im Iran. </para></section>\n','ezrichtext',455,'ger-DE',4,0,'',1),(0,154,107,NULL,NULL,NULL,'ezobjectrelation',456,'ger-DE',4,0,'',1),(0,222,107,NULL,1,NULL,'ezboolean',457,'ger-DE',4,1,'',1),(0,1,108,NULL,NULL,'Dozenten','ezstring',458,'ger-DE',4,0,'dozenten',1),(0,1,108,NULL,NULL,'Dozenten','ezstring',458,'ger-DE',4,0,'dozenten',2),(0,121,108,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Prof. Dr. Max Mustermann (alle mit Klickmöglichkeit --&gt; Weiterführung zum CV) </para><para>(Islamische Theologie, Islamische Geschichte) </para><para> </para><para>Prof. Dr. Mix Musterfrau </para><para>(Fiqh) </para><para> </para><para>PD Dr. Hamid Reza Yousefi </para><para>(Das was er kann) </para><para> </para><para>Dr. Dr. des. Mahdi Esfahani (Beispielseite vorhanden) </para><para>(Islamische Ethik, etc.) </para><para> </para><para>Tim Leibner </para><para>(Arabisch I, II, III &amp; IV) </para><para> </para><para>Hassan Sadeghi </para><para>(Koranrezitation)</para></section>\n','ezrichtext',462,'ger-DE',4,0,'',1),(0,121,108,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Prof. Dr. Max Mustermann (alle mit Klickmöglichkeit --&gt; Weiterführung zum CV) </para><para>(Islamische Theologie, Islamische Geschichte) </para><para> </para><para>Prof. Dr. Mix Musterfrau </para><para>(Fiqh) </para><para> </para><para>PD Dr. Hamid Reza Yousefi </para><para>(Das was er kann) </para><para> </para><para>Dr. Dr. des. Mahdi Esfahani (Beispielseite vorhanden) </para><para>(Islamische Ethik, etc.) </para><para> </para><para>Tim Leibner </para><para>(Arabisch I, II, III &amp; IV) </para><para> </para><para>Hassan Sadeghi </para><para>(Koranrezitation)</para></section>\n','ezrichtext',462,'ger-DE',4,0,'',2),(0,154,108,NULL,NULL,NULL,'ezobjectrelation',463,'ger-DE',4,0,'',1),(0,154,108,NULL,NULL,NULL,'ezobjectrelation',463,'ger-DE',4,0,'',2),(0,222,108,NULL,0,NULL,'ezboolean',464,'ger-DE',4,0,'',1),(0,222,108,NULL,1,NULL,'ezboolean',464,'ger-DE',4,1,'',2),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani (unterrubrik von dozenten)',1),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani (unterrubrik von dozenten)',2),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>C.V. Mahdi Esfahani  </para><para>  </para><para> PERSONAL DATAS  </para><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para>Address: Königsbergerstr No. 21, </para><para>12207 Berlin, Germany </para><para>Tel.: 0049 17662884688  </para><para>E-Mail: mahdi313esf@gmail.com, mahdi.esfahani@fu-berlin.de </para><para> </para><para>EDUCATION </para><para> </para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative EthicsFreie Universität Berlin, supervisor:Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>1 <link xlink:href=\"ezurl://31\" xlink:show=\"none\">http://irip.ir/</link> </para><para>2 <link xlink:href=\"ezurl://32\" xlink:show=\"none\">http://jelveh.org/</link> </para><para>3 <link xlink:href=\"ezurl://33\" xlink:show=\"none\">www.ihcs.ac.ir2</link>  </para><para>  </para><para> </para><para>WORKAND TEACHNGEXPERIENCES </para><para> </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>  </para><para>CONFERENCES &amp; PRESENTATIONS </para><para> </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>  </para><para>  </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>PUBLICATIONS </para><para> </para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013. </para><para> </para><para>   </para><para>  </para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para> </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para> </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para> </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para> </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para><para>  </para><para>4 <link xlink:href=\"ezurl://34#more-91\" xlink:show=\"none\">http://sis-de.com/?p=91#more-91</link> </para><para>5 <link xlink:href=\"ezurl://35#more-211\" xlink:show=\"none\">http://sis-de.com/?p=211#more-211</link> </para><para>6 <link xlink:href=\"ezurl://36\" xlink:show=\"none\">http://sis-de.com/?p=179</link> </para><para>7 <link xlink:href=\"ezurl://37\" xlink:show=\"none\">http://sis-de.com/?p=59</link> </para><para> </para><para>RESEARCH FUNDING </para><para> </para><para>Fund for Philosophical mystical interpretation of Qur’an, anetymological Dictionary of Qur’ānic roots and translation of Qur’an based on etymological investigations in German language, Directorof Project. </para><para>Fund for introductionseriesto Islamic Studies in 10 Volumes in German Language,from 10.2014, Head Editor and Project Director. </para><para>Fund for 5 Volumes Islamic Teachings booksfor children and youth, Project Director. </para><para>Ph.D stipend for 3 years, from 1.7.2010 to 1.7.2013. </para><para>  </para><para>  </para><para>LANGUAGE SKILLS </para><para> </para><para>German: Advanced </para><para>English: Advanced  </para><para>Arabic: Expert </para><para>Persian: Native speaker, as well as knowledge of the ancient Persian language </para><para>Ancient Greek: passive  </para><para> </para><para>  </para><para> </para><para>References List (Dr. Mahdi Esfahani) </para><para> </para><para>1. Prof. Dr. Michael Bongardt </para><para>  </para><para>He is my Professor in Postdoc studies (Habilitation and Research Project) at Free University of Berlin and head of Institute of comparative ethics in Free University of  Berlin </para><para>Email: mbongard@zedat.fu-berlin.de </para><para> </para><para>2. Prof. Dr. Günter Frank </para><para>  </para><para>He was my Professor (second Ph.D.) at Free University of Berlin and Director of Melanchton Academy in Bretten, Germany.Now he is Philosophy Professor in Karlsruhe Institute of Technology. </para><para>Email: dr.frank@melanchthon.com </para><para> </para><para>3. Prof. Dr. Mohammad Reza Beheshti </para><para>  </para><para>He is a professor of western Philosophy in Tehran University and Director of philosophy department in Iran’s Academyof Arts. He wassupervisor of my first Ph.D. in Tehran. </para><para>Email: drmrhosseini@yahoo.com</para></section>\n','ezrichtext',466,'ger-DE',4,0,'',1),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para>C.V. Mahdi Esfahani  </para><para>  </para><para> PERSONAL DATAS  </para><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para>Address: Königsbergerstr No. 21, </para><para>12207 Berlin, Germany </para><para>Tel.: 0049 17662884688  </para><para>E-Mail: mahdi313esf@gmail.com, mahdi.esfahani@fu-berlin.de </para><para> </para><para>EDUCATION </para><para> </para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative EthicsFreie Universität Berlin, supervisor:Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>1 <link xlink:href=\"ezurl://31\" xlink:show=\"none\">http://irip.ir/</link> </para><para>2 <link xlink:href=\"ezurl://32\" xlink:show=\"none\">http://jelveh.org/</link> </para><para>3 <link xlink:href=\"ezurl://33\" xlink:show=\"none\">www.ihcs.ac.ir2</link>  </para><para>  </para><para> </para><para>WORKAND TEACHNGEXPERIENCES </para><para> </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>  </para><para>CONFERENCES &amp; PRESENTATIONS </para><para> </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>  </para><para>  </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>PUBLICATIONS </para><para> </para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013. </para><para> </para><para>   </para><para>  </para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para> </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para> </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para> </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para> </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para><para>  </para><para>4 <link xlink:href=\"ezurl://34#more-91\" xlink:show=\"none\">http://sis-de.com/?p=91#more-91</link> </para><para>5 <link xlink:href=\"ezurl://35#more-211\" xlink:show=\"none\">http://sis-de.com/?p=211#more-211</link> </para><para>6 <link xlink:href=\"ezurl://36\" xlink:show=\"none\">http://sis-de.com/?p=179</link> </para><para>7 <link xlink:href=\"ezurl://37\" xlink:show=\"none\">http://sis-de.com/?p=59</link> </para><para> </para><para>RESEARCH FUNDING </para><para> </para><para>Fund for Philosophical mystical interpretation of Qur’an, anetymological Dictionary of Qur’ānic roots and translation of Qur’an based on etymological investigations in German language, Directorof Project. </para><para>Fund for introductionseriesto Islamic Studies in 10 Volumes in German Language,from 10.2014, Head Editor and Project Director. </para><para>Fund for 5 Volumes Islamic Teachings booksfor children and youth, Project Director. </para><para>Ph.D stipend for 3 years, from 1.7.2010 to 1.7.2013. </para><para>  </para><para>  </para><para>LANGUAGE SKILLS </para><para> </para><para>German: Advanced </para><para>English: Advanced  </para><para>Arabic: Expert </para><para>Persian: Native speaker, as well as knowledge of the ancient Persian language </para><para>Ancient Greek: passive  </para><para> </para><para>  </para><para> </para><para>References List (Dr. Mahdi Esfahani) </para><para> </para><para>1. Prof. Dr. Michael Bongardt </para><para>  </para><para>He is my Professor in Postdoc studies (Habilitation and Research Project) at Free University of Berlin and head of Institute of comparative ethics in Free University of  Berlin </para><para>Email: mbongard@zedat.fu-berlin.de </para><para> </para><para>2. Prof. Dr. Günter Frank </para><para>  </para><para>He was my Professor (second Ph.D.) at Free University of Berlin and Director of Melanchton Academy in Bretten, Germany.Now he is Philosophy Professor in Karlsruhe Institute of Technology. </para><para>Email: dr.frank@melanchthon.com </para><para> </para><para>3. Prof. Dr. Mohammad Reza Beheshti </para><para>  </para><para>He is a professor of western Philosophy in Tehran University and Director of philosophy department in Iran’s Academyof Arts. He wassupervisor of my first Ph.D. in Tehran. </para><para>Email: drmrhosseini@yahoo.com</para></section>\n','ezrichtext',466,'ger-DE',4,0,'',2),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',1),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',2),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',1),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',2),(0,1,110,NULL,NULL,'Forschungsprojekte','ezstring',469,'ger-DE',4,0,'forschungsprojekte',1),(0,121,110,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eine der primären Ambitionen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung islamischer Studien im akademisch-deutschsprachigen Raum. Zu diesem Zwecke werden in Kooperation mit deutschsprachigen Wissenschaftlern auf den Gebieten der Arabistik, Iranistik, Islamwissenschaften und Orientalistik Bücher verfasst und/oder ins Deutsche übersetzt. Ferner verfolgt das Al-Mustafa Institut das Vorhaben in kontinuierlichen Perioden ein wissenschaftliches Magazin rund um das Thema islamische Studien zu publizieren.</para></section>\n','ezrichtext',470,'ger-DE',4,0,'',1),(0,154,110,NULL,NULL,NULL,'ezobjectrelation',471,'ger-DE',4,0,'',1),(0,222,110,NULL,1,NULL,'ezboolean',472,'ger-DE',4,1,'',1),(0,1,111,NULL,NULL,'Publikationen','ezstring',473,'ger-DE',4,0,'publikationen',1),(0,121,111,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eines der Hauptanliegen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung von Publikationen deutschsprachiger Schriften rund um das Thema islamische Studien. In diesem Kontext steht das Al-Mustafa Institut in Kooperation mit einer Reihe von Wissenschaftlern, um Übersetzungen (etc.) auf akademischen Niveau (usw.) zu ermöglichen.  --&gt; im Anschluss Vorstellung verschiedener Projekte: Übersetzungen, Bücher verfassen, wissenschaftliches Magazin, etc.</para></section>\n','ezrichtext',474,'ger-DE',4,0,'',1),(0,154,111,NULL,NULL,NULL,'ezobjectrelation',475,'ger-DE',4,0,'',1),(0,222,111,NULL,1,NULL,'ezboolean',476,'ger-DE',4,1,'',1),(0,1,112,NULL,NULL,'Institutszeitschrift','ezstring',477,'ger-DE',4,0,'institutszeitschrift',1),(0,121,112,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hier kommt immer ein Bild hin mit der neuesten Zeitschrift und seiner Themen.</para></section>\n','ezrichtext',478,'ger-DE',4,0,'',1),(0,154,112,NULL,NULL,NULL,'ezobjectrelation',479,'ger-DE',4,0,'',1),(0,222,112,NULL,1,NULL,'ezboolean',480,'ger-DE',4,1,'',1),(0,1,113,NULL,NULL,'Über uns','ezstring',481,'ger-DE',4,0,'über uns',1),(0,1,113,NULL,NULL,'Über uns','ezstring',481,'ger-DE',4,0,'über uns',2),(0,121,113,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><itemizedlist><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem></itemizedlist></section>\n','ezrichtext',482,'ger-DE',4,0,'',1),(0,121,113,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><itemizedlist><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem></itemizedlist></section>\n','ezrichtext',482,'ger-DE',4,0,'',2),(0,154,113,NULL,NULL,NULL,'ezobjectrelation',483,'ger-DE',4,0,'',1),(0,154,113,NULL,NULL,NULL,'ezobjectrelation',483,'ger-DE',4,0,'',2),(0,222,113,NULL,1,NULL,'ezboolean',484,'ger-DE',4,1,'',1),(0,222,113,NULL,1,NULL,'ezboolean',484,'ger-DE',4,1,'',2),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',1),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',2),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>die Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para> </para><para>Einige Tochterinstitute der al-Mustafa Universität in Iran:  </para><para> </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para> </para><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para> </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para> </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para> </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para> </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',1),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>die Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para> </para><para>Einige Tochterinstitute der al-Mustafa Universität in Iran:  </para><para> </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para> </para><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para> </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para> </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para> </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para> </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',2),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',1),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',2),(0,222,114,NULL,0,NULL,'ezboolean',488,'ger-DE',4,0,'',1),(0,222,114,NULL,1,NULL,'ezboolean',488,'ger-DE',4,1,'',2),(0,1,115,NULL,NULL,'New article','ezstring',489,'ger-DE',4,0,'new article',1),(0,1,115,NULL,NULL,'Impressum','ezstring',489,'ger-DE',4,0,'impressum',2),(0,121,115,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Angaben gemäß § 5 TMG: </para><para> </para><para> </para><para>Al-Mustafa Institut für Kultur-, Humanwissenschaften und Islamische Studien gemeinnützige GmbH </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Vertreten durch den Vorsitzenden:  </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin  </para><para> </para><para> </para><para>Kontakt: </para><para> </para><para>Tel.: 030 / 407 410 71 </para><para>E-Mail: info@almustafa.de </para><para>Web: <link xlink:href=\"ezurl://38\" xlink:show=\"none\">www.almustafa.de</link> </para><para> </para><para> </para><para>Registergericht: Amtsgericht Berlin - Charlottenburg </para><para>Registernummer: HRB 177538 B </para><para> </para><para> </para><para>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV: </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Haftungsausschluss (Disclaimer) </para><para> </para><para>Haftung für Inhalte </para><para> </para><para>Als Dienstanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen. </para><para> </para><para>Haftung für Links </para><para> </para><para>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen. </para><para> </para><para>Urheberrecht </para><para> </para><para>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen. </para><para>  </para><para>Datenschutzerklärung: </para><para> </para><para>Datenschutz </para><para> </para><para>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben. </para><para> </para><para>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich. </para><para> </para><para>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor. </para></section>\n','ezrichtext',490,'ger-DE',4,0,'',1),(0,121,115,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Angaben gemäß § 5 TMG: </para><para> </para><para> </para><para>Al-Mustafa Institut für Kultur-, Humanwissenschaften und Islamische Studien gemeinnützige GmbH </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Vertreten durch den Vorsitzenden:  </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin  </para><para> </para><para> </para><para>Kontakt: </para><para> </para><para>Tel.: 030 / 407 410 71 </para><para>E-Mail: info@almustafa.de </para><para>Web: <link xlink:href=\"ezurl://38\" xlink:show=\"none\">www.almustafa.de</link> </para><para> </para><para> </para><para>Registergericht: Amtsgericht Berlin - Charlottenburg </para><para>Registernummer: HRB 177538 B </para><para> </para><para> </para><para>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV: </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Haftungsausschluss (Disclaimer) </para><para> </para><para>Haftung für Inhalte </para><para> </para><para>Als Dienstanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen. </para><para> </para><para>Haftung für Links </para><para> </para><para>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen. </para><para> </para><para>Urheberrecht </para><para> </para><para>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen. </para><para>  </para><para>Datenschutzerklärung: </para><para> </para><para>Datenschutz </para><para> </para><para>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben. </para><para> </para><para>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich. </para><para> </para><para>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor. </para></section>\n','ezrichtext',490,'ger-DE',4,0,'',2),(0,154,115,NULL,NULL,NULL,'ezobjectrelation',491,'ger-DE',4,0,'',1),(0,154,115,NULL,NULL,NULL,'ezobjectrelation',491,'ger-DE',4,0,'',2),(0,222,115,NULL,1,NULL,'ezboolean',492,'ger-DE',4,1,'',1),(0,222,115,NULL,0,NULL,'ezboolean',492,'ger-DE',4,0,'',2),(0,1,116,NULL,NULL,'Kontakt','ezstring',493,'ger-DE',4,0,'kontakt',1),(0,121,116,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In der offenen Sprechstunde erhalten Sie Informationen zum Studiengang Islamische Theologie (B.A.). Gerne beantworten wir auch Fragen zum Bewerbungs- und Zulassungsverfahren vor Ort. </para><para> </para><para>Adresse: </para><para>          Al-Mustafa Institut </para><para>          Hardenbergstr. 8 </para><para>          10623 Berlin </para><para> </para><para>Sprechzeiten:  </para><para>Dienstag                  12 – 14 Uhr </para><para>Donnerstag             16 – 18 Uhr </para></section>\n','ezrichtext',494,'ger-DE',4,0,'',1),(0,154,116,NULL,NULL,NULL,'ezobjectrelation',495,'ger-DE',4,0,'',1),(0,222,116,NULL,0,NULL,'ezboolean',496,'ger-DE',4,0,'',1),(0,116,117,NULL,NULL,'Esfahani','ezstring',497,'eng-GB',3,0,'esfahani',1),(0,117,117,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',498,'eng-GB',3,0,'',1),(0,118,117,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"image.png\"\n    suffix=\"png\" basename=\"image\" dirpath=\"var/site/storage/images/9/9/4/0/499-1-eng-GB\" url=\"var/site/storage/images/9/9/4/0/499-1-eng-GB/image.png\"\n    original_filename=\"image.png\" mime_type=\"image/png\" width=\"493\"\n    height=\"329\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482653677\">\n  <original attribute_id=\"499\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"329\" Width=\"493\" IsColor=\"1\"/>\n</ezimage>','ezimage',499,'eng-GB',3,0,'',1),(0,189,146,NULL,NULL,'AL Mustafa','ezstring',781,'ger-DE',5,0,'al mustafa',1),(0,189,146,NULL,NULL,'AL Mustafa','ezstring',781,'ger-DE',5,0,'al mustafa',2),(0,189,146,NULL,NULL,'AL Mustafa','ezstring',781,'ger-DE',5,0,'al mustafa',3),(0,189,146,NULL,NULL,'AL Mustafa','ezstring',781,'ger-DE',5,0,'al mustafa',4),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',1),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',2),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',3),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',4),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"783\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',1),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946340\">\n  <original attribute_id=\"783\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',2),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946389\">\n  <original attribute_id=\"783\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',3),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"https://twitter.com/\" alias_key=\"1293033771\" timestamp=\"1483018413\">\n  <original attribute_id=\"783\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',4),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"784\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',1),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946340\">\n  <original attribute_id=\"784\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',2),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946389\">\n  <original attribute_id=\"784\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',3),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483018413\">\n  <original attribute_id=\"784\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',4),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"785\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',1),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946340\">\n  <original attribute_id=\"785\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',2),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946389\">\n  <original attribute_id=\"785\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',3),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483018413\">\n  <original attribute_id=\"785\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',4),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',1),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',2),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',3),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',4),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',1),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',2),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',3),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',4),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"788\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',1),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946340\">\n  <original attribute_id=\"788\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',2),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482946389\">\n  <original attribute_id=\"788\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',3),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483018413\">\n  <original attribute_id=\"788\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',4),(0,204,146,NULL,NULL,'Al-Mustafa Universität','ezstring',789,'ger-DE',5,0,'al-mustafa universität',1),(0,204,146,NULL,NULL,'Hasan','ezstring',789,'ger-DE',5,0,'hasan',2),(0,204,146,NULL,NULL,'Al-Mustafa Institut','ezstring',789,'ger-DE',5,0,'al-mustafa institut',3),(0,204,146,NULL,NULL,'Al-Mustafa Institut','ezstring',789,'ger-DE',5,0,'al-mustafa institut',4),(0,205,146,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','eztext',790,'ger-DE',5,0,'',1),(0,205,146,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','eztext',790,'ger-DE',5,0,'',2),(0,205,146,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','eztext',790,'ger-DE',5,0,'',3),(0,205,146,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','eztext',790,'ger-DE',5,0,'',4),(0,4,147,NULL,NULL,'Applications','ezstring',791,'ger-DE',5,0,'applications',1),(0,155,147,NULL,NULL,NULL,'ezstring',792,'ger-DE',5,0,'',1),(0,119,147,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',793,'ger-DE',5,0,'',1),(0,156,147,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',794,'ger-DE',5,0,'',1),(0,191,147,NULL,0,NULL,'ezboolean',795,'ger-DE',5,0,'',1),(0,182,151,NULL,NULL,'Qom 2018','ezstring',807,'ger-DE',5,0,'qom 2018',1),(0,206,151,NULL,NULL,NULL,'ezimage',808,'ger-DE',5,0,'',1),(0,207,151,NULL,NULL,'blah blah blah','eztext',809,'ger-DE',5,0,'',1),(0,208,151,NULL,1482879600,NULL,'ezdate',810,'ger-DE',5,1482879600,'',1),(0,209,151,NULL,1485623244,NULL,'ezdatetime',811,'ger-DE',5,1485623244,'',1),(0,210,151,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>blah blsdsdadsa</para></section>\n','ezrichtext',812,'ger-DE',5,0,'',1),(0,184,154,NULL,NULL,'Amir','ezstring',830,'ger-DE',4,0,'amir',1),(0,185,154,NULL,NULL,'Koklan','ezstring',831,'ger-DE',4,0,'koklan',1),(0,225,154,NULL,1481151600,NULL,'ezdate',832,'ger-DE',4,1481151600,'',1),(0,196,154,NULL,NULL,NULL,'ezbinaryfile',833,'ger-DE',4,0,'',1),(0,211,154,NULL,NULL,'asdsda','ezstring',834,'ger-DE',4,0,'asdsda',1),(0,212,154,NULL,NULL,'0','ezselection',835,'ger-DE',4,0,'0',1),(0,213,154,NULL,NULL,'adssda','ezstring',836,'ger-DE',4,0,'adssda',1),(0,214,154,NULL,NULL,'sadsda','ezstring',837,'ger-DE',4,0,'sadsda',1),(0,215,154,NULL,NULL,'dassda','ezstring',838,'ger-DE',4,0,'dassda',1),(0,217,154,NULL,NULL,'adssad','ezstring',839,'ger-DE',4,0,'adssad',1),(0,218,154,NULL,NULL,'dsa','ezstring',840,'ger-DE',4,0,'dsa',1),(0,219,154,NULL,NULL,'dsa','ezstring',841,'ger-DE',4,0,'dsa',1),(0,220,154,NULL,NULL,'sda','ezstring',842,'ger-DE',4,0,'sda',1),(0,221,154,NULL,NULL,'sad','ezstring',843,'ger-DE',4,0,'sad',1),(0,184,155,NULL,NULL,'Amir','ezstring',844,'ger-DE',4,0,'amir',1),(0,185,155,NULL,NULL,'Koklan','ezstring',845,'ger-DE',4,0,'koklan',1),(0,225,155,NULL,1480546800,NULL,'ezdate',846,'ger-DE',4,1480546800,'',1),(0,196,155,NULL,NULL,NULL,'ezbinaryfile',847,'ger-DE',4,0,'',1),(0,211,155,NULL,NULL,'Mohammad','ezstring',848,'ger-DE',4,0,'mohammad',1),(0,212,155,NULL,NULL,'0','ezselection',849,'ger-DE',4,0,'0',1),(0,213,155,NULL,NULL,'Master','ezstring',850,'ger-DE',4,0,'master',1),(0,214,155,NULL,NULL,'IT','ezstring',851,'ger-DE',4,0,'it',1),(0,215,155,NULL,NULL,'Master','ezstring',852,'ger-DE',4,0,'master',1),(0,217,155,NULL,NULL,'confession','ezstring',853,'ger-DE',4,0,'confession',1),(0,218,155,NULL,NULL,'Iran','ezstring',854,'ger-DE',4,0,'iran',1),(0,219,155,NULL,NULL,'keine','ezstring',855,'ger-DE',4,0,'keine',1),(0,220,155,NULL,NULL,'Perfekt','ezstring',856,'ger-DE',4,0,'perfekt',1),(0,221,155,NULL,NULL,'keine','ezstring',857,'ger-DE',4,0,'keine',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (0,80,5,1,2,103),(0,80,6,2,2,103),(0,80,7,3,2,103),(0,80,8,4,2,103),(0,109,2,5,2,117);
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',4,14,2,'Administrator User','eng-GB'),('eng-GB',5,14,2,'Amir Koklan','eng-GB'),('eng-GB',6,14,2,'Amir Koklan','eng-GB'),('eng-GB',7,14,2,'Amir Koklan','eng-GB'),('eng-GB',8,14,2,'Amir Koklan','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,54,2,'Amir Test Amir Test','eng-GB'),('ger-DE',1,63,4,'Über uns','ger-DE'),('ger-DE',2,63,4,'Über uns','ger-DE'),('ger-DE',1,65,4,'Folder 1','ger-DE'),('ger-DE',2,65,4,'Folder 1','ger-DE'),('ger-DE',3,65,4,'Studium','ger-DE'),('ger-DE',1,69,4,'Folder 2','ger-DE'),('ger-DE',2,69,4,'Folder 2','ger-DE'),('ger-DE',3,69,4,'Forschungsprojekte','ger-DE'),('ger-DE',4,69,4,'Forschung','ger-DE'),('ger-DE',1,75,4,'Vernstellungen','ger-DE'),('ger-DE',2,75,4,'Vernstellungen','ger-DE'),('ger-DE',3,75,4,'Veranstaltungen','ger-DE'),('ger-DE',1,76,4,'First Blog','ger-DE'),('ger-DE',2,76,4,'','ger-DE'),('eng-GB',3,76,2,'First Blog','eng-GB'),('ger-DE',3,76,4,'First Blog','ger-DE'),('eng-GB',4,76,2,'First Blog','eng-GB'),('ger-DE',4,76,4,'First Blog','ger-DE'),('ger-DE',1,77,4,'Forschungreisen','ger-DE'),('ger-DE',3,80,4,'Qom 2016','ger-DE'),('ger-DE',4,80,4,'Qom 2016','ger-DE'),('ger-DE',5,80,4,'Qom 2016','ger-DE'),('ger-DE',6,80,4,'Qom 2016','ger-DE'),('ger-DE',7,80,4,'Qom 2016','ger-DE'),('ger-DE',8,80,4,'Qom 2016','ger-DE'),('ger-DE',1,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',2,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',1,102,4,'Blog Post 3','ger-DE'),('eng-GB',1,103,2,'Qom2','eng-GB'),('ger-DE',1,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',2,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',1,106,4,'Modulhandbuch','ger-DE'),('ger-DE',1,107,4,'Kooperation','ger-DE'),('ger-DE',1,108,4,'Dozenten','ger-DE'),('ger-DE',2,108,4,'Dozenten','ger-DE'),('ger-DE',1,109,4,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ger-DE'),('ger-DE',2,109,4,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ger-DE'),('ger-DE',1,110,4,'Forschungsprojekte','ger-DE'),('ger-DE',1,111,4,'Publikationen','ger-DE'),('ger-DE',1,112,4,'Institutszeitschrift','ger-DE'),('ger-DE',1,113,4,'Über uns','ger-DE'),('ger-DE',2,113,4,'Über uns','ger-DE'),('ger-DE',1,114,4,'Partneruniversität','ger-DE'),('ger-DE',2,114,4,'Partneruniversität','ger-DE'),('ger-DE',1,115,4,'New article','ger-DE'),('ger-DE',2,115,4,'Impressum','ger-DE'),('ger-DE',1,116,4,'Kontakt','ger-DE'),('eng-GB',1,117,2,'Esfahani','eng-GB'),('ger-DE',1,146,4,'AL Mustafa','ger-DE'),('ger-DE',2,146,4,'AL Mustafa','ger-DE'),('ger-DE',3,146,4,'AL Mustafa','ger-DE'),('ger-DE',4,146,4,'AL Mustafa','ger-DE'),('ger-DE',1,147,4,'Applications','ger-DE'),('ger-DE',1,151,4,'Qom 2018','ger-DE'),('ger-DE',1,154,4,'Amir Koklan','ger-DE'),('ger-DE',1,155,4,'Amir Koklan','ger-DE');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
INSERT INTO `ezcontentobject_trash` VALUES (154,1,4,0,0,127,1483022177,127,125,'node_2/forschungreisen/qom_2018/amir_koklan','/1/2/79/125/127/',0,'789cade2cc7c66a1ba60536c5e8668aa',9,1),(155,1,4,0,0,128,1483027597,128,125,'node_2/forschungreisen/qom_2018/amir_koklan','/1/2/79/125/128/',0,'c6d27f6fc2ba5aafbf6cbfc993ef2972',9,1);
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1483027617,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(146,1,4,1,0,0,2,1483027617,2,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1301062024,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1301062024,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,8,3,0,0,15,1301062024,15,13,'users/administrator_users/amir_koklan','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1482975216,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1448833726,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1482975216,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(54,1,1,3,0,0,56,1480382570,56,12,'users/guest_accounts/amir_test_amir_test','/1/5/12/56/',0,'b28f4b892ed6ded2fa24982a9e43ea06',9,1),(63,1,2,2,0,0,65,1482638733,65,2,'node_2/ueber_uns','/1/2/65/',0,'a0fc4d24042ce9b35626dc936e458fe1',1,1),(65,1,3,2,0,0,67,1482635755,67,2,'node_2/studium','/1/2/67/',0,'ffd1dbcea3da4147158d4f21e7cedf90',1,1),(69,1,4,2,0,0,71,1482638374,71,2,'node_2/forschung','/1/2/71/',0,'6ce9a9fa90830fafe01c4544e61f7be9',1,1),(75,1,3,2,0,0,77,1482084681,77,2,'node_2/veranstaltungen','/1/2/77/',0,'8de9380c5e9ec89bbd371648b129633a',1,1),(76,1,4,3,0,0,78,1481073301,78,77,'node_2/vernstellungen/first_blog','/1/2/77/78/',0,'e14d8bdda6a0aafcd8139bf40b5f5eba',1,1),(77,1,1,2,0,0,79,1483027617,79,2,'node_2/forschungreisen','/1/2/79/',0,'f624b3f093a1a87604726cca1256c658',1,1),(80,1,8,3,0,0,82,1482886385,82,79,'node_2/forschungreisen/qom_2016','/1/2/79/82/',0,'d56cc7c2d056a7258de31222d1d40841',1,1),(101,1,2,3,0,0,93,1482467232,93,77,'node_2/vernstellungen/lorem_ipsum_ist_ein_einfacher_demo','/1/2/77/93/',0,'dd282d50f782efba25af15d87d2a7b6d',1,1),(102,1,1,3,0,0,94,1482509239,94,77,'node_2/vernstellungen/blog_post_3','/1/2/77/94/',0,'add1ac841a29bbad27fab2512f72423b',1,1),(103,1,1,3,0,0,95,1482517381,95,51,'media/images/qom2','/1/43/51/95/',0,'577b5067a6274ce3e0cdbc2811ecda5e',1,1),(105,1,2,3,0,0,97,1482635909,97,67,'node_2/studium/islamische_theologie_b_a','/1/2/67/97/',0,'5617aa767e04c0e36c553e1d6011081e',1,1),(106,1,1,3,0,0,98,1482636598,98,67,'node_2/studium/modulhandbuch','/1/2/67/98/',0,'351d6d65cf3bad62a05e350081356ce6',1,1),(107,1,1,3,0,0,99,1482636915,99,67,'node_2/studium/kooperation','/1/2/67/99/',0,'19f947b2cbcdcf37d51182451bbb2cde',1,1),(108,1,2,3,0,0,100,1482636972,100,67,'node_2/studium/dozenten','/1/2/67/100/',0,'2ca7bcd7c3c872cd90ae148b0ccf1889',1,1),(109,1,2,3,0,0,101,1482637147,101,67,'node_2/studium/dr_des_mahdi_esfahani_unterrubrik_von_dozenten','/1/2/67/101/',0,'573756e8c2da118903d554efa1356e2e',1,1),(110,1,1,3,0,0,102,1482638406,102,71,'node_2/forschung/forschungsprojekte','/1/2/71/102/',0,'b03e1d86a42f5d09b43a0f14c1c1485a',1,1),(111,1,1,3,0,0,103,1482638615,103,71,'node_2/forschung/publikationen','/1/2/71/103/',0,'56c4219cbf05fa5bdf838e4475aefcbe',1,1),(112,1,1,3,0,0,104,1482638662,104,71,'node_2/forschung/institutszeitschrift','/1/2/71/104/',0,'df9ff92eb5a16cebcbafd4793f99dd88',1,1),(113,1,2,3,0,0,105,1482638992,105,65,'node_2/ueber_uns/ueber_uns','/1/2/65/105/',0,'5112c95a47b9c7ab7d4ae87081253f17',1,1),(114,1,2,3,0,0,106,1482639073,106,65,'node_2/ueber_uns/partneruniversitaet','/1/2/65/106/',0,'f85b8667135675a5fb46bb4c87c080d3',1,1),(115,1,2,2,0,0,107,1482639161,107,2,'node_2/impressum','/1/2/107/',0,'6ce954e6cb5ab790593b4f3693dd85cc',1,1),(116,1,1,2,0,0,108,1482641127,108,2,'node_2/kontakt','/1/2/108/',0,'63b26596a386682d78ec355e536d0777',1,1),(117,1,1,3,0,0,109,1482653677,109,51,'media/images/esfahani','/1/43/51/109/',0,'628f19c85e8065734184a88e2f965567',1,1),(147,1,1,2,0,0,121,1482946809,121,2,'node_2/applications2','/1/2/121/',0,'65a9def2b9d93d7c87a329c493ab550c',1,1),(151,1,1,3,0,0,125,1483027617,125,79,'node_2/forschungreisen/qom_2018','/1/2/79/125/',0,'3c36d079cd1bd0c37ddc2cb9f8abee60',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(14,1301061783,14,499,2,3,1482105019,3,0,3,0),(54,1480382570,14,509,2,3,1480382570,1,0,1,0),(63,1480886444,14,520,4,5,1482639020,3,0,1,0),(65,1480901813,14,522,4,5,1481048891,3,0,1,0),(69,1480902014,14,527,4,5,1481058722,3,0,1,0),(75,1480987916,14,533,4,5,1481071731,3,0,1,0),(65,1481048891,14,534,4,5,1482635717,3,0,2,0),(69,1481058722,14,535,4,5,1482638343,3,0,2,0),(75,1481071731,14,538,4,5,1482540280,3,0,2,0),(76,1481073301,14,539,4,5,1481074441,3,0,1,0),(76,1481074440,14,540,4,5,1481335792,3,0,2,0),(77,1481239640,14,541,4,5,1481239640,1,0,1,0),(76,1481335792,14,544,2,7,1482469213,3,0,3,0),(14,1482105019,14,567,2,3,1482105019,0,0,4,0),(14,1482105019,14,568,2,3,1482105153,3,0,5,0),(14,1482105153,14,569,2,3,1482105153,0,0,6,0),(14,1482105153,14,570,2,3,1482635649,3,0,7,0),(101,1482467232,14,579,4,5,1482469064,3,0,1,0),(101,1482469063,14,580,4,5,1482469064,1,0,2,0),(76,1482469212,14,581,4,7,1482469213,1,0,4,0),(102,1482509239,14,582,4,5,1482509239,1,0,1,0),(80,1482516265,14,584,4,5,1482517091,3,0,3,0),(80,1482517091,14,585,4,5,1482517479,3,0,4,0),(103,1482517381,14,586,2,3,1482517381,1,0,1,0),(80,1482517478,14,587,4,5,1482518221,3,0,5,0),(80,1482518220,14,588,4,5,1482518440,3,0,6,0),(80,1482518440,14,589,4,5,1482518590,3,0,7,0),(80,1482518590,14,590,4,5,1482518590,1,0,8,0),(75,1482540280,14,592,4,5,1482540280,1,0,3,0),(14,1482635649,14,594,2,3,1482635649,1,0,8,0),(65,1482635717,14,595,4,5,1482635717,1,0,3,0),(105,1482635909,14,596,4,4,1482636168,3,0,1,0),(105,1482636168,14,597,4,4,1482636168,1,0,2,0),(106,1482636598,14,598,4,4,1482636598,1,0,1,0),(107,1482636914,14,599,4,4,1482636915,1,0,1,0),(108,1482636971,14,600,4,4,1482636982,3,0,1,0),(108,1482636982,14,601,4,4,1482636982,1,0,2,0),(109,1482637147,14,602,4,4,1482653720,3,0,1,0),(69,1482638342,14,603,4,5,1482638367,3,0,3,0),(69,1482638367,14,604,4,5,1482638367,1,0,4,0),(110,1482638406,14,605,4,4,1482638406,1,0,1,0),(111,1482638615,14,606,4,4,1482638615,1,0,1,0),(112,1482638661,14,607,4,4,1482638662,1,0,1,0),(113,1482638991,14,608,4,4,1483059690,3,0,1,0),(63,1482639019,14,609,4,5,1482639020,1,0,2,0),(114,1482639073,14,610,4,4,1482639083,3,0,1,0),(114,1482639083,14,611,4,4,1482639083,1,0,2,0),(115,1482639161,14,612,4,4,1482639182,3,0,1,0),(115,1482639181,14,613,4,4,1482639182,1,0,2,0),(116,1482641127,14,614,4,4,1482641127,1,0,1,0),(117,1482653677,14,615,2,3,1482653677,1,0,1,0),(109,1482653720,14,616,4,4,1482653720,1,0,2,0),(146,1482887848,14,657,4,5,1482946340,3,0,1,0),(147,1482887942,14,658,4,5,1482887942,1,0,1,0),(146,1482946340,14,661,4,5,1482946389,3,0,2,0),(146,1482946389,14,662,4,5,1483018413,3,0,3,0),(151,1482946564,14,664,4,5,1482946564,1,0,1,0),(146,1483018412,14,667,4,5,1483018413,1,0,4,0),(154,1483022177,14,668,4,4,1483022177,1,0,1,0),(155,1483027597,14,669,4,4,1483027597,1,0,1,0),(113,1483059690,14,670,4,4,1483059690,1,0,2,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',1),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',2),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',3),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',51),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',52),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',53),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',54),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',55),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',56),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',57),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',58),(389,'var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg',59),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',60),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',61),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',62),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',63),(499,'var/site/storage/images/9/9/4/0/499-1-eng-GB/image.png',64),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',145),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',146),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',147),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',148),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',150),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',151),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',152),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',153),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',154),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',155),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',156),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',157),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',158),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',159),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',160),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',161),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',162);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(52,1,0,40,1,2,2,'7d65780390a240b94176fa62fd3e78e4','0',1,1,0,0),(53,1,0,41,1,2,54,'73d566928297c09a06fa76f1e4425b2e','0',9,1,0,0),(54,1,0,42,1,2,12,'b28f4b892ed6ded2fa24982a9e43ea06','0',9,1,0,0),(55,1,0,43,1,2,54,'4101e831147e95c12889b00347518ffc','0',9,1,0,0),(56,1,0,44,1,2,54,'c711c325ae01c7fc481e8a9089674cfc','0',9,1,0,0),(57,1,0,45,1,2,54,'c541974ef0bf80c02848d1c0f2df0e4f','0',1,1,0,0),(58,1,0,46,1,2,54,'5e445974400cae3c948502b3503a64f5','0',9,1,0,0),(59,1,0,47,1,2,54,'a5d5e94b8d1d91c43ac1a024c284d89f','0',9,1,0,0),(60,1,0,48,1,2,54,'d98d23225f188f4c2ef03b2cbb018c9f','0',9,1,0,0),(61,1,0,49,1,2,54,'24d25867cce8d10e2598a238c2b05d3f','0',9,1,0,0),(63,1,0,51,1,2,2,'a0fc4d24042ce9b35626dc936e458fe1','0',1,1,0,0),(64,1,0,52,1,2,65,'06dcac24342445ecc0d0f41ad51427d8','0',1,1,0,0),(65,1,0,53,1,2,2,'ffd1dbcea3da4147158d4f21e7cedf90','0',1,1,0,0),(66,1,0,54,1,2,67,'a1f4e01c66c58471f1f52080b52cc8f1','0',1,1,0,0),(67,1,0,55,1,2,67,'371d5b483e545ec53ed8cfa65de6c0ba','0',1,1,0,0),(68,1,0,56,1,2,67,'8f445fb0d64dd60f126ae0381a74e0fe','0',1,1,0,0),(69,1,0,57,1,2,2,'6ce9a9fa90830fafe01c4544e61f7be9','0',1,1,0,0),(70,1,0,58,1,2,71,'fbc80353ed6569b517c77322313fa661','0',1,1,0,0),(71,1,0,59,1,2,65,'c1d3eb06b5c676f8f233b07e1e99b7f3','0',1,1,0,0),(72,1,0,60,1,2,68,'131279c6b221af1ae30df59185750711','0',1,1,0,0),(73,1,0,61,1,2,68,'f5edc5ba2e6892c780757be12cb78e30','0',1,1,0,0),(74,1,0,62,1,2,2,'b12c38bb337fab0eba0c46d4af6cff97','0',1,1,0,0),(75,1,0,63,1,2,2,'8de9380c5e9ec89bbd371648b129633a','0',1,1,0,0),(76,1,0,64,1,2,77,'e14d8bdda6a0aafcd8139bf40b5f5eba','0',1,1,0,0),(77,1,0,65,1,2,2,'f624b3f093a1a87604726cca1256c658','0',1,1,0,0),(78,1,0,66,1,2,77,'782256aec842a62b03836f142c1723b4','0',1,1,0,0),(79,1,0,67,1,2,79,'5018445a3d960e7ca6ffac5c97a1a779','0',1,1,0,0),(82,1,0,70,1,2,82,'b644bdbb02fe081515256ef9d2aee220','0',9,1,0,0),(83,1,0,71,1,2,82,'2baca779a7fa0417357afed11b38b73e','0',9,1,0,0),(84,1,0,72,1,2,82,'3493c6108407956c019ae59d6ab8ade0','0',9,1,0,0),(85,1,0,73,1,2,82,'c38ae8df1e7f6676bf524036b6cbe595','0',9,1,0,0),(86,1,0,74,1,2,82,'f3b2dd62e7396a601c5ae34bf630667d','0',9,1,0,0),(87,1,0,75,1,2,82,'c5c6bedaedd3ece0078c836fd1a0fd9f','0',9,1,0,0),(88,1,0,76,1,2,82,'ca2a2c0229f16c67c083b80220ba32a9','0',9,1,0,0),(89,1,0,77,1,2,82,'ca04292ca25a987949c8f29c92a76518','0',9,1,0,0),(90,1,0,78,1,2,82,'927ea39610695ca163c68938f17af11c','0',9,1,0,0),(91,1,0,79,1,2,82,'d34526a9b5f03567fcd52b460918d2af','0',9,1,0,0),(92,1,0,80,1,5,65,'05c4ce53ce353c50168f3c3a4ed186d9','0',9,1,0,0),(93,1,0,81,1,2,82,'f52855db8a1662c13ee012f45330f0df','0',9,1,0,0),(94,1,0,82,1,2,82,'baa8255645b19d4326b20eedd2ff0ef4','0',9,1,0,0),(95,1,0,83,1,2,54,'0bdfad3dd34406a9e50526b1c7f724b2','0',9,1,0,0),(96,1,0,84,1,2,54,'50331f818a9b74af0bcc55a35133633b','0',9,1,0,0),(97,1,0,85,1,2,54,'2d709e97b93e065243eac541f2cb3ded','0',9,1,0,0),(98,1,0,86,1,2,54,'447cba779e24eaacc4d65ad030dde9b4','0',9,1,0,0),(99,1,0,87,1,2,54,'3fb1eb2fbf1848f404d890042a8bad20','0',9,1,0,0),(100,1,0,88,1,2,54,'c3b5fbcde3f89ace8394949738f3d9d8','0',9,1,0,0),(101,1,0,89,1,2,77,'dd282d50f782efba25af15d87d2a7b6d','0',1,1,0,0),(102,1,0,90,1,2,77,'add1ac841a29bbad27fab2512f72423b','0',1,1,0,0),(103,1,0,91,1,2,51,'577b5067a6274ce3e0cdbc2811ecda5e','0',1,1,0,0),(104,1,0,92,1,2,82,'e9ed1d9d76ef5bb65f0e7d0be79bbd3b','0',9,1,0,0),(105,1,0,93,1,2,67,'5617aa767e04c0e36c553e1d6011081e','0',1,1,0,0),(106,1,0,94,1,2,67,'351d6d65cf3bad62a05e350081356ce6','0',1,1,0,0),(107,1,0,95,1,2,67,'19f947b2cbcdcf37d51182451bbb2cde','0',1,1,0,0),(108,1,0,96,1,2,67,'2ca7bcd7c3c872cd90ae148b0ccf1889','0',1,1,0,0),(109,1,0,97,1,2,67,'573756e8c2da118903d554efa1356e2e','0',1,1,0,0),(110,1,0,98,1,2,71,'b03e1d86a42f5d09b43a0f14c1c1485a','0',1,1,0,0),(111,1,0,99,1,2,71,'56c4219cbf05fa5bdf838e4475aefcbe','0',1,1,0,0),(112,1,0,100,1,2,71,'df9ff92eb5a16cebcbafd4793f99dd88','0',1,1,0,0),(113,1,0,101,1,2,65,'5112c95a47b9c7ab7d4ae87081253f17','0',1,1,0,0),(114,1,0,102,1,2,65,'f85b8667135675a5fb46bb4c87c080d3','0',1,1,0,0),(115,1,0,103,1,2,2,'6ce954e6cb5ab790593b4f3693dd85cc','0',1,1,0,0),(116,1,0,104,1,2,2,'63b26596a386682d78ec355e536d0777','0',1,1,0,0),(117,1,0,105,1,2,51,'628f19c85e8065734184a88e2f965567','0',1,1,0,0),(118,1,0,106,1,2,54,'fc9098aa5bdcbd52515f2772695dc876','0',9,1,0,0),(119,1,0,107,1,2,2,'d8924199ba306dd81cac770e4bb8437b','0',1,1,0,0),(120,1,0,108,1,2,54,'7f6522760eeaaaf36857b5acc56ba5dd','0',9,1,0,0),(121,1,0,109,1,2,54,'a7d4d795fcb70352366c3ec6fc6ed640','0',9,1,0,0),(122,1,0,110,1,2,54,'5b2265e4f335a382cbc5106d199265ad','0',9,1,0,0),(123,1,0,111,1,2,54,'8ee8d13968d72bd1ea0a94d5f8c95253','0',9,1,0,0),(124,1,0,112,1,2,54,'a41892aa80ec8c4dd46db45151993ffb','0',9,1,0,0),(125,1,0,113,1,2,54,'08b4b050989f9fbc16cc496f6e532b2f','0',9,1,0,0),(126,1,0,114,1,2,54,'e31a897e14ed90c8f4c8e45d7c1e26ac','0',9,1,0,0),(127,1,0,115,1,2,54,'dbf89eee12e8f22117c1a4d7622ec301','0',9,1,0,0),(128,1,0,116,1,2,54,'df391b1302945919b6e91593c712e3c7','0',9,1,0,0),(129,1,0,117,1,2,54,'7713a732378615b0f48a1a01c5816169','0',9,1,0,0),(130,1,0,118,1,2,54,'ca3587f0e7656c71a257cc38f8b41d78','0',9,1,0,0),(131,1,0,119,1,2,54,'3892f5ef2e5a8b53edeb7a419aee1489','0',9,1,0,0),(132,1,0,120,1,2,82,'99dc74bcf0d042611475335136733e5b','0',9,1,0,0),(133,1,0,121,1,2,82,'deb302d39e6117d41cc4b088d0c3c015','0',9,1,0,0),(134,1,0,122,1,2,82,'6ed7828766bb9cfcdf1f97f15ded6c27','0',9,1,0,0),(135,1,0,123,1,2,82,'659ef84e2a0eaef6417550083c41e1f0','0',9,1,0,0),(136,1,0,124,1,2,82,'e617e303da47abbc4939a952954a4d32','0',9,1,0,0),(137,1,0,125,1,2,54,'a2f870ee8e5b78428d491ed13ceb85b8','0',9,1,0,0),(138,1,0,126,1,2,54,'f790208be16da0f37a132b179a5710bd','0',9,1,0,0),(139,1,0,127,1,2,54,'f2ecf14f9262ef6902c0058c5282d720','0',1,1,0,0),(140,1,0,128,1,2,54,'629e85d85b8597416accc0c1e24fe833','0',1,1,0,0),(141,1,0,129,1,2,2,'610886bc4fe660ffe70226630e8db837','0',1,1,0,0),(142,1,0,130,1,2,2,'60d0d4612cf3ab9033915dc23654da09','0',1,1,0,0),(143,1,0,131,1,2,54,'408fd35092d8eb043af2b475b3de2e28','0',9,1,0,0),(144,1,0,132,1,2,54,'2d8ed1c834935c8defa1f0055bd8bbb0','0',9,1,0,0),(145,11,0,133,1,2,54,'b20dc1319d5df5c734e702f186fe4c62','0',9,1,0,0),(146,1,0,134,1,2,2,'a9df4c2901e2133ec1467ad0b8b02e54','0',1,1,0,0),(147,1,0,135,1,2,2,'65a9def2b9d93d7c87a329c493ab550c','0',1,1,0,0),(148,1,0,136,1,2,121,'4f8175a4136f50f8f98fb3d89e24c1e6','0',9,1,0,0),(149,1,0,137,1,2,51,'44c716eafb2193d02f75c1c63e268441','0',1,1,0,0),(150,1,0,138,1,2,2,'9b4cf691f59a637bdaa53dd5491677f4','0',1,1,0,0),(151,1,0,139,1,2,79,'3c36d079cd1bd0c37ddc2cb9f8abee60','0',1,1,0,0),(152,1,0,140,1,2,125,'adaf14c043450735e8a3881092d9b3ce','0',9,1,0,0),(153,1,0,141,1,2,121,'68c005a20eb1f67e4d13ea3bacdac792','0',9,1,0,0),(154,1,0,142,1,2,125,'789cade2cc7c66a1ba60536c5e8668aa','0',9,1,0,0),(155,1,0,143,1,2,125,'c6d27f6fc2ba5aafbf6cbfc993ef2972','0',9,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`),
  KEY `ezpolicy_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',317,'content',0,3),('login',319,'user',0,3),('*',332,'*',0,2),('read',409,'content',0,4),('read',410,'content',0,4),('create',411,'content',0,4),('read',412,'content',0,4),('read',421,'content',0,1),('login',422,'user',0,1),('register',423,'user',0,1);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (252,'Section',329),(423,'Class',409),(424,'Owner',409),(425,'Owner',410),(426,'Section',410),(428,'Class',412),(429,'Section',412),(430,'Class',411),(438,'SiteAccess',422),(439,'Section',421);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (478,252,'1'),(654,423,'4'),(655,424,'1'),(656,425,'1'),(657,426,'7'),(659,428,'1'),(660,429,'7'),(661,430,'13'),(662,430,'15'),(672,438,'2106599819'),(673,438,'4082745666'),(674,439,'3'),(675,439,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','0',0),(2,0,'Administrator','0',0),(3,0,'Editor','',0),(4,0,'Member','0',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13912 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,11,0,4671,'name',0,957,0,0,1033920746,2,956),(6,3,11,0,4672,'name',0,0,1,956,1033920746,2,957),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(8,4,14,0,4676,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,4677,'last_name',0,960,1,958,1033920830,2,954),(12,4,14,0,4678,'user_account',0,955,2,954,1033920830,2,960),(12,4,14,0,4679,'user_account',0,927,3,960,1033920830,2,955),(12,4,14,0,4680,'user_account',0,0,4,955,1033920830,2,927),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,72,0,4768,'name',0,992,0,0,1480965238,1,991),(4,1,72,0,4769,'name',0,994,1,991,1480965238,1,992),(4,1,72,0,4770,'name',0,992,2,992,1480965238,1,994),(4,1,72,0,4771,'name',0,0,3,994,1480965238,1,992),(4,1,73,0,4772,'name',0,992,0,0,1480965292,1,991),(4,1,73,0,4773,'name',0,994,1,991,1480965292,1,992),(4,1,73,0,4774,'name',0,994,2,992,1480965292,1,994),(4,1,73,0,4775,'name',0,0,3,994,1480965292,1,994),(186,16,77,0,4806,'name',0,0,0,0,1481239640,1,1004),(187,17,101,0,5154,'title',0,1114,0,0,1482467232,1,1113),(187,17,101,0,5155,'title',0,1115,1,1113,1482467232,1,1114),(187,17,101,0,5156,'title',0,1116,2,1114,1482467232,1,1115),(187,17,101,0,5157,'title',0,1117,3,1115,1482467232,1,1116),(187,17,101,0,5158,'title',0,1118,4,1116,1482467232,1,1117),(187,17,101,0,5159,'title',0,1113,5,1117,1482467232,1,1118),(188,17,101,0,5160,'description',0,1114,6,1118,1482467232,1,1113),(188,17,101,0,5161,'description',0,1115,7,1113,1482467232,1,1114),(188,17,101,0,5162,'description',0,1116,8,1114,1482467232,1,1115),(188,17,101,0,5163,'description',0,1117,9,1115,1482467232,1,1116),(188,17,101,0,5164,'description',0,1118,10,1116,1482467232,1,1117),(188,17,101,0,5165,'description',0,1119,11,1117,1482467232,1,1118),(188,17,101,0,5166,'description',0,1120,12,1118,1482467232,1,1119),(188,17,101,0,5167,'description',0,1121,13,1119,1482467232,1,1120),(188,17,101,0,5168,'description',0,1122,14,1120,1482467232,1,1121),(188,17,101,0,5169,'description',0,1123,15,1121,1482467232,1,1122),(188,17,101,0,5170,'description',0,1124,16,1122,1482467232,1,1123),(188,17,101,0,5171,'description',0,1113,17,1123,1482467232,1,1124),(188,17,101,0,5172,'description',0,1114,18,1124,1482467232,1,1113),(188,17,101,0,5173,'description',0,1115,19,1113,1482467232,1,1114),(188,17,101,0,5174,'description',0,1125,20,1114,1482467232,1,1115),(188,17,101,0,5175,'description',0,1126,21,1115,1482467232,1,1125),(188,17,101,0,5176,'description',0,1127,22,1125,1482467232,1,1126),(188,17,101,0,5177,'description',0,1128,23,1126,1482467232,1,1127),(188,17,101,0,5178,'description',0,1126,24,1127,1482467232,1,1128),(188,17,101,0,5179,'description',0,1129,25,1128,1482467232,1,1126),(188,17,101,0,5180,'description',0,1118,26,1126,1482467232,1,1129),(188,17,101,0,5181,'description',0,1119,27,1129,1482467232,1,1118),(188,17,101,0,5182,'description',0,1130,28,1118,1482467232,1,1119),(188,17,101,0,5183,'description',0,1131,29,1119,1482467232,1,1130),(188,17,101,0,5184,'description',0,1132,30,1130,1482467232,1,1131),(188,17,101,0,5185,'description',0,1116,31,1131,1482467232,1,1132),(188,17,101,0,5186,'description',0,1133,32,1132,1482467232,1,1116),(188,17,101,0,5187,'description',0,1134,33,1116,1482467232,1,1133),(188,17,101,0,5188,'description',0,1135,34,1133,1482467232,1,1134),(188,17,101,0,5189,'description',0,1136,35,1134,1482467232,1,1135),(188,17,101,0,5190,'description',0,1137,36,1135,1482467232,1,1136),(188,17,101,0,5191,'description',0,1138,37,1136,1482467232,1,1137),(188,17,101,0,5192,'description',0,1139,38,1137,1482467232,1,1138),(188,17,101,0,5193,'description',0,1123,39,1138,1482467232,1,1139),(188,17,101,0,5194,'description',0,1140,40,1139,1482467232,1,1123),(188,17,101,0,5195,'description',0,1141,41,1123,1482467232,1,1140),(188,17,101,0,5196,'description',0,1142,42,1140,1482467232,1,1141),(188,17,101,0,5197,'description',0,1143,43,1141,1482467232,1,1142),(188,17,101,0,5198,'description',0,1116,44,1142,1482467232,1,1143),(188,17,101,0,5199,'description',0,1144,45,1143,1482467232,1,1116),(188,17,101,0,5200,'description',0,1145,46,1116,1482467232,1,1144),(188,17,101,0,5201,'description',0,1146,47,1144,1482467232,1,1145),(188,17,101,0,5202,'description',0,1147,48,1145,1482467232,1,1146),(188,17,101,0,5203,'description',0,1148,49,1146,1482467232,1,1147),(188,17,101,0,5204,'description',0,1149,50,1147,1482467232,1,1148),(188,17,101,0,5205,'description',0,1150,51,1148,1482467232,1,1149),(188,17,101,0,5206,'description',0,1151,52,1149,1482467232,1,1150),(188,17,101,0,5207,'description',0,1152,53,1150,1482467232,1,1151),(188,17,101,0,5208,'description',0,1153,54,1151,1482467232,1,1152),(188,17,101,0,5209,'description',0,1154,55,1152,1482467232,1,1153),(188,17,101,0,5210,'description',0,1155,56,1153,1482467232,1,1154),(188,17,101,0,5211,'description',0,1125,57,1154,1482467232,1,1155),(188,17,101,0,5212,'description',0,1156,58,1155,1482467232,1,1125),(188,17,101,0,5213,'description',0,1125,59,1125,1482467232,1,1156),(188,17,101,0,5214,'description',0,1121,60,1156,1482467232,1,1125),(188,17,101,0,5215,'description',0,1157,61,1125,1482467232,1,1121),(188,17,101,0,5216,'description',0,1158,62,1121,1482467232,1,1157),(188,17,101,0,5217,'description',0,1159,63,1157,1482467232,1,1158),(188,17,101,0,5218,'description',0,1160,64,1158,1482467232,1,1159),(188,17,101,0,5219,'description',0,1161,65,1159,1482467232,1,1160),(188,17,101,0,5220,'description',0,1162,66,1160,1482467232,1,1161),(188,17,101,0,5221,'description',0,1163,67,1161,1482467232,1,1162),(188,17,101,0,5222,'description',0,1164,68,1162,1482467232,1,1163),(188,17,101,0,5223,'description',0,1147,69,1163,1482467232,1,1164),(188,17,101,0,5224,'description',0,1165,70,1164,1482467232,1,1147),(188,17,101,0,5225,'description',0,1166,71,1147,1482467232,1,1165),(188,17,101,0,5226,'description',0,1167,72,1165,1482467232,1,1166),(188,17,101,0,5227,'description',0,1168,73,1166,1482467232,1,1167),(188,17,101,0,5228,'description',0,1169,74,1167,1482467232,1,1168),(188,17,101,0,5229,'description',0,1170,75,1168,1482467232,1,1169),(188,17,101,0,5230,'description',0,1171,76,1169,1482467232,1,1170),(188,17,101,0,5231,'description',0,1172,77,1170,1482467232,1,1171),(188,17,101,0,5232,'description',0,1169,78,1171,1482467232,1,1172),(188,17,101,0,5233,'description',0,1113,79,1172,1482467232,1,1169),(188,17,101,0,5234,'description',0,1114,80,1169,1482467232,1,1113),(188,17,101,0,5235,'description',0,1173,81,1113,1482467232,1,1114),(188,17,101,0,5236,'description',0,1174,82,1114,1482467232,1,1173),(188,17,101,0,5237,'description',0,1175,83,1173,1482467232,1,1174),(188,17,101,0,5238,'description',0,1176,84,1174,1482467232,1,1175),(188,17,101,0,5239,'description',0,1177,85,1175,1482467232,1,1176),(188,17,101,0,5240,'description',0,1175,86,1176,1482467232,1,1177),(188,17,101,0,5241,'description',0,1178,87,1177,1482467232,1,1175),(188,17,101,0,5242,'description',0,1179,88,1175,1482467232,1,1178),(188,17,101,0,5243,'description',0,1180,89,1178,1482467232,1,1179),(188,17,101,0,5244,'description',0,1166,90,1179,1482467232,1,1180),(188,17,101,0,5245,'description',0,1113,91,1180,1482467232,1,1166),(188,17,101,0,5246,'description',0,1114,92,1166,1482467232,1,1113),(188,17,101,0,5247,'description',0,1113,93,1113,1482467232,1,1114),(188,17,101,0,5248,'description',0,1114,94,1114,1482467232,1,1113),(188,17,101,0,5249,'description',0,1115,95,1113,1482467232,1,1114),(188,17,101,0,5250,'description',0,1116,96,1114,1482467232,1,1115),(188,17,101,0,5251,'description',0,1117,97,1115,1482467232,1,1116),(188,17,101,0,5252,'description',0,1118,98,1116,1482467232,1,1117),(188,17,101,0,5253,'description',0,1119,99,1117,1482467232,1,1118),(188,17,101,0,5254,'description',0,1120,100,1118,1482467232,1,1119),(188,17,101,0,5255,'description',0,1121,101,1119,1482467232,1,1120),(188,17,101,0,5256,'description',0,1122,102,1120,1482467232,1,1121),(188,17,101,0,5257,'description',0,1123,103,1121,1482467232,1,1122),(188,17,101,0,5258,'description',0,1124,104,1122,1482467232,1,1123),(188,17,101,0,5259,'description',0,1113,105,1123,1482467232,1,1124),(188,17,101,0,5260,'description',0,1114,106,1124,1482467232,1,1113),(188,17,101,0,5261,'description',0,1115,107,1113,1482467232,1,1114),(188,17,101,0,5262,'description',0,1125,108,1114,1482467232,1,1115),(188,17,101,0,5263,'description',0,1126,109,1115,1482467232,1,1125),(188,17,101,0,5264,'description',0,1127,110,1125,1482467232,1,1126),(188,17,101,0,5265,'description',0,1128,111,1126,1482467232,1,1127),(188,17,101,0,5266,'description',0,1126,112,1127,1482467232,1,1128),(188,17,101,0,5267,'description',0,1129,113,1128,1482467232,1,1126),(188,17,101,0,5268,'description',0,1118,114,1126,1482467232,1,1129),(188,17,101,0,5269,'description',0,1119,115,1129,1482467232,1,1118),(188,17,101,0,5270,'description',0,1130,116,1118,1482467232,1,1119),(188,17,101,0,5271,'description',0,1131,117,1119,1482467232,1,1130),(188,17,101,0,5272,'description',0,1132,118,1130,1482467232,1,1131),(188,17,101,0,5273,'description',0,1116,119,1131,1482467232,1,1132),(188,17,101,0,5274,'description',0,1133,120,1132,1482467232,1,1116),(188,17,101,0,5275,'description',0,1134,121,1116,1482467232,1,1133),(188,17,101,0,5276,'description',0,1135,122,1133,1482467232,1,1134),(188,17,101,0,5277,'description',0,1136,123,1134,1482467232,1,1135),(188,17,101,0,5278,'description',0,1137,124,1135,1482467232,1,1136),(188,17,101,0,5279,'description',0,1138,125,1136,1482467232,1,1137),(188,17,101,0,5280,'description',0,1139,126,1137,1482467232,1,1138),(188,17,101,0,5281,'description',0,1123,127,1138,1482467232,1,1139),(188,17,101,0,5282,'description',0,1140,128,1139,1482467232,1,1123),(188,17,101,0,5283,'description',0,1141,129,1123,1482467232,1,1140),(188,17,101,0,5284,'description',0,1142,130,1140,1482467232,1,1141),(188,17,101,0,5285,'description',0,1143,131,1141,1482467232,1,1142),(188,17,101,0,5286,'description',0,1116,132,1142,1482467232,1,1143),(188,17,101,0,5287,'description',0,1144,133,1143,1482467232,1,1116),(188,17,101,0,5288,'description',0,1145,134,1116,1482467232,1,1144),(188,17,101,0,5289,'description',0,1146,135,1144,1482467232,1,1145),(188,17,101,0,5290,'description',0,1147,136,1145,1482467232,1,1146),(188,17,101,0,5291,'description',0,1148,137,1146,1482467232,1,1147),(188,17,101,0,5292,'description',0,1149,138,1147,1482467232,1,1148),(188,17,101,0,5293,'description',0,1150,139,1148,1482467232,1,1149),(188,17,101,0,5294,'description',0,1151,140,1149,1482467232,1,1150),(188,17,101,0,5295,'description',0,1152,141,1150,1482467232,1,1151),(188,17,101,0,5296,'description',0,1153,142,1151,1482467232,1,1152),(188,17,101,0,5297,'description',0,1154,143,1152,1482467232,1,1153),(188,17,101,0,5298,'description',0,1155,144,1153,1482467232,1,1154),(188,17,101,0,5299,'description',0,1125,145,1154,1482467232,1,1155),(188,17,101,0,5300,'description',0,1156,146,1155,1482467232,1,1125),(188,17,101,0,5301,'description',0,1125,147,1125,1482467232,1,1156),(188,17,101,0,5302,'description',0,1121,148,1156,1482467232,1,1125),(188,17,101,0,5303,'description',0,1157,149,1125,1482467232,1,1121),(188,17,101,0,5304,'description',0,1158,150,1121,1482467232,1,1157),(188,17,101,0,5305,'description',0,1159,151,1157,1482467232,1,1158),(188,17,101,0,5306,'description',0,1160,152,1158,1482467232,1,1159),(188,17,101,0,5307,'description',0,1161,153,1159,1482467232,1,1160),(188,17,101,0,5308,'description',0,1162,154,1160,1482467232,1,1161),(188,17,101,0,5309,'description',0,1163,155,1161,1482467232,1,1162),(188,17,101,0,5310,'description',0,1164,156,1162,1482467232,1,1163),(188,17,101,0,5311,'description',0,1147,157,1163,1482467232,1,1164),(188,17,101,0,5312,'description',0,1165,158,1164,1482467232,1,1147),(188,17,101,0,5313,'description',0,1166,159,1147,1482467232,1,1165),(188,17,101,0,5314,'description',0,1167,160,1165,1482467232,1,1166),(188,17,101,0,5315,'description',0,1168,161,1166,1482467232,1,1167),(188,17,101,0,5316,'description',0,1169,162,1167,1482467232,1,1168),(188,17,101,0,5317,'description',0,1170,163,1168,1482467232,1,1169),(188,17,101,0,5318,'description',0,1171,164,1169,1482467232,1,1170),(188,17,101,0,5319,'description',0,1172,165,1170,1482467232,1,1171),(188,17,101,0,5320,'description',0,1169,166,1171,1482467232,1,1172),(188,17,101,0,5321,'description',0,1113,167,1172,1482467232,1,1169),(188,17,101,0,5322,'description',0,1114,168,1169,1482467232,1,1113),(188,17,101,0,5323,'description',0,1173,169,1113,1482467232,1,1114),(188,17,101,0,5324,'description',0,1174,170,1114,1482467232,1,1173),(188,17,101,0,5325,'description',0,1175,171,1173,1482467232,1,1174),(188,17,101,0,5326,'description',0,1176,172,1174,1482467232,1,1175),(188,17,101,0,5327,'description',0,1177,173,1175,1482467232,1,1176),(188,17,101,0,5328,'description',0,1175,174,1176,1482467232,1,1177),(188,17,101,0,5329,'description',0,1178,175,1177,1482467232,1,1175),(188,17,101,0,5330,'description',0,1179,176,1175,1482467232,1,1178),(188,17,101,0,5331,'description',0,1180,177,1178,1482467232,1,1179),(188,17,101,0,5332,'description',0,1166,178,1179,1482467232,1,1180),(188,17,101,0,5333,'description',0,1113,179,1180,1482467232,1,1166),(188,17,101,0,5334,'description',0,1114,180,1166,1482467232,1,1113),(188,17,101,0,5335,'description',0,1113,181,1113,1482467232,1,1114),(188,17,101,0,5336,'description',0,1114,182,1114,1482467232,1,1113),(188,17,101,0,5337,'description',0,1115,183,1113,1482467232,1,1114),(188,17,101,0,5338,'description',0,1116,184,1114,1482467232,1,1115),(188,17,101,0,5339,'description',0,1117,185,1115,1482467232,1,1116),(188,17,101,0,5340,'description',0,1118,186,1116,1482467232,1,1117),(188,17,101,0,5341,'description',0,1119,187,1117,1482467232,1,1118),(188,17,101,0,5342,'description',0,1120,188,1118,1482467232,1,1119),(188,17,101,0,5343,'description',0,1121,189,1119,1482467232,1,1120),(188,17,101,0,5344,'description',0,1122,190,1120,1482467232,1,1121),(188,17,101,0,5345,'description',0,1123,191,1121,1482467232,1,1122),(188,17,101,0,5346,'description',0,1124,192,1122,1482467232,1,1123),(188,17,101,0,5347,'description',0,1113,193,1123,1482467232,1,1124),(188,17,101,0,5348,'description',0,1114,194,1124,1482467232,1,1113),(188,17,101,0,5349,'description',0,1115,195,1113,1482467232,1,1114),(188,17,101,0,5350,'description',0,1125,196,1114,1482467232,1,1115),(188,17,101,0,5351,'description',0,1126,197,1115,1482467232,1,1125),(188,17,101,0,5352,'description',0,1127,198,1125,1482467232,1,1126),(188,17,101,0,5353,'description',0,1128,199,1126,1482467232,1,1127),(188,17,101,0,5354,'description',0,1126,200,1127,1482467232,1,1128),(188,17,101,0,5355,'description',0,1129,201,1128,1482467232,1,1126),(188,17,101,0,5356,'description',0,1118,202,1126,1482467232,1,1129),(188,17,101,0,5357,'description',0,1119,203,1129,1482467232,1,1118),(188,17,101,0,5358,'description',0,1130,204,1118,1482467232,1,1119),(188,17,101,0,5359,'description',0,1131,205,1119,1482467232,1,1130),(188,17,101,0,5360,'description',0,1132,206,1130,1482467232,1,1131),(188,17,101,0,5361,'description',0,1116,207,1131,1482467232,1,1132),(188,17,101,0,5362,'description',0,1133,208,1132,1482467232,1,1116),(188,17,101,0,5363,'description',0,1134,209,1116,1482467232,1,1133),(188,17,101,0,5364,'description',0,1135,210,1133,1482467232,1,1134),(188,17,101,0,5365,'description',0,1136,211,1134,1482467232,1,1135),(188,17,101,0,5366,'description',0,1137,212,1135,1482467232,1,1136),(188,17,101,0,5367,'description',0,1138,213,1136,1482467232,1,1137),(188,17,101,0,5368,'description',0,1139,214,1137,1482467232,1,1138),(188,17,101,0,5369,'description',0,1123,215,1138,1482467232,1,1139),(188,17,101,0,5370,'description',0,1140,216,1139,1482467232,1,1123),(188,17,101,0,5371,'description',0,1141,217,1123,1482467232,1,1140),(188,17,101,0,5372,'description',0,1142,218,1140,1482467232,1,1141),(188,17,101,0,5373,'description',0,1143,219,1141,1482467232,1,1142),(188,17,101,0,5374,'description',0,1116,220,1142,1482467232,1,1143),(188,17,101,0,5375,'description',0,1144,221,1143,1482467232,1,1116),(188,17,101,0,5376,'description',0,1145,222,1116,1482467232,1,1144),(188,17,101,0,5377,'description',0,1146,223,1144,1482467232,1,1145),(188,17,101,0,5378,'description',0,1147,224,1145,1482467232,1,1146),(188,17,101,0,5379,'description',0,1148,225,1146,1482467232,1,1147),(188,17,101,0,5380,'description',0,1149,226,1147,1482467232,1,1148),(188,17,101,0,5381,'description',0,1150,227,1148,1482467232,1,1149),(188,17,101,0,5382,'description',0,1151,228,1149,1482467232,1,1150),(188,17,101,0,5383,'description',0,1152,229,1150,1482467232,1,1151),(188,17,101,0,5384,'description',0,1153,230,1151,1482467232,1,1152),(188,17,101,0,5385,'description',0,1154,231,1152,1482467232,1,1153),(188,17,101,0,5386,'description',0,1155,232,1153,1482467232,1,1154),(188,17,101,0,5387,'description',0,1125,233,1154,1482467232,1,1155),(188,17,101,0,5388,'description',0,1156,234,1155,1482467232,1,1125),(188,17,101,0,5389,'description',0,1125,235,1125,1482467232,1,1156),(188,17,101,0,5390,'description',0,1121,236,1156,1482467232,1,1125),(188,17,101,0,5391,'description',0,1157,237,1125,1482467232,1,1121),(188,17,101,0,5392,'description',0,1158,238,1121,1482467232,1,1157),(188,17,101,0,5393,'description',0,1159,239,1157,1482467232,1,1158),(188,17,101,0,5394,'description',0,1160,240,1158,1482467232,1,1159),(188,17,101,0,5395,'description',0,1161,241,1159,1482467232,1,1160),(188,17,101,0,5396,'description',0,1162,242,1160,1482467232,1,1161),(188,17,101,0,5397,'description',0,1163,243,1161,1482467232,1,1162),(188,17,101,0,5398,'description',0,1164,244,1162,1482467232,1,1163),(188,17,101,0,5399,'description',0,1147,245,1163,1482467232,1,1164),(188,17,101,0,5400,'description',0,1165,246,1164,1482467232,1,1147),(188,17,101,0,5401,'description',0,1166,247,1147,1482467232,1,1165),(188,17,101,0,5402,'description',0,1167,248,1165,1482467232,1,1166),(188,17,101,0,5403,'description',0,1168,249,1166,1482467232,1,1167),(188,17,101,0,5404,'description',0,1169,250,1167,1482467232,1,1168),(188,17,101,0,5405,'description',0,1170,251,1168,1482467232,1,1169),(188,17,101,0,5406,'description',0,1171,252,1169,1482467232,1,1170),(188,17,101,0,5407,'description',0,1172,253,1170,1482467232,1,1171),(188,17,101,0,5408,'description',0,1169,254,1171,1482467232,1,1172),(188,17,101,0,5409,'description',0,1113,255,1172,1482467232,1,1169),(188,17,101,0,5410,'description',0,1114,256,1169,1482467232,1,1113),(188,17,101,0,5411,'description',0,1173,257,1113,1482467232,1,1114),(188,17,101,0,5412,'description',0,1174,258,1114,1482467232,1,1173),(188,17,101,0,5413,'description',0,1175,259,1173,1482467232,1,1174),(188,17,101,0,5414,'description',0,1176,260,1174,1482467232,1,1175),(188,17,101,0,5415,'description',0,1177,261,1175,1482467232,1,1176),(188,17,101,0,5416,'description',0,1175,262,1176,1482467232,1,1177),(188,17,101,0,5417,'description',0,1178,263,1177,1482467232,1,1175),(188,17,101,0,5418,'description',0,1179,264,1175,1482467232,1,1178),(188,17,101,0,5419,'description',0,1180,265,1178,1482467232,1,1179),(188,17,101,0,5420,'description',0,1166,266,1179,1482467232,1,1180),(188,17,101,0,5421,'description',0,1113,267,1180,1482467232,1,1166),(188,17,101,0,5422,'description',0,1114,268,1166,1482467232,1,1113),(188,17,101,0,5423,'description',0,0,269,1113,1482467232,1,1114),(187,17,76,0,5424,'title',0,1182,0,0,1481073301,1,1181),(187,17,76,0,5425,'title',0,1181,1,1181,1481073301,1,1182),(188,17,76,0,5426,'description',0,1182,2,1182,1481073301,1,1181),(188,17,76,0,5427,'description',0,1181,3,1181,1481073301,1,1182),(187,17,76,0,5428,'title',0,1182,4,1182,1481073301,1,1181),(187,17,76,0,5429,'title',0,1181,5,1181,1481073301,1,1182),(188,17,76,0,5430,'description',0,1182,6,1182,1481073301,1,1181),(188,17,76,0,5431,'description',0,0,7,1181,1481073301,1,1182),(187,17,102,0,5432,'title',0,1183,0,0,1482509239,1,1182),(187,17,102,0,5433,'title',0,995,1,1182,1482509239,1,1183),(187,17,102,0,5434,'title',0,1147,2,1183,1482509239,1,995),(188,17,102,0,5435,'description',0,1115,3,995,1482509239,1,1147),(188,17,102,0,5436,'description',0,1116,4,1147,1482509239,1,1115),(188,17,102,0,5437,'description',0,1184,5,1115,1482509239,1,1116),(188,17,102,0,5438,'description',0,1185,6,1116,1482509239,1,1184),(188,17,102,0,5439,'description',0,1186,7,1184,1482509239,1,1185),(188,17,102,0,5440,'description',0,1187,8,1185,1482509239,1,1186),(188,17,102,0,5441,'description',0,1116,9,1186,1482509239,1,1187),(188,17,102,0,5442,'description',0,1188,10,1187,1482509239,1,1116),(188,17,102,0,5443,'description',0,1189,11,1116,1482509239,1,1188),(188,17,102,0,5444,'description',0,1119,12,1188,1482509239,1,1189),(188,17,102,0,5445,'description',0,1190,13,1189,1482509239,1,1119),(188,17,102,0,5446,'description',0,1191,14,1119,1482509239,1,1190),(188,17,102,0,5447,'description',0,1192,15,1190,1482509239,1,1191),(188,17,102,0,5448,'description',0,1193,16,1191,1482509239,1,1192),(188,17,102,0,5449,'description',0,1194,17,1192,1482509239,1,1193),(188,17,102,0,5450,'description',0,1116,18,1193,1482509239,1,1194),(188,17,102,0,5451,'description',0,1195,19,1194,1482509239,1,1116),(188,17,102,0,5452,'description',0,1196,20,1116,1482509239,1,1195),(188,17,102,0,5453,'description',0,1126,21,1195,1482509239,1,1196),(188,17,102,0,5454,'description',0,1197,22,1196,1482509239,1,1126),(188,17,102,0,5455,'description',0,1113,23,1126,1482509239,1,1197),(188,17,102,0,5456,'description',0,1114,24,1197,1482509239,1,1113),(188,17,102,0,5457,'description',0,1145,25,1113,1482509239,1,1114),(188,17,102,0,5458,'description',0,1198,26,1114,1482509239,1,1145),(188,17,102,0,5459,'description',0,1115,27,1145,1482509239,1,1198),(188,17,102,0,5460,'description',0,1187,28,1198,1482509239,1,1115),(188,17,102,0,5461,'description',0,1147,29,1115,1482509239,1,1187),(188,17,102,0,5462,'description',0,1199,30,1187,1482509239,1,1147),(188,17,102,0,5463,'description',0,1200,31,1147,1482509239,1,1199),(188,17,102,0,5464,'description',0,1201,32,1199,1482509239,1,1200),(188,17,102,0,5465,'description',0,1121,33,1200,1482509239,1,1201),(188,17,102,0,5466,'description',0,1202,34,1201,1482509239,1,1121),(188,17,102,0,5467,'description',0,1203,35,1121,1482509239,1,1202),(188,17,102,0,5468,'description',0,1169,36,1202,1482509239,1,1203),(188,17,102,0,5469,'description',0,1204,37,1203,1482509239,1,1169),(188,17,102,0,5470,'description',0,1205,38,1169,1482509239,1,1204),(188,17,102,0,5471,'description',0,1123,39,1204,1482509239,1,1205),(188,17,102,0,5472,'description',0,1206,40,1205,1482509239,1,1123),(188,17,102,0,5473,'description',0,1207,41,1123,1482509239,1,1206),(188,17,102,0,5474,'description',0,1208,42,1206,1482509239,1,1207),(188,17,102,0,5475,'description',0,1209,43,1207,1482509239,1,1208),(188,17,102,0,5476,'description',0,1210,44,1208,1482509239,1,1209),(188,17,102,0,5477,'description',0,1211,45,1209,1482509239,1,1210),(188,17,102,0,5478,'description',0,1176,46,1210,1482509239,1,1211),(188,17,102,0,5479,'description',0,1212,47,1211,1482509239,1,1176),(188,17,102,0,5480,'description',0,1123,48,1176,1482509239,1,1212),(188,17,102,0,5481,'description',0,1213,49,1212,1482509239,1,1123),(188,17,102,0,5482,'description',0,1198,50,1123,1482509239,1,1213),(188,17,102,0,5483,'description',0,1214,51,1213,1482509239,1,1198),(188,17,102,0,5484,'description',0,1113,52,1198,1482509239,1,1214),(188,17,102,0,5485,'description',0,1114,53,1214,1482509239,1,1113),(188,17,102,0,5486,'description',0,1132,54,1113,1482509239,1,1114),(188,17,102,0,5487,'description',0,1215,55,1114,1482509239,1,1132),(188,17,102,0,5488,'description',0,1216,56,1132,1482509239,1,1215),(188,17,102,0,5489,'description',0,1155,57,1215,1482509239,1,1216),(188,17,102,0,5490,'description',0,1121,58,1216,1482509239,1,1155),(188,17,102,0,5491,'description',0,1217,59,1155,1482509239,1,1121),(188,17,102,0,5492,'description',0,1218,60,1121,1482509239,1,1217),(188,17,102,0,5493,'description',0,1219,61,1217,1482509239,1,1218),(188,17,102,0,5494,'description',0,1207,62,1218,1482509239,1,1219),(188,17,102,0,5495,'description',0,1113,63,1219,1482509239,1,1207),(188,17,102,0,5496,'description',0,1114,64,1207,1482509239,1,1113),(188,17,102,0,5497,'description',0,1220,65,1113,1482509239,1,1114),(188,17,102,0,5498,'description',0,1211,66,1114,1482509239,1,1220),(188,17,102,0,5499,'description',0,1221,67,1220,1482509239,1,1211),(188,17,102,0,5500,'description',0,1222,68,1211,1482509239,1,1221),(188,17,102,0,5501,'description',0,1223,69,1221,1482509239,1,1222),(188,17,102,0,5502,'description',0,1140,70,1222,1482509239,1,1223),(188,17,102,0,5503,'description',0,1224,71,1223,1482509239,1,1140),(188,17,102,0,5504,'description',0,1225,72,1140,1482509239,1,1224),(188,17,102,0,5505,'description',0,1226,73,1224,1482509239,1,1225),(188,17,102,0,5506,'description',0,1214,74,1225,1482509239,1,1226),(188,17,102,0,5507,'description',0,1227,75,1226,1482509239,1,1214),(188,17,102,0,5508,'description',0,1147,76,1214,1482509239,1,1227),(188,17,102,0,5509,'description',0,1228,77,1227,1482509239,1,1147),(188,17,102,0,5510,'description',0,1229,78,1147,1482509239,1,1228),(188,17,102,0,5511,'description',0,1230,79,1228,1482509239,1,1229),(188,17,102,0,5512,'description',0,1113,80,1229,1482509239,1,1230),(188,17,102,0,5513,'description',0,1114,81,1230,1482509239,1,1113),(188,17,102,0,5514,'description',0,1231,82,1113,1482509239,1,1114),(188,17,102,0,5515,'description',0,1232,83,1114,1482509239,1,1231),(188,17,102,0,5516,'description',0,1233,84,1231,1482509239,1,1232),(188,17,102,0,5517,'description',0,1234,85,1232,1482509239,1,1233),(188,17,102,0,5518,'description',0,1235,86,1233,1482509239,1,1234),(188,17,102,0,5519,'description',0,1169,87,1234,1482509239,1,1235),(188,17,102,0,5520,'description',0,1236,88,1235,1482509239,1,1169),(188,17,102,0,5521,'description',0,1123,89,1169,1482509239,1,1236),(188,17,102,0,5522,'description',0,1230,90,1236,1482509239,1,1123),(188,17,102,0,5523,'description',0,1237,91,1123,1482509239,1,1230),(188,17,102,0,5524,'description',0,1238,92,1230,1482509239,1,1237),(188,17,102,0,5525,'description',0,1147,93,1237,1482509239,1,1238),(188,17,102,0,5526,'description',0,1115,94,1238,1482509239,1,1147),(188,17,102,0,5527,'description',0,1116,95,1147,1482509239,1,1115),(188,17,102,0,5528,'description',0,1184,96,1115,1482509239,1,1116),(188,17,102,0,5529,'description',0,1185,97,1116,1482509239,1,1184),(188,17,102,0,5530,'description',0,1186,98,1184,1482509239,1,1185),(188,17,102,0,5531,'description',0,1187,99,1185,1482509239,1,1186),(188,17,102,0,5532,'description',0,1116,100,1186,1482509239,1,1187),(188,17,102,0,5533,'description',0,1188,101,1187,1482509239,1,1116),(188,17,102,0,5534,'description',0,1189,102,1116,1482509239,1,1188),(188,17,102,0,5535,'description',0,1119,103,1188,1482509239,1,1189),(188,17,102,0,5536,'description',0,1190,104,1189,1482509239,1,1119),(188,17,102,0,5537,'description',0,1191,105,1119,1482509239,1,1190),(188,17,102,0,5538,'description',0,1192,106,1190,1482509239,1,1191),(188,17,102,0,5539,'description',0,1193,107,1191,1482509239,1,1192),(188,17,102,0,5540,'description',0,1194,108,1192,1482509239,1,1193),(188,17,102,0,5541,'description',0,1116,109,1193,1482509239,1,1194),(188,17,102,0,5542,'description',0,1195,110,1194,1482509239,1,1116),(188,17,102,0,5543,'description',0,1196,111,1116,1482509239,1,1195),(188,17,102,0,5544,'description',0,1126,112,1195,1482509239,1,1196),(188,17,102,0,5545,'description',0,1197,113,1196,1482509239,1,1126),(188,17,102,0,5546,'description',0,1113,114,1126,1482509239,1,1197),(188,17,102,0,5547,'description',0,1114,115,1197,1482509239,1,1113),(188,17,102,0,5548,'description',0,1145,116,1113,1482509239,1,1114),(188,17,102,0,5549,'description',0,1198,117,1114,1482509239,1,1145),(188,17,102,0,5550,'description',0,1115,118,1145,1482509239,1,1198),(188,17,102,0,5551,'description',0,1187,119,1198,1482509239,1,1115),(188,17,102,0,5552,'description',0,1147,120,1115,1482509239,1,1187),(188,17,102,0,5553,'description',0,1199,121,1187,1482509239,1,1147),(188,17,102,0,5554,'description',0,1200,122,1147,1482509239,1,1199),(188,17,102,0,5555,'description',0,1201,123,1199,1482509239,1,1200),(188,17,102,0,5556,'description',0,1121,124,1200,1482509239,1,1201),(188,17,102,0,5557,'description',0,1202,125,1201,1482509239,1,1121),(188,17,102,0,5558,'description',0,1203,126,1121,1482509239,1,1202),(188,17,102,0,5559,'description',0,1169,127,1202,1482509239,1,1203),(188,17,102,0,5560,'description',0,1204,128,1203,1482509239,1,1169),(188,17,102,0,5561,'description',0,1205,129,1169,1482509239,1,1204),(188,17,102,0,5562,'description',0,1123,130,1204,1482509239,1,1205),(188,17,102,0,5563,'description',0,1206,131,1205,1482509239,1,1123),(188,17,102,0,5564,'description',0,1207,132,1123,1482509239,1,1206),(188,17,102,0,5565,'description',0,1208,133,1206,1482509239,1,1207),(188,17,102,0,5566,'description',0,1209,134,1207,1482509239,1,1208),(188,17,102,0,5567,'description',0,1210,135,1208,1482509239,1,1209),(188,17,102,0,5568,'description',0,1211,136,1209,1482509239,1,1210),(188,17,102,0,5569,'description',0,1176,137,1210,1482509239,1,1211),(188,17,102,0,5570,'description',0,1212,138,1211,1482509239,1,1176),(188,17,102,0,5571,'description',0,1123,139,1176,1482509239,1,1212),(188,17,102,0,5572,'description',0,1213,140,1212,1482509239,1,1123),(188,17,102,0,5573,'description',0,1198,141,1123,1482509239,1,1213),(188,17,102,0,5574,'description',0,1214,142,1213,1482509239,1,1198),(188,17,102,0,5575,'description',0,1113,143,1198,1482509239,1,1214),(188,17,102,0,5576,'description',0,1114,144,1214,1482509239,1,1113),(188,17,102,0,5577,'description',0,1132,145,1113,1482509239,1,1114),(188,17,102,0,5578,'description',0,1215,146,1114,1482509239,1,1132),(188,17,102,0,5579,'description',0,1216,147,1132,1482509239,1,1215),(188,17,102,0,5580,'description',0,1155,148,1215,1482509239,1,1216),(188,17,102,0,5581,'description',0,1121,149,1216,1482509239,1,1155),(188,17,102,0,5582,'description',0,1217,150,1155,1482509239,1,1121),(188,17,102,0,5583,'description',0,1218,151,1121,1482509239,1,1217),(188,17,102,0,5584,'description',0,1219,152,1217,1482509239,1,1218),(188,17,102,0,5585,'description',0,1207,153,1218,1482509239,1,1219),(188,17,102,0,5586,'description',0,1113,154,1219,1482509239,1,1207),(188,17,102,0,5587,'description',0,1114,155,1207,1482509239,1,1113),(188,17,102,0,5588,'description',0,1220,156,1113,1482509239,1,1114),(188,17,102,0,5589,'description',0,1211,157,1114,1482509239,1,1220),(188,17,102,0,5590,'description',0,1221,158,1220,1482509239,1,1211),(188,17,102,0,5591,'description',0,1222,159,1211,1482509239,1,1221),(188,17,102,0,5592,'description',0,1223,160,1221,1482509239,1,1222),(188,17,102,0,5593,'description',0,1140,161,1222,1482509239,1,1223),(188,17,102,0,5594,'description',0,1224,162,1223,1482509239,1,1140),(188,17,102,0,5595,'description',0,1225,163,1140,1482509239,1,1224),(188,17,102,0,5596,'description',0,1226,164,1224,1482509239,1,1225),(188,17,102,0,5597,'description',0,1214,165,1225,1482509239,1,1226),(188,17,102,0,5598,'description',0,1227,166,1226,1482509239,1,1214),(188,17,102,0,5599,'description',0,1147,167,1214,1482509239,1,1227),(188,17,102,0,5600,'description',0,1228,168,1227,1482509239,1,1147),(188,17,102,0,5601,'description',0,1229,169,1147,1482509239,1,1228),(188,17,102,0,5602,'description',0,1230,170,1228,1482509239,1,1229),(188,17,102,0,5603,'description',0,1113,171,1229,1482509239,1,1230),(188,17,102,0,5604,'description',0,1114,172,1230,1482509239,1,1113),(188,17,102,0,5605,'description',0,1231,173,1113,1482509239,1,1114),(188,17,102,0,5606,'description',0,1232,174,1114,1482509239,1,1231),(188,17,102,0,5607,'description',0,1233,175,1231,1482509239,1,1232),(188,17,102,0,5608,'description',0,1234,176,1232,1482509239,1,1233),(188,17,102,0,5609,'description',0,1235,177,1233,1482509239,1,1234),(188,17,102,0,5610,'description',0,1169,178,1234,1482509239,1,1235),(188,17,102,0,5611,'description',0,1236,179,1235,1482509239,1,1169),(188,17,102,0,5612,'description',0,1123,180,1169,1482509239,1,1236),(188,17,102,0,5613,'description',0,1230,181,1236,1482509239,1,1123),(188,17,102,0,5614,'description',0,1237,182,1123,1482509239,1,1230),(188,17,102,0,5615,'description',0,1238,183,1230,1482509239,1,1237),(188,17,102,0,5616,'description',0,1147,184,1237,1482509239,1,1238),(188,17,102,0,5617,'description',0,1115,185,1238,1482509239,1,1147),(188,17,102,0,5618,'description',0,1116,186,1147,1482509239,1,1115),(188,17,102,0,5619,'description',0,1184,187,1115,1482509239,1,1116),(188,17,102,0,5620,'description',0,1185,188,1116,1482509239,1,1184),(188,17,102,0,5621,'description',0,1186,189,1184,1482509239,1,1185),(188,17,102,0,5622,'description',0,1187,190,1185,1482509239,1,1186),(188,17,102,0,5623,'description',0,1116,191,1186,1482509239,1,1187),(188,17,102,0,5624,'description',0,1188,192,1187,1482509239,1,1116),(188,17,102,0,5625,'description',0,1189,193,1116,1482509239,1,1188),(188,17,102,0,5626,'description',0,1119,194,1188,1482509239,1,1189),(188,17,102,0,5627,'description',0,1190,195,1189,1482509239,1,1119),(188,17,102,0,5628,'description',0,1191,196,1119,1482509239,1,1190),(188,17,102,0,5629,'description',0,1192,197,1190,1482509239,1,1191),(188,17,102,0,5630,'description',0,1193,198,1191,1482509239,1,1192),(188,17,102,0,5631,'description',0,1194,199,1192,1482509239,1,1193),(188,17,102,0,5632,'description',0,1116,200,1193,1482509239,1,1194),(188,17,102,0,5633,'description',0,1195,201,1194,1482509239,1,1116),(188,17,102,0,5634,'description',0,1196,202,1116,1482509239,1,1195),(188,17,102,0,5635,'description',0,1126,203,1195,1482509239,1,1196),(188,17,102,0,5636,'description',0,1197,204,1196,1482509239,1,1126),(188,17,102,0,5637,'description',0,1113,205,1126,1482509239,1,1197),(188,17,102,0,5638,'description',0,1114,206,1197,1482509239,1,1113),(188,17,102,0,5639,'description',0,1145,207,1113,1482509239,1,1114),(188,17,102,0,5640,'description',0,1198,208,1114,1482509239,1,1145),(188,17,102,0,5641,'description',0,1115,209,1145,1482509239,1,1198),(188,17,102,0,5642,'description',0,1187,210,1198,1482509239,1,1115),(188,17,102,0,5643,'description',0,1147,211,1115,1482509239,1,1187),(188,17,102,0,5644,'description',0,1199,212,1187,1482509239,1,1147),(188,17,102,0,5645,'description',0,1200,213,1147,1482509239,1,1199),(188,17,102,0,5646,'description',0,1201,214,1199,1482509239,1,1200),(188,17,102,0,5647,'description',0,1121,215,1200,1482509239,1,1201),(188,17,102,0,5648,'description',0,1202,216,1201,1482509239,1,1121),(188,17,102,0,5649,'description',0,1203,217,1121,1482509239,1,1202),(188,17,102,0,5650,'description',0,1169,218,1202,1482509239,1,1203),(188,17,102,0,5651,'description',0,1204,219,1203,1482509239,1,1169),(188,17,102,0,5652,'description',0,1205,220,1169,1482509239,1,1204),(188,17,102,0,5653,'description',0,1123,221,1204,1482509239,1,1205),(188,17,102,0,5654,'description',0,1206,222,1205,1482509239,1,1123),(188,17,102,0,5655,'description',0,1207,223,1123,1482509239,1,1206),(188,17,102,0,5656,'description',0,1208,224,1206,1482509239,1,1207),(188,17,102,0,5657,'description',0,1209,225,1207,1482509239,1,1208),(188,17,102,0,5658,'description',0,1210,226,1208,1482509239,1,1209),(188,17,102,0,5659,'description',0,1211,227,1209,1482509239,1,1210),(188,17,102,0,5660,'description',0,1176,228,1210,1482509239,1,1211),(188,17,102,0,5661,'description',0,1212,229,1211,1482509239,1,1176),(188,17,102,0,5662,'description',0,1123,230,1176,1482509239,1,1212),(188,17,102,0,5663,'description',0,1213,231,1212,1482509239,1,1123),(188,17,102,0,5664,'description',0,1198,232,1123,1482509239,1,1213),(188,17,102,0,5665,'description',0,1214,233,1213,1482509239,1,1198),(188,17,102,0,5666,'description',0,1113,234,1198,1482509239,1,1214),(188,17,102,0,5667,'description',0,1114,235,1214,1482509239,1,1113),(188,17,102,0,5668,'description',0,1132,236,1113,1482509239,1,1114),(188,17,102,0,5669,'description',0,1215,237,1114,1482509239,1,1132),(188,17,102,0,5670,'description',0,1216,238,1132,1482509239,1,1215),(188,17,102,0,5671,'description',0,1155,239,1215,1482509239,1,1216),(188,17,102,0,5672,'description',0,1121,240,1216,1482509239,1,1155),(188,17,102,0,5673,'description',0,1217,241,1155,1482509239,1,1121),(188,17,102,0,5674,'description',0,1218,242,1121,1482509239,1,1217),(188,17,102,0,5675,'description',0,1219,243,1217,1482509239,1,1218),(188,17,102,0,5676,'description',0,1207,244,1218,1482509239,1,1219),(188,17,102,0,5677,'description',0,1113,245,1219,1482509239,1,1207),(188,17,102,0,5678,'description',0,1114,246,1207,1482509239,1,1113),(188,17,102,0,5679,'description',0,1220,247,1113,1482509239,1,1114),(188,17,102,0,5680,'description',0,1211,248,1114,1482509239,1,1220),(188,17,102,0,5681,'description',0,1221,249,1220,1482509239,1,1211),(188,17,102,0,5682,'description',0,1222,250,1211,1482509239,1,1221),(188,17,102,0,5683,'description',0,1223,251,1221,1482509239,1,1222),(188,17,102,0,5684,'description',0,1140,252,1222,1482509239,1,1223),(188,17,102,0,5685,'description',0,1224,253,1223,1482509239,1,1140),(188,17,102,0,5686,'description',0,1225,254,1140,1482509239,1,1224),(188,17,102,0,5687,'description',0,1226,255,1224,1482509239,1,1225),(188,17,102,0,5688,'description',0,1214,256,1225,1482509239,1,1226),(188,17,102,0,5689,'description',0,1227,257,1226,1482509239,1,1214),(188,17,102,0,5690,'description',0,1147,258,1214,1482509239,1,1227),(188,17,102,0,5691,'description',0,1228,259,1227,1482509239,1,1147),(188,17,102,0,5692,'description',0,1229,260,1147,1482509239,1,1228),(188,17,102,0,5693,'description',0,1230,261,1228,1482509239,1,1229),(188,17,102,0,5694,'description',0,1113,262,1229,1482509239,1,1230),(188,17,102,0,5695,'description',0,1114,263,1230,1482509239,1,1113),(188,17,102,0,5696,'description',0,1231,264,1113,1482509239,1,1114),(188,17,102,0,5697,'description',0,1232,265,1114,1482509239,1,1231),(188,17,102,0,5698,'description',0,1233,266,1231,1482509239,1,1232),(188,17,102,0,5699,'description',0,1234,267,1232,1482509239,1,1233),(188,17,102,0,5700,'description',0,1235,268,1233,1482509239,1,1234),(188,17,102,0,5701,'description',0,1169,269,1234,1482509239,1,1235),(188,17,102,0,5702,'description',0,1236,270,1235,1482509239,1,1169),(188,17,102,0,5703,'description',0,1123,271,1169,1482509239,1,1236),(188,17,102,0,5704,'description',0,1230,272,1236,1482509239,1,1123),(188,17,102,0,5705,'description',0,1237,273,1123,1482509239,1,1230),(188,17,102,0,5706,'description',0,1238,274,1230,1482509239,1,1237),(188,17,102,0,5707,'description',0,1147,275,1237,1482509239,1,1238),(188,17,102,0,5708,'description',0,1115,276,1238,1482509239,1,1147),(188,17,102,0,5709,'description',0,1116,277,1147,1482509239,1,1115),(188,17,102,0,5710,'description',0,1184,278,1115,1482509239,1,1116),(188,17,102,0,5711,'description',0,1185,279,1116,1482509239,1,1184),(188,17,102,0,5712,'description',0,1186,280,1184,1482509239,1,1185),(188,17,102,0,5713,'description',0,1187,281,1185,1482509239,1,1186),(188,17,102,0,5714,'description',0,1116,282,1186,1482509239,1,1187),(188,17,102,0,5715,'description',0,1188,283,1187,1482509239,1,1116),(188,17,102,0,5716,'description',0,1189,284,1116,1482509239,1,1188),(188,17,102,0,5717,'description',0,1119,285,1188,1482509239,1,1189),(188,17,102,0,5718,'description',0,1190,286,1189,1482509239,1,1119),(188,17,102,0,5719,'description',0,1191,287,1119,1482509239,1,1190),(188,17,102,0,5720,'description',0,1192,288,1190,1482509239,1,1191),(188,17,102,0,5721,'description',0,1193,289,1191,1482509239,1,1192),(188,17,102,0,5722,'description',0,1194,290,1192,1482509239,1,1193),(188,17,102,0,5723,'description',0,1116,291,1193,1482509239,1,1194),(188,17,102,0,5724,'description',0,1195,292,1194,1482509239,1,1116),(188,17,102,0,5725,'description',0,1196,293,1116,1482509239,1,1195),(188,17,102,0,5726,'description',0,1126,294,1195,1482509239,1,1196),(188,17,102,0,5727,'description',0,1197,295,1196,1482509239,1,1126),(188,17,102,0,5728,'description',0,1113,296,1126,1482509239,1,1197),(188,17,102,0,5729,'description',0,1114,297,1197,1482509239,1,1113),(188,17,102,0,5730,'description',0,1145,298,1113,1482509239,1,1114),(188,17,102,0,5731,'description',0,1198,299,1114,1482509239,1,1145),(188,17,102,0,5732,'description',0,1115,300,1145,1482509239,1,1198),(188,17,102,0,5733,'description',0,1187,301,1198,1482509239,1,1115),(188,17,102,0,5734,'description',0,1147,302,1115,1482509239,1,1187),(188,17,102,0,5735,'description',0,1199,303,1187,1482509239,1,1147),(188,17,102,0,5736,'description',0,1200,304,1147,1482509239,1,1199),(188,17,102,0,5737,'description',0,1201,305,1199,1482509239,1,1200),(188,17,102,0,5738,'description',0,1121,306,1200,1482509239,1,1201),(188,17,102,0,5739,'description',0,1202,307,1201,1482509239,1,1121),(188,17,102,0,5740,'description',0,1203,308,1121,1482509239,1,1202),(188,17,102,0,5741,'description',0,1169,309,1202,1482509239,1,1203),(188,17,102,0,5742,'description',0,1204,310,1203,1482509239,1,1169),(188,17,102,0,5743,'description',0,1205,311,1169,1482509239,1,1204),(188,17,102,0,5744,'description',0,1123,312,1204,1482509239,1,1205),(188,17,102,0,5745,'description',0,1206,313,1205,1482509239,1,1123),(188,17,102,0,5746,'description',0,1207,314,1123,1482509239,1,1206),(188,17,102,0,5747,'description',0,1208,315,1206,1482509239,1,1207),(188,17,102,0,5748,'description',0,1209,316,1207,1482509239,1,1208),(188,17,102,0,5749,'description',0,1210,317,1208,1482509239,1,1209),(188,17,102,0,5750,'description',0,1211,318,1209,1482509239,1,1210),(188,17,102,0,5751,'description',0,1176,319,1210,1482509239,1,1211),(188,17,102,0,5752,'description',0,1212,320,1211,1482509239,1,1176),(188,17,102,0,5753,'description',0,1123,321,1176,1482509239,1,1212),(188,17,102,0,5754,'description',0,1213,322,1212,1482509239,1,1123),(188,17,102,0,5755,'description',0,1198,323,1123,1482509239,1,1213),(188,17,102,0,5756,'description',0,1214,324,1213,1482509239,1,1198),(188,17,102,0,5757,'description',0,1113,325,1198,1482509239,1,1214),(188,17,102,0,5758,'description',0,1114,326,1214,1482509239,1,1113),(188,17,102,0,5759,'description',0,1132,327,1113,1482509239,1,1114),(188,17,102,0,5760,'description',0,1215,328,1114,1482509239,1,1132),(188,17,102,0,5761,'description',0,1216,329,1132,1482509239,1,1215),(188,17,102,0,5762,'description',0,1155,330,1215,1482509239,1,1216),(188,17,102,0,5763,'description',0,1121,331,1216,1482509239,1,1155),(188,17,102,0,5764,'description',0,1217,332,1155,1482509239,1,1121),(188,17,102,0,5765,'description',0,1218,333,1121,1482509239,1,1217),(188,17,102,0,5766,'description',0,1219,334,1217,1482509239,1,1218),(188,17,102,0,5767,'description',0,1207,335,1218,1482509239,1,1219),(188,17,102,0,5768,'description',0,1113,336,1219,1482509239,1,1207),(188,17,102,0,5769,'description',0,1114,337,1207,1482509239,1,1113),(188,17,102,0,5770,'description',0,1220,338,1113,1482509239,1,1114),(188,17,102,0,5771,'description',0,1211,339,1114,1482509239,1,1220),(188,17,102,0,5772,'description',0,1221,340,1220,1482509239,1,1211),(188,17,102,0,5773,'description',0,1222,341,1211,1482509239,1,1221),(188,17,102,0,5774,'description',0,1223,342,1221,1482509239,1,1222),(188,17,102,0,5775,'description',0,1140,343,1222,1482509239,1,1223),(188,17,102,0,5776,'description',0,1224,344,1223,1482509239,1,1140),(188,17,102,0,5777,'description',0,1225,345,1140,1482509239,1,1224),(188,17,102,0,5778,'description',0,1226,346,1224,1482509239,1,1225),(188,17,102,0,5779,'description',0,1214,347,1225,1482509239,1,1226),(188,17,102,0,5780,'description',0,1227,348,1226,1482509239,1,1214),(188,17,102,0,5781,'description',0,1147,349,1214,1482509239,1,1227),(188,17,102,0,5782,'description',0,1228,350,1227,1482509239,1,1147),(188,17,102,0,5783,'description',0,1229,351,1147,1482509239,1,1228),(188,17,102,0,5784,'description',0,1230,352,1228,1482509239,1,1229),(188,17,102,0,5785,'description',0,1113,353,1229,1482509239,1,1230),(188,17,102,0,5786,'description',0,1114,354,1230,1482509239,1,1113),(188,17,102,0,5787,'description',0,1231,355,1113,1482509239,1,1114),(188,17,102,0,5788,'description',0,1232,356,1114,1482509239,1,1231),(188,17,102,0,5789,'description',0,1233,357,1231,1482509239,1,1232),(188,17,102,0,5790,'description',0,1234,358,1232,1482509239,1,1233),(188,17,102,0,5791,'description',0,1235,359,1233,1482509239,1,1234),(188,17,102,0,5792,'description',0,1169,360,1234,1482509239,1,1235),(188,17,102,0,5793,'description',0,1236,361,1235,1482509239,1,1169),(188,17,102,0,5794,'description',0,1123,362,1169,1482509239,1,1236),(188,17,102,0,5795,'description',0,1230,363,1236,1482509239,1,1123),(188,17,102,0,5796,'description',0,1237,364,1123,1482509239,1,1230),(188,17,102,0,5797,'description',0,1238,365,1230,1482509239,1,1237),(188,17,102,0,5798,'description',0,1147,366,1237,1482509239,1,1238),(188,17,102,0,5799,'description',0,1115,367,1238,1482509239,1,1147),(188,17,102,0,5800,'description',0,1116,368,1147,1482509239,1,1115),(188,17,102,0,5801,'description',0,1184,369,1115,1482509239,1,1116),(188,17,102,0,5802,'description',0,1185,370,1116,1482509239,1,1184),(188,17,102,0,5803,'description',0,1186,371,1184,1482509239,1,1185),(188,17,102,0,5804,'description',0,1187,372,1185,1482509239,1,1186),(188,17,102,0,5805,'description',0,1116,373,1186,1482509239,1,1187),(188,17,102,0,5806,'description',0,1188,374,1187,1482509239,1,1116),(188,17,102,0,5807,'description',0,1189,375,1116,1482509239,1,1188),(188,17,102,0,5808,'description',0,1119,376,1188,1482509239,1,1189),(188,17,102,0,5809,'description',0,1190,377,1189,1482509239,1,1119),(188,17,102,0,5810,'description',0,1191,378,1119,1482509239,1,1190),(188,17,102,0,5811,'description',0,1192,379,1190,1482509239,1,1191),(188,17,102,0,5812,'description',0,1193,380,1191,1482509239,1,1192),(188,17,102,0,5813,'description',0,1194,381,1192,1482509239,1,1193),(188,17,102,0,5814,'description',0,1116,382,1193,1482509239,1,1194),(188,17,102,0,5815,'description',0,1195,383,1194,1482509239,1,1116),(188,17,102,0,5816,'description',0,1196,384,1116,1482509239,1,1195),(188,17,102,0,5817,'description',0,1126,385,1195,1482509239,1,1196),(188,17,102,0,5818,'description',0,1197,386,1196,1482509239,1,1126),(188,17,102,0,5819,'description',0,1113,387,1126,1482509239,1,1197),(188,17,102,0,5820,'description',0,1114,388,1197,1482509239,1,1113),(188,17,102,0,5821,'description',0,1145,389,1113,1482509239,1,1114),(188,17,102,0,5822,'description',0,1198,390,1114,1482509239,1,1145),(188,17,102,0,5823,'description',0,1115,391,1145,1482509239,1,1198),(188,17,102,0,5824,'description',0,1187,392,1198,1482509239,1,1115),(188,17,102,0,5825,'description',0,1147,393,1115,1482509239,1,1187),(188,17,102,0,5826,'description',0,1199,394,1187,1482509239,1,1147),(188,17,102,0,5827,'description',0,1200,395,1147,1482509239,1,1199),(188,17,102,0,5828,'description',0,1201,396,1199,1482509239,1,1200),(188,17,102,0,5829,'description',0,1121,397,1200,1482509239,1,1201),(188,17,102,0,5830,'description',0,1202,398,1201,1482509239,1,1121),(188,17,102,0,5831,'description',0,1203,399,1121,1482509239,1,1202),(188,17,102,0,5832,'description',0,1169,400,1202,1482509239,1,1203),(188,17,102,0,5833,'description',0,1204,401,1203,1482509239,1,1169),(188,17,102,0,5834,'description',0,1205,402,1169,1482509239,1,1204),(188,17,102,0,5835,'description',0,1123,403,1204,1482509239,1,1205),(188,17,102,0,5836,'description',0,1206,404,1205,1482509239,1,1123),(188,17,102,0,5837,'description',0,1207,405,1123,1482509239,1,1206),(188,17,102,0,5838,'description',0,1208,406,1206,1482509239,1,1207),(188,17,102,0,5839,'description',0,1209,407,1207,1482509239,1,1208),(188,17,102,0,5840,'description',0,1210,408,1208,1482509239,1,1209),(188,17,102,0,5841,'description',0,1211,409,1209,1482509239,1,1210),(188,17,102,0,5842,'description',0,1176,410,1210,1482509239,1,1211),(188,17,102,0,5843,'description',0,1212,411,1211,1482509239,1,1176),(188,17,102,0,5844,'description',0,1123,412,1176,1482509239,1,1212),(188,17,102,0,5845,'description',0,1213,413,1212,1482509239,1,1123),(188,17,102,0,5846,'description',0,1198,414,1123,1482509239,1,1213),(188,17,102,0,5847,'description',0,1214,415,1213,1482509239,1,1198),(188,17,102,0,5848,'description',0,1113,416,1198,1482509239,1,1214),(188,17,102,0,5849,'description',0,1114,417,1214,1482509239,1,1113),(188,17,102,0,5850,'description',0,1132,418,1113,1482509239,1,1114),(188,17,102,0,5851,'description',0,1215,419,1114,1482509239,1,1132),(188,17,102,0,5852,'description',0,1216,420,1132,1482509239,1,1215),(188,17,102,0,5853,'description',0,1155,421,1215,1482509239,1,1216),(188,17,102,0,5854,'description',0,1121,422,1216,1482509239,1,1155),(188,17,102,0,5855,'description',0,1217,423,1155,1482509239,1,1121),(188,17,102,0,5856,'description',0,1218,424,1121,1482509239,1,1217),(188,17,102,0,5857,'description',0,1219,425,1217,1482509239,1,1218),(188,17,102,0,5858,'description',0,1207,426,1218,1482509239,1,1219),(188,17,102,0,5859,'description',0,1113,427,1219,1482509239,1,1207),(188,17,102,0,5860,'description',0,1114,428,1207,1482509239,1,1113),(188,17,102,0,5861,'description',0,1220,429,1113,1482509239,1,1114),(188,17,102,0,5862,'description',0,1211,430,1114,1482509239,1,1220),(188,17,102,0,5863,'description',0,1221,431,1220,1482509239,1,1211),(188,17,102,0,5864,'description',0,1222,432,1211,1482509239,1,1221),(188,17,102,0,5865,'description',0,1223,433,1221,1482509239,1,1222),(188,17,102,0,5866,'description',0,1140,434,1222,1482509239,1,1223),(188,17,102,0,5867,'description',0,1224,435,1223,1482509239,1,1140),(188,17,102,0,5868,'description',0,1225,436,1140,1482509239,1,1224),(188,17,102,0,5869,'description',0,1226,437,1224,1482509239,1,1225),(188,17,102,0,5870,'description',0,1214,438,1225,1482509239,1,1226),(188,17,102,0,5871,'description',0,1227,439,1226,1482509239,1,1214),(188,17,102,0,5872,'description',0,1147,440,1214,1482509239,1,1227),(188,17,102,0,5873,'description',0,1228,441,1227,1482509239,1,1147),(188,17,102,0,5874,'description',0,1229,442,1147,1482509239,1,1228),(188,17,102,0,5875,'description',0,1230,443,1228,1482509239,1,1229),(188,17,102,0,5876,'description',0,1113,444,1229,1482509239,1,1230),(188,17,102,0,5877,'description',0,1114,445,1230,1482509239,1,1113),(188,17,102,0,5878,'description',0,1231,446,1113,1482509239,1,1114),(188,17,102,0,5879,'description',0,1232,447,1114,1482509239,1,1231),(188,17,102,0,5880,'description',0,1233,448,1231,1482509239,1,1232),(188,17,102,0,5881,'description',0,1234,449,1232,1482509239,1,1233),(188,17,102,0,5882,'description',0,1235,450,1233,1482509239,1,1234),(188,17,102,0,5883,'description',0,1169,451,1234,1482509239,1,1235),(188,17,102,0,5884,'description',0,1236,452,1235,1482509239,1,1169),(188,17,102,0,5885,'description',0,1123,453,1169,1482509239,1,1236),(188,17,102,0,5886,'description',0,1230,454,1236,1482509239,1,1123),(188,17,102,0,5887,'description',0,1237,455,1123,1482509239,1,1230),(188,17,102,0,5888,'description',0,1238,456,1230,1482509239,1,1237),(188,17,102,0,5889,'description',0,1147,457,1237,1482509239,1,1238),(188,17,102,0,5890,'description',0,1115,458,1238,1482509239,1,1147),(188,17,102,0,5891,'description',0,1116,459,1147,1482509239,1,1115),(188,17,102,0,5892,'description',0,1184,460,1115,1482509239,1,1116),(188,17,102,0,5893,'description',0,1185,461,1116,1482509239,1,1184),(188,17,102,0,5894,'description',0,1186,462,1184,1482509239,1,1185),(188,17,102,0,5895,'description',0,1187,463,1185,1482509239,1,1186),(188,17,102,0,5896,'description',0,1116,464,1186,1482509239,1,1187),(188,17,102,0,5897,'description',0,1188,465,1187,1482509239,1,1116),(188,17,102,0,5898,'description',0,1189,466,1116,1482509239,1,1188),(188,17,102,0,5899,'description',0,1119,467,1188,1482509239,1,1189),(188,17,102,0,5900,'description',0,1190,468,1189,1482509239,1,1119),(188,17,102,0,5901,'description',0,1191,469,1119,1482509239,1,1190),(188,17,102,0,5902,'description',0,1192,470,1190,1482509239,1,1191),(188,17,102,0,5903,'description',0,1193,471,1191,1482509239,1,1192),(188,17,102,0,5904,'description',0,1194,472,1192,1482509239,1,1193),(188,17,102,0,5905,'description',0,1116,473,1193,1482509239,1,1194),(188,17,102,0,5906,'description',0,1195,474,1194,1482509239,1,1116),(188,17,102,0,5907,'description',0,1196,475,1116,1482509239,1,1195),(188,17,102,0,5908,'description',0,1126,476,1195,1482509239,1,1196),(188,17,102,0,5909,'description',0,1197,477,1196,1482509239,1,1126),(188,17,102,0,5910,'description',0,1113,478,1126,1482509239,1,1197),(188,17,102,0,5911,'description',0,1114,479,1197,1482509239,1,1113),(188,17,102,0,5912,'description',0,1145,480,1113,1482509239,1,1114),(188,17,102,0,5913,'description',0,1198,481,1114,1482509239,1,1145),(188,17,102,0,5914,'description',0,1115,482,1145,1482509239,1,1198),(188,17,102,0,5915,'description',0,1187,483,1198,1482509239,1,1115),(188,17,102,0,5916,'description',0,1147,484,1115,1482509239,1,1187),(188,17,102,0,5917,'description',0,1199,485,1187,1482509239,1,1147),(188,17,102,0,5918,'description',0,1200,486,1147,1482509239,1,1199),(188,17,102,0,5919,'description',0,1201,487,1199,1482509239,1,1200),(188,17,102,0,5920,'description',0,1121,488,1200,1482509239,1,1201),(188,17,102,0,5921,'description',0,1202,489,1201,1482509239,1,1121),(188,17,102,0,5922,'description',0,1203,490,1121,1482509239,1,1202),(188,17,102,0,5923,'description',0,1169,491,1202,1482509239,1,1203),(188,17,102,0,5924,'description',0,1204,492,1203,1482509239,1,1169),(188,17,102,0,5925,'description',0,1205,493,1169,1482509239,1,1204),(188,17,102,0,5926,'description',0,1123,494,1204,1482509239,1,1205),(188,17,102,0,5927,'description',0,1206,495,1205,1482509239,1,1123),(188,17,102,0,5928,'description',0,1207,496,1123,1482509239,1,1206),(188,17,102,0,5929,'description',0,1208,497,1206,1482509239,1,1207),(188,17,102,0,5930,'description',0,1209,498,1207,1482509239,1,1208),(188,17,102,0,5931,'description',0,1210,499,1208,1482509239,1,1209),(188,17,102,0,5932,'description',0,1211,500,1209,1482509239,1,1210),(188,17,102,0,5933,'description',0,1176,501,1210,1482509239,1,1211),(188,17,102,0,5934,'description',0,1212,502,1211,1482509239,1,1176),(188,17,102,0,5935,'description',0,1123,503,1176,1482509239,1,1212),(188,17,102,0,5936,'description',0,1213,504,1212,1482509239,1,1123),(188,17,102,0,5937,'description',0,1198,505,1123,1482509239,1,1213),(188,17,102,0,5938,'description',0,1214,506,1213,1482509239,1,1198),(188,17,102,0,5939,'description',0,1113,507,1198,1482509239,1,1214),(188,17,102,0,5940,'description',0,1114,508,1214,1482509239,1,1113),(188,17,102,0,5941,'description',0,1132,509,1113,1482509239,1,1114),(188,17,102,0,5942,'description',0,1215,510,1114,1482509239,1,1132),(188,17,102,0,5943,'description',0,1216,511,1132,1482509239,1,1215),(188,17,102,0,5944,'description',0,1155,512,1215,1482509239,1,1216),(188,17,102,0,5945,'description',0,1121,513,1216,1482509239,1,1155),(188,17,102,0,5946,'description',0,1217,514,1155,1482509239,1,1121),(188,17,102,0,5947,'description',0,1218,515,1121,1482509239,1,1217),(188,17,102,0,5948,'description',0,1219,516,1217,1482509239,1,1218),(188,17,102,0,5949,'description',0,1207,517,1218,1482509239,1,1219),(188,17,102,0,5950,'description',0,1113,518,1219,1482509239,1,1207),(188,17,102,0,5951,'description',0,1114,519,1207,1482509239,1,1113),(188,17,102,0,5952,'description',0,1220,520,1113,1482509239,1,1114),(188,17,102,0,5953,'description',0,1211,521,1114,1482509239,1,1220),(188,17,102,0,5954,'description',0,1221,522,1220,1482509239,1,1211),(188,17,102,0,5955,'description',0,1222,523,1211,1482509239,1,1221),(188,17,102,0,5956,'description',0,1223,524,1221,1482509239,1,1222),(188,17,102,0,5957,'description',0,1140,525,1222,1482509239,1,1223),(188,17,102,0,5958,'description',0,1224,526,1223,1482509239,1,1140),(188,17,102,0,5959,'description',0,1225,527,1140,1482509239,1,1224),(188,17,102,0,5960,'description',0,1226,528,1224,1482509239,1,1225),(188,17,102,0,5961,'description',0,1214,529,1225,1482509239,1,1226),(188,17,102,0,5962,'description',0,1227,530,1226,1482509239,1,1214),(188,17,102,0,5963,'description',0,1147,531,1214,1482509239,1,1227),(188,17,102,0,5964,'description',0,1228,532,1227,1482509239,1,1147),(188,17,102,0,5965,'description',0,1229,533,1147,1482509239,1,1228),(188,17,102,0,5966,'description',0,1230,534,1228,1482509239,1,1229),(188,17,102,0,5967,'description',0,1113,535,1229,1482509239,1,1230),(188,17,102,0,5968,'description',0,1114,536,1230,1482509239,1,1113),(188,17,102,0,5969,'description',0,1231,537,1113,1482509239,1,1114),(188,17,102,0,5970,'description',0,1232,538,1114,1482509239,1,1231),(188,17,102,0,5971,'description',0,1233,539,1231,1482509239,1,1232),(188,17,102,0,5972,'description',0,1234,540,1232,1482509239,1,1233),(188,17,102,0,5973,'description',0,1235,541,1233,1482509239,1,1234),(188,17,102,0,5974,'description',0,1169,542,1234,1482509239,1,1235),(188,17,102,0,5975,'description',0,1236,543,1235,1482509239,1,1169),(188,17,102,0,5976,'description',0,1123,544,1169,1482509239,1,1236),(188,17,102,0,5977,'description',0,1230,545,1236,1482509239,1,1123),(188,17,102,0,5978,'description',0,1237,546,1123,1482509239,1,1230),(188,17,102,0,5979,'description',0,1238,547,1230,1482509239,1,1237),(188,17,102,0,5980,'description',0,0,548,1237,1482509239,1,1238),(116,5,103,0,6305,'name',0,0,0,0,1482517381,3,1309),(182,14,80,0,7269,'title',0,1512,0,0,1481337197,1,1511),(182,14,80,0,7270,'title',0,1513,1,1511,1481337197,1,1512),(210,14,80,0,7271,'description',0,1514,2,1512,1481337197,1,1513),(210,14,80,0,7272,'description',0,1515,3,1513,1481337197,1,1514),(210,14,80,0,7273,'description',0,1516,4,1514,1481337197,1,1515),(210,14,80,0,7274,'description',0,1517,5,1515,1481337197,1,1516),(210,14,80,0,7275,'description',0,1518,6,1516,1481337197,1,1517),(210,14,80,0,7276,'description',0,1519,7,1517,1481337197,1,1518),(210,14,80,0,7277,'description',0,1515,8,1518,1481337197,1,1519),(210,14,80,0,7278,'description',0,1520,9,1519,1481337197,1,1515),(210,14,80,0,7279,'description',0,1521,10,1515,1481337197,1,1520),(210,14,80,0,7280,'description',0,1522,11,1520,1481337197,1,1521),(210,14,80,0,7281,'description',0,1523,12,1521,1481337197,1,1522),(210,14,80,0,7282,'description',0,1524,13,1522,1481337197,1,1523),(210,14,80,0,7283,'description',0,814,14,1523,1481337197,1,1524),(210,14,80,0,7284,'description',0,1525,15,1524,1481337197,1,814),(210,14,80,0,7285,'description',0,1526,16,814,1481337197,1,1525),(210,14,80,0,7286,'description',0,1527,17,1525,1481337197,1,1526),(210,14,80,0,7287,'description',0,1515,18,1526,1481337197,1,1527),(210,14,80,0,7288,'description',0,1528,19,1527,1481337197,1,1515),(210,14,80,0,7289,'description',0,1529,20,1515,1481337197,1,1528),(210,14,80,0,7290,'description',0,1530,21,1528,1481337197,1,1529),(210,14,80,0,7291,'description',0,1531,22,1529,1481337197,1,1530),(210,14,80,0,7292,'description',0,1532,23,1530,1481337197,1,1531),(210,14,80,0,7293,'description',0,1195,24,1531,1481337197,1,1532),(210,14,80,0,7294,'description',0,814,25,1532,1481337197,1,1195),(210,14,80,0,7295,'description',0,1533,26,1195,1481337197,1,814),(210,14,80,0,7296,'description',0,1527,27,814,1481337197,1,1533),(210,14,80,0,7297,'description',0,1534,28,1533,1481337197,1,1527),(210,14,80,0,7298,'description',0,1113,29,1527,1481337197,1,1534),(210,14,80,0,7299,'description',0,1114,30,1534,1481337197,1,1113),(210,14,80,0,7300,'description',0,1514,31,1113,1481337197,1,1114),(210,14,80,0,7301,'description',0,1519,32,1114,1481337197,1,1514),(210,14,80,0,7302,'description',0,1513,33,1514,1481337197,1,1519),(210,14,80,0,7303,'description',0,1535,34,1519,1481337197,1,1513),(210,14,80,0,7304,'description',0,1515,35,1513,1481337197,1,1535),(210,14,80,0,7305,'description',0,1536,36,1535,1481337197,1,1515),(210,14,80,0,7306,'description',0,1537,37,1515,1481337197,1,1536),(210,14,80,0,7307,'description',0,1538,38,1536,1481337197,1,1537),(210,14,80,0,7308,'description',0,1539,39,1537,1481337197,1,1538),(210,14,80,0,7309,'description',0,1540,40,1538,1481337197,1,1539),(210,14,80,0,7310,'description',0,1527,41,1539,1481337197,1,1540),(210,14,80,0,7311,'description',0,1541,42,1540,1481337197,1,1527),(210,14,80,0,7312,'description',0,1542,43,1527,1481337197,1,1541),(210,14,80,0,7313,'description',0,1543,44,1541,1481337197,1,1542),(210,14,80,0,7314,'description',0,1544,45,1542,1481337197,1,1543),(210,14,80,0,7315,'description',0,1534,46,1543,1481337197,1,1544),(210,14,80,0,7316,'description',0,1526,47,1544,1481337197,1,1534),(210,14,80,0,7317,'description',0,1545,48,1534,1481337197,1,1526),(210,14,80,0,7318,'description',0,1526,49,1526,1481337197,1,1545),(210,14,80,0,7319,'description',0,1545,50,1545,1481337197,1,1526),(210,14,80,0,7320,'description',0,1546,51,1526,1481337197,1,1545),(210,14,80,0,7321,'description',0,1513,52,1545,1481337197,1,1546),(210,14,80,0,7322,'description',0,1547,53,1546,1481337197,1,1513),(210,14,80,0,7323,'description',0,1548,54,1513,1481337197,1,1547),(210,14,80,0,7324,'description',0,1525,55,1547,1481337197,1,1548),(210,14,80,0,7325,'description',0,1549,56,1548,1481337197,1,1525),(210,14,80,0,7326,'description',0,1550,57,1525,1481337197,1,1549),(210,14,80,0,7327,'description',0,1176,58,1549,1481337197,1,1550),(210,14,80,0,7328,'description',0,1551,59,1550,1481337197,1,1176),(210,14,80,0,7329,'description',0,1552,60,1176,1481337197,1,1551),(210,14,80,0,7330,'description',0,1553,61,1551,1481337197,1,1552),(210,14,80,0,7331,'description',0,1554,62,1552,1481337197,1,1553),(210,14,80,0,7332,'description',0,1528,63,1553,1481337197,1,1554),(210,14,80,0,7333,'description',0,959,64,1554,1481337197,1,1528),(210,14,80,0,7334,'description',0,1555,65,1528,1481337197,1,959),(210,14,80,0,7335,'description',0,1556,66,959,1481337197,1,1555),(210,14,80,0,7336,'description',0,1113,67,1555,1481337197,1,1556),(210,14,80,0,7337,'description',0,1114,68,1556,1481337197,1,1113),(210,14,80,0,7338,'description',0,1542,69,1113,1481337197,1,1114),(210,14,80,0,7339,'description',0,1557,70,1114,1481337197,1,1542),(210,14,80,0,7340,'description',0,1558,71,1542,1481337197,1,1557),(210,14,80,0,7341,'description',0,1559,72,1557,1481337197,1,1558),(210,14,80,0,7342,'description',0,1119,73,1558,1481337197,1,1559),(210,14,80,0,7343,'description',0,1553,74,1559,1481337197,1,1119),(210,14,80,0,7344,'description',0,1515,75,1119,1481337197,1,1553),(210,14,80,0,7345,'description',0,1560,76,1553,1481337197,1,1515),(210,14,80,0,7346,'description',0,816,77,1515,1481337197,1,1560),(210,14,80,0,7347,'description',0,1113,78,1560,1481337197,1,816),(210,14,80,0,7348,'description',0,1114,79,816,1481337197,1,1113),(210,14,80,0,7349,'description',0,1521,80,1113,1481337197,1,1114),(210,14,80,0,7350,'description',0,1561,81,1114,1481337197,1,1521),(210,14,80,0,7351,'description',0,1550,82,1521,1481337197,1,1561),(210,14,80,0,7352,'description',0,1554,83,1561,1481337197,1,1550),(210,14,80,0,7353,'description',0,1562,84,1550,1481337197,1,1554),(210,14,80,0,7354,'description',0,1563,85,1554,1481337197,1,1562),(210,14,80,0,7355,'description',0,1125,86,1562,1481337197,1,1563),(210,14,80,0,7356,'description',0,1557,87,1563,1481337197,1,1125),(210,14,80,0,7357,'description',0,1564,88,1125,1481337197,1,1557),(210,14,80,0,7358,'description',0,1565,89,1557,1481337197,1,1564),(210,14,80,0,7359,'description',0,1566,90,1564,1481337197,1,1565),(210,14,80,0,7360,'description',0,1567,91,1565,1481337197,1,1566),(210,14,80,0,7361,'description',0,1568,92,1566,1481337197,1,1567),(210,14,80,0,7362,'description',0,1569,93,1567,1481337197,1,1568),(210,14,80,0,7363,'description',0,814,94,1568,1481337197,1,1569),(210,14,80,0,7364,'description',0,1570,95,1569,1481337197,1,814),(210,14,80,0,7365,'description',0,1571,96,814,1481337197,1,1570),(210,14,80,0,7366,'description',0,1524,97,1570,1481337197,1,1571),(210,14,80,0,7367,'description',0,1572,98,1571,1481337197,1,1524),(210,14,80,0,7368,'description',0,1571,99,1524,1481337197,1,1572),(210,14,80,0,7369,'description',0,1573,100,1572,1481337197,1,1571),(210,14,80,0,7370,'description',0,1574,101,1571,1481337197,1,1573),(210,14,80,0,7371,'description',0,1575,102,1573,1481337197,1,1574),(210,14,80,0,7372,'description',0,1576,103,1574,1481337197,1,1575),(210,14,80,0,7373,'description',0,1553,104,1575,1481337197,1,1576),(210,14,80,0,7374,'description',0,814,105,1576,1481337197,1,1553),(210,14,80,0,7375,'description',0,1548,106,1553,1481337197,1,814),(210,14,80,0,7376,'description',0,1513,107,814,1481337197,1,1548),(210,14,80,0,7377,'description',0,1514,108,1548,1481337197,1,1513),(210,14,80,0,7378,'description',0,1515,109,1513,1481337197,1,1514),(210,14,80,0,7379,'description',0,1516,110,1514,1481337197,1,1515),(210,14,80,0,7380,'description',0,1517,111,1515,1481337197,1,1516),(210,14,80,0,7381,'description',0,1518,112,1516,1481337197,1,1517),(210,14,80,0,7382,'description',0,1519,113,1517,1481337197,1,1518),(210,14,80,0,7383,'description',0,1515,114,1518,1481337197,1,1519),(210,14,80,0,7384,'description',0,1520,115,1519,1481337197,1,1515),(210,14,80,0,7385,'description',0,1521,116,1515,1481337197,1,1520),(210,14,80,0,7386,'description',0,1522,117,1520,1481337197,1,1521),(210,14,80,0,7387,'description',0,1523,118,1521,1481337197,1,1522),(210,14,80,0,7388,'description',0,1524,119,1522,1481337197,1,1523),(210,14,80,0,7389,'description',0,814,120,1523,1481337197,1,1524),(210,14,80,0,7390,'description',0,1525,121,1524,1481337197,1,814),(210,14,80,0,7391,'description',0,1526,122,814,1481337197,1,1525),(210,14,80,0,7392,'description',0,1527,123,1525,1481337197,1,1526),(210,14,80,0,7393,'description',0,1515,124,1526,1481337197,1,1527),(210,14,80,0,7394,'description',0,1528,125,1527,1481337197,1,1515),(210,14,80,0,7395,'description',0,1529,126,1515,1481337197,1,1528),(210,14,80,0,7396,'description',0,1530,127,1528,1481337197,1,1529),(210,14,80,0,7397,'description',0,1531,128,1529,1481337197,1,1530),(210,14,80,0,7398,'description',0,1532,129,1530,1481337197,1,1531),(210,14,80,0,7399,'description',0,1195,130,1531,1481337197,1,1532),(210,14,80,0,7400,'description',0,814,131,1532,1481337197,1,1195),(210,14,80,0,7401,'description',0,1533,132,1195,1481337197,1,814),(210,14,80,0,7402,'description',0,1527,133,814,1481337197,1,1533),(210,14,80,0,7403,'description',0,1534,134,1533,1481337197,1,1527),(210,14,80,0,7404,'description',0,1113,135,1527,1481337197,1,1534),(210,14,80,0,7405,'description',0,1114,136,1534,1481337197,1,1113),(210,14,80,0,7406,'description',0,1514,137,1113,1481337197,1,1114),(210,14,80,0,7407,'description',0,1519,138,1114,1481337197,1,1514),(210,14,80,0,7408,'description',0,1513,139,1514,1481337197,1,1519),(210,14,80,0,7409,'description',0,1535,140,1519,1481337197,1,1513),(210,14,80,0,7410,'description',0,1515,141,1513,1481337197,1,1535),(210,14,80,0,7411,'description',0,1536,142,1535,1481337197,1,1515),(210,14,80,0,7412,'description',0,1537,143,1515,1481337197,1,1536),(210,14,80,0,7413,'description',0,1538,144,1536,1481337197,1,1537),(210,14,80,0,7414,'description',0,1539,145,1537,1481337197,1,1538),(210,14,80,0,7415,'description',0,1540,146,1538,1481337197,1,1539),(210,14,80,0,7416,'description',0,1527,147,1539,1481337197,1,1540),(210,14,80,0,7417,'description',0,1541,148,1540,1481337197,1,1527),(210,14,80,0,7418,'description',0,1542,149,1527,1481337197,1,1541),(210,14,80,0,7419,'description',0,1543,150,1541,1481337197,1,1542),(210,14,80,0,7420,'description',0,1544,151,1542,1481337197,1,1543),(210,14,80,0,7421,'description',0,1534,152,1543,1481337197,1,1544),(210,14,80,0,7422,'description',0,1526,153,1544,1481337197,1,1534),(210,14,80,0,7423,'description',0,1545,154,1534,1481337197,1,1526),(210,14,80,0,7424,'description',0,1526,155,1526,1481337197,1,1545),(210,14,80,0,7425,'description',0,1545,156,1545,1481337197,1,1526),(210,14,80,0,7426,'description',0,1546,157,1526,1481337197,1,1545),(210,14,80,0,7427,'description',0,1513,158,1545,1481337197,1,1546),(210,14,80,0,7428,'description',0,1547,159,1546,1481337197,1,1513),(210,14,80,0,7429,'description',0,1548,160,1513,1481337197,1,1547),(210,14,80,0,7430,'description',0,1525,161,1547,1481337197,1,1548),(210,14,80,0,7431,'description',0,1549,162,1548,1481337197,1,1525),(210,14,80,0,7432,'description',0,1550,163,1525,1481337197,1,1549),(210,14,80,0,7433,'description',0,1176,164,1549,1481337197,1,1550),(210,14,80,0,7434,'description',0,1551,165,1550,1481337197,1,1176),(210,14,80,0,7435,'description',0,1552,166,1176,1481337197,1,1551),(210,14,80,0,7436,'description',0,1553,167,1551,1481337197,1,1552),(210,14,80,0,7437,'description',0,1554,168,1552,1481337197,1,1553),(210,14,80,0,7438,'description',0,1528,169,1553,1481337197,1,1554),(210,14,80,0,7439,'description',0,959,170,1554,1481337197,1,1528),(210,14,80,0,7440,'description',0,1555,171,1528,1481337197,1,959),(210,14,80,0,7441,'description',0,1556,172,959,1481337197,1,1555),(210,14,80,0,7442,'description',0,1113,173,1555,1481337197,1,1556),(210,14,80,0,7443,'description',0,1114,174,1556,1481337197,1,1113),(210,14,80,0,7444,'description',0,1542,175,1113,1481337197,1,1114),(210,14,80,0,7445,'description',0,1557,176,1114,1481337197,1,1542),(210,14,80,0,7446,'description',0,1558,177,1542,1481337197,1,1557),(210,14,80,0,7447,'description',0,1559,178,1557,1481337197,1,1558),(210,14,80,0,7448,'description',0,1119,179,1558,1481337197,1,1559),(210,14,80,0,7449,'description',0,1553,180,1559,1481337197,1,1119),(210,14,80,0,7450,'description',0,1515,181,1119,1481337197,1,1553),(210,14,80,0,7451,'description',0,1560,182,1553,1481337197,1,1515),(210,14,80,0,7452,'description',0,816,183,1515,1481337197,1,1560),(210,14,80,0,7453,'description',0,1113,184,1560,1481337197,1,816),(210,14,80,0,7454,'description',0,1114,185,816,1481337197,1,1113),(210,14,80,0,7455,'description',0,1521,186,1113,1481337197,1,1114),(210,14,80,0,7456,'description',0,1561,187,1114,1481337197,1,1521),(210,14,80,0,7457,'description',0,1550,188,1521,1481337197,1,1561),(210,14,80,0,7458,'description',0,1554,189,1561,1481337197,1,1550),(210,14,80,0,7459,'description',0,1562,190,1550,1481337197,1,1554),(210,14,80,0,7460,'description',0,1563,191,1554,1481337197,1,1562),(210,14,80,0,7461,'description',0,1125,192,1562,1481337197,1,1563),(210,14,80,0,7462,'description',0,1557,193,1563,1481337197,1,1125),(210,14,80,0,7463,'description',0,1564,194,1125,1481337197,1,1557),(210,14,80,0,7464,'description',0,1565,195,1557,1481337197,1,1564),(210,14,80,0,7465,'description',0,1566,196,1564,1481337197,1,1565),(210,14,80,0,7466,'description',0,1567,197,1565,1481337197,1,1566),(210,14,80,0,7467,'description',0,1568,198,1566,1481337197,1,1567),(210,14,80,0,7468,'description',0,1569,199,1567,1481337197,1,1568),(210,14,80,0,7469,'description',0,814,200,1568,1481337197,1,1569),(210,14,80,0,7470,'description',0,1570,201,1569,1481337197,1,814),(210,14,80,0,7471,'description',0,1571,202,814,1481337197,1,1570),(210,14,80,0,7472,'description',0,1524,203,1570,1481337197,1,1571),(210,14,80,0,7473,'description',0,1572,204,1571,1481337197,1,1524),(210,14,80,0,7474,'description',0,1571,205,1524,1481337197,1,1572),(210,14,80,0,7475,'description',0,1573,206,1572,1481337197,1,1571),(210,14,80,0,7476,'description',0,1574,207,1571,1481337197,1,1573),(210,14,80,0,7477,'description',0,1575,208,1573,1481337197,1,1574),(210,14,80,0,7478,'description',0,1576,209,1574,1481337197,1,1575),(210,14,80,0,7479,'description',0,1553,210,1575,1481337197,1,1576),(210,14,80,0,7480,'description',0,814,211,1576,1481337197,1,1553),(210,14,80,0,7481,'description',0,1548,212,1553,1481337197,1,814),(210,14,80,0,7482,'description',0,1513,213,814,1481337197,1,1548),(210,14,80,0,7483,'description',0,1514,214,1548,1481337197,1,1513),(210,14,80,0,7484,'description',0,1515,215,1513,1481337197,1,1514),(210,14,80,0,7485,'description',0,1516,216,1514,1481337197,1,1515),(210,14,80,0,7486,'description',0,1517,217,1515,1481337197,1,1516),(210,14,80,0,7487,'description',0,1518,218,1516,1481337197,1,1517),(210,14,80,0,7488,'description',0,1519,219,1517,1481337197,1,1518),(210,14,80,0,7489,'description',0,1515,220,1518,1481337197,1,1519),(210,14,80,0,7490,'description',0,1520,221,1519,1481337197,1,1515),(210,14,80,0,7491,'description',0,1521,222,1515,1481337197,1,1520),(210,14,80,0,7492,'description',0,1522,223,1520,1481337197,1,1521),(210,14,80,0,7493,'description',0,1523,224,1521,1481337197,1,1522),(210,14,80,0,7494,'description',0,1524,225,1522,1481337197,1,1523),(210,14,80,0,7495,'description',0,814,226,1523,1481337197,1,1524),(210,14,80,0,7496,'description',0,1525,227,1524,1481337197,1,814),(210,14,80,0,7497,'description',0,1526,228,814,1481337197,1,1525),(210,14,80,0,7498,'description',0,1527,229,1525,1481337197,1,1526),(210,14,80,0,7499,'description',0,1515,230,1526,1481337197,1,1527),(210,14,80,0,7500,'description',0,1528,231,1527,1481337197,1,1515),(210,14,80,0,7501,'description',0,1529,232,1515,1481337197,1,1528),(210,14,80,0,7502,'description',0,1530,233,1528,1481337197,1,1529),(210,14,80,0,7503,'description',0,1531,234,1529,1481337197,1,1530),(210,14,80,0,7504,'description',0,1532,235,1530,1481337197,1,1531),(210,14,80,0,7505,'description',0,1195,236,1531,1481337197,1,1532),(210,14,80,0,7506,'description',0,814,237,1532,1481337197,1,1195),(210,14,80,0,7507,'description',0,1533,238,1195,1481337197,1,814),(210,14,80,0,7508,'description',0,1527,239,814,1481337197,1,1533),(210,14,80,0,7509,'description',0,1534,240,1533,1481337197,1,1527),(210,14,80,0,7510,'description',0,1113,241,1527,1481337197,1,1534),(210,14,80,0,7511,'description',0,1114,242,1534,1481337197,1,1113),(210,14,80,0,7512,'description',0,1514,243,1113,1481337197,1,1114),(210,14,80,0,7513,'description',0,1519,244,1114,1481337197,1,1514),(210,14,80,0,7514,'description',0,1513,245,1514,1481337197,1,1519),(210,14,80,0,7515,'description',0,1535,246,1519,1481337197,1,1513),(210,14,80,0,7516,'description',0,1515,247,1513,1481337197,1,1535),(210,14,80,0,7517,'description',0,1536,248,1535,1481337197,1,1515),(210,14,80,0,7518,'description',0,1537,249,1515,1481337197,1,1536),(210,14,80,0,7519,'description',0,1538,250,1536,1481337197,1,1537),(210,14,80,0,7520,'description',0,1539,251,1537,1481337197,1,1538),(210,14,80,0,7521,'description',0,1540,252,1538,1481337197,1,1539),(210,14,80,0,7522,'description',0,1527,253,1539,1481337197,1,1540),(210,14,80,0,7523,'description',0,1541,254,1540,1481337197,1,1527),(210,14,80,0,7524,'description',0,1542,255,1527,1481337197,1,1541),(210,14,80,0,7525,'description',0,1543,256,1541,1481337197,1,1542),(210,14,80,0,7526,'description',0,1544,257,1542,1481337197,1,1543),(210,14,80,0,7527,'description',0,1534,258,1543,1481337197,1,1544),(210,14,80,0,7528,'description',0,1526,259,1544,1481337197,1,1534),(210,14,80,0,7529,'description',0,1545,260,1534,1481337197,1,1526),(210,14,80,0,7530,'description',0,1526,261,1526,1481337197,1,1545),(210,14,80,0,7531,'description',0,1545,262,1545,1481337197,1,1526),(210,14,80,0,7532,'description',0,1546,263,1526,1481337197,1,1545),(210,14,80,0,7533,'description',0,1513,264,1545,1481337197,1,1546),(210,14,80,0,7534,'description',0,1547,265,1546,1481337197,1,1513),(210,14,80,0,7535,'description',0,1548,266,1513,1481337197,1,1547),(210,14,80,0,7536,'description',0,1525,267,1547,1481337197,1,1548),(210,14,80,0,7537,'description',0,1549,268,1548,1481337197,1,1525),(210,14,80,0,7538,'description',0,1550,269,1525,1481337197,1,1549),(210,14,80,0,7539,'description',0,1176,270,1549,1481337197,1,1550),(210,14,80,0,7540,'description',0,1551,271,1550,1481337197,1,1176),(210,14,80,0,7541,'description',0,1552,272,1176,1481337197,1,1551),(210,14,80,0,7542,'description',0,1553,273,1551,1481337197,1,1552),(210,14,80,0,7543,'description',0,1554,274,1552,1481337197,1,1553),(210,14,80,0,7544,'description',0,1528,275,1553,1481337197,1,1554),(210,14,80,0,7545,'description',0,959,276,1554,1481337197,1,1528),(210,14,80,0,7546,'description',0,1555,277,1528,1481337197,1,959),(210,14,80,0,7547,'description',0,1556,278,959,1481337197,1,1555),(210,14,80,0,7548,'description',0,1113,279,1555,1481337197,1,1556),(210,14,80,0,7549,'description',0,1114,280,1556,1481337197,1,1113),(210,14,80,0,7550,'description',0,1542,281,1113,1481337197,1,1114),(210,14,80,0,7551,'description',0,1557,282,1114,1481337197,1,1542),(210,14,80,0,7552,'description',0,1558,283,1542,1481337197,1,1557),(210,14,80,0,7553,'description',0,1559,284,1557,1481337197,1,1558),(210,14,80,0,7554,'description',0,1119,285,1558,1481337197,1,1559),(210,14,80,0,7555,'description',0,1553,286,1559,1481337197,1,1119),(210,14,80,0,7556,'description',0,1515,287,1119,1481337197,1,1553),(210,14,80,0,7557,'description',0,1560,288,1553,1481337197,1,1515),(210,14,80,0,7558,'description',0,816,289,1515,1481337197,1,1560),(210,14,80,0,7559,'description',0,1113,290,1560,1481337197,1,816),(210,14,80,0,7560,'description',0,1114,291,816,1481337197,1,1113),(210,14,80,0,7561,'description',0,1521,292,1113,1481337197,1,1114),(210,14,80,0,7562,'description',0,1561,293,1114,1481337197,1,1521),(210,14,80,0,7563,'description',0,1550,294,1521,1481337197,1,1561),(210,14,80,0,7564,'description',0,1554,295,1561,1481337197,1,1550),(210,14,80,0,7565,'description',0,1562,296,1550,1481337197,1,1554),(210,14,80,0,7566,'description',0,1563,297,1554,1481337197,1,1562),(210,14,80,0,7567,'description',0,1125,298,1562,1481337197,1,1563),(210,14,80,0,7568,'description',0,1557,299,1563,1481337197,1,1125),(210,14,80,0,7569,'description',0,1564,300,1125,1481337197,1,1557),(210,14,80,0,7570,'description',0,1565,301,1557,1481337197,1,1564),(210,14,80,0,7571,'description',0,1566,302,1564,1481337197,1,1565),(210,14,80,0,7572,'description',0,1567,303,1565,1481337197,1,1566),(210,14,80,0,7573,'description',0,1568,304,1566,1481337197,1,1567),(210,14,80,0,7574,'description',0,1569,305,1567,1481337197,1,1568),(210,14,80,0,7575,'description',0,814,306,1568,1481337197,1,1569),(210,14,80,0,7576,'description',0,1570,307,1569,1481337197,1,814),(210,14,80,0,7577,'description',0,1571,308,814,1481337197,1,1570),(210,14,80,0,7578,'description',0,1524,309,1570,1481337197,1,1571),(210,14,80,0,7579,'description',0,1572,310,1571,1481337197,1,1524),(210,14,80,0,7580,'description',0,1571,311,1524,1481337197,1,1572),(210,14,80,0,7581,'description',0,1573,312,1572,1481337197,1,1571),(210,14,80,0,7582,'description',0,1574,313,1571,1481337197,1,1573),(210,14,80,0,7583,'description',0,1575,314,1573,1481337197,1,1574),(210,14,80,0,7584,'description',0,1576,315,1574,1481337197,1,1575),(210,14,80,0,7585,'description',0,1553,316,1575,1481337197,1,1576),(210,14,80,0,7586,'description',0,814,317,1576,1481337197,1,1553),(210,14,80,0,7587,'description',0,1548,318,1553,1481337197,1,814),(210,14,80,0,7588,'description',0,1577,319,814,1481337197,1,1548),(210,14,80,0,7589,'description',0,0,320,1548,1481337197,1,1577),(186,16,75,0,7603,'name',0,0,0,0,1480987917,1,1589),(4,1,65,0,7606,'name',0,997,0,0,1480901813,1,997),(155,1,65,0,7607,'short_name',0,0,1,997,1480901813,1,997),(1,2,105,0,7867,'title',0,1748,0,0,1482635909,1,1747),(1,2,105,0,7868,'title',0,1749,1,1747,1482635909,1,1748),(1,2,105,0,7869,'title',0,1515,2,1748,1482635909,1,1749),(1,2,105,0,7870,'title',0,1747,3,1749,1482635909,1,1515),(152,2,105,0,7871,'short_title',0,1748,4,1515,1482635909,1,1747),(152,2,105,0,7872,'short_title',0,1749,5,1747,1482635909,1,1748),(152,2,105,0,7873,'short_title',0,1515,6,1748,1482635909,1,1749),(152,2,105,0,7874,'short_title',0,1747,7,1749,1482635909,1,1515),(120,2,105,0,7875,'intro',0,1748,8,1515,1482635909,1,1747),(120,2,105,0,7876,'intro',0,1749,9,1747,1482635909,1,1748),(120,2,105,0,7877,'intro',0,1515,10,1748,1482635909,1,1749),(120,2,105,0,7878,'intro',0,1750,11,1749,1482635909,1,1515),(121,2,105,0,7879,'body',0,1120,12,1515,1482635909,1,1750),(121,2,105,0,7880,'body',0,1121,13,1750,1482635909,1,1120),(121,2,105,0,7881,'body',0,1751,14,1120,1482635909,1,1121),(121,2,105,0,7882,'body',0,1752,15,1121,1482635909,1,1751),(121,2,105,0,7883,'body',0,1753,16,1751,1482635909,1,1752),(121,2,105,0,7884,'body',0,1747,17,1752,1482635909,1,1753),(121,2,105,0,7885,'body',0,1748,18,1753,1482635909,1,1747),(121,2,105,0,7886,'body',0,1754,19,1747,1482635909,1,1748),(121,2,105,0,7887,'body',0,1755,20,1748,1482635909,1,1754),(121,2,105,0,7888,'body',0,1756,21,1754,1482635909,1,1755),(121,2,105,0,7889,'body',0,1121,22,1755,1482635909,1,1756),(121,2,105,0,7890,'body',0,1757,23,1756,1482635909,1,1121),(121,2,105,0,7891,'body',0,1758,24,1121,1482635909,1,1757),(121,2,105,0,7892,'body',0,1759,25,1757,1482635909,1,1758),(121,2,105,0,7893,'body',0,1760,26,1758,1482635909,1,1759),(121,2,105,0,7894,'body',0,1200,27,1759,1482635909,1,1760),(121,2,105,0,7895,'body',0,1761,28,1760,1482635909,1,1200),(121,2,105,0,7896,'body',0,1762,29,1200,1482635909,1,1761),(121,2,105,0,7897,'body',0,1763,30,1761,1482635909,1,1762),(121,2,105,0,7898,'body',0,1200,31,1762,1482635909,1,1763),(121,2,105,0,7899,'body',0,1135,32,1763,1482635909,1,1200),(121,2,105,0,7900,'body',0,1764,33,1200,1482635909,1,1135),(121,2,105,0,7901,'body',0,1765,34,1135,1482635909,1,1764),(121,2,105,0,7902,'body',0,1766,35,1764,1482635909,1,1765),(121,2,105,0,7903,'body',0,1767,36,1765,1482635909,1,1766),(121,2,105,0,7904,'body',0,1749,37,1766,1482635909,1,1767),(121,2,105,0,7905,'body',0,1768,38,1767,1482635909,1,1749),(121,2,105,0,7906,'body',0,1769,39,1749,1482635909,1,1768),(121,2,105,0,7907,'body',0,1770,40,1768,1482635909,1,1769),(121,2,105,0,7908,'body',0,1771,41,1769,1482635909,1,1770),(121,2,105,0,7909,'body',0,1149,42,1770,1482635909,1,1771),(121,2,105,0,7910,'body',0,1121,43,1771,1482635909,1,1149),(121,2,105,0,7911,'body',0,1772,44,1149,1482635909,1,1121),(121,2,105,0,7912,'body',0,1773,45,1121,1482635909,1,1772),(121,2,105,0,7913,'body',0,1200,46,1772,1482635909,1,1773),(121,2,105,0,7914,'body',0,1135,47,1773,1482635909,1,1200),(121,2,105,0,7915,'body',0,1772,48,1200,1482635909,1,1135),(121,2,105,0,7916,'body',0,1774,49,1135,1482635909,1,1772),(121,2,105,0,7917,'body',0,1775,50,1772,1482635909,1,1774),(121,2,105,0,7918,'body',0,1115,51,1774,1482635909,1,1775),(121,2,105,0,7919,'body',0,1126,52,1775,1482635909,1,1115),(121,2,105,0,7920,'body',0,1776,53,1115,1482635909,1,1126),(121,2,105,0,7921,'body',0,1169,54,1126,1482635909,1,1776),(121,2,105,0,7922,'body',0,1777,55,1776,1482635909,1,1169),(121,2,105,0,7923,'body',0,1778,56,1169,1482635909,1,1777),(121,2,105,0,7924,'body',0,1779,57,1777,1482635909,1,1778),(121,2,105,0,7925,'body',0,1776,58,1778,1482635909,1,1779),(121,2,105,0,7926,'body',0,1780,59,1779,1482635909,1,1776),(121,2,105,0,7927,'body',0,1781,60,1776,1482635909,1,1780),(121,2,105,0,7928,'body',0,1752,61,1780,1482635909,1,1781),(121,2,105,0,7929,'body',0,1782,62,1781,1482635909,1,1752),(121,2,105,0,7930,'body',0,1126,63,1752,1482635909,1,1782),(121,2,105,0,7931,'body',0,1783,64,1782,1482635909,1,1126),(121,2,105,0,7932,'body',0,1784,65,1126,1482635909,1,1783),(121,2,105,0,7933,'body',0,1135,66,1783,1482635909,1,1784),(121,2,105,0,7934,'body',0,1785,67,1784,1482635909,1,1135),(121,2,105,0,7935,'body',0,1126,68,1135,1482635909,1,1785),(121,2,105,0,7936,'body',0,1786,69,1785,1482635909,1,1126),(121,2,105,0,7937,'body',0,1121,70,1126,1482635909,1,1786),(121,2,105,0,7938,'body',0,1787,71,1786,1482635909,1,1121),(121,2,105,0,7939,'body',0,1120,72,1121,1482635909,1,1787),(121,2,105,0,7940,'body',0,1788,73,1787,1482635909,1,1120),(121,2,105,0,7941,'body',0,1789,74,1120,1482635909,1,1788),(121,2,105,0,7942,'body',0,1790,75,1788,1482635909,1,1789),(121,2,105,0,7943,'body',0,1791,76,1789,1482635909,1,1790),(121,2,105,0,7944,'body',0,1771,77,1790,1482635909,1,1791),(121,2,105,0,7945,'body',0,1792,78,1791,1482635909,1,1771),(121,2,105,0,7946,'body',0,1789,79,1771,1482635909,1,1792),(121,2,105,0,7947,'body',0,1793,80,1792,1482635909,1,1789),(121,2,105,0,7948,'body',0,1752,81,1789,1482635909,1,1793),(121,2,105,0,7949,'body',0,1794,82,1793,1482635909,1,1752),(121,2,105,0,7950,'body',0,1795,83,1752,1482635909,1,1794),(121,2,105,0,7951,'body',0,1796,84,1794,1482635909,1,1795),(121,2,105,0,7952,'body',0,1795,85,1795,1482635909,1,1796),(121,2,105,0,7953,'body',0,1797,86,1796,1482635909,1,1795),(121,2,105,0,7954,'body',0,1798,87,1795,1482635909,1,1797),(121,2,105,0,7955,'body',0,1799,88,1797,1482635909,1,1798),(121,2,105,0,7956,'body',0,1135,89,1798,1482635909,1,1799),(121,2,105,0,7957,'body',0,1800,90,1799,1482635909,1,1135),(121,2,105,0,7958,'body',0,1801,91,1135,1482635909,1,1800),(121,2,105,0,7959,'body',0,1802,92,1800,1482635909,1,1801),(121,2,105,0,7960,'body',0,1121,93,1801,1482635909,1,1802),(121,2,105,0,7961,'body',0,1125,94,1802,1482635909,1,1121),(121,2,105,0,7962,'body',0,1167,95,1121,1482635909,1,1125),(121,2,105,0,7963,'body',0,1753,96,1125,1482635909,1,1167),(121,2,105,0,7964,'body',0,1747,97,1167,1482635909,1,1753),(121,2,105,0,7965,'body',0,1803,98,1753,1482635909,1,1747),(121,2,105,0,7966,'body',0,1804,99,1747,1482635909,1,1803),(121,2,105,0,7967,'body',0,1805,100,1803,1482635909,1,1804),(121,2,105,0,7968,'body',0,1791,101,1804,1482635909,1,1805),(121,2,105,0,7969,'body',0,1771,102,1805,1482635909,1,1791),(121,2,105,0,7970,'body',0,1792,103,1791,1482635909,1,1771),(121,2,105,0,7971,'body',0,1806,104,1771,1482635909,1,1792),(121,2,105,0,7972,'body',0,1209,105,1792,1482635909,1,1806),(121,2,105,0,7973,'body',0,1807,106,1806,1482635909,1,1209),(121,2,105,0,7974,'body',0,1808,107,1209,1482635909,1,1807),(121,2,105,0,7975,'body',0,1809,108,1807,1482635909,1,1808),(121,2,105,0,7976,'body',0,1747,109,1808,1482635909,1,1809),(121,2,105,0,7977,'body',0,1810,110,1809,1482635909,1,1747),(121,2,105,0,7978,'body',0,1747,111,1747,1482635909,1,1810),(121,2,105,0,7979,'body',0,1748,112,1810,1482635909,1,1747),(121,2,105,0,7980,'body',0,1811,113,1747,1482635909,1,1748),(121,2,105,0,7981,'body',0,1123,114,1748,1482635909,1,1811),(121,2,105,0,7982,'body',0,1812,115,1811,1482635909,1,1123),(121,2,105,0,7983,'body',0,1747,116,1123,1482635909,1,1812),(121,2,105,0,7984,'body',0,1813,117,1812,1482635909,1,1747),(121,2,105,0,7985,'body',0,1814,118,1747,1482635909,1,1813),(121,2,105,0,7986,'body',0,1747,119,1813,1482635909,1,1814),(121,2,105,0,7987,'body',0,1815,120,1814,1482635909,1,1747),(121,2,105,0,7988,'body',0,1810,121,1747,1482635909,1,1815),(121,2,105,0,7989,'body',0,1123,122,1815,1482635909,1,1810),(121,2,105,0,7990,'body',0,1816,123,1810,1482635909,1,1123),(121,2,105,0,7991,'body',0,1126,124,1123,1482635909,1,1816),(121,2,105,0,7992,'body',0,1817,125,1816,1482635909,1,1126),(121,2,105,0,7993,'body',0,1818,126,1126,1482635909,1,1817),(121,2,105,0,7994,'body',0,1819,127,1817,1482635909,1,1818),(121,2,105,0,7995,'body',0,1820,128,1818,1482635909,1,1819),(121,2,105,0,7996,'body',0,1821,129,1819,1482635909,1,1820),(121,2,105,0,7997,'body',0,1822,130,1820,1482635909,1,1821),(121,2,105,0,7998,'body',0,1823,131,1821,1482635909,1,1822),(121,2,105,0,7999,'body',0,1120,132,1822,1482635909,1,1823),(121,2,105,0,8000,'body',0,1824,133,1823,1482635909,1,1120),(121,2,105,0,8001,'body',0,1825,134,1120,1482635909,1,1824),(121,2,105,0,8002,'body',0,1826,135,1824,1482635909,1,1825),(121,2,105,0,8003,'body',0,1771,136,1825,1482635909,1,1826),(121,2,105,0,8004,'body',0,1827,137,1826,1482635909,1,1771),(121,2,105,0,8005,'body',0,1828,138,1771,1482635909,1,1827),(121,2,105,0,8006,'body',0,1829,139,1827,1482635909,1,1828),(121,2,105,0,8007,'body',0,1126,140,1828,1482635909,1,1829),(121,2,105,0,8008,'body',0,1830,141,1829,1482635909,1,1126),(121,2,105,0,8009,'body',0,985,142,1126,1482635909,1,1830),(121,2,105,0,8010,'body',0,1121,143,1830,1482635909,1,985),(121,2,105,0,8011,'body',0,1831,144,985,1482635909,1,1121),(121,2,105,0,8012,'body',0,1792,145,1121,1482635909,1,1831),(121,2,105,0,8013,'body',0,1121,146,1831,1482635909,1,1792),(121,2,105,0,8014,'body',0,1830,147,1792,1482635909,1,1121),(121,2,105,0,8015,'body',0,1123,148,1121,1482635909,1,1830),(121,2,105,0,8016,'body',0,1192,149,1830,1482635909,1,1123),(121,2,105,0,8017,'body',0,1832,150,1123,1482635909,1,1192),(121,2,105,0,8018,'body',0,1833,151,1192,1482635909,1,1832),(121,2,105,0,8019,'body',0,1834,152,1832,1482635909,1,1833),(121,2,105,0,8020,'body',0,1835,153,1833,1482635909,1,1834),(121,2,105,0,8021,'body',0,1121,154,1834,1482635909,1,1835),(121,2,105,0,8022,'body',0,1836,155,1835,1482635909,1,1121),(121,2,105,0,8023,'body',0,1837,156,1121,1482635909,1,1836),(121,2,105,0,8024,'body',0,1166,157,1836,1482635909,1,1837),(121,2,105,0,8025,'body',0,1215,158,1837,1482635909,1,1166),(121,2,105,0,8026,'body',0,1838,159,1166,1482635909,1,1215),(121,2,105,0,8027,'body',0,1145,160,1215,1482635909,1,1838),(121,2,105,0,8028,'body',0,1167,161,1838,1482635909,1,1145),(121,2,105,0,8029,'body',0,997,162,1145,1482635909,1,1167),(121,2,105,0,8030,'body',0,1839,163,1167,1482635909,1,997),(121,2,105,0,8031,'body',0,1840,164,997,1482635909,1,1839),(121,2,105,0,8032,'body',0,1841,165,1839,1482635909,1,1840),(121,2,105,0,8033,'body',0,1842,166,1840,1482635909,1,1841),(121,2,105,0,8034,'body',0,1230,167,1841,1482635909,1,1842),(121,2,105,0,8035,'body',0,1843,168,1842,1482635909,1,1230),(121,2,105,0,8036,'body',0,1844,169,1230,1482635909,1,1843),(121,2,105,0,8037,'body',0,1200,170,1843,1482635909,1,1844),(121,2,105,0,8038,'body',0,1845,171,1844,1482635909,1,1200),(121,2,105,0,8039,'body',0,1843,172,1200,1482635909,1,1845),(121,2,105,0,8040,'body',0,1846,173,1845,1482635909,1,1843),(121,2,105,0,8041,'body',0,1847,174,1843,1482635909,1,1846),(121,2,105,0,8042,'body',0,1848,175,1846,1482635909,1,1847),(121,2,105,0,8043,'body',0,1828,176,1847,1482635909,1,1848),(121,2,105,0,8044,'body',0,1849,177,1848,1482635909,1,1828),(121,2,105,0,8045,'body',0,1850,178,1828,1482635909,1,1849),(121,2,105,0,8046,'body',0,1851,179,1849,1482635909,1,1850),(121,2,105,0,8047,'body',0,1852,180,1850,1482635909,1,1851),(121,2,105,0,8048,'body',0,1853,181,1851,1482635909,1,1852),(121,2,105,0,8049,'body',0,1854,182,1852,1482635909,1,1853),(121,2,105,0,8050,'body',0,1855,183,1853,1482635909,1,1854),(121,2,105,0,8051,'body',0,1123,184,1854,1482635909,1,1855),(121,2,105,0,8052,'body',0,1856,185,1855,1482635909,1,1123),(121,2,105,0,8053,'body',0,1857,186,1123,1482635909,1,1856),(121,2,105,0,8054,'body',0,1123,187,1856,1482635909,1,1857),(121,2,105,0,8055,'body',0,1191,188,1857,1482635909,1,1123),(121,2,105,0,8056,'body',0,1166,189,1123,1482635909,1,1191),(121,2,105,0,8057,'body',0,1858,190,1191,1482635909,1,1166),(121,2,105,0,8058,'body',0,1859,191,1166,1482635909,1,1858),(121,2,105,0,8059,'body',0,1860,192,1858,1482635909,1,1859),(121,2,105,0,8060,'body',0,1207,193,1859,1482635909,1,1860),(121,2,105,0,8061,'body',0,1167,194,1860,1482635909,1,1207),(121,2,105,0,8062,'body',0,1861,195,1207,1482635909,1,1167),(121,2,105,0,8063,'body',0,1862,196,1167,1482635909,1,1861),(121,2,105,0,8064,'body',0,1863,197,1861,1482635909,1,1862),(121,2,105,0,8065,'body',0,1121,198,1862,1482635909,1,1863),(121,2,105,0,8066,'body',0,1864,199,1863,1482635909,1,1121),(121,2,105,0,8067,'body',0,1865,200,1121,1482635909,1,1864),(121,2,105,0,8068,'body',0,1866,201,1864,1482635909,1,1865),(121,2,105,0,8069,'body',0,1867,202,1865,1482635909,1,1866),(121,2,105,0,8070,'body',0,1123,203,1866,1482635909,1,1867),(121,2,105,0,8071,'body',0,1868,204,1867,1482635909,1,1123),(121,2,105,0,8072,'body',0,1135,205,1123,1482635909,1,1868),(121,2,105,0,8073,'body',0,1869,206,1868,1482635909,1,1135),(121,2,105,0,8074,'body',0,1870,207,1135,1482635909,1,1869),(121,2,105,0,8075,'body',0,1871,208,1869,1482635909,1,1870),(121,2,105,0,8076,'body',0,1200,209,1870,1482635909,1,1871),(121,2,105,0,8077,'body',0,1135,210,1871,1482635909,1,1200),(121,2,105,0,8078,'body',0,1872,211,1200,1482635909,1,1135),(121,2,105,0,8079,'body',0,1873,212,1135,1482635909,1,1872),(121,2,105,0,8080,'body',0,1145,213,1872,1482635909,1,1873),(121,2,105,0,8081,'body',0,1874,214,1873,1482635909,1,1145),(121,2,105,0,8082,'body',0,1875,215,1145,1482635909,1,1874),(121,2,105,0,8083,'body',0,1876,216,1874,1482635909,1,1875),(121,2,105,0,8084,'body',0,1123,217,1875,1482635909,1,1876),(121,2,105,0,8085,'body',0,1877,218,1876,1482635909,1,1123),(121,2,105,0,8086,'body',0,1878,219,1123,1482635909,1,1877),(121,2,105,0,8087,'body',0,1747,220,1877,1482635909,1,1878),(121,2,105,0,8088,'body',0,1879,221,1878,1482635909,1,1747),(121,2,105,0,8089,'body',0,1880,222,1747,1482635909,1,1879),(121,2,105,0,8090,'body',0,1881,223,1879,1482635909,1,1880),(121,2,105,0,8091,'body',0,1123,224,1880,1482635909,1,1881),(121,2,105,0,8092,'body',0,1882,225,1881,1482635909,1,1123),(121,2,105,0,8093,'body',0,1883,226,1123,1482635909,1,1882),(121,2,105,0,8094,'body',0,1884,227,1882,1482635909,1,1883),(121,2,105,0,8095,'body',0,1885,228,1883,1482635909,1,1884),(121,2,105,0,8096,'body',0,1810,229,1884,1482635909,1,1885),(121,2,105,0,8097,'body',0,1123,230,1885,1482635909,1,1810),(121,2,105,0,8098,'body',0,1816,231,1810,1482635909,1,1123),(121,2,105,0,8099,'body',0,1126,232,1123,1482635909,1,1816),(121,2,105,0,8100,'body',0,1817,233,1816,1482635909,1,1126),(121,2,105,0,8101,'body',0,1818,234,1126,1482635909,1,1817),(121,2,105,0,8102,'body',0,1886,235,1817,1482635909,1,1818),(121,2,105,0,8103,'body',0,1887,236,1818,1482635909,1,1886),(121,2,105,0,8104,'body',0,1888,237,1886,1482635909,1,1887),(121,2,105,0,8105,'body',0,1126,238,1887,1482635909,1,1888),(121,2,105,0,8106,'body',0,1889,239,1888,1482635909,1,1126),(121,2,105,0,8107,'body',0,1890,240,1126,1482635909,1,1889),(121,2,105,0,8108,'body',0,1042,241,1889,1482635909,1,1890),(121,2,105,0,8109,'body',0,1891,242,1890,1482635909,1,1042),(121,2,105,0,8110,'body',0,1892,243,1042,1482635909,1,1891),(121,2,105,0,8111,'body',0,1893,244,1891,1482635909,1,1892),(121,2,105,0,8112,'body',0,1894,245,1892,1482635909,1,1893),(121,2,105,0,8113,'body',0,1895,246,1893,1482635909,1,1894),(121,2,105,0,8114,'body',0,1542,247,1894,1482635909,1,1895),(121,2,105,0,8115,'body',0,1896,248,1895,1482635909,1,1542),(121,2,105,0,8116,'body',0,1897,249,1542,1482635909,1,1896),(121,2,105,0,8117,'body',0,1893,250,1896,1482635909,1,1897),(121,2,105,0,8118,'body',0,1898,251,1897,1482635909,1,1893),(121,2,105,0,8119,'body',0,1899,252,1893,1482635909,1,1898),(121,2,105,0,8120,'body',0,1042,253,1898,1482635909,1,1899),(121,2,105,0,8121,'body',0,1900,254,1899,1482635909,1,1042),(121,2,105,0,8122,'body',0,1901,255,1042,1482635909,1,1900),(121,2,105,0,8123,'body',0,1902,256,1900,1482635909,1,1901),(121,2,105,0,8124,'body',0,1903,257,1901,1482635909,1,1902),(121,2,105,0,8125,'body',0,0,258,1902,1482635909,1,1903),(1,2,106,0,8126,'title',0,1904,0,0,1482636598,1,1904),(152,2,106,0,8127,'short_title',0,1126,1,1904,1482636598,1,1904),(120,2,106,0,8128,'intro',0,1905,2,1904,1482636598,1,1126),(120,2,106,0,8129,'intro',0,1906,3,1126,1482636598,1,1905),(120,2,106,0,8130,'intro',0,1218,4,1905,1482636598,1,1906),(120,2,106,0,8131,'intro',0,1817,5,1906,1482636598,1,1218),(120,2,106,0,8132,'intro',0,1907,6,1218,1482636598,1,1817),(120,2,106,0,8133,'intro',0,1132,7,1817,1482636598,1,1907),(120,2,106,0,8134,'intro',0,1908,8,1907,1482636598,1,1132),(120,2,106,0,8135,'intro',0,1909,9,1132,1482636598,1,1908),(120,2,106,0,8136,'intro',0,1828,10,1908,1482636598,1,1909),(120,2,106,0,8137,'intro',0,1167,11,1909,1482636598,1,1828),(120,2,106,0,8138,'intro',0,1910,12,1828,1482636598,1,1167),(120,2,106,0,8139,'intro',0,1911,13,1167,1482636598,1,1910),(120,2,106,0,8140,'intro',0,1912,14,1910,1482636598,1,1911),(120,2,106,0,8141,'intro',0,1913,15,1911,1482636598,1,1912),(120,2,106,0,8142,'intro',0,1123,16,1912,1482636598,1,1913),(120,2,106,0,8143,'intro',0,1914,17,1913,1482636598,1,1123),(120,2,106,0,8144,'intro',0,1915,18,1123,1482636598,1,1914),(120,2,106,0,8145,'intro',0,1164,19,1914,1482636598,1,1915),(120,2,106,0,8146,'intro',0,1121,20,1915,1482636598,1,1164),(120,2,106,0,8147,'intro',0,1169,21,1164,1482636598,1,1121),(120,2,106,0,8148,'intro',0,1911,22,1121,1482636598,1,1169),(120,2,106,0,8149,'intro',0,1916,23,1169,1482636598,1,1911),(120,2,106,0,8150,'intro',0,1917,24,1911,1482636598,1,1916),(120,2,106,0,8151,'intro',0,1918,25,1916,1482636598,1,1917),(120,2,106,0,8152,'intro',0,1145,26,1917,1482636598,1,1918),(120,2,106,0,8153,'intro',0,1919,27,1918,1482636598,1,1145),(120,2,106,0,8154,'intro',0,1920,28,1145,1482636598,1,1919),(120,2,106,0,8155,'intro',0,1921,29,1919,1482636598,1,1920),(120,2,106,0,8156,'intro',0,1922,30,1920,1482636598,1,1921),(120,2,106,0,8157,'intro',0,1923,31,1921,1482636598,1,1922),(120,2,106,0,8158,'intro',0,1132,32,1922,1482636598,1,1923),(120,2,106,0,8159,'intro',0,1155,33,1923,1482636598,1,1132),(120,2,106,0,8160,'intro',0,1924,34,1132,1482636598,1,1155),(120,2,106,0,8161,'intro',0,1925,35,1155,1482636598,1,1924),(120,2,106,0,8162,'intro',0,1121,36,1924,1482636598,1,1925),(120,2,106,0,8163,'intro',0,1869,37,1925,1482636598,1,1121),(120,2,106,0,8164,'intro',0,1926,38,1121,1482636598,1,1869),(120,2,106,0,8165,'intro',0,1868,39,1869,1482636598,1,1926),(120,2,106,0,8166,'intro',0,1927,40,1926,1482636598,1,1868),(120,2,106,0,8167,'intro',0,1126,41,1868,1482636598,1,1927),(120,2,106,0,8168,'intro',0,1928,42,1927,1482636598,1,1126),(120,2,106,0,8169,'intro',0,1929,43,1126,1482636598,1,1928),(120,2,106,0,8170,'intro',0,1930,44,1928,1482636598,1,1929),(120,2,106,0,8171,'intro',0,1121,45,1929,1482636598,1,1930),(120,2,106,0,8172,'intro',0,1931,46,1930,1482636598,1,1121),(120,2,106,0,8173,'intro',0,1126,47,1121,1482636598,1,1931),(120,2,106,0,8174,'intro',0,1932,48,1931,1482636598,1,1126),(120,2,106,0,8175,'intro',0,1933,49,1126,1482636598,1,1932),(120,2,106,0,8176,'intro',0,1218,50,1932,1482636598,1,1933),(120,2,106,0,8177,'intro',0,1934,51,1933,1482636598,1,1218),(120,2,106,0,8178,'intro',0,1126,52,1218,1482636598,1,1934),(120,2,106,0,8179,'intro',0,1810,53,1934,1482636598,1,1126),(120,2,106,0,8180,'intro',0,1164,54,1126,1482636598,1,1810),(120,2,106,0,8181,'intro',0,1126,55,1810,1482636598,1,1164),(120,2,106,0,8182,'intro',0,1935,56,1164,1482636598,1,1126),(120,2,106,0,8183,'intro',0,1936,57,1126,1482636598,1,1935),(120,2,106,0,8184,'intro',0,1132,58,1935,1482636598,1,1936),(120,2,106,0,8185,'intro',0,1937,59,1936,1482636598,1,1132),(120,2,106,0,8186,'intro',0,1938,60,1132,1482636598,1,1937),(120,2,106,0,8187,'intro',0,1939,61,1937,1482636598,1,1938),(120,2,106,0,8188,'intro',0,1123,62,1938,1482636598,1,1939),(120,2,106,0,8189,'intro',0,1940,63,1939,1482636598,1,1123),(120,2,106,0,8190,'intro',0,1218,64,1123,1482636598,1,1940),(120,2,106,0,8191,'intro',0,1941,65,1940,1482636598,1,1218),(120,2,106,0,8192,'intro',0,1779,66,1218,1482636598,1,1941),(120,2,106,0,8193,'intro',0,1942,67,1941,1482636598,1,1779),(120,2,106,0,8194,'intro',0,1943,68,1779,1482636598,1,1942),(120,2,106,0,8195,'intro',0,1944,69,1942,1482636598,1,1943),(120,2,106,0,8196,'intro',0,1211,70,1943,1482636598,1,1944),(120,2,106,0,8197,'intro',0,1869,71,1944,1482636598,1,1211),(120,2,106,0,8198,'intro',0,1945,72,1211,1482636598,1,1869),(120,2,106,0,8199,'intro',0,1125,73,1869,1482636598,1,1945),(120,2,106,0,8200,'intro',0,1946,74,1945,1482636598,1,1125),(120,2,106,0,8201,'intro',0,1126,75,1125,1482636598,1,1946),(120,2,106,0,8202,'intro',0,1905,76,1946,1482636598,1,1126),(120,2,106,0,8203,'intro',0,1166,77,1126,1482636598,1,1905),(120,2,106,0,8204,'intro',0,1947,78,1905,1482636598,1,1166),(120,2,106,0,8205,'intro',0,1948,79,1166,1482636598,1,1947),(120,2,106,0,8206,'intro',0,1218,80,1947,1482636598,1,1948),(120,2,106,0,8207,'intro',0,1949,81,1948,1482636598,1,1218),(120,2,106,0,8208,'intro',0,1950,82,1218,1482636598,1,1949),(120,2,106,0,8209,'intro',0,1951,83,1949,1482636598,1,1950),(120,2,106,0,8210,'intro',0,1858,84,1950,1482636598,1,1951),(120,2,106,0,8211,'intro',0,1952,85,1951,1482636598,1,1858),(120,2,106,0,8212,'intro',0,1953,86,1858,1482636598,1,1952),(120,2,106,0,8213,'intro',0,1954,87,1952,1482636598,1,1953),(120,2,106,0,8214,'intro',0,1955,88,1953,1482636598,1,1954),(120,2,106,0,8215,'intro',0,1121,89,1954,1482636598,1,1955),(120,2,106,0,8216,'intro',0,1215,90,1955,1482636598,1,1121),(120,2,106,0,8217,'intro',0,1956,91,1121,1482636598,1,1215),(120,2,106,0,8218,'intro',0,1957,92,1215,1482636598,1,1956),(120,2,106,0,8219,'intro',0,1958,93,1956,1482636598,1,1957),(120,2,106,0,8220,'intro',0,1959,94,1957,1482636598,1,1958),(120,2,106,0,8221,'intro',0,1148,95,1958,1482636598,1,1959),(120,2,106,0,8222,'intro',0,1194,96,1959,1482636598,1,1148),(120,2,106,0,8223,'intro',0,1960,97,1148,1482636598,1,1194),(120,2,106,0,8224,'intro',0,1961,98,1194,1482636598,1,1960),(120,2,106,0,8225,'intro',0,1135,99,1960,1482636598,1,1961),(120,2,106,0,8226,'intro',0,1962,100,1961,1482636598,1,1135),(120,2,106,0,8227,'intro',0,1963,101,1135,1482636598,1,1962),(120,2,106,0,8228,'intro',0,1123,102,1962,1482636598,1,1963),(120,2,106,0,8229,'intro',0,1964,103,1963,1482636598,1,1123),(120,2,106,0,8230,'intro',0,1965,104,1123,1482636598,1,1964),(120,2,106,0,8231,'intro',0,1966,105,1964,1482636598,1,1965),(120,2,106,0,8232,'intro',0,1121,106,1965,1482636598,1,1966),(120,2,106,0,8233,'intro',0,1967,107,1966,1482636598,1,1121),(120,2,106,0,8234,'intro',0,1968,108,1121,1482636598,1,1967),(120,2,106,0,8235,'intro',0,1969,109,1967,1482636598,1,1968),(120,2,106,0,8236,'intro',0,1970,110,1968,1482636598,1,1969),(120,2,106,0,8237,'intro',0,1174,111,1969,1482636598,1,1970),(120,2,106,0,8238,'intro',0,1971,112,1970,1482636598,1,1174),(120,2,106,0,8239,'intro',0,1194,113,1174,1482636598,1,1971),(120,2,106,0,8240,'intro',0,1121,114,1971,1482636598,1,1194),(120,2,106,0,8241,'intro',0,1972,115,1194,1482636598,1,1121),(120,2,106,0,8242,'intro',0,1123,116,1121,1482636598,1,1972),(120,2,106,0,8243,'intro',0,1973,117,1972,1482636598,1,1123),(120,2,106,0,8244,'intro',0,1945,118,1123,1482636598,1,1973),(120,2,106,0,8245,'intro',0,1126,119,1973,1482636598,1,1945),(120,2,106,0,8246,'intro',0,1974,120,1945,1482636598,1,1126),(120,2,106,0,8247,'intro',0,1975,121,1126,1482636598,1,1974),(120,2,106,0,8248,'intro',0,1976,122,1974,1482636598,1,1975),(120,2,106,0,8249,'intro',0,1123,123,1975,1482636598,1,1976),(120,2,106,0,8250,'intro',0,1977,124,1976,1482636598,1,1123),(120,2,106,0,8251,'intro',0,1230,125,1123,1482636598,1,1977),(120,2,106,0,8252,'intro',0,1978,126,1977,1482636598,1,1230),(120,2,106,0,8253,'intro',0,1123,127,1230,1482636598,1,1978),(120,2,106,0,8254,'intro',0,1979,128,1978,1482636598,1,1123),(120,2,106,0,8255,'intro',0,1194,129,1123,1482636598,1,1979),(120,2,106,0,8256,'intro',0,1166,130,1979,1482636598,1,1194),(120,2,106,0,8257,'intro',0,1980,131,1194,1482636598,1,1166),(120,2,106,0,8258,'intro',0,1207,132,1166,1482636598,1,1980),(120,2,106,0,8259,'intro',0,1981,133,1980,1482636598,1,1207),(120,2,106,0,8260,'intro',0,1982,134,1207,1482636598,1,1981),(120,2,106,0,8261,'intro',0,1983,135,1981,1482636598,1,1982),(120,2,106,0,8262,'intro',0,1984,136,1982,1482636598,1,1983),(120,2,106,0,8263,'intro',0,1123,137,1983,1482636598,1,1984),(120,2,106,0,8264,'intro',0,1985,138,1984,1482636598,1,1123),(120,2,106,0,8265,'intro',0,1986,139,1123,1482636598,1,1985),(120,2,106,0,8266,'intro',0,1987,140,1985,1482636598,1,1986),(120,2,106,0,8267,'intro',0,1126,141,1986,1482636598,1,1987),(120,2,106,0,8268,'intro',0,1988,142,1987,1482636598,1,1126),(120,2,106,0,8269,'intro',0,1989,143,1126,1482636598,1,1988),(120,2,106,0,8270,'intro',0,1123,144,1988,1482636598,1,1989),(120,2,106,0,8271,'intro',0,1990,145,1989,1482636598,1,1123),(120,2,106,0,8272,'intro',0,1775,146,1123,1482636598,1,1990),(120,2,106,0,8273,'intro',0,1194,147,1990,1482636598,1,1775),(120,2,106,0,8274,'intro',0,1991,148,1775,1482636598,1,1194),(120,2,106,0,8275,'intro',0,1992,149,1194,1482636598,1,1991),(120,2,106,0,8276,'intro',0,1126,150,1991,1482636598,1,1992),(120,2,106,0,8277,'intro',0,1993,151,1992,1482636598,1,1126),(120,2,106,0,8278,'intro',0,1994,152,1126,1482636598,1,1993),(120,2,106,0,8279,'intro',0,1946,153,1993,1482636598,1,1994),(120,2,106,0,8280,'intro',0,1828,154,1994,1482636598,1,1946),(120,2,106,0,8281,'intro',0,1995,155,1946,1482636598,1,1828),(120,2,106,0,8282,'intro',0,1123,156,1828,1482636598,1,1995),(120,2,106,0,8283,'intro',0,1121,157,1995,1482636598,1,1123),(120,2,106,0,8284,'intro',0,1996,158,1123,1482636598,1,1121),(120,2,106,0,8285,'intro',0,1997,159,1121,1482636598,1,1996),(120,2,106,0,8286,'intro',0,1998,160,1996,1482636598,1,1997),(120,2,106,0,8287,'intro',0,1121,161,1997,1482636598,1,1998),(120,2,106,0,8288,'intro',0,1999,162,1998,1482636598,1,1121),(120,2,106,0,8289,'intro',0,1123,163,1121,1482636598,1,1999),(120,2,106,0,8290,'intro',0,2000,164,1999,1482636598,1,1123),(120,2,106,0,8291,'intro',0,2001,165,1123,1482636598,1,2000),(120,2,106,0,8292,'intro',0,2002,166,2000,1482636598,1,2001),(120,2,106,0,8293,'intro',0,2003,167,2001,1482636598,1,2002),(120,2,106,0,8294,'intro',0,1135,168,2002,1482636598,1,2003),(120,2,106,0,8295,'intro',0,2004,169,2003,1482636598,1,1135),(120,2,106,0,8296,'intro',0,2005,170,1135,1482636598,1,2004),(120,2,106,0,8297,'intro',0,2006,171,2004,1482636598,1,2005),(120,2,106,0,8298,'intro',0,1194,172,2005,1482636598,1,2006),(120,2,106,0,8299,'intro',0,2007,173,2006,1482636598,1,1194),(120,2,106,0,8300,'intro',0,2008,174,1194,1482636598,1,2007),(120,2,106,0,8301,'intro',0,1515,175,2007,1482636598,1,2008),(120,2,106,0,8302,'intro',0,1166,176,2008,1482636598,1,1515),(120,2,106,0,8303,'intro',0,1126,177,1515,1482636598,1,1166),(120,2,106,0,8304,'intro',0,2009,178,1166,1482636598,1,1126),(120,2,106,0,8305,'intro',0,1123,179,1126,1482636598,1,2009),(120,2,106,0,8306,'intro',0,2010,180,2009,1482636598,1,1123),(120,2,106,0,8307,'intro',0,2011,181,1123,1482636598,1,2010),(120,2,106,0,8308,'intro',0,1230,182,2010,1482636598,1,2011),(120,2,106,0,8309,'intro',0,2012,183,2011,1482636598,1,1230),(120,2,106,0,8310,'intro',0,1230,184,1230,1482636598,1,2012),(120,2,106,0,8311,'intro',0,1978,185,2012,1482636598,1,1230),(120,2,106,0,8312,'intro',0,1981,186,1230,1482636598,1,1978),(120,2,106,0,8313,'intro',0,2013,187,1978,1482636598,1,1981),(120,2,106,0,8314,'intro',0,1123,188,1981,1482636598,1,2013),(120,2,106,0,8315,'intro',0,2014,189,2013,1482636598,1,1123),(120,2,106,0,8316,'intro',0,1998,190,1123,1482636598,1,2014),(120,2,106,0,8317,'intro',0,1215,191,2014,1482636598,1,1998),(120,2,106,0,8318,'intro',0,2015,192,1998,1482636598,1,1215),(120,2,106,0,8319,'intro',0,1125,193,1215,1482636598,1,2015),(120,2,106,0,8320,'intro',0,2016,194,2015,1482636598,1,1125),(120,2,106,0,8321,'intro',0,2017,195,1125,1482636598,1,2016),(120,2,106,0,8322,'intro',0,1123,196,2016,1482636598,1,2017),(120,2,106,0,8323,'intro',0,2018,197,2017,1482636598,1,1123),(120,2,106,0,8324,'intro',0,2019,198,1123,1482636598,1,2018),(120,2,106,0,8325,'intro',0,1986,199,2018,1482636598,1,2019),(120,2,106,0,8326,'intro',0,1865,200,2019,1482636598,1,1986),(120,2,106,0,8327,'intro',0,2020,201,1986,1482636598,1,1865),(120,2,106,0,8328,'intro',0,2021,202,1865,1482636598,1,2020),(120,2,106,0,8329,'intro',0,2022,203,2020,1482636598,1,2021),(120,2,106,0,8330,'intro',0,1121,204,2021,1482636598,1,2022),(120,2,106,0,8331,'intro',0,2023,205,2022,1482636598,1,1121),(120,2,106,0,8332,'intro',0,1126,206,1121,1482636598,1,2023),(120,2,106,0,8333,'intro',0,2024,207,2023,1482636598,1,1126),(120,2,106,0,8334,'intro',0,1123,208,1126,1482636598,1,2024),(120,2,106,0,8335,'intro',0,1956,209,2024,1482636598,1,1123),(120,2,106,0,8336,'intro',0,1973,210,1123,1482636598,1,1956),(120,2,106,0,8337,'intro',0,2025,211,1956,1482636598,1,1973),(120,2,106,0,8338,'intro',0,1998,212,1973,1482636598,1,2025),(120,2,106,0,8339,'intro',0,1126,213,2025,1482636598,1,1998),(120,2,106,0,8340,'intro',0,2026,214,1998,1482636598,1,1126),(120,2,106,0,8341,'intro',0,2027,215,1126,1482636598,1,2026),(120,2,106,0,8342,'intro',0,1123,216,2026,1482636598,1,2027),(120,2,106,0,8343,'intro',0,1962,217,2027,1482636598,1,1123),(120,2,106,0,8344,'intro',0,2028,218,1123,1482636598,1,1962),(120,2,106,0,8345,'intro',0,2029,219,1962,1482636598,1,2028),(120,2,106,0,8346,'intro',0,1126,220,2028,1482636598,1,2029),(121,2,106,0,8347,'body',0,1905,221,2029,1482636598,1,1126),(121,2,106,0,8348,'body',0,1906,222,1126,1482636598,1,1905),(121,2,106,0,8349,'body',0,1218,223,1905,1482636598,1,1906),(121,2,106,0,8350,'body',0,1817,224,1906,1482636598,1,1218),(121,2,106,0,8351,'body',0,1907,225,1218,1482636598,1,1817),(121,2,106,0,8352,'body',0,1132,226,1817,1482636598,1,1907),(121,2,106,0,8353,'body',0,1908,227,1907,1482636598,1,1132),(121,2,106,0,8354,'body',0,1909,228,1132,1482636598,1,1908),(121,2,106,0,8355,'body',0,1828,229,1908,1482636598,1,1909),(121,2,106,0,8356,'body',0,1167,230,1909,1482636598,1,1828),(121,2,106,0,8357,'body',0,1910,231,1828,1482636598,1,1167),(121,2,106,0,8358,'body',0,1911,232,1167,1482636598,1,1910),(121,2,106,0,8359,'body',0,1912,233,1910,1482636598,1,1911),(121,2,106,0,8360,'body',0,1913,234,1911,1482636598,1,1912),(121,2,106,0,8361,'body',0,1123,235,1912,1482636598,1,1913),(121,2,106,0,8362,'body',0,1914,236,1913,1482636598,1,1123),(121,2,106,0,8363,'body',0,1915,237,1123,1482636598,1,1914),(121,2,106,0,8364,'body',0,1164,238,1914,1482636598,1,1915),(121,2,106,0,8365,'body',0,1121,239,1915,1482636598,1,1164),(121,2,106,0,8366,'body',0,1169,240,1164,1482636598,1,1121),(121,2,106,0,8367,'body',0,1911,241,1121,1482636598,1,1169),(121,2,106,0,8368,'body',0,1916,242,1169,1482636598,1,1911),(121,2,106,0,8369,'body',0,1917,243,1911,1482636598,1,1916),(121,2,106,0,8370,'body',0,1918,244,1916,1482636598,1,1917),(121,2,106,0,8371,'body',0,1145,245,1917,1482636598,1,1918),(121,2,106,0,8372,'body',0,1919,246,1918,1482636598,1,1145),(121,2,106,0,8373,'body',0,1920,247,1145,1482636598,1,1919),(121,2,106,0,8374,'body',0,1921,248,1919,1482636598,1,1920),(121,2,106,0,8375,'body',0,1922,249,1920,1482636598,1,1921),(121,2,106,0,8376,'body',0,1923,250,1921,1482636598,1,1922),(121,2,106,0,8377,'body',0,1132,251,1922,1482636598,1,1923),(121,2,106,0,8378,'body',0,1155,252,1923,1482636598,1,1132),(121,2,106,0,8379,'body',0,1924,253,1132,1482636598,1,1155),(121,2,106,0,8380,'body',0,1925,254,1155,1482636598,1,1924),(121,2,106,0,8381,'body',0,1121,255,1924,1482636598,1,1925),(121,2,106,0,8382,'body',0,1869,256,1925,1482636598,1,1121),(121,2,106,0,8383,'body',0,1926,257,1121,1482636598,1,1869),(121,2,106,0,8384,'body',0,1868,258,1869,1482636598,1,1926),(121,2,106,0,8385,'body',0,1927,259,1926,1482636598,1,1868),(121,2,106,0,8386,'body',0,1126,260,1868,1482636598,1,1927),(121,2,106,0,8387,'body',0,1928,261,1927,1482636598,1,1126),(121,2,106,0,8388,'body',0,1929,262,1126,1482636598,1,1928),(121,2,106,0,8389,'body',0,1930,263,1928,1482636598,1,1929),(121,2,106,0,8390,'body',0,1121,264,1929,1482636598,1,1930),(121,2,106,0,8391,'body',0,1931,265,1930,1482636598,1,1121),(121,2,106,0,8392,'body',0,1126,266,1121,1482636598,1,1931),(121,2,106,0,8393,'body',0,1932,267,1931,1482636598,1,1126),(121,2,106,0,8394,'body',0,1933,268,1126,1482636598,1,1932),(121,2,106,0,8395,'body',0,1218,269,1932,1482636598,1,1933),(121,2,106,0,8396,'body',0,1934,270,1933,1482636598,1,1218),(121,2,106,0,8397,'body',0,1126,271,1218,1482636598,1,1934),(121,2,106,0,8398,'body',0,1810,272,1934,1482636598,1,1126),(121,2,106,0,8399,'body',0,1164,273,1126,1482636598,1,1810),(121,2,106,0,8400,'body',0,1126,274,1810,1482636598,1,1164),(121,2,106,0,8401,'body',0,1935,275,1164,1482636598,1,1126),(121,2,106,0,8402,'body',0,1936,276,1126,1482636598,1,1935),(121,2,106,0,8403,'body',0,1132,277,1935,1482636598,1,1936),(121,2,106,0,8404,'body',0,1937,278,1936,1482636598,1,1132),(121,2,106,0,8405,'body',0,1938,279,1132,1482636598,1,1937),(121,2,106,0,8406,'body',0,1939,280,1937,1482636598,1,1938),(121,2,106,0,8407,'body',0,1123,281,1938,1482636598,1,1939),(121,2,106,0,8408,'body',0,1940,282,1939,1482636598,1,1123),(121,2,106,0,8409,'body',0,1218,283,1123,1482636598,1,1940),(121,2,106,0,8410,'body',0,1941,284,1940,1482636598,1,1218),(121,2,106,0,8411,'body',0,1779,285,1218,1482636598,1,1941),(121,2,106,0,8412,'body',0,1942,286,1941,1482636598,1,1779),(121,2,106,0,8413,'body',0,1943,287,1779,1482636598,1,1942),(121,2,106,0,8414,'body',0,1944,288,1942,1482636598,1,1943),(121,2,106,0,8415,'body',0,1211,289,1943,1482636598,1,1944),(121,2,106,0,8416,'body',0,1869,290,1944,1482636598,1,1211),(121,2,106,0,8417,'body',0,1945,291,1211,1482636598,1,1869),(121,2,106,0,8418,'body',0,1125,292,1869,1482636598,1,1945),(121,2,106,0,8419,'body',0,1946,293,1945,1482636598,1,1125),(121,2,106,0,8420,'body',0,1126,294,1125,1482636598,1,1946),(121,2,106,0,8421,'body',0,1905,295,1946,1482636598,1,1126),(121,2,106,0,8422,'body',0,1166,296,1126,1482636598,1,1905),(121,2,106,0,8423,'body',0,1947,297,1905,1482636598,1,1166),(121,2,106,0,8424,'body',0,1948,298,1166,1482636598,1,1947),(121,2,106,0,8425,'body',0,1218,299,1947,1482636598,1,1948),(121,2,106,0,8426,'body',0,1949,300,1948,1482636598,1,1218),(121,2,106,0,8427,'body',0,1950,301,1218,1482636598,1,1949),(121,2,106,0,8428,'body',0,1951,302,1949,1482636598,1,1950),(121,2,106,0,8429,'body',0,1858,303,1950,1482636598,1,1951),(121,2,106,0,8430,'body',0,1952,304,1951,1482636598,1,1858),(121,2,106,0,8431,'body',0,1953,305,1858,1482636598,1,1952),(121,2,106,0,8432,'body',0,1954,306,1952,1482636598,1,1953),(121,2,106,0,8433,'body',0,1955,307,1953,1482636598,1,1954),(121,2,106,0,8434,'body',0,1121,308,1954,1482636598,1,1955),(121,2,106,0,8435,'body',0,1215,309,1955,1482636598,1,1121),(121,2,106,0,8436,'body',0,1956,310,1121,1482636598,1,1215),(121,2,106,0,8437,'body',0,1957,311,1215,1482636598,1,1956),(121,2,106,0,8438,'body',0,1958,312,1956,1482636598,1,1957),(121,2,106,0,8439,'body',0,1959,313,1957,1482636598,1,1958),(121,2,106,0,8440,'body',0,1148,314,1958,1482636598,1,1959),(121,2,106,0,8441,'body',0,1194,315,1959,1482636598,1,1148),(121,2,106,0,8442,'body',0,1960,316,1148,1482636598,1,1194),(121,2,106,0,8443,'body',0,1961,317,1194,1482636598,1,1960),(121,2,106,0,8444,'body',0,1135,318,1960,1482636598,1,1961),(121,2,106,0,8445,'body',0,1962,319,1961,1482636598,1,1135),(121,2,106,0,8446,'body',0,1963,320,1135,1482636598,1,1962),(121,2,106,0,8447,'body',0,1123,321,1962,1482636598,1,1963),(121,2,106,0,8448,'body',0,1964,322,1963,1482636598,1,1123),(121,2,106,0,8449,'body',0,1965,323,1123,1482636598,1,1964),(121,2,106,0,8450,'body',0,1966,324,1964,1482636598,1,1965),(121,2,106,0,8451,'body',0,1121,325,1965,1482636598,1,1966),(121,2,106,0,8452,'body',0,1967,326,1966,1482636598,1,1121),(121,2,106,0,8453,'body',0,1968,327,1121,1482636598,1,1967),(121,2,106,0,8454,'body',0,1969,328,1967,1482636598,1,1968),(121,2,106,0,8455,'body',0,1970,329,1968,1482636598,1,1969),(121,2,106,0,8456,'body',0,1174,330,1969,1482636598,1,1970),(121,2,106,0,8457,'body',0,1971,331,1970,1482636598,1,1174),(121,2,106,0,8458,'body',0,1194,332,1174,1482636598,1,1971),(121,2,106,0,8459,'body',0,1121,333,1971,1482636598,1,1194),(121,2,106,0,8460,'body',0,1972,334,1194,1482636598,1,1121),(121,2,106,0,8461,'body',0,1123,335,1121,1482636598,1,1972),(121,2,106,0,8462,'body',0,1973,336,1972,1482636598,1,1123),(121,2,106,0,8463,'body',0,1945,337,1123,1482636598,1,1973),(121,2,106,0,8464,'body',0,1126,338,1973,1482636598,1,1945),(121,2,106,0,8465,'body',0,1974,339,1945,1482636598,1,1126),(121,2,106,0,8466,'body',0,1975,340,1126,1482636598,1,1974),(121,2,106,0,8467,'body',0,1976,341,1974,1482636598,1,1975),(121,2,106,0,8468,'body',0,1123,342,1975,1482636598,1,1976),(121,2,106,0,8469,'body',0,1977,343,1976,1482636598,1,1123),(121,2,106,0,8470,'body',0,1230,344,1123,1482636598,1,1977),(121,2,106,0,8471,'body',0,1978,345,1977,1482636598,1,1230),(121,2,106,0,8472,'body',0,1123,346,1230,1482636598,1,1978),(121,2,106,0,8473,'body',0,1979,347,1978,1482636598,1,1123),(121,2,106,0,8474,'body',0,1194,348,1123,1482636598,1,1979),(121,2,106,0,8475,'body',0,1166,349,1979,1482636598,1,1194),(121,2,106,0,8476,'body',0,1980,350,1194,1482636598,1,1166),(121,2,106,0,8477,'body',0,1207,351,1166,1482636598,1,1980),(121,2,106,0,8478,'body',0,1981,352,1980,1482636598,1,1207),(121,2,106,0,8479,'body',0,1982,353,1207,1482636598,1,1981),(121,2,106,0,8480,'body',0,1983,354,1981,1482636598,1,1982),(121,2,106,0,8481,'body',0,1984,355,1982,1482636598,1,1983),(121,2,106,0,8482,'body',0,1123,356,1983,1482636598,1,1984),(121,2,106,0,8483,'body',0,1985,357,1984,1482636598,1,1123),(121,2,106,0,8484,'body',0,1986,358,1123,1482636598,1,1985),(121,2,106,0,8485,'body',0,1987,359,1985,1482636598,1,1986),(121,2,106,0,8486,'body',0,1126,360,1986,1482636598,1,1987),(121,2,106,0,8487,'body',0,1988,361,1987,1482636598,1,1126),(121,2,106,0,8488,'body',0,1989,362,1126,1482636598,1,1988),(121,2,106,0,8489,'body',0,1123,363,1988,1482636598,1,1989),(121,2,106,0,8490,'body',0,1990,364,1989,1482636598,1,1123),(121,2,106,0,8491,'body',0,1775,365,1123,1482636598,1,1990),(121,2,106,0,8492,'body',0,1194,366,1990,1482636598,1,1775),(121,2,106,0,8493,'body',0,1991,367,1775,1482636598,1,1194),(121,2,106,0,8494,'body',0,1992,368,1194,1482636598,1,1991),(121,2,106,0,8495,'body',0,1126,369,1991,1482636598,1,1992),(121,2,106,0,8496,'body',0,1993,370,1992,1482636598,1,1126),(121,2,106,0,8497,'body',0,1994,371,1126,1482636598,1,1993),(121,2,106,0,8498,'body',0,1946,372,1993,1482636598,1,1994),(121,2,106,0,8499,'body',0,1828,373,1994,1482636598,1,1946),(121,2,106,0,8500,'body',0,1995,374,1946,1482636598,1,1828),(121,2,106,0,8501,'body',0,1123,375,1828,1482636598,1,1995),(121,2,106,0,8502,'body',0,1121,376,1995,1482636598,1,1123),(121,2,106,0,8503,'body',0,1996,377,1123,1482636598,1,1121),(121,2,106,0,8504,'body',0,1997,378,1121,1482636598,1,1996),(121,2,106,0,8505,'body',0,1998,379,1996,1482636598,1,1997),(121,2,106,0,8506,'body',0,1121,380,1997,1482636598,1,1998),(121,2,106,0,8507,'body',0,1999,381,1998,1482636598,1,1121),(121,2,106,0,8508,'body',0,1123,382,1121,1482636598,1,1999),(121,2,106,0,8509,'body',0,2000,383,1999,1482636598,1,1123),(121,2,106,0,8510,'body',0,2001,384,1123,1482636598,1,2000),(121,2,106,0,8511,'body',0,2002,385,2000,1482636598,1,2001),(121,2,106,0,8512,'body',0,2003,386,2001,1482636598,1,2002),(121,2,106,0,8513,'body',0,1135,387,2002,1482636598,1,2003),(121,2,106,0,8514,'body',0,2004,388,2003,1482636598,1,1135),(121,2,106,0,8515,'body',0,2005,389,1135,1482636598,1,2004),(121,2,106,0,8516,'body',0,2006,390,2004,1482636598,1,2005),(121,2,106,0,8517,'body',0,1194,391,2005,1482636598,1,2006),(121,2,106,0,8518,'body',0,2007,392,2006,1482636598,1,1194),(121,2,106,0,8519,'body',0,2008,393,1194,1482636598,1,2007),(121,2,106,0,8520,'body',0,1515,394,2007,1482636598,1,2008),(121,2,106,0,8521,'body',0,1166,395,2008,1482636598,1,1515),(121,2,106,0,8522,'body',0,1126,396,1515,1482636598,1,1166),(121,2,106,0,8523,'body',0,2009,397,1166,1482636598,1,1126),(121,2,106,0,8524,'body',0,1123,398,1126,1482636598,1,2009),(121,2,106,0,8525,'body',0,2010,399,2009,1482636598,1,1123),(121,2,106,0,8526,'body',0,2011,400,1123,1482636598,1,2010),(121,2,106,0,8527,'body',0,1230,401,2010,1482636598,1,2011),(121,2,106,0,8528,'body',0,2012,402,2011,1482636598,1,1230),(121,2,106,0,8529,'body',0,1230,403,1230,1482636598,1,2012),(121,2,106,0,8530,'body',0,1978,404,2012,1482636598,1,1230),(121,2,106,0,8531,'body',0,1981,405,1230,1482636598,1,1978),(121,2,106,0,8532,'body',0,2013,406,1978,1482636598,1,1981),(121,2,106,0,8533,'body',0,1123,407,1981,1482636598,1,2013),(121,2,106,0,8534,'body',0,2014,408,2013,1482636598,1,1123),(121,2,106,0,8535,'body',0,1998,409,1123,1482636598,1,2014),(121,2,106,0,8536,'body',0,1215,410,2014,1482636598,1,1998),(121,2,106,0,8537,'body',0,2015,411,1998,1482636598,1,1215),(121,2,106,0,8538,'body',0,1125,412,1215,1482636598,1,2015),(121,2,106,0,8539,'body',0,2016,413,2015,1482636598,1,1125),(121,2,106,0,8540,'body',0,2017,414,1125,1482636598,1,2016),(121,2,106,0,8541,'body',0,1123,415,2016,1482636598,1,2017),(121,2,106,0,8542,'body',0,2018,416,2017,1482636598,1,1123),(121,2,106,0,8543,'body',0,2019,417,1123,1482636598,1,2018),(121,2,106,0,8544,'body',0,1986,418,2018,1482636598,1,2019),(121,2,106,0,8545,'body',0,1865,419,2019,1482636598,1,1986),(121,2,106,0,8546,'body',0,2020,420,1986,1482636598,1,1865),(121,2,106,0,8547,'body',0,2021,421,1865,1482636598,1,2020),(121,2,106,0,8548,'body',0,2022,422,2020,1482636598,1,2021),(121,2,106,0,8549,'body',0,1121,423,2021,1482636598,1,2022),(121,2,106,0,8550,'body',0,2023,424,2022,1482636598,1,1121),(121,2,106,0,8551,'body',0,1126,425,1121,1482636598,1,2023),(121,2,106,0,8552,'body',0,2024,426,2023,1482636598,1,1126),(121,2,106,0,8553,'body',0,1123,427,1126,1482636598,1,2024),(121,2,106,0,8554,'body',0,1956,428,2024,1482636598,1,1123),(121,2,106,0,8555,'body',0,1973,429,1123,1482636598,1,1956),(121,2,106,0,8556,'body',0,2025,430,1956,1482636598,1,1973),(121,2,106,0,8557,'body',0,1998,431,1973,1482636598,1,2025),(121,2,106,0,8558,'body',0,1126,432,2025,1482636598,1,1998),(121,2,106,0,8559,'body',0,2026,433,1998,1482636598,1,1126),(121,2,106,0,8560,'body',0,2027,434,1126,1482636598,1,2026),(121,2,106,0,8561,'body',0,1123,435,2026,1482636598,1,2027),(121,2,106,0,8562,'body',0,1962,436,2027,1482636598,1,1123),(121,2,106,0,8563,'body',0,2028,437,1123,1482636598,1,1962),(121,2,106,0,8564,'body',0,2029,438,1962,1482636598,1,2028),(121,2,106,0,8565,'body',0,0,439,2028,1482636598,1,2029),(1,2,107,0,8566,'title',0,1126,0,0,1482636915,1,2030),(120,2,107,0,8567,'intro',0,2031,1,2030,1482636915,1,1126),(120,2,107,0,8568,'intro',0,1747,2,1126,1482636915,1,2031),(120,2,107,0,8569,'intro',0,1748,3,2031,1482636915,1,1747),(120,2,107,0,8570,'intro',0,1749,4,1747,1482636915,1,1748),(120,2,107,0,8571,'intro',0,1515,5,1748,1482636915,1,1749),(120,2,107,0,8572,'intro',0,1191,6,1749,1482636915,1,1515),(120,2,107,0,8573,'intro',0,1125,7,1515,1482636915,1,1191),(120,2,107,0,8574,'intro',0,2030,8,1191,1482636915,1,1125),(120,2,107,0,8575,'intro',0,1166,9,1125,1482636915,1,2030),(120,2,107,0,8576,'intro',0,1126,10,2030,1482636915,1,1166),(120,2,107,0,8577,'intro',0,1042,11,1166,1482636915,1,1126),(120,2,107,0,8578,'intro',0,1043,12,1126,1482636915,1,1042),(120,2,107,0,8579,'intro',0,2032,13,1042,1482636915,1,1043),(120,2,107,0,8580,'intro',0,2033,14,1043,1482636915,1,2032),(120,2,107,0,8581,'intro',0,1143,15,2032,1482636915,1,2033),(120,2,107,0,8582,'intro',0,1827,16,2033,1482636915,1,1143),(120,2,107,0,8583,'intro',0,1757,17,1143,1482636915,1,1827),(120,2,107,0,8584,'intro',0,2034,18,1827,1482636915,1,1757),(120,2,107,0,8585,'intro',0,2035,19,1757,1482636915,1,2034),(120,2,107,0,8586,'intro',0,1145,20,2034,1482636915,1,2035),(120,2,107,0,8587,'intro',0,1805,21,2035,1482636915,1,1145),(120,2,107,0,8588,'intro',0,2036,22,1145,1482636915,1,1805),(120,2,107,0,8589,'intro',0,2037,23,1805,1482636915,1,2036),(120,2,107,0,8590,'intro',0,2038,24,2036,1482636915,1,2037),(120,2,107,0,8591,'intro',0,2039,25,2037,1482636915,1,2038),(120,2,107,0,8592,'intro',0,2040,26,2038,1482636915,1,2039),(120,2,107,0,8593,'intro',0,1125,27,2039,1482636915,1,2040),(120,2,107,0,8594,'intro',0,2041,28,2040,1482636915,1,1125),(120,2,107,0,8595,'intro',0,2042,29,1125,1482636915,1,2041),(120,2,107,0,8596,'intro',0,1804,30,2041,1482636915,1,2042),(120,2,107,0,8597,'intro',0,1828,31,2042,1482636915,1,1804),(120,2,107,0,8598,'intro',0,1042,32,1804,1482636915,1,1828),(120,2,107,0,8599,'intro',0,1043,33,1828,1482636915,1,1042),(120,2,107,0,8600,'intro',0,2043,34,1042,1482636915,1,1043),(120,2,107,0,8601,'intro',0,1125,35,1043,1482636915,1,2043),(120,2,107,0,8602,'intro',0,2044,36,2043,1482636915,1,1125),(120,2,107,0,8603,'intro',0,2045,37,1125,1482636915,1,2044),(120,2,107,0,8604,'intro',0,1132,38,2044,1482636915,1,2045),(120,2,107,0,8605,'intro',0,2046,39,2045,1482636915,1,1132),(120,2,107,0,8606,'intro',0,2034,40,1132,1482636915,1,2046),(120,2,107,0,8607,'intro',0,2047,41,2046,1482636915,1,2034),(120,2,107,0,8608,'intro',0,2048,42,2034,1482636915,1,2047),(120,2,107,0,8609,'intro',0,1126,43,2047,1482636915,1,2048),(120,2,107,0,8610,'intro',0,2032,44,2048,1482636915,1,1126),(120,2,107,0,8611,'intro',0,1121,45,1126,1482636915,1,2032),(120,2,107,0,8612,'intro',0,1218,46,2032,1482636915,1,1121),(120,2,107,0,8613,'intro',0,1934,47,1121,1482636915,1,1218),(120,2,107,0,8614,'intro',0,1230,48,1218,1482636915,1,1934),(120,2,107,0,8615,'intro',0,2049,49,1934,1482636915,1,1230),(120,2,107,0,8616,'intro',0,2050,50,1230,1482636915,1,2049),(120,2,107,0,8617,'intro',0,2051,51,2049,1482636915,1,2050),(120,2,107,0,8618,'intro',0,2052,52,2050,1482636915,1,2051),(120,2,107,0,8619,'intro',0,1169,53,2051,1482636915,1,2052),(120,2,107,0,8620,'intro',0,1126,54,2052,1482636915,1,1169),(120,2,107,0,8621,'intro',0,2032,55,1169,1482636915,1,1126),(120,2,107,0,8622,'intro',0,1218,56,1126,1482636915,1,2032),(120,2,107,0,8623,'intro',0,2042,57,2032,1482636915,1,1218),(120,2,107,0,8624,'intro',0,1126,58,1218,1482636915,1,2042),(121,2,107,0,8625,'body',0,2031,59,2042,1482636915,1,1126),(121,2,107,0,8626,'body',0,1747,60,1126,1482636915,1,2031),(121,2,107,0,8627,'body',0,1748,61,2031,1482636915,1,1747),(121,2,107,0,8628,'body',0,1749,62,1747,1482636915,1,1748),(121,2,107,0,8629,'body',0,1515,63,1748,1482636915,1,1749),(121,2,107,0,8630,'body',0,1191,64,1749,1482636915,1,1515),(121,2,107,0,8631,'body',0,1125,65,1515,1482636915,1,1191),(121,2,107,0,8632,'body',0,2030,66,1191,1482636915,1,1125),(121,2,107,0,8633,'body',0,1166,67,1125,1482636915,1,2030),(121,2,107,0,8634,'body',0,1126,68,2030,1482636915,1,1166),(121,2,107,0,8635,'body',0,1042,69,1166,1482636915,1,1126),(121,2,107,0,8636,'body',0,1043,70,1126,1482636915,1,1042),(121,2,107,0,8637,'body',0,2032,71,1042,1482636915,1,1043),(121,2,107,0,8638,'body',0,2033,72,1043,1482636915,1,2032),(121,2,107,0,8639,'body',0,1143,73,2032,1482636915,1,2033),(121,2,107,0,8640,'body',0,1827,74,2033,1482636915,1,1143),(121,2,107,0,8641,'body',0,1757,75,1143,1482636915,1,1827),(121,2,107,0,8642,'body',0,2034,76,1827,1482636915,1,1757),(121,2,107,0,8643,'body',0,2035,77,1757,1482636915,1,2034),(121,2,107,0,8644,'body',0,1145,78,2034,1482636915,1,2035),(121,2,107,0,8645,'body',0,1805,79,2035,1482636915,1,1145),(121,2,107,0,8646,'body',0,2036,80,1145,1482636915,1,1805),(121,2,107,0,8647,'body',0,2037,81,1805,1482636915,1,2036),(121,2,107,0,8648,'body',0,2038,82,2036,1482636915,1,2037),(121,2,107,0,8649,'body',0,2039,83,2037,1482636915,1,2038),(121,2,107,0,8650,'body',0,2040,84,2038,1482636915,1,2039),(121,2,107,0,8651,'body',0,1125,85,2039,1482636915,1,2040),(121,2,107,0,8652,'body',0,2041,86,2040,1482636915,1,1125),(121,2,107,0,8653,'body',0,2042,87,1125,1482636915,1,2041),(121,2,107,0,8654,'body',0,1804,88,2041,1482636915,1,2042),(121,2,107,0,8655,'body',0,1828,89,2042,1482636915,1,1804),(121,2,107,0,8656,'body',0,1042,90,1804,1482636915,1,1828),(121,2,107,0,8657,'body',0,1043,91,1828,1482636915,1,1042),(121,2,107,0,8658,'body',0,2043,92,1042,1482636915,1,1043),(121,2,107,0,8659,'body',0,1125,93,1043,1482636915,1,2043),(121,2,107,0,8660,'body',0,2044,94,2043,1482636915,1,1125),(121,2,107,0,8661,'body',0,2045,95,1125,1482636915,1,2044),(121,2,107,0,8662,'body',0,1132,96,2044,1482636915,1,2045),(121,2,107,0,8663,'body',0,2046,97,2045,1482636915,1,1132),(121,2,107,0,8664,'body',0,2034,98,1132,1482636915,1,2046),(121,2,107,0,8665,'body',0,2047,99,2046,1482636915,1,2034),(121,2,107,0,8666,'body',0,2048,100,2034,1482636915,1,2047),(121,2,107,0,8667,'body',0,1126,101,2047,1482636915,1,2048),(121,2,107,0,8668,'body',0,2032,102,2048,1482636915,1,1126),(121,2,107,0,8669,'body',0,1121,103,1126,1482636915,1,2032),(121,2,107,0,8670,'body',0,1218,104,2032,1482636915,1,1121),(121,2,107,0,8671,'body',0,1934,105,1121,1482636915,1,1218),(121,2,107,0,8672,'body',0,1230,106,1218,1482636915,1,1934),(121,2,107,0,8673,'body',0,2049,107,1934,1482636915,1,1230),(121,2,107,0,8674,'body',0,2050,108,1230,1482636915,1,2049),(121,2,107,0,8675,'body',0,2051,109,2049,1482636915,1,2050),(121,2,107,0,8676,'body',0,2052,110,2050,1482636915,1,2051),(121,2,107,0,8677,'body',0,1169,111,2051,1482636915,1,2052),(121,2,107,0,8678,'body',0,1126,112,2052,1482636915,1,1169),(121,2,107,0,8679,'body',0,2032,113,1169,1482636915,1,1126),(121,2,107,0,8680,'body',0,1218,114,1126,1482636915,1,2032),(121,2,107,0,8681,'body',0,2042,115,2032,1482636915,1,1218),(121,2,107,0,8682,'body',0,0,116,1218,1482636915,1,2042),(1,2,108,0,8780,'title',0,2086,0,0,1482636972,1,2085),(120,2,108,0,8781,'intro',0,2087,1,2085,1482636972,1,2086),(120,2,108,0,8782,'intro',0,2088,2,2086,1482636972,1,2087),(120,2,108,0,8783,'intro',0,2089,3,2087,1482636972,1,2088),(120,2,108,0,8784,'intro',0,2090,4,2088,1482636972,1,2089),(120,2,108,0,8785,'intro',0,1166,5,2089,1482636972,1,2090),(120,2,108,0,8786,'intro',0,2091,6,2090,1482636972,1,1166),(120,2,108,0,8787,'intro',0,2092,7,1166,1482636972,1,2091),(120,2,108,0,8788,'intro',0,1752,8,2091,1482636972,1,2092),(120,2,108,0,8789,'intro',0,2093,9,2092,1482636972,1,1752),(120,2,108,0,8790,'intro',0,1747,10,1752,1482636972,1,2093),(120,2,108,0,8791,'intro',0,1748,11,2093,1482636972,1,1747),(120,2,108,0,8792,'intro',0,1747,12,1747,1482636972,1,1748),(120,2,108,0,8793,'intro',0,1810,13,1748,1482636972,1,1747),(120,2,108,0,8794,'intro',0,2086,14,1747,1482636972,1,1810),(120,2,108,0,8795,'intro',0,2087,15,1810,1482636972,1,2086),(120,2,108,0,8796,'intro',0,2094,16,2086,1482636972,1,2087),(120,2,108,0,8797,'intro',0,2095,17,2087,1482636972,1,2094),(120,2,108,0,8798,'intro',0,2096,18,2094,1482636972,1,2095),(120,2,108,0,8799,'intro',0,2097,19,2095,1482636972,1,2096),(120,2,108,0,8800,'intro',0,2087,20,2096,1482636972,1,2097),(120,2,108,0,8801,'intro',0,2098,21,2097,1482636972,1,2087),(120,2,108,0,8802,'intro',0,2099,22,2087,1482636972,1,2098),(120,2,108,0,8803,'intro',0,2100,23,2098,1482636972,1,2099),(120,2,108,0,8804,'intro',0,1828,24,2099,1482636972,1,2100),(120,2,108,0,8805,'intro',0,2101,25,2100,1482636972,1,1828),(120,2,108,0,8806,'intro',0,1193,26,1828,1482636972,1,2101),(120,2,108,0,8807,'intro',0,2102,27,2101,1482636972,1,1193),(120,2,108,0,8808,'intro',0,2087,28,1193,1482636972,1,2102),(120,2,108,0,8809,'intro',0,2087,29,2102,1482636972,1,2087),(120,2,108,0,8810,'intro',0,1230,30,2087,1482636972,1,2087),(120,2,108,0,8811,'intro',0,2103,31,2087,1482636972,1,1230),(120,2,108,0,8812,'intro',0,2104,32,1230,1482636972,1,2103),(120,2,108,0,8813,'intro',0,2105,33,2103,1482636972,1,2104),(120,2,108,0,8814,'intro',0,2106,34,2104,1482636972,1,2105),(120,2,108,0,8815,'intro',0,1747,35,2105,1482636972,1,2106),(120,2,108,0,8816,'intro',0,1814,36,2106,1482636972,1,1747),(120,2,108,0,8817,'intro',0,1847,37,1747,1482636972,1,1814),(120,2,108,0,8818,'intro',0,2107,38,1814,1482636972,1,1847),(120,2,108,0,8819,'intro',0,2108,39,1847,1482636972,1,2107),(120,2,108,0,8820,'intro',0,2109,40,2107,1482636972,1,2108),(120,2,108,0,8821,'intro',0,2110,41,2108,1482636972,1,2109),(120,2,108,0,8822,'intro',0,2111,42,2109,1482636972,1,2110),(120,2,108,0,8823,'intro',0,2112,43,2110,1482636972,1,2111),(120,2,108,0,8824,'intro',0,2113,44,2111,1482636972,1,2112),(120,2,108,0,8825,'intro',0,2114,45,2112,1482636972,1,2113),(120,2,108,0,8826,'intro',0,2115,46,2113,1482636972,1,2114),(120,2,108,0,8827,'intro',0,2116,47,2114,1482636972,1,2115),(120,2,108,0,8828,'intro',0,2086,48,2115,1482636972,1,2116),(121,2,108,0,8829,'body',0,2087,49,2116,1482636972,1,2086),(121,2,108,0,8830,'body',0,2088,50,2086,1482636972,1,2087),(121,2,108,0,8831,'body',0,2089,51,2087,1482636972,1,2088),(121,2,108,0,8832,'body',0,2090,52,2088,1482636972,1,2089),(121,2,108,0,8833,'body',0,1166,53,2089,1482636972,1,2090),(121,2,108,0,8834,'body',0,2091,54,2090,1482636972,1,1166),(121,2,108,0,8835,'body',0,2092,55,1166,1482636972,1,2091),(121,2,108,0,8836,'body',0,1752,56,2091,1482636972,1,2092),(121,2,108,0,8837,'body',0,2093,57,2092,1482636972,1,1752),(121,2,108,0,8838,'body',0,1747,58,1752,1482636972,1,2093),(121,2,108,0,8839,'body',0,1748,59,2093,1482636972,1,1747),(121,2,108,0,8840,'body',0,1747,60,1747,1482636972,1,1748),(121,2,108,0,8841,'body',0,1810,61,1748,1482636972,1,1747),(121,2,108,0,8842,'body',0,2086,62,1747,1482636972,1,1810),(121,2,108,0,8843,'body',0,2087,63,1810,1482636972,1,2086),(121,2,108,0,8844,'body',0,2094,64,2086,1482636972,1,2087),(121,2,108,0,8845,'body',0,2095,65,2087,1482636972,1,2094),(121,2,108,0,8846,'body',0,2096,66,2094,1482636972,1,2095),(121,2,108,0,8847,'body',0,2097,67,2095,1482636972,1,2096),(121,2,108,0,8848,'body',0,2087,68,2096,1482636972,1,2097),(121,2,108,0,8849,'body',0,2098,69,2097,1482636972,1,2087),(121,2,108,0,8850,'body',0,2099,70,2087,1482636972,1,2098),(121,2,108,0,8851,'body',0,2100,71,2098,1482636972,1,2099),(121,2,108,0,8852,'body',0,1828,72,2099,1482636972,1,2100),(121,2,108,0,8853,'body',0,2101,73,2100,1482636972,1,1828),(121,2,108,0,8854,'body',0,1193,74,1828,1482636972,1,2101),(121,2,108,0,8855,'body',0,2102,75,2101,1482636972,1,1193),(121,2,108,0,8856,'body',0,2087,76,1193,1482636972,1,2102),(121,2,108,0,8857,'body',0,2087,77,2102,1482636972,1,2087),(121,2,108,0,8858,'body',0,1230,78,2087,1482636972,1,2087),(121,2,108,0,8859,'body',0,2103,79,2087,1482636972,1,1230),(121,2,108,0,8860,'body',0,2104,80,1230,1482636972,1,2103),(121,2,108,0,8861,'body',0,2105,81,2103,1482636972,1,2104),(121,2,108,0,8862,'body',0,2106,82,2104,1482636972,1,2105),(121,2,108,0,8863,'body',0,1747,83,2105,1482636972,1,2106),(121,2,108,0,8864,'body',0,1814,84,2106,1482636972,1,1747),(121,2,108,0,8865,'body',0,1847,85,1747,1482636972,1,1814),(121,2,108,0,8866,'body',0,2107,86,1814,1482636972,1,1847),(121,2,108,0,8867,'body',0,2108,87,1847,1482636972,1,2107),(121,2,108,0,8868,'body',0,2109,88,2107,1482636972,1,2108),(121,2,108,0,8869,'body',0,2110,89,2108,1482636972,1,2109),(121,2,108,0,8870,'body',0,2111,90,2109,1482636972,1,2110),(121,2,108,0,8871,'body',0,2112,91,2110,1482636972,1,2111),(121,2,108,0,8872,'body',0,2113,92,2111,1482636972,1,2112),(121,2,108,0,8873,'body',0,2114,93,2112,1482636972,1,2113),(121,2,108,0,8874,'body',0,2115,94,2113,1482636972,1,2114),(121,2,108,0,8875,'body',0,2116,95,2114,1482636972,1,2115),(121,2,108,0,8876,'body',0,0,96,2115,1482636972,1,2116),(4,1,69,0,10152,'name',0,1876,0,0,1480902015,1,1876),(155,1,69,0,10153,'short_name',0,0,1,1876,1480902015,1,1876),(1,2,110,0,10154,'title',0,1135,0,0,1482638406,1,2567),(121,2,110,0,10155,'body',0,1126,1,2567,1482638406,1,1135),(121,2,110,0,10156,'body',0,2568,2,1135,1482638406,1,1126),(121,2,110,0,10157,'body',0,2569,3,1126,1482638406,1,2568),(121,2,110,0,10158,'body',0,1230,4,2568,1482638406,1,2569),(121,2,110,0,10159,'body',0,1042,5,2569,1482638406,1,1230),(121,2,110,0,10160,'body',0,1043,6,1230,1482638406,1,1042),(121,2,110,0,10161,'body',0,2570,7,1042,1482638406,1,1043),(121,2,110,0,10162,'body',0,1120,8,1043,1482638406,1,2570),(121,2,110,0,10163,'body',0,1816,9,2570,1482638406,1,1120),(121,2,110,0,10164,'body',0,2571,10,1120,1482638406,1,1816),(121,2,110,0,10165,'body',0,1123,11,1816,1482638406,1,2571),(121,2,110,0,10166,'body',0,1747,12,2571,1482638406,1,1123),(121,2,110,0,10167,'body',0,2572,13,1123,1482638406,1,1747),(121,2,110,0,10168,'body',0,2573,14,1747,1482638406,1,2572),(121,2,110,0,10169,'body',0,2574,15,2572,1482638406,1,2573),(121,2,110,0,10170,'body',0,1115,16,2573,1482638406,1,2574),(121,2,110,0,10171,'body',0,1121,17,2574,1482638406,1,1115),(121,2,110,0,10172,'body',0,2575,18,1115,1482638406,1,1121),(121,2,110,0,10173,'body',0,2576,19,1121,1482638406,1,2575),(121,2,110,0,10174,'body',0,2572,20,2575,1482638406,1,2576),(121,2,110,0,10175,'body',0,1218,21,2576,1482638406,1,2572),(121,2,110,0,10176,'body',0,2577,22,2572,1482638406,1,1218),(121,2,110,0,10177,'body',0,2383,23,1218,1482638406,1,2577),(121,2,110,0,10178,'body',0,2578,24,2577,1482638406,1,2383),(121,2,110,0,10179,'body',0,1145,25,2383,1482638406,1,2578),(121,2,110,0,10180,'body',0,2579,26,2578,1482638406,1,1145),(121,2,110,0,10181,'body',0,2580,27,1145,1482638406,1,2579),(121,2,110,0,10182,'body',0,1805,28,2579,1482638406,1,2580),(121,2,110,0,10183,'body',0,1125,29,2580,1482638406,1,1805),(121,2,110,0,10184,'body',0,2030,30,1805,1482638406,1,1125),(121,2,110,0,10185,'body',0,1166,31,1125,1482638406,1,2030),(121,2,110,0,10186,'body',0,2383,32,2030,1482638406,1,1166),(121,2,110,0,10187,'body',0,2581,33,1166,1482638406,1,2383),(121,2,110,0,10188,'body',0,1827,34,2383,1482638406,1,2581),(121,2,110,0,10189,'body',0,1215,35,2581,1482638406,1,1827),(121,2,110,0,10190,'body',0,2582,36,1827,1482638406,1,1215),(121,2,110,0,10191,'body',0,1126,37,1215,1482638406,1,2582),(121,2,110,0,10192,'body',0,2583,38,2582,1482638406,1,1126),(121,2,110,0,10193,'body',0,2584,39,1126,1482638406,1,2583),(121,2,110,0,10194,'body',0,2585,40,2583,1482638406,1,2584),(121,2,110,0,10195,'body',0,1123,41,2584,1482638406,1,2585),(121,2,110,0,10196,'body',0,2586,42,2585,1482638406,1,1123),(121,2,110,0,10197,'body',0,2587,43,1123,1482638406,1,2586),(121,2,110,0,10198,'body',0,2588,44,2586,1482638406,1,2587),(121,2,110,0,10199,'body',0,1123,45,2587,1482638406,1,2588),(121,2,110,0,10200,'body',0,1200,46,2588,1482638406,1,1123),(121,2,110,0,10201,'body',0,2589,47,1123,1482638406,1,1200),(121,2,110,0,10202,'body',0,1772,48,1200,1482638406,1,2589),(121,2,110,0,10203,'body',0,2590,49,2589,1482638406,1,1772),(121,2,110,0,10204,'body',0,2591,50,1772,1482638406,1,2590),(121,2,110,0,10205,'body',0,2592,51,2590,1482638406,1,2591),(121,2,110,0,10206,'body',0,1828,52,2591,1482638406,1,2592),(121,2,110,0,10207,'body',0,1042,53,2592,1482638406,1,1828),(121,2,110,0,10208,'body',0,1043,54,1828,1482638406,1,1042),(121,2,110,0,10209,'body',0,2043,55,1042,1482638406,1,1043),(121,2,110,0,10210,'body',0,1828,56,1043,1482638406,1,2043),(121,2,110,0,10211,'body',0,2593,57,2043,1482638406,1,1828),(121,2,110,0,10212,'body',0,1125,58,1828,1482638406,1,2593),(121,2,110,0,10213,'body',0,2594,59,2593,1482638406,1,1125),(121,2,110,0,10214,'body',0,2595,60,1125,1482638406,1,2594),(121,2,110,0,10215,'body',0,1116,61,2594,1482638406,1,2595),(121,2,110,0,10216,'body',0,2596,62,2595,1482638406,1,1116),(121,2,110,0,10217,'body',0,2597,63,1116,1482638406,1,2596),(121,2,110,0,10218,'body',0,2598,64,2596,1482638406,1,2597),(121,2,110,0,10219,'body',0,1143,65,2597,1482638406,1,2598),(121,2,110,0,10220,'body',0,1828,66,2598,1482638406,1,1143),(121,2,110,0,10221,'body',0,2599,67,1143,1482638406,1,1828),(121,2,110,0,10222,'body',0,1747,68,1828,1482638406,1,2599),(121,2,110,0,10223,'body',0,2572,69,2599,1482638406,1,1747),(121,2,110,0,10224,'body',0,1145,70,1747,1482638406,1,2572),(121,2,110,0,10225,'body',0,2600,71,2572,1482638406,1,1145),(121,2,110,0,10226,'body',0,0,72,1145,1482638406,1,2600),(1,2,111,0,10227,'title',0,2602,0,0,1482638615,1,2601),(121,2,111,0,10228,'body',0,1126,1,2601,1482638615,1,2602),(121,2,111,0,10229,'body',0,2603,2,2602,1482638615,1,1126),(121,2,111,0,10230,'body',0,1230,3,1126,1482638615,1,2603),(121,2,111,0,10231,'body',0,1042,4,2603,1482638615,1,1230),(121,2,111,0,10232,'body',0,1043,5,1230,1482638615,1,1042),(121,2,111,0,10233,'body',0,2570,6,1042,1482638615,1,1043),(121,2,111,0,10234,'body',0,1120,7,1043,1482638615,1,2570),(121,2,111,0,10235,'body',0,1816,8,2570,1482638615,1,1120),(121,2,111,0,10236,'body',0,2571,9,1120,1482638615,1,1816),(121,2,111,0,10237,'body',0,1123,10,1816,1482638615,1,2571),(121,2,111,0,10238,'body',0,1747,11,2571,1482638615,1,1123),(121,2,111,0,10239,'body',0,2572,12,1123,1482638615,1,1747),(121,2,111,0,10240,'body',0,2573,13,1747,1482638615,1,2572),(121,2,111,0,10241,'body',0,2574,14,2572,1482638615,1,2573),(121,2,111,0,10242,'body',0,1115,15,2573,1482638615,1,2574),(121,2,111,0,10243,'body',0,1121,16,2574,1482638615,1,1115),(121,2,111,0,10244,'body',0,2575,17,1115,1482638615,1,1121),(121,2,111,0,10245,'body',0,1169,18,1121,1482638615,1,2575),(121,2,111,0,10246,'body',0,2601,19,2575,1482638615,1,1169),(121,2,111,0,10247,'body',0,2604,20,1169,1482638615,1,2601),(121,2,111,0,10248,'body',0,2478,21,2601,1482638615,1,2604),(121,2,111,0,10249,'body',0,2598,22,2604,1482638615,1,2478),(121,2,111,0,10250,'body',0,1143,23,2478,1482638615,1,2598),(121,2,111,0,10251,'body',0,1828,24,2598,1482638615,1,1143),(121,2,111,0,10252,'body',0,2599,25,1143,1482638615,1,1828),(121,2,111,0,10253,'body',0,1747,26,1828,1482638615,1,2599),(121,2,111,0,10254,'body',0,2572,27,2599,1482638615,1,1747),(121,2,111,0,10255,'body',0,1125,28,1747,1482638615,1,2572),(121,2,111,0,10256,'body',0,2579,29,2572,1482638615,1,1125),(121,2,111,0,10257,'body',0,2605,30,1125,1482638615,1,2579),(121,2,111,0,10258,'body',0,1950,31,2579,1482638615,1,2605),(121,2,111,0,10259,'body',0,1828,32,2605,1482638615,1,1950),(121,2,111,0,10260,'body',0,1042,33,1950,1482638615,1,1828),(121,2,111,0,10261,'body',0,1043,34,1828,1482638615,1,1042),(121,2,111,0,10262,'body',0,2043,35,1042,1482638615,1,1043),(121,2,111,0,10263,'body',0,1125,36,1043,1482638615,1,2043),(121,2,111,0,10264,'body',0,2030,37,2043,1482638615,1,1125),(121,2,111,0,10265,'body',0,1166,38,1125,1482638615,1,2030),(121,2,111,0,10266,'body',0,1858,39,2030,1482638615,1,1166),(121,2,111,0,10267,'body',0,2606,40,1166,1482638615,1,1858),(121,2,111,0,10268,'body',0,1169,41,1858,1482638615,1,2606),(121,2,111,0,10269,'body',0,2581,42,2606,1482638615,1,1169),(121,2,111,0,10270,'body',0,1143,43,1169,1482638615,1,2581),(121,2,111,0,10271,'body',0,2607,44,2581,1482638615,1,1143),(121,2,111,0,10272,'body',0,1847,45,1143,1482638615,1,2607),(121,2,111,0,10273,'body',0,1827,46,2607,1482638615,1,1847),(121,2,111,0,10274,'body',0,2608,47,1847,1482638615,1,1827),(121,2,111,0,10275,'body',0,2609,48,1827,1482638615,1,2608),(121,2,111,0,10276,'body',0,2610,49,2608,1482638615,1,2609),(121,2,111,0,10277,'body',0,1145,50,2609,1482638615,1,2610),(121,2,111,0,10278,'body',0,2611,51,2610,1482638615,1,1145),(121,2,111,0,10279,'body',0,1218,52,1145,1482638615,1,2611),(121,2,111,0,10280,'body',0,2612,53,2611,1482638615,1,1218),(121,2,111,0,10281,'body',0,2613,54,1218,1482638615,1,2612),(121,2,111,0,10282,'body',0,2614,55,2612,1482638615,1,2613),(121,2,111,0,10283,'body',0,2615,56,2613,1482638615,1,2614),(121,2,111,0,10284,'body',0,2607,57,2614,1482638615,1,2615),(121,2,111,0,10285,'body',0,2587,58,2615,1482638615,1,2607),(121,2,111,0,10286,'body',0,2616,59,2607,1482638615,1,2587),(121,2,111,0,10287,'body',0,2596,60,2587,1482638615,1,2616),(121,2,111,0,10288,'body',0,2597,61,2616,1482638615,1,2596),(121,2,111,0,10289,'body',0,1847,62,2596,1482638615,1,2597),(121,2,111,0,10290,'body',0,0,63,2597,1482638615,1,1847),(1,2,112,0,10291,'title',0,1792,0,0,1482638662,1,2617),(121,2,112,0,10292,'body',0,2618,1,2617,1482638662,1,1792),(121,2,112,0,10293,'body',0,1225,2,1792,1482638662,1,2618),(121,2,112,0,10294,'body',0,1116,3,2618,1482638662,1,1225),(121,2,112,0,10295,'body',0,1829,4,1225,1482638662,1,1116),(121,2,112,0,10296,'body',0,2619,5,1116,1482638662,1,1829),(121,2,112,0,10297,'body',0,1166,6,1829,1482638662,1,2619),(121,2,112,0,10298,'body',0,1126,7,2619,1482638662,1,1166),(121,2,112,0,10299,'body',0,2620,8,1166,1482638662,1,1126),(121,2,112,0,10300,'body',0,2621,9,1126,1482638662,1,2620),(121,2,112,0,10301,'body',0,1123,10,2620,1482638662,1,2621),(121,2,112,0,10302,'body',0,1981,11,2621,1482638662,1,1123),(121,2,112,0,10303,'body',0,2622,12,1123,1482638662,1,1981),(121,2,112,0,10304,'body',0,0,13,1981,1482638662,1,2622),(4,1,63,0,10356,'name',0,986,0,0,1480886445,1,985),(4,1,63,0,10357,'name',0,985,1,985,1480886445,1,986),(155,1,63,0,10358,'short_name',0,986,2,986,1480886445,1,985),(155,1,63,0,10359,'short_name',0,0,3,985,1480886445,1,986),(1,2,114,0,10785,'title',0,1121,0,0,1482639073,1,2820),(121,2,114,0,10786,'body',0,1042,1,2820,1482639073,1,1121),(121,2,114,0,10787,'body',0,1043,2,1121,1482639073,1,1042),(121,2,114,0,10788,'body',0,2032,3,1042,1482639073,1,1043),(121,2,114,0,10789,'body',0,1115,4,1043,1482639073,1,2032),(121,2,114,0,10790,'body',0,1135,5,2032,1482639073,1,1115),(121,2,114,0,10791,'body',0,2821,6,1115,1482639073,1,1135),(121,2,114,0,10792,'body',0,1125,7,1135,1482639073,1,2821),(121,2,114,0,10793,'body',0,2041,8,2821,1482639073,1,1125),(121,2,114,0,10794,'body',0,2822,9,1125,1482639073,1,2041),(121,2,114,0,10795,'body',0,2417,10,2041,1482639073,1,2822),(121,2,114,0,10796,'body',0,1121,11,2822,1482639073,1,2417),(121,2,114,0,10797,'body',0,1194,12,2417,1482639073,1,1121),(121,2,114,0,10798,'body',0,1166,13,1121,1482639073,1,1194),(121,2,114,0,10799,'body',0,1126,14,1194,1482639073,1,1166),(121,2,114,0,10800,'body',0,2823,15,1166,1482639073,1,1126),(121,2,114,0,10801,'body',0,2824,16,1126,1482639073,1,2823),(121,2,114,0,10802,'body',0,1827,17,2823,1482639073,1,2824),(121,2,114,0,10803,'body',0,1167,18,2824,1482639073,1,1827),(121,2,114,0,10804,'body',0,2825,19,1827,1482639073,1,1167),(121,2,114,0,10805,'body',0,1126,20,1167,1482639073,1,2825),(121,2,114,0,10806,'body',0,1817,21,2825,1482639073,1,1126),(121,2,114,0,10807,'body',0,1748,22,1126,1482639073,1,1817),(121,2,114,0,10808,'body',0,2826,23,1817,1482639073,1,1748),(121,2,114,0,10809,'body',0,1771,24,1748,1482639073,1,2826),(121,2,114,0,10810,'body',0,2827,25,2826,1482639073,1,1771),(121,2,114,0,10811,'body',0,1865,26,1771,1482639073,1,2827),(121,2,114,0,10812,'body',0,1126,27,2827,1482639073,1,1865),(121,2,114,0,10813,'body',0,2828,28,1865,1482639073,1,1126),(121,2,114,0,10814,'body',0,1230,29,1126,1482639073,1,2828),(121,2,114,0,10815,'body',0,2829,30,2828,1482639073,1,1230),(121,2,114,0,10816,'body',0,1910,31,1230,1482639073,1,2829),(121,2,114,0,10817,'body',0,2558,32,2829,1482639073,1,1910),(121,2,114,0,10818,'body',0,1042,33,1910,1482639073,1,2558),(121,2,114,0,10819,'body',0,1043,34,2558,1482639073,1,1042),(121,2,114,0,10820,'body',0,2830,35,1042,1482639073,1,1043),(121,2,114,0,10821,'body',0,1126,36,1043,1482639073,1,2830),(121,2,114,0,10822,'body',0,2831,37,2830,1482639073,1,1126),(121,2,114,0,10823,'body',0,1121,38,1126,1482639073,1,2831),(121,2,114,0,10824,'body',0,2032,39,2831,1482639073,1,1121),(121,2,114,0,10825,'body',0,1125,40,1121,1482639073,1,2032),(121,2,114,0,10826,'body',0,2041,41,2032,1482639073,1,1125),(121,2,114,0,10827,'body',0,1148,42,1125,1482639073,1,2041),(121,2,114,0,10828,'body',0,1194,43,2041,1482639073,1,1148),(121,2,114,0,10829,'body',0,1856,44,1148,1482639073,1,1194),(121,2,114,0,10830,'body',0,2832,45,1194,1482639073,1,1856),(121,2,114,0,10831,'body',0,2833,46,1856,1482639073,1,2832),(121,2,114,0,10832,'body',0,1121,47,2832,1482639073,1,2833),(121,2,114,0,10833,'body',0,2824,48,2833,1482639073,1,1121),(121,2,114,0,10834,'body',0,1169,49,1121,1482639073,1,2824),(121,2,114,0,10835,'body',0,2834,50,2824,1482639073,1,1169),(121,2,114,0,10836,'body',0,2835,51,1169,1482639073,1,2834),(121,2,114,0,10837,'body',0,2836,52,2834,1482639073,1,2835),(121,2,114,0,10838,'body',0,1123,53,2835,1482639073,1,2836),(121,2,114,0,10839,'body',0,2837,54,2836,1482639073,1,1123),(121,2,114,0,10840,'body',0,1121,55,1123,1482639073,1,2837),(121,2,114,0,10841,'body',0,2838,56,2837,1482639073,1,1121),(121,2,114,0,10842,'body',0,1123,57,1121,1482639073,1,2838),(121,2,114,0,10843,'body',0,2839,58,2838,1482639073,1,1123),(121,2,114,0,10844,'body',0,1169,59,1123,1482639073,1,2839),(121,2,114,0,10845,'body',0,1817,60,2839,1482639073,1,1169),(121,2,114,0,10846,'body',0,1123,61,1169,1482639073,1,1817),(121,2,114,0,10847,'body',0,2840,62,1817,1482639073,1,1123),(121,2,114,0,10848,'body',0,2841,63,1123,1482639073,1,2840),(121,2,114,0,10849,'body',0,1998,64,2840,1482639073,1,2841),(121,2,114,0,10850,'body',0,1943,65,2841,1482639073,1,1998),(121,2,114,0,10851,'body',0,1169,66,1998,1482639073,1,1943),(121,2,114,0,10852,'body',0,1817,67,1943,1482639073,1,1169),(121,2,114,0,10853,'body',0,2842,68,1169,1482639073,1,1817),(121,2,114,0,10854,'body',0,1123,69,1817,1482639073,1,2842),(121,2,114,0,10855,'body',0,2843,70,2842,1482639073,1,1123),(121,2,114,0,10856,'body',0,1123,71,1123,1482639073,1,2843),(121,2,114,0,10857,'body',0,2844,72,2843,1482639073,1,1123),(121,2,114,0,10858,'body',0,2845,73,1123,1482639073,1,2844),(121,2,114,0,10859,'body',0,1143,74,2844,1482639073,1,2845),(121,2,114,0,10860,'body',0,2846,75,2845,1482639073,1,1143),(121,2,114,0,10861,'body',0,2625,76,1143,1482639073,1,2846),(121,2,114,0,10862,'body',0,1145,77,2846,1482639073,1,2625),(121,2,114,0,10863,'body',0,2847,78,2625,1482639073,1,1145),(121,2,114,0,10864,'body',0,2848,79,1145,1482639073,1,2847),(121,2,114,0,10865,'body',0,2849,80,2847,1482639073,1,2848),(121,2,114,0,10866,'body',0,2850,81,2848,1482639073,1,2849),(121,2,114,0,10867,'body',0,1218,82,2849,1482639073,1,2850),(121,2,114,0,10868,'body',0,2851,83,2850,1482639073,1,1218),(121,2,114,0,10869,'body',0,2852,84,1218,1482639073,1,2851),(121,2,114,0,10870,'body',0,1123,85,2851,1482639073,1,2852),(121,2,114,0,10871,'body',0,2853,86,2852,1482639073,1,1123),(121,2,114,0,10872,'body',0,2854,87,1123,1482639073,1,2853),(121,2,114,0,10873,'body',0,2855,88,2853,1482639073,1,2854),(121,2,114,0,10874,'body',0,2856,89,2854,1482639073,1,2855),(121,2,114,0,10875,'body',0,1126,90,2855,1482639073,1,2856),(121,2,114,0,10876,'body',0,2857,91,2856,1482639073,1,1126),(121,2,114,0,10877,'body',0,1126,92,1126,1482639073,1,2857),(121,2,114,0,10878,'body',0,1817,93,2857,1482639073,1,1126),(121,2,114,0,10879,'body',0,2858,94,1126,1482639073,1,1817),(121,2,114,0,10880,'body',0,1123,95,1817,1482639073,1,2858),(121,2,114,0,10881,'body',0,2859,96,2858,1482639073,1,1123),(121,2,114,0,10882,'body',0,2860,97,1123,1482639073,1,2859),(121,2,114,0,10883,'body',0,2861,98,2859,1482639073,1,2860),(121,2,114,0,10884,'body',0,2862,99,2860,1482639073,1,2861),(121,2,114,0,10885,'body',0,1827,100,2861,1482639073,1,2862),(121,2,114,0,10886,'body',0,1121,101,2862,1482639073,1,1827),(121,2,114,0,10887,'body',0,2863,102,1827,1482639073,1,1121),(121,2,114,0,10888,'body',0,1126,103,1121,1482639073,1,2863),(121,2,114,0,10889,'body',0,1817,104,2863,1482639073,1,1126),(121,2,114,0,10890,'body',0,2864,105,1126,1482639073,1,1817),(121,2,114,0,10891,'body',0,2841,106,1817,1482639073,1,2864),(121,2,114,0,10892,'body',0,1123,107,2864,1482639073,1,2841),(121,2,114,0,10893,'body',0,2607,108,2841,1482639073,1,1123),(121,2,114,0,10894,'body',0,1169,109,1123,1482639073,1,2607),(121,2,114,0,10895,'body',0,1817,110,2607,1482639073,1,1169),(121,2,114,0,10896,'body',0,2865,111,1169,1482639073,1,1817),(121,2,114,0,10897,'body',0,2866,112,1817,1482639073,1,2865),(121,2,114,0,10898,'body',0,1230,113,2865,1482639073,1,2866),(121,2,114,0,10899,'body',0,2867,114,2866,1482639073,1,1230),(121,2,114,0,10900,'body',0,1123,115,1230,1482639073,1,2867),(121,2,114,0,10901,'body',0,2868,116,2867,1482639073,1,1123),(121,2,114,0,10902,'body',0,2869,117,1123,1482639073,1,2868),(121,2,114,0,10903,'body',0,2870,118,2868,1482639073,1,2869),(121,2,114,0,10904,'body',0,1126,119,2869,1482639073,1,2870),(121,2,114,0,10905,'body',0,2871,120,2870,1482639073,1,1126),(121,2,114,0,10906,'body',0,2872,121,1126,1482639073,1,2871),(121,2,114,0,10907,'body',0,2873,122,2871,1482639073,1,2872),(121,2,114,0,10908,'body',0,2874,123,2872,1482639073,1,2873),(121,2,114,0,10909,'body',0,2875,124,2873,1482639073,1,2874),(121,2,114,0,10910,'body',0,1126,125,2874,1482639073,1,2875),(121,2,114,0,10911,'body',0,1817,126,2875,1482639073,1,1126),(121,2,114,0,10912,'body',0,2876,127,1126,1482639073,1,1817),(121,2,114,0,10913,'body',0,1912,128,1817,1482639073,1,2876),(121,2,114,0,10914,'body',0,1215,129,2876,1482639073,1,1912),(121,2,114,0,10915,'body',0,1817,130,1912,1482639073,1,1215),(121,2,114,0,10916,'body',0,2877,131,1215,1482639073,1,1817),(121,2,114,0,10917,'body',0,1231,132,1817,1482639073,1,2877),(121,2,114,0,10918,'body',0,2878,133,2877,1482639073,1,1231),(121,2,114,0,10919,'body',0,1126,134,1231,1482639073,1,2878),(121,2,114,0,10920,'body',0,1042,135,2878,1482639073,1,1126),(121,2,114,0,10921,'body',0,1043,136,1126,1482639073,1,1042),(121,2,114,0,10922,'body',0,2032,137,1042,1482639073,1,1043),(121,2,114,0,10923,'body',0,1125,138,1043,1482639073,1,2032),(121,2,114,0,10924,'body',0,2042,139,2032,1482639073,1,1125),(121,2,114,0,10925,'body',0,1949,140,1125,1482639073,1,2042),(121,2,114,0,10926,'body',0,1126,141,2042,1482639073,1,1949),(121,2,114,0,10927,'body',0,2879,142,1949,1482639073,1,1126),(121,2,114,0,10928,'body',0,1123,143,1126,1482639073,1,2879),(121,2,114,0,10929,'body',0,2880,144,2879,1482639073,1,1123),(121,2,114,0,10930,'body',0,1813,145,1123,1482639073,1,2880),(121,2,114,0,10931,'body',0,2881,146,2880,1482639073,1,1813),(121,2,114,0,10932,'body',0,2385,147,1813,1482639073,1,2881),(121,2,114,0,10933,'body',0,2882,148,2881,1482639073,1,2385),(121,2,114,0,10934,'body',0,2883,149,2385,1482639073,1,2882),(121,2,114,0,10935,'body',0,2884,150,2882,1482639073,1,2883),(121,2,114,0,10936,'body',0,2043,151,2883,1482639073,1,2884),(121,2,114,0,10937,'body',0,1126,152,2884,1482639073,1,2043),(121,2,114,0,10938,'body',0,1817,153,2043,1482639073,1,1126),(121,2,114,0,10939,'body',0,2885,154,1126,1482639073,1,1817),(121,2,114,0,10940,'body',0,2884,155,1817,1482639073,1,2885),(121,2,114,0,10941,'body',0,2886,156,2885,1482639073,1,2884),(121,2,114,0,10942,'body',0,2887,157,2884,1482639073,1,2886),(121,2,114,0,10943,'body',0,2888,158,2886,1482639073,1,2887),(121,2,114,0,10944,'body',0,2884,159,2887,1482639073,1,2888),(121,2,114,0,10945,'body',0,2043,160,2888,1482639073,1,2884),(121,2,114,0,10946,'body',0,1120,161,2884,1482639073,1,2043),(121,2,114,0,10947,'body',0,2889,162,2043,1482639073,1,1120),(121,2,114,0,10948,'body',0,1123,163,1120,1482639073,1,2889),(121,2,114,0,10949,'body',0,2890,164,2889,1482639073,1,1123),(121,2,114,0,10950,'body',0,2891,165,1123,1482639073,1,2890),(121,2,114,0,10951,'body',0,1042,166,2890,1482639073,1,2891),(121,2,114,0,10952,'body',0,1043,167,2891,1482639073,1,1042),(121,2,114,0,10953,'body',0,2892,168,1042,1482639073,1,1043),(121,2,114,0,10954,'body',0,2893,169,1043,1482639073,1,2892),(121,2,114,0,10955,'body',0,2894,170,2892,1482639073,1,2893),(121,2,114,0,10956,'body',0,1042,171,2893,1482639073,1,2894),(121,2,114,0,10957,'body',0,1043,172,2894,1482639073,1,1042),(121,2,114,0,10958,'body',0,2895,173,1042,1482639073,1,1043),(121,2,114,0,10959,'body',0,1123,174,1043,1482639073,1,2895),(121,2,114,0,10960,'body',0,2896,175,2895,1482639073,1,1123),(121,2,114,0,10961,'body',0,2897,176,1123,1482639073,1,2896),(121,2,114,0,10962,'body',0,1126,177,2896,1482639073,1,2897),(121,2,114,0,10963,'body',0,1042,178,2897,1482639073,1,1126),(121,2,114,0,10964,'body',0,1043,179,1126,1482639073,1,1042),(121,2,114,0,10965,'body',0,1125,180,1042,1482639073,1,1043),(121,2,114,0,10966,'body',0,2898,181,1043,1482639073,1,1125),(121,2,114,0,10967,'body',0,2899,182,1125,1482639073,1,2898),(121,2,114,0,10968,'body',0,2900,183,2898,1482639073,1,2899),(121,2,114,0,10969,'body',0,2901,184,2899,1482639073,1,2900),(121,2,114,0,10970,'body',0,1123,185,2900,1482639073,1,2901),(121,2,114,0,10971,'body',0,2902,186,2901,1482639073,1,1123),(121,2,114,0,10972,'body',0,2903,187,1123,1482639073,1,2902),(121,2,114,0,10973,'body',0,2047,188,2902,1482639073,1,2903),(121,2,114,0,10974,'body',0,2824,189,2903,1482639073,1,2047),(121,2,114,0,10975,'body',0,1169,190,2047,1482639073,1,2824),(121,2,114,0,10976,'body',0,2904,191,2824,1482639073,1,1169),(121,2,114,0,10977,'body',0,1123,192,1169,1482639073,1,2904),(121,2,114,0,10978,'body',0,2905,193,2904,1482639073,1,1123),(121,2,114,0,10979,'body',0,1126,194,1123,1482639073,1,2905),(121,2,114,0,10980,'body',0,2906,195,2905,1482639073,1,1126),(121,2,114,0,10981,'body',0,1121,196,1126,1482639073,1,2906),(121,2,114,0,10982,'body',0,1042,197,2906,1482639073,1,1121),(121,2,114,0,10983,'body',0,1043,198,1121,1482639073,1,1042),(121,2,114,0,10984,'body',0,2032,199,1042,1482639073,1,1043),(121,2,114,0,10985,'body',0,1148,200,1043,1482639073,1,2032),(121,2,114,0,10986,'body',0,1155,201,2032,1482639073,1,1148),(121,2,114,0,10987,'body',0,2907,202,1148,1482639073,1,1155),(121,2,114,0,10988,'body',0,2908,203,1155,1482639073,1,2907),(121,2,114,0,10989,'body',0,1231,204,2907,1482639073,1,2908),(121,2,114,0,10990,'body',0,2909,205,2908,1482639073,1,1231),(121,2,114,0,10991,'body',0,1123,206,1231,1482639073,1,2909),(121,2,114,0,10992,'body',0,2910,207,2909,1482639073,1,1123),(121,2,114,0,10993,'body',0,2903,208,1123,1482639073,1,2910),(121,2,114,0,10994,'body',0,1123,209,2910,1482639073,1,2903),(121,2,114,0,10995,'body',0,2911,210,2903,1482639073,1,1123),(121,2,114,0,10996,'body',0,1145,211,1123,1482639073,1,2911),(121,2,114,0,10997,'body',0,2912,212,2911,1482639073,1,1145),(121,2,114,0,10998,'body',0,2913,213,1145,1482639073,1,2912),(121,2,114,0,10999,'body',0,1121,214,2912,1482639073,1,2913),(121,2,114,0,11000,'body',0,1817,215,2913,1482639073,1,1121),(121,2,114,0,11001,'body',0,2914,216,1121,1482639073,1,1817),(121,2,114,0,11002,'body',0,1125,217,1817,1482639073,1,2914),(121,2,114,0,11003,'body',0,2915,218,2914,1482639073,1,1125),(121,2,114,0,11004,'body',0,2916,219,1125,1482639073,1,2915),(121,2,114,0,11005,'body',0,1123,220,2915,1482639073,1,2916),(121,2,114,0,11006,'body',0,2917,221,2916,1482639073,1,1123),(121,2,114,0,11007,'body',0,1155,222,1123,1482639073,1,2917),(121,2,114,0,11008,'body',0,1227,223,2917,1482639073,1,1155),(121,2,114,0,11009,'body',0,1147,224,1155,1482639073,1,1227),(121,2,114,0,11010,'body',0,1135,225,1227,1482639073,1,1147),(121,2,114,0,11011,'body',0,2918,226,1147,1482639073,1,1135),(121,2,114,0,11012,'body',0,1169,227,1135,1482639073,1,2918),(121,2,114,0,11013,'body',0,2903,228,2918,1482639073,1,1169),(121,2,114,0,11014,'body',0,1121,229,1169,1482639073,1,2903),(121,2,114,0,11015,'body',0,2919,230,2903,1482639073,1,1121),(121,2,114,0,11016,'body',0,2920,231,1121,1482639073,1,2919),(121,2,114,0,11017,'body',0,1123,232,2919,1482639073,1,2920),(121,2,114,0,11018,'body',0,2921,233,2920,1482639073,1,1123),(121,2,114,0,11019,'body',0,1126,234,1123,1482639073,1,2921),(121,2,114,0,11020,'body',0,1042,235,2921,1482639073,1,1126),(121,2,114,0,11021,'body',0,1043,236,1126,1482639073,1,1042),(121,2,114,0,11022,'body',0,2032,237,1042,1482639073,1,1043),(121,2,114,0,11023,'body',0,2848,238,1043,1482639073,1,2032),(121,2,114,0,11024,'body',0,2032,239,2032,1482639073,1,2848),(121,2,114,0,11025,'body',0,1126,240,2848,1482639073,1,2032),(121,2,114,0,11026,'body',0,2922,241,2032,1482639073,1,1126),(121,2,114,0,11027,'body',0,2923,242,1126,1482639073,1,2922),(121,2,114,0,11028,'body',0,1042,243,2922,1482639073,1,2923),(121,2,114,0,11029,'body',0,2924,244,2923,1482639073,1,1042),(121,2,114,0,11030,'body',0,2925,245,1042,1482639073,1,2924),(121,2,114,0,11031,'body',0,2926,246,2924,1482639073,1,2925),(121,2,114,0,11032,'body',0,2927,247,2925,1482639073,1,2926),(121,2,114,0,11033,'body',0,2928,248,2926,1482639073,1,2927),(121,2,114,0,11034,'body',0,2926,249,2927,1482639073,1,2928),(121,2,114,0,11035,'body',0,2929,250,2928,1482639073,1,2926),(121,2,114,0,11036,'body',0,2930,251,2926,1482639073,1,2929),(121,2,114,0,11037,'body',0,1121,252,2929,1482639073,1,2930),(121,2,114,0,11038,'body',0,1042,253,2930,1482639073,1,1121),(121,2,114,0,11039,'body',0,1043,254,1121,1482639073,1,1042),(121,2,114,0,11040,'body',0,2032,255,1042,1482639073,1,1043),(121,2,114,0,11041,'body',0,1166,256,1043,1482639073,1,2032),(121,2,114,0,11042,'body',0,1817,257,2032,1482639073,1,1166),(121,2,114,0,11043,'body',0,2911,258,1166,1482639073,1,1817),(121,2,114,0,11044,'body',0,1123,259,1817,1482639073,1,2911),(121,2,114,0,11045,'body',0,2931,260,2911,1482639073,1,1123),(121,2,114,0,11046,'body',0,2932,261,1123,1482639073,1,2931),(121,2,114,0,11047,'body',0,2018,262,2931,1482639073,1,2932),(121,2,114,0,11048,'body',0,2933,263,2932,1482639073,1,2018),(121,2,114,0,11049,'body',0,2934,264,2018,1482639073,1,2933),(121,2,114,0,11050,'body',0,2935,265,2933,1482639073,1,2934),(121,2,114,0,11051,'body',0,1123,266,2934,1482639073,1,2935),(121,2,114,0,11052,'body',0,2936,267,2935,1482639073,1,1123),(121,2,114,0,11053,'body',0,1126,268,1123,1482639073,1,2936),(121,2,114,0,11054,'body',0,2032,269,2936,1482639073,1,1126),(121,2,114,0,11055,'body',0,2937,270,1126,1482639073,1,2032),(121,2,114,0,11056,'body',0,2938,271,2032,1482639073,1,2937),(121,2,114,0,11057,'body',0,2939,272,2937,1482639073,1,2938),(121,2,114,0,11058,'body',0,2936,273,2938,1482639073,1,2939),(121,2,114,0,11059,'body',0,1123,274,2939,1482639073,1,2936),(121,2,114,0,11060,'body',0,2935,275,2936,1482639073,1,1123),(121,2,114,0,11061,'body',0,1120,276,1123,1482639073,1,2935),(121,2,114,0,11062,'body',0,1121,277,2935,1482639073,1,1120),(121,2,114,0,11063,'body',0,1042,278,1120,1482639073,1,1121),(121,2,114,0,11064,'body',0,1043,279,1121,1482639073,1,1042),(121,2,114,0,11065,'body',0,2940,280,1042,1482639073,1,1043),(121,2,114,0,11066,'body',0,1123,281,1043,1482639073,1,2940),(121,2,114,0,11067,'body',0,2907,282,2940,1482639073,1,1123),(121,2,114,0,11068,'body',0,2908,283,1123,1482639073,1,2907),(121,2,114,0,11069,'body',0,2941,284,2907,1482639073,1,2908),(121,2,114,0,11070,'body',0,1121,285,2908,1482639073,1,2941),(121,2,114,0,11071,'body',0,2032,286,2941,1482639073,1,1121),(121,2,114,0,11072,'body',0,2942,287,1121,1482639073,1,2032),(121,2,114,0,11073,'body',0,2943,288,2032,1482639073,1,2942),(121,2,114,0,11074,'body',0,2944,289,2942,1482639073,1,2943),(121,2,114,0,11075,'body',0,1801,290,2943,1482639073,1,2944),(121,2,114,0,11076,'body',0,1145,291,2944,1482639073,1,1801),(121,2,114,0,11077,'body',0,2912,292,1801,1482639073,1,1145),(121,2,114,0,11078,'body',0,2913,293,1145,1482639073,1,2912),(121,2,114,0,11079,'body',0,2096,294,2912,1482639073,1,2913),(121,2,114,0,11080,'body',0,1123,295,2913,1482639073,1,2096),(121,2,114,0,11081,'body',0,2945,296,2096,1482639073,1,1123),(121,2,114,0,11082,'body',0,2946,297,1123,1482639073,1,2945),(121,2,114,0,11083,'body',0,1126,298,2945,1482639073,1,2946),(121,2,114,0,11084,'body',0,2947,299,2946,1482639073,1,1126),(121,2,114,0,11085,'body',0,2096,300,1126,1482639073,1,2947),(121,2,114,0,11086,'body',0,1123,301,2947,1482639073,1,2096),(121,2,114,0,11087,'body',0,2948,302,2096,1482639073,1,1123),(121,2,114,0,11088,'body',0,1811,303,1123,1482639073,1,2948),(121,2,114,0,11089,'body',0,2949,304,2948,1482639073,1,1811),(121,2,114,0,11090,'body',0,2950,305,1811,1482639073,1,2949),(121,2,114,0,11091,'body',0,2949,306,2949,1482639073,1,2950),(121,2,114,0,11092,'body',0,2951,307,2950,1482639073,1,2949),(121,2,114,0,11093,'body',0,2949,308,2949,1482639073,1,2951),(121,2,114,0,11094,'body',0,2952,309,2951,1482639073,1,2949),(121,2,114,0,11095,'body',0,2949,310,2949,1482639073,1,2952),(121,2,114,0,11096,'body',0,2953,311,2952,1482639073,1,2949),(121,2,114,0,11097,'body',0,2949,312,2949,1482639073,1,2953),(121,2,114,0,11098,'body',0,2954,313,2953,1482639073,1,2949),(121,2,114,0,11099,'body',0,2955,314,2949,1482639073,1,2954),(121,2,114,0,11100,'body',0,2949,315,2954,1482639073,1,2955),(121,2,114,0,11101,'body',0,2956,316,2955,1482639073,1,2949),(121,2,114,0,11102,'body',0,2949,317,2949,1482639073,1,2956),(121,2,114,0,11103,'body',0,1811,318,2956,1482639073,1,2949),(121,2,114,0,11104,'body',0,2957,319,2949,1482639073,1,1811),(121,2,114,0,11105,'body',0,1905,320,1811,1482639073,1,2957),(121,2,114,0,11106,'body',0,1123,321,2957,1482639073,1,1905),(121,2,114,0,11107,'body',0,2958,322,1905,1482639073,1,1123),(121,2,114,0,11108,'body',0,2390,323,1123,1482639073,1,2958),(121,2,114,0,11109,'body',0,1123,324,2958,1482639073,1,2390),(121,2,114,0,11110,'body',0,1747,325,2390,1482639073,1,1123),(121,2,114,0,11111,'body',0,2959,326,1123,1482639073,1,1747),(121,2,114,0,11112,'body',0,2382,327,1747,1482639073,1,2959),(121,2,114,0,11113,'body',0,1747,328,2959,1482639073,1,2382),(121,2,114,0,11114,'body',0,1748,329,2382,1482639073,1,1747),(121,2,114,0,11115,'body',0,1747,330,1747,1482639073,1,1748),(121,2,114,0,11116,'body',0,1816,331,1748,1482639073,1,1747),(121,2,114,0,11117,'body',0,2960,332,1747,1482639073,1,1816),(121,2,114,0,11118,'body',0,2961,333,1816,1482639073,1,2960),(121,2,114,0,11119,'body',0,2572,334,2960,1482639073,1,2961),(121,2,114,0,11120,'body',0,2962,335,2961,1482639073,1,2572),(121,2,114,0,11121,'body',0,1123,336,2572,1482639073,1,2962),(121,2,114,0,11122,'body',0,2963,337,2962,1482639073,1,1123),(121,2,114,0,11123,'body',0,2964,338,1123,1482639073,1,2963),(121,2,114,0,11124,'body',0,2955,339,2963,1482639073,1,2964),(121,2,114,0,11125,'body',0,2958,340,2964,1482639073,1,2955),(121,2,114,0,11126,'body',0,2863,341,2955,1482639073,1,2958),(121,2,114,0,11127,'body',0,1123,342,2958,1482639073,1,2863),(121,2,114,0,11128,'body',0,2965,343,2863,1482639073,1,1123),(121,2,114,0,11129,'body',0,2956,344,1123,1482639073,1,2965),(121,2,114,0,11130,'body',0,2572,345,2965,1482639073,1,2956),(121,2,114,0,11131,'body',0,2966,346,2956,1482639073,1,2572),(121,2,114,0,11132,'body',0,2967,347,2572,1482639073,1,2966),(121,2,114,0,11133,'body',0,2968,348,2966,1482639073,1,2967),(121,2,114,0,11134,'body',0,1806,349,2967,1482639073,1,2968),(121,2,114,0,11135,'body',0,1886,350,2968,1482639073,1,1806),(121,2,114,0,11136,'body',0,1123,351,1806,1482639073,1,1886),(121,2,114,0,11137,'body',0,2969,352,1886,1482639073,1,1123),(121,2,114,0,11138,'body',0,1199,353,1123,1482639073,1,2969),(121,2,114,0,11139,'body',0,2970,354,2969,1482639073,1,1199),(121,2,114,0,11140,'body',0,1123,355,1199,1482639073,1,2970),(121,2,114,0,11141,'body',0,2971,356,2970,1482639073,1,1123),(121,2,114,0,11142,'body',0,1169,357,1123,1482639073,1,2971),(121,2,114,0,11143,'body',0,2972,358,2971,1482639073,1,1169),(121,2,114,0,11144,'body',0,1199,359,1169,1482639073,1,2972),(121,2,114,0,11145,'body',0,1132,360,2972,1482639073,1,1199),(121,2,114,0,11146,'body',0,2973,361,1199,1482639073,1,1132),(121,2,114,0,11147,'body',0,2587,362,1132,1482639073,1,2973),(121,2,114,0,11148,'body',0,1998,363,2973,1482639073,1,2587),(121,2,114,0,11149,'body',0,985,364,2587,1482639073,1,1998),(121,2,114,0,11150,'body',0,2939,365,1998,1482639073,1,985),(121,2,114,0,11151,'body',0,2974,366,985,1482639073,1,2939),(121,2,114,0,11152,'body',0,2975,367,2939,1482639073,1,2974),(121,2,114,0,11153,'body',0,2976,368,2974,1482639073,1,2975),(121,2,114,0,11154,'body',0,1121,369,2975,1482639073,1,2976),(121,2,114,0,11155,'body',0,1042,370,2976,1482639073,1,1121),(121,2,114,0,11156,'body',0,1043,371,1121,1482639073,1,1042),(121,2,114,0,11157,'body',0,2032,372,1042,1482639073,1,1043),(121,2,114,0,11158,'body',0,1781,373,1043,1482639073,1,2032),(121,2,114,0,11159,'body',0,2977,374,2032,1482639073,1,1781),(121,2,114,0,11160,'body',0,2978,375,1781,1482639073,1,2977),(121,2,114,0,11161,'body',0,1233,376,2977,1482639073,1,2978),(121,2,114,0,11162,'body',0,2979,377,2978,1482639073,1,1233),(121,2,114,0,11163,'body',0,2980,378,1233,1482639073,1,2979),(121,2,114,0,11164,'body',0,2981,379,2979,1482639073,1,2980),(121,2,114,0,11165,'body',0,1905,380,2980,1482639073,1,2981),(121,2,114,0,11166,'body',0,1123,381,2981,1482639073,1,1905),(121,2,114,0,11167,'body',0,2982,382,1905,1482639073,1,1123),(121,2,114,0,11168,'body',0,2983,383,1123,1482639073,1,2982),(121,2,114,0,11169,'body',0,2984,384,2982,1482639073,1,2983),(121,2,114,0,11170,'body',0,1123,385,2983,1482639073,1,2984),(121,2,114,0,11171,'body',0,1233,386,2984,1482639073,1,1123),(121,2,114,0,11172,'body',0,2985,387,1123,1482639073,1,1233),(121,2,114,0,11173,'body',0,2986,388,1233,1482639073,1,2985),(121,2,114,0,11174,'body',0,2906,389,2985,1482639073,1,2986),(121,2,114,0,11175,'body',0,2987,390,2986,1482639073,1,2906),(121,2,114,0,11176,'body',0,2988,391,2906,1482639073,1,2987),(121,2,114,0,11177,'body',0,1123,392,2987,1482639073,1,2988),(121,2,114,0,11178,'body',0,2985,393,2988,1482639073,1,1123),(121,2,114,0,11179,'body',0,2989,394,1123,1482639073,1,2985),(121,2,114,0,11180,'body',0,1166,395,2985,1482639073,1,2989),(121,2,114,0,11181,'body',0,1199,396,2989,1482639073,1,1166),(121,2,114,0,11182,'body',0,1132,397,1166,1482639073,1,1199),(121,2,114,0,11183,'body',0,2990,398,1199,1482639073,1,1132),(121,2,114,0,11184,'body',0,2991,399,1132,1482639073,1,2990),(121,2,114,0,11185,'body',0,1166,400,2990,1482639073,1,2991),(121,2,114,0,11186,'body',0,2992,401,2991,1482639073,1,1166),(121,2,114,0,11187,'body',0,2993,402,1166,1482639073,1,2992),(121,2,114,0,11188,'body',0,1123,403,2992,1482639073,1,2993),(121,2,114,0,11189,'body',0,2018,404,2993,1482639073,1,1123),(121,2,114,0,11190,'body',0,2994,405,1123,1482639073,1,2018),(121,2,114,0,11191,'body',0,1125,406,2018,1482639073,1,2994),(121,2,114,0,11192,'body',0,2995,407,2994,1482639073,1,1125),(121,2,114,0,11193,'body',0,1123,408,1125,1482639073,1,2995),(121,2,114,0,11194,'body',0,2996,409,2995,1482639073,1,1123),(121,2,114,0,11195,'body',0,2997,410,1123,1482639073,1,2996),(121,2,114,0,11196,'body',0,2591,411,2996,1482639073,1,2997),(121,2,114,0,11197,'body',0,2942,412,2997,1482639073,1,2591),(121,2,114,0,11198,'body',0,1121,413,2591,1482639073,1,2942),(121,2,114,0,11199,'body',0,2032,414,2942,1482639073,1,1121),(121,2,114,0,11200,'body',0,1155,415,1121,1482639073,1,2032),(121,2,114,0,11201,'body',0,2998,416,2032,1482639073,1,1155),(121,2,114,0,11202,'body',0,1123,417,1155,1482639073,1,2998),(121,2,114,0,11203,'body',0,2999,418,2998,1482639073,1,1123),(121,2,114,0,11204,'body',0,3000,419,1123,1482639073,1,2999),(121,2,114,0,11205,'body',0,1120,420,2999,1482639073,1,3000),(121,2,114,0,11206,'body',0,3001,421,3000,1482639073,1,1120),(121,2,114,0,11207,'body',0,2906,422,1120,1482639073,1,3001),(121,2,114,0,11208,'body',0,1801,423,3001,1482639073,1,2906),(121,2,114,0,11209,'body',0,0,424,2906,1482639073,1,1801),(1,2,115,0,11696,'title',0,3196,0,0,1482639161,1,3195),(121,2,115,0,11697,'body',0,3197,1,3195,1482639161,1,3196),(121,2,115,0,11698,'body',0,1151,2,3196,1482639161,1,3197),(121,2,115,0,11699,'body',0,3198,3,3197,1482639161,1,1151),(121,2,115,0,11700,'body',0,1042,4,1151,1482639161,1,3198),(121,2,115,0,11701,'body',0,1043,5,3198,1482639161,1,1042),(121,2,115,0,11702,'body',0,2043,6,1042,1482639161,1,1043),(121,2,115,0,11703,'body',0,1120,7,1043,1482639161,1,2043),(121,2,115,0,11704,'body',0,1816,8,2043,1482639161,1,1120),(121,2,115,0,11705,'body',0,2571,9,1120,1482639161,1,1816),(121,2,115,0,11706,'body',0,1123,10,1816,1482639161,1,2571),(121,2,115,0,11707,'body',0,1747,11,2571,1482639161,1,1123),(121,2,115,0,11708,'body',0,2572,12,1123,1482639161,1,1747),(121,2,115,0,11709,'body',0,2573,13,1747,1482639161,1,2572),(121,2,115,0,11710,'body',0,2574,14,2572,1482639161,1,2573),(121,2,115,0,11711,'body',0,3199,15,2573,1482639161,1,2574),(121,2,115,0,11712,'body',0,3200,16,2574,1482639161,1,3199),(121,2,115,0,11713,'body',0,3201,17,3199,1482639161,1,3200),(121,2,115,0,11714,'body',0,2044,18,3200,1482639161,1,3201),(121,2,115,0,11715,'body',0,3202,19,3201,1482639161,1,2044),(121,2,115,0,11716,'body',0,2872,20,2044,1482639161,1,3202),(121,2,115,0,11717,'body',0,1215,21,3202,1482639161,1,2872),(121,2,115,0,11718,'body',0,3203,22,2872,1482639161,1,1215),(121,2,115,0,11719,'body',0,2087,23,1215,1482639161,1,3203),(121,2,115,0,11720,'body',0,2103,24,3203,1482639161,1,2087),(121,2,115,0,11721,'body',0,2104,25,2087,1482639161,1,2103),(121,2,115,0,11722,'body',0,3199,26,2103,1482639161,1,2104),(121,2,115,0,11723,'body',0,3200,27,2104,1482639161,1,3199),(121,2,115,0,11724,'body',0,3201,28,3199,1482639161,1,3200),(121,2,115,0,11725,'body',0,2044,29,3200,1482639161,1,3201),(121,2,115,0,11726,'body',0,3204,30,3201,1482639161,1,2044),(121,2,115,0,11727,'body',0,2129,31,2044,1482639161,1,3204),(121,2,115,0,11728,'body',0,3205,32,3204,1482639161,1,2129),(121,2,115,0,11729,'body',0,3206,33,2129,1482639161,1,3205),(121,2,115,0,11730,'body',0,3207,34,3205,1482639161,1,3206),(121,2,115,0,11731,'body',0,3208,35,3206,1482639161,1,3207),(121,2,115,0,11732,'body',0,2132,36,3207,1482639161,1,3208),(121,2,115,0,11733,'body',0,2133,37,3208,1482639161,1,2132),(121,2,115,0,11734,'body',0,3209,38,2132,1482639161,1,2133),(121,2,115,0,11735,'body',0,3210,39,2133,1482639161,1,3209),(121,2,115,0,11736,'body',0,2138,40,3209,1482639161,1,3210),(121,2,115,0,11737,'body',0,1554,41,3210,1482639161,1,2138),(121,2,115,0,11738,'body',0,2253,42,2138,1482639161,1,1554),(121,2,115,0,11739,'body',0,3210,43,1554,1482639161,1,2253),(121,2,115,0,11740,'body',0,2138,44,2253,1482639161,1,3210),(121,2,115,0,11741,'body',0,3211,45,3210,1482639161,1,2138),(121,2,115,0,11742,'body',0,3212,46,2138,1482639161,1,3211),(121,2,115,0,11743,'body',0,2044,47,3211,1482639161,1,3212),(121,2,115,0,11744,'body',0,3213,48,3212,1482639161,1,2044),(121,2,115,0,11745,'body',0,3214,49,2044,1482639161,1,3213),(121,2,115,0,11746,'body',0,3215,50,3213,1482639161,1,3214),(121,2,115,0,11747,'body',0,3216,51,3214,1482639161,1,3215),(121,2,115,0,11748,'body',0,1749,52,3215,1482639161,1,3216),(121,2,115,0,11749,'body',0,3217,53,3216,1482639161,1,1749),(121,2,115,0,11750,'body',0,1120,54,1749,1482639161,1,3217),(121,2,115,0,11751,'body',0,1215,55,3217,1482639161,1,1120),(121,2,115,0,11752,'body',0,3218,56,1120,1482639161,1,1215),(121,2,115,0,11753,'body',0,1207,57,1215,1482639161,1,3218),(121,2,115,0,11754,'body',0,3219,58,3218,1482639161,1,1207),(121,2,115,0,11755,'body',0,3220,59,1207,1482639161,1,3219),(121,2,115,0,11756,'body',0,994,60,3219,1482639161,1,3220),(121,2,115,0,11757,'body',0,3221,61,3220,1482639161,1,994),(121,2,115,0,11758,'body',0,2087,62,994,1482639161,1,3221),(121,2,115,0,11759,'body',0,2103,63,3221,1482639161,1,2087),(121,2,115,0,11760,'body',0,2104,64,2087,1482639161,1,2103),(121,2,115,0,11761,'body',0,3199,65,2103,1482639161,1,2104),(121,2,115,0,11762,'body',0,3200,66,2104,1482639161,1,3199),(121,2,115,0,11763,'body',0,3201,67,3199,1482639161,1,3200),(121,2,115,0,11764,'body',0,2044,68,3200,1482639161,1,3201),(121,2,115,0,11765,'body',0,3222,69,3201,1482639161,1,2044),(121,2,115,0,11766,'body',0,3223,70,2044,1482639161,1,3222),(121,2,115,0,11767,'body',0,3224,71,3222,1482639161,1,3223),(121,2,115,0,11768,'body',0,1120,72,3223,1482639161,1,3224),(121,2,115,0,11769,'body',0,1799,73,3224,1482639161,1,1120),(121,2,115,0,11770,'body',0,1132,74,1120,1482639161,1,1799),(121,2,115,0,11771,'body',0,3225,75,1799,1482639161,1,1132),(121,2,115,0,11772,'body',0,3226,76,1132,1482639161,1,3225),(121,2,115,0,11773,'body',0,1787,77,3225,1482639161,1,3226),(121,2,115,0,11774,'body',0,3197,78,3226,1482639161,1,1787),(121,2,115,0,11775,'body',0,2140,79,1787,1482639161,1,3197),(121,2,115,0,11776,'body',0,3220,80,3197,1482639161,1,2140),(121,2,115,0,11777,'body',0,992,81,2140,1482639161,1,3220),(121,2,115,0,11778,'body',0,3198,82,3220,1482639161,1,992),(121,2,115,0,11779,'body',0,1120,83,992,1482639161,1,3198),(121,2,115,0,11780,'body',0,1996,84,3198,1482639161,1,1120),(121,2,115,0,11781,'body',0,1799,85,1120,1482639161,1,1996),(121,2,115,0,11782,'body',0,1827,86,1996,1482639161,1,1799),(121,2,115,0,11783,'body',0,3227,87,1799,1482639161,1,1827),(121,2,115,0,11784,'body',0,3228,88,1827,1482639161,1,3227),(121,2,115,0,11785,'body',0,1207,89,3227,1482639161,1,3228),(121,2,115,0,11786,'body',0,1215,90,3228,1482639161,1,1207),(121,2,115,0,11787,'body',0,3229,91,1207,1482639161,1,1215),(121,2,115,0,11788,'body',0,3230,92,1215,1482639161,1,3229),(121,2,115,0,11789,'body',0,3217,93,3229,1482639161,1,3230),(121,2,115,0,11790,'body',0,1207,94,3230,1482639161,1,3217),(121,2,115,0,11791,'body',0,3200,95,3217,1482639161,1,1207),(121,2,115,0,11792,'body',0,1781,96,1207,1482639161,1,3200),(121,2,115,0,11793,'body',0,2182,97,3200,1482639161,1,1781),(121,2,115,0,11794,'body',0,3198,98,1781,1482639161,1,2182),(121,2,115,0,11795,'body',0,3226,99,2182,1482639161,1,3198),(121,2,115,0,11796,'body',0,1787,100,3198,1482639161,1,3226),(121,2,115,0,11797,'body',0,1132,101,3226,1482639161,1,1787),(121,2,115,0,11798,'body',0,3231,102,1787,1482639161,1,1132),(121,2,115,0,11799,'body',0,3232,103,1132,1482639161,1,3231),(121,2,115,0,11800,'body',0,1149,104,3231,1482639161,1,3232),(121,2,115,0,11801,'body',0,3233,105,3232,1482639161,1,1149),(121,2,115,0,11802,'body',0,3234,106,1149,1482639161,1,3233),(121,2,115,0,11803,'body',0,1200,107,3233,1482639161,1,3234),(121,2,115,0,11804,'body',0,3235,108,3234,1482639161,1,1200),(121,2,115,0,11805,'body',0,3236,109,1200,1482639161,1,3235),(121,2,115,0,11806,'body',0,1825,110,3235,1482639161,1,3236),(121,2,115,0,11807,'body',0,1145,111,3236,1482639161,1,1825),(121,2,115,0,11808,'body',0,3237,112,1825,1482639161,1,1145),(121,2,115,0,11809,'body',0,1200,113,1145,1482639161,1,3237),(121,2,115,0,11810,'body',0,1207,114,3237,1482639161,1,1200),(121,2,115,0,11811,'body',0,3238,115,1200,1482639161,1,1207),(121,2,115,0,11812,'body',0,1145,116,1207,1482639161,1,3238),(121,2,115,0,11813,'body',0,3239,117,3238,1482639161,1,1145),(121,2,115,0,11814,'body',0,1121,118,1145,1482639161,1,3239),(121,2,115,0,11815,'body',0,1827,119,3239,1482639161,1,1121),(121,2,115,0,11816,'body',0,1135,120,1121,1482639161,1,1827),(121,2,115,0,11817,'body',0,3240,121,1827,1482639161,1,1135),(121,2,115,0,11818,'body',0,3241,122,1135,1482639161,1,3240),(121,2,115,0,11819,'body',0,3242,123,3240,1482639161,1,3241),(121,2,115,0,11820,'body',0,3243,124,3241,1482639161,1,3242),(121,2,115,0,11821,'body',0,2047,125,3242,1482639161,1,3243),(121,2,115,0,11822,'body',0,3244,126,3243,1482639161,1,2047),(121,2,115,0,11823,'body',0,1200,127,2047,1482639161,1,3244),(121,2,115,0,11824,'body',0,3245,128,3244,1482639161,1,1200),(121,2,115,0,11825,'body',0,1126,129,1200,1482639161,1,3245),(121,2,115,0,11826,'body',0,3246,130,3245,1482639161,1,1126),(121,2,115,0,11827,'body',0,1169,131,1126,1482639161,1,3246),(121,2,115,0,11828,'body',0,1825,132,3246,1482639161,1,1169),(121,2,115,0,11829,'body',0,1207,133,1169,1482639161,1,1825),(121,2,115,0,11830,'body',0,1215,134,1825,1482639161,1,1207),(121,2,115,0,11831,'body',0,3229,135,1207,1482639161,1,1215),(121,2,115,0,11832,'body',0,3230,136,1215,1482639161,1,3229),(121,2,115,0,11833,'body',0,3247,137,3229,1482639161,1,3230),(121,2,115,0,11834,'body',0,3248,138,3230,1482639161,1,3247),(121,2,115,0,11835,'body',0,3249,139,3247,1482639161,1,3248),(121,2,115,0,11836,'body',0,1135,140,3248,1482639161,1,3249),(121,2,115,0,11837,'body',0,3250,141,3249,1482639161,1,1135),(121,2,115,0,11838,'body',0,3224,142,1135,1482639161,1,3250),(121,2,115,0,11839,'body',0,1115,143,3250,1482639161,1,3224),(121,2,115,0,11840,'body',0,3232,144,3224,1482639161,1,1115),(121,2,115,0,11841,'body',0,3251,145,1115,1482639161,1,3232),(121,2,115,0,11842,'body',0,3252,146,3232,1482639161,1,3251),(121,2,115,0,11843,'body',0,1167,147,3251,1482639161,1,3252),(121,2,115,0,11844,'body',0,3253,148,3252,1482639161,1,1167),(121,2,115,0,11845,'body',0,1126,149,1167,1482639161,1,3253),(121,2,115,0,11846,'body',0,3254,150,3253,1482639161,1,1126),(121,2,115,0,11847,'body',0,1858,151,1126,1482639161,1,3254),(121,2,115,0,11848,'body',0,3255,152,3254,1482639161,1,1858),(121,2,115,0,11849,'body',0,3256,153,1858,1482639161,1,3255),(121,2,115,0,11850,'body',0,3257,154,3255,1482639161,1,3256),(121,2,115,0,11851,'body',0,1960,155,3256,1482639161,1,3257),(121,2,115,0,11852,'body',0,3258,156,3257,1482639161,1,1960),(121,2,115,0,11853,'body',0,1169,157,1960,1482639161,1,3258),(121,2,115,0,11854,'body',0,3259,158,3258,1482639161,1,1169),(121,2,115,0,11855,'body',0,3260,159,1169,1482639161,1,3259),(121,2,115,0,11856,'body',0,1805,160,3259,1482639161,1,3260),(121,2,115,0,11857,'body',0,1787,161,3260,1482639161,1,1805),(121,2,115,0,11858,'body',0,1140,162,1805,1482639161,1,1787),(121,2,115,0,11859,'body',0,1799,163,1787,1482639161,1,1140),(121,2,115,0,11860,'body',0,3261,164,1140,1482639161,1,1799),(121,2,115,0,11861,'body',0,3262,165,1799,1482639161,1,3261),(121,2,115,0,11862,'body',0,3224,166,3261,1482639161,1,3262),(121,2,115,0,11863,'body',0,1120,167,3262,1482639161,1,3224),(121,2,115,0,11864,'body',0,3263,168,3224,1482639161,1,1120),(121,2,115,0,11865,'body',0,3264,169,1120,1482639161,1,3263),(121,2,115,0,11866,'body',0,3265,170,3263,1482639161,1,3264),(121,2,115,0,11867,'body',0,3266,171,3264,1482639161,1,3265),(121,2,115,0,11868,'body',0,3263,172,3265,1482639161,1,3266),(121,2,115,0,11869,'body',0,1145,173,3266,1482639161,1,3263),(121,2,115,0,11870,'body',0,3267,174,3263,1482639161,1,1145),(121,2,115,0,11871,'body',0,1221,175,1145,1482639161,1,3267),(121,2,115,0,11872,'body',0,3268,176,3267,1482639161,1,1221),(121,2,115,0,11873,'body',0,1827,177,1221,1482639161,1,3268),(121,2,115,0,11874,'body',0,3269,178,3268,1482639161,1,1827),(121,2,115,0,11875,'body',0,1799,179,1827,1482639161,1,3269),(121,2,115,0,11876,'body',0,1787,180,3269,1482639161,1,1799),(121,2,115,0,11877,'body',0,3270,181,1799,1482639161,1,1787),(121,2,115,0,11878,'body',0,3271,182,1787,1482639161,1,3270),(121,2,115,0,11879,'body',0,1775,183,3270,1482639161,1,3271),(121,2,115,0,11880,'body',0,3272,184,3271,1482639161,1,1775),(121,2,115,0,11881,'body',0,3273,185,1775,1482639161,1,3272),(121,2,115,0,11882,'body',0,1787,186,3272,1482639161,1,3273),(121,2,115,0,11883,'body',0,1120,187,3273,1482639161,1,1787),(121,2,115,0,11884,'body',0,1140,188,1787,1482639161,1,1120),(121,2,115,0,11885,'body',0,3274,189,1120,1482639161,1,1140),(121,2,115,0,11886,'body',0,1799,190,1140,1482639161,1,3274),(121,2,115,0,11887,'body',0,1155,191,3274,1482639161,1,1799),(121,2,115,0,11888,'body',0,3275,192,1799,1482639161,1,1155),(121,2,115,0,11889,'body',0,3276,193,1155,1482639161,1,3275),(121,2,115,0,11890,'body',0,3277,194,3275,1482639161,1,3276),(121,2,115,0,11891,'body',0,1120,195,3276,1482639161,1,3277),(121,2,115,0,11892,'body',0,1121,196,3277,1482639161,1,1120),(121,2,115,0,11893,'body',0,1799,197,1120,1482639161,1,1121),(121,2,115,0,11894,'body',0,1126,198,1121,1482639161,1,1799),(121,2,115,0,11895,'body',0,3278,199,1799,1482639161,1,1126),(121,2,115,0,11896,'body',0,3228,200,1126,1482639161,1,3278),(121,2,115,0,11897,'body',0,1115,201,3278,1482639161,1,3228),(121,2,115,0,11898,'body',0,3279,202,3228,1482639161,1,1115),(121,2,115,0,11899,'body',0,1126,203,1115,1482639161,1,3279),(121,2,115,0,11900,'body',0,3280,204,3279,1482639161,1,1126),(121,2,115,0,11901,'body',0,3281,205,1126,1482639161,1,3280),(121,2,115,0,11902,'body',0,1200,206,3280,1482639161,1,3281),(121,2,115,0,11903,'body',0,3282,207,3281,1482639161,1,1200),(121,2,115,0,11904,'body',0,1126,208,1200,1482639161,1,3282),(121,2,115,0,11905,'body',0,3228,209,3282,1482639161,1,1126),(121,2,115,0,11906,'body',0,3217,210,1126,1482639161,1,3228),(121,2,115,0,11907,'body',0,1121,211,3228,1482639161,1,3217),(121,2,115,0,11908,'body',0,3278,212,3217,1482639161,1,1121),(121,2,115,0,11909,'body',0,3228,213,1121,1482639161,1,3278),(121,2,115,0,11910,'body',0,1918,214,3278,1482639161,1,3228),(121,2,115,0,11911,'body',0,1752,215,3228,1482639161,1,1918),(121,2,115,0,11912,'body',0,3253,216,1918,1482639161,1,1752),(121,2,115,0,11913,'body',0,1126,217,1752,1482639161,1,3253),(121,2,115,0,11914,'body',0,3283,218,3253,1482639161,1,1126),(121,2,115,0,11915,'body',0,1827,219,1126,1482639161,1,3283),(121,2,115,0,11916,'body',0,3284,220,3283,1482639161,1,1827),(121,2,115,0,11917,'body',0,3285,221,1827,1482639161,1,3284),(121,2,115,0,11918,'body',0,3286,222,3284,1482639161,1,3285),(121,2,115,0,11919,'body',0,3240,223,3285,1482639161,1,3286),(121,2,115,0,11920,'body',0,1799,224,3286,1482639161,1,3240),(121,2,115,0,11921,'body',0,3287,225,3240,1482639161,1,1799),(121,2,115,0,11922,'body',0,1752,226,1799,1482639161,1,3287),(121,2,115,0,11923,'body',0,3253,227,3287,1482639161,1,1752),(121,2,115,0,11924,'body',0,1126,228,1752,1482639161,1,3253),(121,2,115,0,11925,'body',0,3283,229,3253,1482639161,1,1126),(121,2,115,0,11926,'body',0,1149,230,1126,1482639161,1,3283),(121,2,115,0,11927,'body',0,3288,231,3283,1482639161,1,1149),(121,2,115,0,11928,'body',0,1135,232,1149,1482639161,1,3288),(121,2,115,0,11929,'body',0,3289,233,3288,1482639161,1,1135),(121,2,115,0,11930,'body',0,3290,234,1135,1482639161,1,3289),(121,2,115,0,11931,'body',0,3291,235,3289,1482639161,1,3290),(121,2,115,0,11932,'body',0,1126,236,3290,1482639161,1,3291),(121,2,115,0,11933,'body',0,3278,237,3291,1482639161,1,1126),(121,2,115,0,11934,'body',0,3228,238,1126,1482639161,1,3278),(121,2,115,0,11935,'body',0,1115,239,3278,1482639161,1,3228),(121,2,115,0,11936,'body',0,3232,240,3228,1482639161,1,1115),(121,2,115,0,11937,'body',0,3292,241,1115,1482639161,1,3232),(121,2,115,0,11938,'body',0,3293,242,3232,1482639161,1,3292),(121,2,115,0,11939,'body',0,3294,243,3292,1482639161,1,3293),(121,2,115,0,11940,'body',0,1858,244,3293,1482639161,1,3294),(121,2,115,0,11941,'body',0,3256,245,3294,1482639161,1,1858),(121,2,115,0,11942,'body',0,1149,246,1858,1482639161,1,3256),(121,2,115,0,11943,'body',0,3295,247,3256,1482639161,1,1149),(121,2,115,0,11944,'body',0,1960,248,1149,1482639161,1,3295),(121,2,115,0,11945,'body',0,3258,249,3295,1482639161,1,1960),(121,2,115,0,11946,'body',0,1169,250,1960,1482639161,1,3258),(121,2,115,0,11947,'body',0,3260,251,3258,1482639161,1,1169),(121,2,115,0,11948,'body',0,1805,252,1169,1482639161,1,3260),(121,2,115,0,11949,'body',0,1787,253,3260,1482639161,1,1805),(121,2,115,0,11950,'body',0,3296,254,1805,1482639161,1,1787),(121,2,115,0,11951,'body',0,3263,255,1787,1482639161,1,3296),(121,2,115,0,11952,'body',0,3261,256,3296,1482639161,1,3263),(121,2,115,0,11953,'body',0,3262,257,3263,1482639161,1,3261),(121,2,115,0,11954,'body',0,3297,258,3261,1482639161,1,3262),(121,2,115,0,11955,'body',0,1121,259,3262,1482639161,1,3297),(121,2,115,0,11956,'body',0,2872,260,3297,1482639161,1,1121),(121,2,115,0,11957,'body',0,1121,261,1121,1482639161,1,2872),(121,2,115,0,11958,'body',0,3298,262,2872,1482639161,1,1121),(121,2,115,0,11959,'body',0,3299,263,1121,1482639161,1,3298),(121,2,115,0,11960,'body',0,1799,264,3298,1482639161,1,3299),(121,2,115,0,11961,'body',0,1123,265,3299,1482639161,1,1799),(121,2,115,0,11962,'body',0,3300,266,1799,1482639161,1,1123),(121,2,115,0,11963,'body',0,1827,267,1123,1482639161,1,3300),(121,2,115,0,11964,'body',0,3227,268,3300,1482639161,1,1827),(121,2,115,0,11965,'body',0,3228,269,1827,1482639161,1,3227),(121,2,115,0,11966,'body',0,3301,270,3227,1482639161,1,3228),(121,2,115,0,11967,'body',0,1167,271,3228,1482639161,1,3301),(121,2,115,0,11968,'body',0,3302,272,3301,1482639161,1,1167),(121,2,115,0,11969,'body',0,3297,273,1167,1482639161,1,3302),(121,2,115,0,11970,'body',0,1121,274,3302,1482639161,1,3297),(121,2,115,0,11971,'body',0,3303,275,3297,1482639161,1,1121),(121,2,115,0,11972,'body',0,3304,276,1121,1482639161,1,3303),(121,2,115,0,11973,'body',0,2863,277,3303,1482639161,1,3304),(121,2,115,0,11974,'body',0,1123,278,3304,1482639161,1,2863),(121,2,115,0,11975,'body',0,3305,279,2863,1482639161,1,1123),(121,2,115,0,11976,'body',0,1842,280,1123,1482639161,1,3305),(121,2,115,0,11977,'body',0,1126,281,3305,1482639161,1,1842),(121,2,115,0,11978,'body',0,3306,282,1842,1482639161,1,1126),(121,2,115,0,11979,'body',0,2907,283,1126,1482639161,1,3306),(121,2,115,0,11980,'body',0,1126,284,3306,1482639161,1,2907),(121,2,115,0,11981,'body',0,3307,285,2907,1482639161,1,1126),(121,2,115,0,11982,'body',0,1230,286,1126,1482639161,1,3307),(121,2,115,0,11983,'body',0,3308,287,3307,1482639161,1,1230),(121,2,115,0,11984,'body',0,3309,288,1230,1482639161,1,3308),(121,2,115,0,11985,'body',0,1126,289,3308,1482639161,1,3309),(121,2,115,0,11986,'body',0,3310,290,3309,1482639161,1,1126),(121,2,115,0,11987,'body',0,3311,291,1126,1482639161,1,3310),(121,2,115,0,11988,'body',0,1230,292,3310,1482639161,1,3311),(121,2,115,0,11989,'body',0,3312,293,3311,1482639161,1,1230),(121,2,115,0,11990,'body',0,3313,294,1230,1482639161,1,3312),(121,2,115,0,11991,'body',0,3314,295,3312,1482639161,1,3313),(121,2,115,0,11992,'body',0,3315,296,3313,1482639161,1,3314),(121,2,115,0,11993,'body',0,3316,297,3314,1482639161,1,3315),(121,2,115,0,11994,'body',0,1123,298,3315,1482639161,1,3316),(121,2,115,0,11995,'body',0,3317,299,3316,1482639161,1,1123),(121,2,115,0,11996,'body',0,1779,300,1123,1482639161,1,3317),(121,2,115,0,11997,'body',0,3318,301,3317,1482639161,1,1779),(121,2,115,0,11998,'body',0,3226,302,1779,1482639161,1,3318),(121,2,115,0,11999,'body',0,1150,303,3318,1482639161,1,3226),(121,2,115,0,12000,'body',0,1120,304,3226,1482639161,1,1150),(121,2,115,0,12001,'body',0,1215,305,1150,1482639161,1,1120),(121,2,115,0,12002,'body',0,3319,306,1120,1482639161,1,1215),(121,2,115,0,12003,'body',0,1149,307,1215,1482639161,1,3319),(121,2,115,0,12004,'body',0,3320,308,3319,1482639161,1,1149),(121,2,115,0,12005,'body',0,3321,309,1149,1482639161,1,3320),(121,2,115,0,12006,'body',0,3322,310,3320,1482639161,1,3321),(121,2,115,0,12007,'body',0,3323,311,3321,1482639161,1,3322),(121,2,115,0,12008,'body',0,1121,312,3322,1482639161,1,3323),(121,2,115,0,12009,'body',0,1799,313,3323,1482639161,1,1121),(121,2,115,0,12010,'body',0,1827,314,1121,1482639161,1,1799),(121,2,115,0,12011,'body',0,1779,315,1799,1482639161,1,1827),(121,2,115,0,12012,'body',0,3318,316,1827,1482639161,1,1779),(121,2,115,0,12013,'body',0,1149,317,1779,1482639161,1,3318),(121,2,115,0,12014,'body',0,1189,318,3318,1482639161,1,1149),(121,2,115,0,12015,'body',0,3282,319,1149,1482639161,1,1189),(121,2,115,0,12016,'body',0,3324,320,1189,1482639161,1,3282),(121,2,115,0,12017,'body',0,1918,321,3282,1482639161,1,3324),(121,2,115,0,12018,'body',0,1805,322,3324,1482639161,1,1918),(121,2,115,0,12019,'body',0,1121,323,1918,1482639161,1,1805),(121,2,115,0,12020,'body',0,3325,324,1805,1482639161,1,1121),(121,2,115,0,12021,'body',0,3268,325,1121,1482639161,1,3325),(121,2,115,0,12022,'body',0,3326,326,3325,1482639161,1,3268),(121,2,115,0,12023,'body',0,3327,327,3268,1482639161,1,3326),(121,2,115,0,12024,'body',0,1805,328,3326,1482639161,1,3327),(121,2,115,0,12025,'body',0,1799,329,3327,1482639161,1,1805),(121,2,115,0,12026,'body',0,3268,330,1805,1482639161,1,1799),(121,2,115,0,12027,'body',0,1132,331,1799,1482639161,1,3268),(121,2,115,0,12028,'body',0,3328,332,3268,1482639161,1,1132),(121,2,115,0,12029,'body',0,3329,333,1132,1482639161,1,3328),(121,2,115,0,12030,'body',0,3330,334,3328,1482639161,1,3329),(121,2,115,0,12031,'body',0,1771,335,3329,1482639161,1,3330),(121,2,115,0,12032,'body',0,3331,336,3330,1482639161,1,1771),(121,2,115,0,12033,'body',0,1827,337,1771,1482639161,1,3331),(121,2,115,0,12034,'body',0,1135,338,3331,1482639161,1,1827),(121,2,115,0,12035,'body',0,3332,339,1827,1482639161,1,1135),(121,2,115,0,12036,'body',0,3333,340,1135,1482639161,1,3332),(121,2,115,0,12037,'body',0,1805,341,3332,1482639161,1,3333),(121,2,115,0,12038,'body',0,3334,342,3333,1482639161,1,1805),(121,2,115,0,12039,'body',0,1787,343,1805,1482639161,1,3334),(121,2,115,0,12040,'body',0,1143,344,3334,1482639161,1,1787),(121,2,115,0,12041,'body',0,1865,345,1787,1482639161,1,1143),(121,2,115,0,12042,'body',0,3259,346,1143,1482639161,1,1865),(121,2,115,0,12043,'body',0,3335,347,1865,1482639161,1,3259),(121,2,115,0,12044,'body',0,1960,348,3259,1482639161,1,3335),(121,2,115,0,12045,'body',0,3258,349,3335,1482639161,1,1960),(121,2,115,0,12046,'body',0,1169,350,1960,1482639161,1,3258),(121,2,115,0,12047,'body',0,3260,351,3258,1482639161,1,1169),(121,2,115,0,12048,'body',0,1805,352,1169,1482639161,1,3260),(121,2,115,0,12049,'body',0,1787,353,3260,1482639161,1,1805),(121,2,115,0,12050,'body',0,3296,354,1805,1482639161,1,1787),(121,2,115,0,12051,'body',0,1799,355,1787,1482639161,1,3296),(121,2,115,0,12052,'body',0,3261,356,3296,1482639161,1,1799),(121,2,115,0,12053,'body',0,3262,357,1799,1482639161,1,3261),(121,2,115,0,12054,'body',0,3336,358,3261,1482639161,1,3262),(121,2,115,0,12055,'body',0,3337,359,3262,1482639161,1,3336),(121,2,115,0,12056,'body',0,1121,360,3336,1482639161,1,3337),(121,2,115,0,12057,'body',0,3246,361,3337,1482639161,1,1121),(121,2,115,0,12058,'body',0,3338,362,1121,1482639161,1,3246),(121,2,115,0,12059,'body',0,3339,363,3246,1482639161,1,3338),(121,2,115,0,12060,'body',0,1115,364,3338,1482639161,1,3339),(121,2,115,0,12061,'body',0,1125,365,3339,1482639161,1,1115),(121,2,115,0,12062,'body',0,1126,366,1115,1482639161,1,1125),(121,2,115,0,12063,'body',0,3340,367,1125,1482639161,1,1126),(121,2,115,0,12064,'body',0,3292,368,1126,1482639161,1,3340),(121,2,115,0,12065,'body',0,3341,369,3340,1482639161,1,3292),(121,2,115,0,12066,'body',0,3342,370,3292,1482639161,1,3341),(121,2,115,0,12067,'body',0,3343,371,3341,1482639161,1,3342),(121,2,115,0,12068,'body',0,3257,372,3342,1482639161,1,3343),(121,2,115,0,12069,'body',0,3323,373,3343,1482639161,1,3257),(121,2,115,0,12070,'body',0,1827,374,3257,1482639161,1,3323),(121,2,115,0,12071,'body',0,3344,375,3323,1482639161,1,1827),(121,2,115,0,12072,'body',0,3228,376,1827,1482639161,1,3344),(121,2,115,0,12073,'body',0,3345,377,3344,1482639161,1,3228),(121,2,115,0,12074,'body',0,3343,378,3228,1482639161,1,3345),(121,2,115,0,12075,'body',0,3346,379,3345,1482639161,1,3343),(121,2,115,0,12076,'body',0,2122,380,3343,1482639161,1,3346),(121,2,115,0,12077,'body',0,3347,381,3346,1482639161,1,2122),(121,2,115,0,12078,'body',0,1200,382,2122,1482639161,1,3347),(121,2,115,0,12079,'body',0,2554,383,3347,1482639161,1,1200),(121,2,115,0,12080,'body',0,3348,384,1200,1482639161,1,2554),(121,2,115,0,12081,'body',0,3349,385,2554,1482639161,1,3348),(121,2,115,0,12082,'body',0,1805,386,3348,1482639161,1,3349),(121,2,115,0,12083,'body',0,3350,387,3349,1482639161,1,1805),(121,2,115,0,12084,'body',0,3351,388,1805,1482639161,1,3350),(121,2,115,0,12085,'body',0,3323,389,3350,1482639161,1,3351),(121,2,115,0,12086,'body',0,3257,390,3351,1482639161,1,3323),(121,2,115,0,12087,'body',0,3279,391,3323,1482639161,1,3257),(121,2,115,0,12088,'body',0,1827,392,3257,1482639161,1,3279),(121,2,115,0,12089,'body',0,3352,393,3279,1482639161,1,1827),(121,2,115,0,12090,'body',0,3353,394,1827,1482639161,1,3352),(121,2,115,0,12091,'body',0,1140,395,3352,1482639161,1,3353),(121,2,115,0,12092,'body',0,3343,396,3353,1482639161,1,1140),(121,2,115,0,12093,'body',0,1805,397,1140,1482639161,1,3343),(121,2,115,0,12094,'body',0,3292,398,3343,1482639161,1,1805),(121,2,115,0,12095,'body',0,1788,399,1805,1482639161,1,3292),(121,2,115,0,12096,'body',0,3354,400,3292,1482639161,1,1788),(121,2,115,0,12097,'body',0,3311,401,1788,1482639161,1,3354),(121,2,115,0,12098,'body',0,1149,402,3354,1482639161,1,3311),(121,2,115,0,12099,'body',0,1801,403,3311,1482639161,1,1149),(121,2,115,0,12100,'body',0,3355,404,1149,1482639161,1,1801),(121,2,115,0,12101,'body',0,3356,405,1801,1482639161,1,3355),(121,2,115,0,12102,'body',0,1787,406,3355,1482639161,1,3356),(121,2,115,0,12103,'body',0,3357,407,3356,1482639161,1,1787),(121,2,115,0,12104,'body',0,3358,408,1787,1482639161,1,3357),(121,2,115,0,12105,'body',0,2619,409,3357,1482639161,1,3358),(121,2,115,0,12106,'body',0,1187,410,3358,1482639161,1,2619),(121,2,115,0,12107,'body',0,1121,411,2619,1482639161,1,1187),(121,2,115,0,12108,'body',0,3359,412,1187,1482639161,1,1121),(121,2,115,0,12109,'body',0,1218,413,1121,1482639161,1,3359),(121,2,115,0,12110,'body',0,1219,414,3359,1482639161,1,1218),(121,2,115,0,12111,'body',0,1767,415,1218,1482639161,1,1219),(121,2,115,0,12112,'body',0,1749,416,1219,1482639161,1,1767),(121,2,115,0,12113,'body',0,1960,417,1767,1482639161,1,1749),(121,2,115,0,12114,'body',0,1126,418,1749,1482639161,1,1960),(121,2,115,0,12115,'body',0,3360,419,1960,1482639161,1,1126),(121,2,115,0,12116,'body',0,3361,420,1126,1482639161,1,3360),(121,2,115,0,12117,'body',0,2132,421,3360,1482639161,1,3361),(121,2,115,0,12118,'body',0,2133,422,3361,1482639161,1,2132),(121,2,115,0,12119,'body',0,3362,423,2132,1482639161,1,2133),(121,2,115,0,12120,'body',0,3363,424,2133,1482639161,1,3362),(121,2,115,0,12121,'body',0,2102,425,3362,1482639161,1,3363),(121,2,115,0,12122,'body',0,1116,426,3363,1482639161,1,2102),(121,2,115,0,12123,'body',0,3364,427,2102,1482639161,1,1116),(121,2,115,0,12124,'body',0,3365,428,1116,1482639161,1,3364),(121,2,115,0,12125,'body',0,1126,429,3364,1482639161,1,3365),(121,2,115,0,12126,'body',0,3343,430,3365,1482639161,1,1126),(121,2,115,0,12127,'body',0,1929,431,1126,1482639161,1,3343),(121,2,115,0,12128,'body',0,1167,432,3343,1482639161,1,1929),(121,2,115,0,12129,'body',0,3366,433,1929,1482639161,1,1167),(121,2,115,0,12130,'body',0,2872,434,1167,1482639161,1,3366),(121,2,115,0,12131,'body',0,3355,435,3366,1482639161,1,2872),(121,2,115,0,12132,'body',0,1115,436,2872,1482639161,1,3355),(121,2,115,0,12133,'body',0,1149,437,3355,1482639161,1,1115),(121,2,115,0,12134,'body',0,3257,438,1115,1482639161,1,1149),(121,2,115,0,12135,'body',0,1126,439,1149,1482639161,1,3257),(121,2,115,0,12136,'body',0,3246,440,3257,1482639161,1,1126),(121,2,115,0,12137,'body',0,1169,441,1126,1482639161,1,3246),(121,2,115,0,12138,'body',0,1218,442,3246,1482639161,1,1169),(121,2,115,0,12139,'body',0,3367,443,1169,1482639161,1,1218),(121,2,115,0,12140,'body',0,1126,444,1218,1482639161,1,3367),(121,2,115,0,12141,'body',0,3368,445,3367,1482639161,1,1126),(121,2,115,0,12142,'body',0,3369,446,1126,1482639161,1,3368),(121,2,115,0,12143,'body',0,3370,447,3368,1482639161,1,3369),(121,2,115,0,12144,'body',0,2872,448,3369,1482639161,1,3370),(121,2,115,0,12145,'body',0,3355,449,3370,1482639161,1,2872),(121,2,115,0,12146,'body',0,2047,450,2872,1482639161,1,3355),(121,2,115,0,12147,'body',0,3371,451,3355,1482639161,1,2047),(121,2,115,0,12148,'body',0,1169,452,2047,1482639161,1,3371),(121,2,115,0,12149,'body',0,1149,453,3371,1482639161,1,1169),(121,2,115,0,12150,'body',0,3372,454,1169,1482639161,1,1149),(121,2,115,0,12151,'body',0,3373,455,1149,1482639161,1,3372),(121,2,115,0,12152,'body',0,3374,456,3372,1482639161,1,3373),(121,2,115,0,12153,'body',0,1123,457,3373,1482639161,1,3374),(121,2,115,0,12154,'body',0,3375,458,3374,1482639161,1,1123),(121,2,115,0,12155,'body',0,1191,459,1123,1482639161,1,3375),(121,2,115,0,12156,'body',0,3376,460,3375,1482639161,1,1191),(121,2,115,0,12157,'body',0,3372,461,1191,1482639161,1,3376),(121,2,115,0,12158,'body',0,3377,462,3376,1482639161,1,3372),(121,2,115,0,12159,'body',0,1121,463,3372,1482639161,1,3377),(121,2,115,0,12160,'body',0,3282,464,3377,1482639161,1,1121),(121,2,115,0,12161,'body',0,1126,465,1121,1482639161,1,3282),(121,2,115,0,12162,'body',0,3228,466,3282,1482639161,1,1126),(121,2,115,0,12163,'body',0,3378,467,1126,1482639161,1,3228),(121,2,115,0,12164,'body',0,1194,468,3228,1482639161,1,3378),(121,2,115,0,12165,'body',0,3372,469,3378,1482639161,1,1194),(121,2,115,0,12166,'body',0,3379,470,1194,1482639161,1,3372),(121,2,115,0,12167,'body',0,3380,471,3372,1482639161,1,3379),(121,2,115,0,12168,'body',0,1218,472,3379,1482639161,1,3380),(121,2,115,0,12169,'body',0,3381,473,3380,1482639161,1,1218),(121,2,115,0,12170,'body',0,1126,474,1218,1482639161,1,3381),(121,2,115,0,12171,'body',0,3382,475,3381,1482639161,1,1126),(121,2,115,0,12172,'body',0,3383,476,1126,1482639161,1,3382),(121,2,115,0,12173,'body',0,1169,477,3382,1482639161,1,3383),(121,2,115,0,12174,'body',0,3384,478,3383,1482639161,1,1169),(121,2,115,0,12175,'body',0,3385,479,1169,1482639161,1,3384),(121,2,115,0,12176,'body',0,2872,480,3384,1482639161,1,3385),(121,2,115,0,12177,'body',0,3386,481,3385,1482639161,1,2872),(121,2,115,0,12178,'body',0,3387,482,2872,1482639161,1,3386),(121,2,115,0,12179,'body',0,1929,483,3386,1482639161,1,3387),(121,2,115,0,12180,'body',0,0,484,3387,1482639161,1,1929),(1,2,116,0,12181,'title',0,1125,0,0,1482641127,1,3204),(121,2,116,0,12182,'body',0,1126,1,3204,1482641127,1,1125),(121,2,116,0,12183,'body',0,3388,2,1125,1482641127,1,1126),(121,2,116,0,12184,'body',0,3389,3,1126,1482641127,1,3388),(121,2,116,0,12185,'body',0,3390,4,3388,1482641127,1,3389),(121,2,116,0,12186,'body',0,1771,5,3389,1482641127,1,3390),(121,2,116,0,12187,'body',0,1825,6,3390,1482641127,1,1771),(121,2,116,0,12188,'body',0,1752,7,1771,1482641127,1,1825),(121,2,116,0,12189,'body',0,2031,8,1825,1482641127,1,1752),(121,2,116,0,12190,'body',0,1747,9,1752,1482641127,1,2031),(121,2,116,0,12191,'body',0,1748,10,2031,1482641127,1,1747),(121,2,116,0,12192,'body',0,1749,11,1747,1482641127,1,1748),(121,2,116,0,12193,'body',0,1515,12,1748,1482641127,1,1749),(121,2,116,0,12194,'body',0,3391,13,1749,1482641127,1,1515),(121,2,116,0,12195,'body',0,3392,14,1515,1482641127,1,3391),(121,2,116,0,12196,'body',0,1787,15,3391,1482641127,1,3392),(121,2,116,0,12197,'body',0,1155,16,3392,1482641127,1,1787),(121,2,116,0,12198,'body',0,1980,17,1787,1482641127,1,1155),(121,2,116,0,12199,'body',0,1752,18,1155,1482641127,1,1980),(121,2,116,0,12200,'body',0,3393,19,1980,1482641127,1,1752),(121,2,116,0,12201,'body',0,1123,20,1752,1482641127,1,3393),(121,2,116,0,12202,'body',0,3394,21,3393,1482641127,1,1123),(121,2,116,0,12203,'body',0,1929,22,1123,1482641127,1,3394),(121,2,116,0,12204,'body',0,3395,23,3394,1482641127,1,1929),(121,2,116,0,12205,'body',0,3396,24,1929,1482641127,1,3395),(121,2,116,0,12206,'body',0,1042,25,3395,1482641127,1,3396),(121,2,116,0,12207,'body',0,1043,26,3396,1482641127,1,1042),(121,2,116,0,12208,'body',0,2043,27,1042,1482641127,1,1043),(121,2,116,0,12209,'body',0,3397,28,1043,1482641127,1,2043),(121,2,116,0,12210,'body',0,3200,29,2043,1482641127,1,3397),(121,2,116,0,12211,'body',0,3201,30,3397,1482641127,1,3200),(121,2,116,0,12212,'body',0,2044,31,3200,1482641127,1,3201),(121,2,116,0,12213,'body',0,3398,32,3201,1482641127,1,2044),(121,2,116,0,12214,'body',0,3399,33,2044,1482641127,1,3398),(121,2,116,0,12215,'body',0,3400,34,3398,1482641127,1,3399),(121,2,116,0,12216,'body',0,3401,35,3399,1482641127,1,3400),(121,2,116,0,12217,'body',0,3402,36,3400,1482641127,1,3401),(121,2,116,0,12218,'body',0,3403,37,3401,1482641127,1,3402),(121,2,116,0,12219,'body',0,3404,38,3402,1482641127,1,3403),(121,2,116,0,12220,'body',0,3405,39,3403,1482641127,1,3404),(121,2,116,0,12221,'body',0,3402,40,3404,1482641127,1,3405),(121,2,116,0,12222,'body',0,0,41,3405,1482641127,1,3402),(116,5,117,0,12223,'name',0,0,0,0,1482653677,3,2104),(1,2,109,0,12224,'title',0,1230,0,0,1482637147,1,2087),(1,2,109,0,12225,'title',0,2103,1,2087,1482637147,1,1230),(1,2,109,0,12226,'title',0,2104,2,1230,1482637147,1,2103),(1,2,109,0,12227,'title',0,3406,3,2103,1482637147,1,2104),(1,2,109,0,12228,'title',0,1169,4,2104,1482637147,1,3406),(1,2,109,0,12229,'title',0,2085,5,3406,1482637147,1,1169),(1,2,109,0,12230,'title',0,1577,6,1169,1482637147,1,2085),(121,2,109,0,12231,'body',0,3407,7,2085,1482637147,1,1577),(121,2,109,0,12232,'body',0,3408,8,1577,1482637147,1,3407),(121,2,109,0,12233,'body',0,2103,9,3407,1482637147,1,3408),(121,2,109,0,12234,'body',0,2104,10,3408,1482637147,1,2103),(121,2,109,0,12235,'body',0,3409,11,2103,1482637147,1,2104),(121,2,109,0,12236,'body',0,3410,12,2104,1482637147,1,3409),(121,2,109,0,12237,'body',0,2122,13,3409,1482637147,1,3410),(121,2,109,0,12238,'body',0,2087,14,3410,1482637147,1,2122),(121,2,109,0,12239,'body',0,2087,15,2122,1482637147,1,2087),(121,2,109,0,12240,'body',0,1230,16,2087,1482637147,1,2087),(121,2,109,0,12241,'body',0,2103,17,2087,1482637147,1,1230),(121,2,109,0,12242,'body',0,2104,18,1230,1482637147,1,2103),(121,2,109,0,12243,'body',0,3411,19,2103,1482637147,1,2104),(121,2,109,0,12244,'body',0,3412,20,2104,1482637147,1,3411),(121,2,109,0,12245,'body',0,3413,21,3411,1482637147,1,3412),(121,2,109,0,12246,'body',0,3414,22,3412,1482637147,1,3413),(121,2,109,0,12247,'body',0,3415,23,3413,1482637147,1,3414),(121,2,109,0,12248,'body',0,2044,24,3414,1482637147,1,3415),(121,2,109,0,12249,'body',0,3416,25,3415,1482637147,1,2044),(121,2,109,0,12250,'body',0,2129,26,2044,1482637147,1,3416),(121,2,109,0,12251,'body',0,3417,27,3416,1482637147,1,2129),(121,2,109,0,12252,'body',0,3418,28,2129,1482637147,1,3417),(121,2,109,0,12253,'body',0,2132,29,3417,1482637147,1,3418),(121,2,109,0,12254,'body',0,2133,30,3418,1482637147,1,2132),(121,2,109,0,12255,'body',0,3419,31,2132,1482637147,1,2133),(121,2,109,0,12256,'body',0,3420,32,2133,1482637147,1,3419),(121,2,109,0,12257,'body',0,3421,33,3419,1482637147,1,3420),(121,2,109,0,12258,'body',0,2103,34,3420,1482637147,1,3421),(121,2,109,0,12259,'body',0,2104,35,3421,1482637147,1,2103),(121,2,109,0,12260,'body',0,3422,36,2103,1482637147,1,2104),(121,2,109,0,12261,'body',0,2044,37,2104,1482637147,1,3422),(121,2,109,0,12262,'body',0,2138,38,3422,1482637147,1,2044),(121,2,109,0,12263,'body',0,3423,39,2044,1482637147,1,2138),(121,2,109,0,12264,'body',0,992,40,2138,1482637147,1,3423),(121,2,109,0,12265,'body',0,2140,41,3423,1482637147,1,992),(121,2,109,0,12266,'body',0,3424,42,992,1482637147,1,2140),(121,2,109,0,12267,'body',0,3425,43,2140,1482637147,1,3424),(121,2,109,0,12268,'body',0,1555,44,3424,1482637147,1,3425),(121,2,109,0,12269,'body',0,3426,45,3425,1482637147,1,1555),(121,2,109,0,12270,'body',0,1553,46,1555,1482637147,1,3426),(121,2,109,0,12271,'body',0,3427,47,3426,1482637147,1,1553),(121,2,109,0,12272,'body',0,3428,48,1553,1482637147,1,3427),(121,2,109,0,12273,'body',0,3429,49,3427,1482637147,1,3428),(121,2,109,0,12274,'body',0,1553,50,3428,1482637147,1,3429),(121,2,109,0,12275,'body',0,3430,51,3429,1482637147,1,1553),(121,2,109,0,12276,'body',0,3431,52,1553,1482637147,1,3430),(121,2,109,0,12277,'body',0,1527,53,3430,1482637147,1,3431),(121,2,109,0,12278,'body',0,3432,54,3431,1482637147,1,1527),(121,2,109,0,12279,'body',0,3433,55,1527,1482637147,1,3432),(121,2,109,0,12280,'body',0,1125,56,3432,1482637147,1,3433),(121,2,109,0,12281,'body',0,3434,57,3433,1482637147,1,1125),(121,2,109,0,12282,'body',0,1801,58,1125,1482637147,1,3434),(121,2,109,0,12283,'body',0,3435,59,3434,1482637147,1,1801),(121,2,109,0,12284,'body',0,1527,60,1801,1482637147,1,3435),(121,2,109,0,12285,'body',0,3436,61,3435,1482637147,1,1527),(121,2,109,0,12286,'body',0,3437,62,1527,1482637147,1,3436),(121,2,109,0,12287,'body',0,2032,63,3436,1482637147,1,3437),(121,2,109,0,12288,'body',0,2044,64,3437,1482637147,1,2032),(121,2,109,0,12289,'body',0,3438,65,2032,1482637147,1,2044),(121,2,109,0,12290,'body',0,2086,66,2044,1482637147,1,3438),(121,2,109,0,12291,'body',0,2087,67,3438,1482637147,1,2086),(121,2,109,0,12292,'body',0,3439,68,2086,1482637147,1,2087),(121,2,109,0,12293,'body',0,3440,69,2087,1482637147,1,3439),(121,2,109,0,12294,'body',0,3441,70,3439,1482637147,1,3440),(121,2,109,0,12295,'body',0,995,71,3440,1482637147,1,3441),(121,2,109,0,12296,'body',0,3424,72,3441,1482637147,1,995),(121,2,109,0,12297,'body',0,3442,73,995,1482637147,1,3424),(121,2,109,0,12298,'body',0,3443,74,3424,1482637147,1,3442),(121,2,109,0,12299,'body',0,1527,75,3442,1482637147,1,3443),(121,2,109,0,12300,'body',0,3444,76,3443,1482637147,1,1527),(121,2,109,0,12301,'body',0,3445,77,1527,1482637147,1,3444),(121,2,109,0,12302,'body',0,3446,78,3444,1482637147,1,3445),(121,2,109,0,12303,'body',0,2032,79,3445,1482637147,1,3446),(121,2,109,0,12304,'body',0,2044,80,3446,1482637147,1,2032),(121,2,109,0,12305,'body',0,3447,81,2032,1482637147,1,2044),(121,2,109,0,12306,'body',0,3448,82,2044,1482637147,1,3447),(121,2,109,0,12307,'body',0,3449,83,3447,1482637147,1,3448),(121,2,109,0,12308,'body',0,3450,84,3448,1482637147,1,3449),(121,2,109,0,12309,'body',0,3451,85,3449,1482637147,1,3450),(121,2,109,0,12310,'body',0,3452,86,3450,1482637147,1,3451),(121,2,109,0,12311,'body',0,3453,87,3451,1482637147,1,3452),(121,2,109,0,12312,'body',0,3454,88,3452,1482637147,1,3453),(121,2,109,0,12313,'body',0,814,89,3453,1482637147,1,3454),(121,2,109,0,12314,'body',0,3455,90,3454,1482637147,1,814),(121,2,109,0,12315,'body',0,3456,91,814,1482637147,1,3455),(121,2,109,0,12316,'body',0,1795,92,3455,1482637147,1,3456),(121,2,109,0,12317,'body',0,3457,93,3456,1482637147,1,1795),(121,2,109,0,12318,'body',0,3458,94,1795,1482637147,1,3457),(121,2,109,0,12319,'body',0,3459,95,3457,1482637147,1,3458),(121,2,109,0,12320,'body',0,3460,96,3458,1482637147,1,3459),(121,2,109,0,12321,'body',0,3461,97,3459,1482637147,1,3460),(121,2,109,0,12322,'body',0,3445,98,3460,1482637147,1,3461),(121,2,109,0,12323,'body',0,3446,99,3461,1482637147,1,3445),(121,2,109,0,12324,'body',0,2032,100,3445,1482637147,1,3446),(121,2,109,0,12325,'body',0,2044,101,3446,1482637147,1,2032),(121,2,109,0,12326,'body',0,3462,102,2032,1482637147,1,2044),(121,2,109,0,12327,'body',0,3463,103,2044,1482637147,1,3462),(121,2,109,0,12328,'body',0,3464,104,3462,1482637147,1,3463),(121,2,109,0,12329,'body',0,2182,105,3463,1482637147,1,3464),(121,2,109,0,12330,'body',0,3465,106,3464,1482637147,1,2182),(121,2,109,0,12331,'body',0,3442,107,2182,1482637147,1,3465),(121,2,109,0,12332,'body',0,3443,108,3465,1482637147,1,3442),(121,2,109,0,12333,'body',0,1527,109,3442,1482637147,1,3443),(121,2,109,0,12334,'body',0,3444,110,3443,1482637147,1,1527),(121,2,109,0,12335,'body',0,3466,111,1527,1482637147,1,3444),(121,2,109,0,12336,'body',0,3435,112,3444,1482637147,1,3466),(121,2,109,0,12337,'body',0,1527,113,3466,1482637147,1,3435),(121,2,109,0,12338,'body',0,3467,114,3435,1482637147,1,1527),(121,2,109,0,12339,'body',0,3468,115,1527,1482637147,1,3467),(121,2,109,0,12340,'body',0,2101,116,3467,1482637147,1,3468),(121,2,109,0,12341,'body',0,3469,117,3468,1482637147,1,2101),(121,2,109,0,12342,'body',0,1542,118,2101,1482637147,1,3469),(121,2,109,0,12343,'body',0,3470,119,3469,1482637147,1,1542),(121,2,109,0,12344,'body',0,3452,120,1542,1482637147,1,3470),(121,2,109,0,12345,'body',0,3471,121,3470,1482637147,1,3452),(121,2,109,0,12346,'body',0,3472,122,3452,1482637147,1,3471),(121,2,109,0,12347,'body',0,3473,123,3471,1482637147,1,3472),(121,2,109,0,12348,'body',0,814,124,3472,1482637147,1,3473),(121,2,109,0,12349,'body',0,3474,125,3473,1482637147,1,814),(121,2,109,0,12350,'body',0,1527,126,814,1482637147,1,3474),(121,2,109,0,12351,'body',0,3475,127,3474,1482637147,1,1527),(121,2,109,0,12352,'body',0,1515,128,1527,1482637147,1,3475),(121,2,109,0,12353,'body',0,3436,129,3475,1482637147,1,1515),(121,2,109,0,12354,'body',0,3476,130,1515,1482637147,1,3436),(121,2,109,0,12355,'body',0,3477,131,3436,1482637147,1,3476),(121,2,109,0,12356,'body',0,3478,132,3476,1482637147,1,3477),(121,2,109,0,12357,'body',0,3479,133,3477,1482637147,1,3478),(121,2,109,0,12358,'body',0,3480,134,3478,1482637147,1,3479),(121,2,109,0,12359,'body',0,3481,135,3479,1482637147,1,3480),(121,2,109,0,12360,'body',0,1042,136,3480,1482637147,1,3481),(121,2,109,0,12361,'body',0,3482,137,3481,1482637147,1,1042),(121,2,109,0,12362,'body',0,2182,138,1042,1482637147,1,3482),(121,2,109,0,12363,'body',0,3483,139,3482,1482637147,1,2182),(121,2,109,0,12364,'body',0,3484,140,2182,1482637147,1,3483),(121,2,109,0,12365,'body',0,3485,141,3483,1482637147,1,3484),(121,2,109,0,12366,'body',0,3427,142,3484,1482637147,1,3485),(121,2,109,0,12367,'body',0,3486,143,3485,1482637147,1,3427),(121,2,109,0,12368,'body',0,1531,144,3427,1482637147,1,3486),(121,2,109,0,12369,'body',0,814,145,3486,1482637147,1,1531),(121,2,109,0,12370,'body',0,3487,146,1531,1482637147,1,814),(121,2,109,0,12371,'body',0,3488,147,814,1482637147,1,3487),(121,2,109,0,12372,'body',0,3489,148,3487,1482637147,1,3488),(121,2,109,0,12373,'body',0,1527,149,3488,1482637147,1,3489),(121,2,109,0,12374,'body',0,3490,150,3489,1482637147,1,1527),(121,2,109,0,12375,'body',0,3491,151,1527,1482637147,1,3490),(121,2,109,0,12376,'body',0,814,152,3490,1482637147,1,3491),(121,2,109,0,12377,'body',0,3492,153,3491,1482637147,1,814),(121,2,109,0,12378,'body',0,1527,154,814,1482637147,1,3492),(121,2,109,0,12379,'body',0,2086,155,3492,1482637147,1,1527),(121,2,109,0,12380,'body',0,2087,156,1527,1482637147,1,2086),(121,2,109,0,12381,'body',0,3493,157,2086,1482637147,1,2087),(121,2,109,0,12382,'body',0,3494,158,2087,1482637147,1,3493),(121,2,109,0,12383,'body',0,3483,159,3493,1482637147,1,3494),(121,2,109,0,12384,'body',0,3476,160,3494,1482637147,1,3483),(121,2,109,0,12385,'body',0,1553,161,3483,1482637147,1,3476),(121,2,109,0,12386,'body',0,3427,162,3476,1482637147,1,1553),(121,2,109,0,12387,'body',0,1573,163,1553,1482637147,1,3427),(121,2,109,0,12388,'body',0,3432,164,3427,1482637147,1,1573),(121,2,109,0,12389,'body',0,3430,165,1573,1482637147,1,3432),(121,2,109,0,12390,'body',0,3495,166,3432,1482637147,1,3430),(121,2,109,0,12391,'body',0,3496,167,3430,1482637147,1,3495),(121,2,109,0,12392,'body',0,3497,168,3495,1482637147,1,3496),(121,2,109,0,12393,'body',0,3498,169,3496,1482637147,1,3497),(121,2,109,0,12394,'body',0,3499,170,3497,1482637147,1,3498),(121,2,109,0,12395,'body',0,3500,171,3498,1482637147,1,3499),(121,2,109,0,12396,'body',0,992,172,3499,1482637147,1,3500),(121,2,109,0,12397,'body',0,3432,173,3500,1482637147,1,992),(121,2,109,0,12398,'body',0,3501,174,992,1482637147,1,3432),(121,2,109,0,12399,'body',0,3432,175,3432,1482637147,1,3501),(121,2,109,0,12400,'body',0,3444,176,3501,1482637147,1,3432),(121,2,109,0,12401,'body',0,3502,177,3432,1482637147,1,3444),(121,2,109,0,12402,'body',0,3483,178,3444,1482637147,1,3502),(121,2,109,0,12403,'body',0,3427,179,3502,1482637147,1,3483),(121,2,109,0,12404,'body',0,1573,180,3483,1482637147,1,3427),(121,2,109,0,12405,'body',0,3503,181,3427,1482637147,1,1573),(121,2,109,0,12406,'body',0,1977,182,1573,1482637147,1,3503),(121,2,109,0,12407,'body',0,3504,183,3503,1482637147,1,1977),(121,2,109,0,12408,'body',0,1977,184,1977,1482637147,1,3504),(121,2,109,0,12409,'body',0,3496,185,3504,1482637147,1,1977),(121,2,109,0,12410,'body',0,3497,186,1977,1482637147,1,3496),(121,2,109,0,12411,'body',0,3435,187,3496,1482637147,1,3497),(121,2,109,0,12412,'body',0,3499,188,3497,1482637147,1,3435),(121,2,109,0,12413,'body',0,3505,189,3435,1482637147,1,3499),(121,2,109,0,12414,'body',0,3506,190,3499,1482637147,1,3505),(121,2,109,0,12415,'body',0,3507,191,3505,1482637147,1,3506),(121,2,109,0,12416,'body',0,3508,192,3506,1482637147,1,3507),(121,2,109,0,12417,'body',0,1527,193,3507,1482637147,1,3508),(121,2,109,0,12418,'body',0,3509,194,3508,1482637147,1,1527),(121,2,109,0,12419,'body',0,3444,195,1527,1482637147,1,3509),(121,2,109,0,12420,'body',0,3435,196,3509,1482637147,1,3444),(121,2,109,0,12421,'body',0,1527,197,3444,1482637147,1,3435),(121,2,109,0,12422,'body',0,3510,198,3435,1482637147,1,1527),(121,2,109,0,12423,'body',0,3511,199,1527,1482637147,1,3510),(121,2,109,0,12424,'body',0,3512,200,3510,1482637147,1,3511),(121,2,109,0,12425,'body',0,3499,201,3511,1482637147,1,3512),(121,2,109,0,12426,'body',0,3513,202,3512,1482637147,1,3499),(121,2,109,0,12427,'body',0,3514,203,3499,1482637147,1,3513),(121,2,109,0,12428,'body',0,3515,204,3513,1482637147,1,3514),(121,2,109,0,12429,'body',0,3516,205,3514,1482637147,1,3515),(121,2,109,0,12430,'body',0,3445,206,3515,1482637147,1,3516),(121,2,109,0,12431,'body',0,3517,207,3516,1482637147,1,3445),(121,2,109,0,12432,'body',0,3518,208,3445,1482637147,1,3517),(121,2,109,0,12433,'body',0,3452,209,3517,1482637147,1,3518),(121,2,109,0,12434,'body',0,3471,210,3518,1482637147,1,3452),(121,2,109,0,12435,'body',0,3472,211,3452,1482637147,1,3471),(121,2,109,0,12436,'body',0,3473,212,3471,1482637147,1,3472),(121,2,109,0,12437,'body',0,3519,213,3472,1482637147,1,3473),(121,2,109,0,12438,'body',0,1125,214,3473,1482637147,1,3519),(121,2,109,0,12439,'body',0,3520,215,3519,1482637147,1,1125),(121,2,109,0,12440,'body',0,1553,216,1125,1482637147,1,3520),(121,2,109,0,12441,'body',0,3521,217,3520,1482637147,1,1553),(121,2,109,0,12442,'body',0,1125,218,1553,1482637147,1,3521),(121,2,109,0,12443,'body',0,3522,219,3521,1482637147,1,1125),(121,2,109,0,12444,'body',0,3502,220,1125,1482637147,1,3522),(121,2,109,0,12445,'body',0,3523,221,3522,1482637147,1,3502),(121,2,109,0,12446,'body',0,3476,222,3502,1482637147,1,3523),(121,2,109,0,12447,'body',0,1527,223,3523,1482637147,1,3476),(121,2,109,0,12448,'body',0,3432,224,3476,1482637147,1,1527),(121,2,109,0,12449,'body',0,3444,225,1527,1482637147,1,3432),(121,2,109,0,12450,'body',0,3496,226,3432,1482637147,1,3444),(121,2,109,0,12451,'body',0,3497,227,3444,1482637147,1,3496),(121,2,109,0,12452,'body',0,3435,228,3496,1482637147,1,3497),(121,2,109,0,12453,'body',0,3499,229,3497,1482637147,1,3435),(121,2,109,0,12454,'body',0,3500,230,3435,1482637147,1,3499),(121,2,109,0,12455,'body',0,992,231,3499,1482637147,1,3500),(121,2,109,0,12456,'body',0,3524,232,3500,1482637147,1,992),(121,2,109,0,12457,'body',0,994,233,992,1482637147,1,3524),(121,2,109,0,12458,'body',0,3525,234,3524,1482637147,1,994),(121,2,109,0,12459,'body',0,3526,235,994,1482637147,1,3525),(121,2,109,0,12460,'body',0,3527,236,3525,1482637147,1,3526),(121,2,109,0,12461,'body',0,3505,237,3526,1482637147,1,3527),(121,2,109,0,12462,'body',0,3476,238,3527,1482637147,1,3505),(121,2,109,0,12463,'body',0,1527,239,3505,1482637147,1,3476),(121,2,109,0,12464,'body',0,3528,240,3476,1482637147,1,1527),(121,2,109,0,12465,'body',0,3529,241,1527,1482637147,1,3528),(121,2,109,0,12466,'body',0,3530,242,3528,1482637147,1,3529),(121,2,109,0,12467,'body',0,3531,243,3529,1482637147,1,3530),(121,2,109,0,12468,'body',0,3489,244,3530,1482637147,1,3531),(121,2,109,0,12469,'body',0,1527,245,3531,1482637147,1,3489),(121,2,109,0,12470,'body',0,3499,246,3489,1482637147,1,1527),(121,2,109,0,12471,'body',0,992,247,1527,1482637147,1,3499),(121,2,109,0,12472,'body',0,2036,248,3499,1482637147,1,992),(121,2,109,0,12473,'body',0,3532,249,992,1482637147,1,2036),(121,2,109,0,12474,'body',0,2040,250,2036,1482637147,1,3532),(121,2,109,0,12475,'body',0,994,251,3532,1482637147,1,2040),(121,2,109,0,12476,'body',0,2036,252,2040,1482637147,1,994),(121,2,109,0,12477,'body',0,3533,253,994,1482637147,1,2036),(121,2,109,0,12478,'body',0,3534,254,2036,1482637147,1,3533),(121,2,109,0,12479,'body',0,995,255,3533,1482637147,1,3534),(121,2,109,0,12480,'body',0,2253,256,3534,1482637147,1,995),(121,2,109,0,12481,'body',0,3535,257,995,1482637147,1,2253),(121,2,109,0,12482,'body',0,2039,258,2253,1482637147,1,3535),(121,2,109,0,12483,'body',0,3536,259,3535,1482637147,1,2039),(121,2,109,0,12484,'body',0,3537,260,2039,1482637147,1,3536),(121,2,109,0,12485,'body',0,3538,261,3536,1482637147,1,3537),(121,2,109,0,12486,'body',0,1174,262,3537,1482637147,1,3538),(121,2,109,0,12487,'body',0,3539,263,3538,1482637147,1,1174),(121,2,109,0,12488,'body',0,3540,264,1174,1482637147,1,3539),(121,2,109,0,12489,'body',0,3541,265,3539,1482637147,1,3540),(121,2,109,0,12490,'body',0,1125,266,3540,1482637147,1,3541),(121,2,109,0,12491,'body',0,3446,267,3541,1482637147,1,1125),(121,2,109,0,12492,'body',0,3542,268,1125,1482637147,1,3446),(121,2,109,0,12493,'body',0,3435,269,3446,1482637147,1,3542),(121,2,109,0,12494,'body',0,1527,270,3542,1482637147,1,3435),(121,2,109,0,12495,'body',0,3436,271,3435,1482637147,1,1527),(121,2,109,0,12496,'body',0,3433,272,1527,1482637147,1,3436),(121,2,109,0,12497,'body',0,3543,273,3436,1482637147,1,3433),(121,2,109,0,12498,'body',0,3544,274,3433,1482637147,1,3543),(121,2,109,0,12499,'body',0,3433,275,3543,1482637147,1,3544),(121,2,109,0,12500,'body',0,3445,276,3544,1482637147,1,3433),(121,2,109,0,12501,'body',0,3545,277,3433,1482637147,1,3445),(121,2,109,0,12502,'body',0,1544,278,3445,1482637147,1,3545),(121,2,109,0,12503,'body',0,3546,279,3545,1482637147,1,1544),(121,2,109,0,12504,'body',0,3432,280,1544,1482637147,1,3546),(121,2,109,0,12505,'body',0,3547,281,3546,1482637147,1,3432),(121,2,109,0,12506,'body',0,3459,282,3432,1482637147,1,3547),(121,2,109,0,12507,'body',0,3460,283,3547,1482637147,1,3459),(121,2,109,0,12508,'body',0,3548,284,3459,1482637147,1,3460),(121,2,109,0,12509,'body',0,3427,285,3460,1482637147,1,3548),(121,2,109,0,12510,'body',0,3428,286,3548,1482637147,1,3427),(121,2,109,0,12511,'body',0,1515,287,3427,1482637147,1,3428),(121,2,109,0,12512,'body',0,3549,288,3428,1482637147,1,1515),(121,2,109,0,12513,'body',0,3430,289,1515,1482637147,1,3549),(121,2,109,0,12514,'body',0,3429,290,3549,1482637147,1,3430),(121,2,109,0,12515,'body',0,1977,291,3430,1482637147,1,3429),(121,2,109,0,12516,'body',0,1527,292,3429,1482637147,1,1977),(121,2,109,0,12517,'body',0,3434,293,1977,1482637147,1,1527),(121,2,109,0,12518,'body',0,1801,294,1527,1482637147,1,3434),(121,2,109,0,12519,'body',0,1801,295,3434,1482637147,1,1801),(121,2,109,0,12520,'body',0,3550,296,1801,1482637147,1,1801),(121,2,109,0,12521,'body',0,3551,297,1801,1482637147,1,3550),(121,2,109,0,12522,'body',0,1527,298,3550,1482637147,1,3551),(121,2,109,0,12523,'body',0,3434,299,3551,1482637147,1,1527),(121,2,109,0,12524,'body',0,3552,300,1527,1482637147,1,3434),(121,2,109,0,12525,'body',0,3553,301,3434,1482637147,1,3552),(121,2,109,0,12526,'body',0,1515,302,3552,1482637147,1,3553),(121,2,109,0,12527,'body',0,3554,303,3553,1482637147,1,1515),(121,2,109,0,12528,'body',0,3555,304,1515,1482637147,1,3554),(121,2,109,0,12529,'body',0,1527,305,3554,1482637147,1,3555),(121,2,109,0,12530,'body',0,3434,306,3555,1482637147,1,1527),(121,2,109,0,12531,'body',0,3556,307,1527,1482637147,1,3434),(121,2,109,0,12532,'body',0,1573,308,3434,1482637147,1,3556),(121,2,109,0,12533,'body',0,3550,309,3556,1482637147,1,1573),(121,2,109,0,12534,'body',0,3557,310,1573,1482637147,1,3550),(121,2,109,0,12535,'body',0,1125,311,3550,1482637147,1,3557),(121,2,109,0,12536,'body',0,3558,312,3557,1482637147,1,1125),(121,2,109,0,12537,'body',0,3559,313,1125,1482637147,1,3558),(121,2,109,0,12538,'body',0,3560,314,3558,1482637147,1,3559),(121,2,109,0,12539,'body',0,3539,315,3559,1482637147,1,3560),(121,2,109,0,12540,'body',0,3561,316,3560,1482637147,1,3539),(121,2,109,0,12541,'body',0,3541,317,3539,1482637147,1,3561),(121,2,109,0,12542,'body',0,1125,318,3561,1482637147,1,3541),(121,2,109,0,12543,'body',0,3422,319,3541,1482637147,1,1125),(121,2,109,0,12544,'body',0,2044,320,1125,1482637147,1,3422),(121,2,109,0,12545,'body',0,3562,321,3422,1482637147,1,2044),(121,2,109,0,12546,'body',0,1527,322,2044,1482637147,1,3562),(121,2,109,0,12547,'body',0,3444,323,3562,1482637147,1,1527),(121,2,109,0,12548,'body',0,3543,324,1527,1482637147,1,3444),(121,2,109,0,12549,'body',0,3444,325,3444,1482637147,1,3543),(121,2,109,0,12550,'body',0,1527,326,3543,1482637147,1,3444),(121,2,109,0,12551,'body',0,3563,327,3444,1482637147,1,1527),(121,2,109,0,12552,'body',0,3559,328,1527,1482637147,1,3563),(121,2,109,0,12553,'body',0,3560,329,3563,1482637147,1,3559),(121,2,109,0,12554,'body',0,3539,330,3559,1482637147,1,3560),(121,2,109,0,12555,'body',0,3457,331,3560,1482637147,1,3539),(121,2,109,0,12556,'body',0,3541,332,3539,1482637147,1,3457),(121,2,109,0,12557,'body',0,1125,333,3457,1482637147,1,3541),(121,2,109,0,12558,'body',0,3422,334,3541,1482637147,1,1125),(121,2,109,0,12559,'body',0,2044,335,1125,1482637147,1,3422),(121,2,109,0,12560,'body',0,3562,336,3422,1482637147,1,2044),(121,2,109,0,12561,'body',0,1527,337,2044,1482637147,1,3562),(121,2,109,0,12562,'body',0,3444,338,3562,1482637147,1,1527),(121,2,109,0,12563,'body',0,3543,339,1527,1482637147,1,3444),(121,2,109,0,12564,'body',0,3564,340,3444,1482637147,1,3543),(121,2,109,0,12565,'body',0,1125,341,3543,1482637147,1,3564),(121,2,109,0,12566,'body',0,3565,342,3564,1482637147,1,1125),(121,2,109,0,12567,'body',0,1553,343,1125,1482637147,1,3565),(121,2,109,0,12568,'body',0,3432,344,3565,1482637147,1,1553),(121,2,109,0,12569,'body',0,3566,345,1553,1482637147,1,3432),(121,2,109,0,12570,'body',0,3560,346,3432,1482637147,1,3566),(121,2,109,0,12571,'body',0,3539,347,3566,1482637147,1,3560),(121,2,109,0,12572,'body',0,3465,348,3560,1482637147,1,3539),(121,2,109,0,12573,'body',0,3541,349,3539,1482637147,1,3465),(121,2,109,0,12574,'body',0,1125,350,3465,1482637147,1,3541),(121,2,109,0,12575,'body',0,3422,351,3541,1482637147,1,1125),(121,2,109,0,12576,'body',0,2044,352,1125,1482637147,1,3422),(121,2,109,0,12577,'body',0,3562,353,3422,1482637147,1,2044),(121,2,109,0,12578,'body',0,1527,354,2044,1482637147,1,3562),(121,2,109,0,12579,'body',0,3444,355,3562,1482637147,1,1527),(121,2,109,0,12580,'body',0,3543,356,1527,1482637147,1,3444),(121,2,109,0,12581,'body',0,3567,357,3444,1482637147,1,3543),(121,2,109,0,12582,'body',0,3568,358,3543,1482637147,1,3567),(121,2,109,0,12583,'body',0,1125,359,3567,1482637147,1,3568),(121,2,109,0,12584,'body',0,3444,360,3568,1482637147,1,1125),(121,2,109,0,12585,'body',0,1527,361,1125,1482637147,1,3444),(121,2,109,0,12586,'body',0,3569,362,3444,1482637147,1,1527),(121,2,109,0,12587,'body',0,3570,363,1527,1482637147,1,3569),(121,2,109,0,12588,'body',0,3465,364,3569,1482637147,1,3570),(121,2,109,0,12589,'body',0,3548,365,3570,1482637147,1,3465),(121,2,109,0,12590,'body',0,3541,366,3465,1482637147,1,3548),(121,2,109,0,12591,'body',0,1125,367,3548,1482637147,1,3541),(121,2,109,0,12592,'body',0,3466,368,3541,1482637147,1,1125),(121,2,109,0,12593,'body',0,3511,369,1125,1482637147,1,3466),(121,2,109,0,12594,'body',0,3571,370,3466,1482637147,1,3511),(121,2,109,0,12595,'body',0,2044,371,3511,1482637147,1,3571),(121,2,109,0,12596,'body',0,3572,372,3571,1482637147,1,2044),(121,2,109,0,12597,'body',0,3485,373,2044,1482637147,1,3572),(121,2,109,0,12598,'body',0,3573,374,3572,1482637147,1,3485),(121,2,109,0,12599,'body',0,3574,375,3485,1482637147,1,3573),(121,2,109,0,12600,'body',0,1527,376,3573,1482637147,1,3574),(121,2,109,0,12601,'body',0,3432,377,3574,1482637147,1,1527),(121,2,109,0,12602,'body',0,3444,378,1527,1482637147,1,3432),(121,2,109,0,12603,'body',0,3575,379,3432,1482637147,1,3444),(121,2,109,0,12604,'body',0,3497,380,3444,1482637147,1,3575),(121,2,109,0,12605,'body',0,3435,381,3575,1482637147,1,3497),(121,2,109,0,12606,'body',0,3499,382,3497,1482637147,1,3435),(121,2,109,0,12607,'body',0,3576,383,3435,1482637147,1,3499),(121,2,109,0,12608,'body',0,3485,384,3499,1482637147,1,3576),(121,2,109,0,12609,'body',0,3573,385,3576,1482637147,1,3485),(121,2,109,0,12610,'body',0,3577,386,3485,1482637147,1,3573),(121,2,109,0,12611,'body',0,3578,387,3573,1482637147,1,3577),(121,2,109,0,12612,'body',0,1527,388,3577,1482637147,1,3578),(121,2,109,0,12613,'body',0,3432,389,3578,1482637147,1,1527),(121,2,109,0,12614,'body',0,3495,390,1527,1482637147,1,3432),(121,2,109,0,12615,'body',0,1125,391,3432,1482637147,1,3495),(121,2,109,0,12616,'body',0,3579,392,3495,1482637147,1,1125),(121,2,109,0,12617,'body',0,1553,393,1125,1482637147,1,3579),(121,2,109,0,12618,'body',0,3580,394,3579,1482637147,1,1553),(121,2,109,0,12619,'body',0,3575,395,1553,1482637147,1,3580),(121,2,109,0,12620,'body',0,3497,396,3580,1482637147,1,3575),(121,2,109,0,12621,'body',0,3435,397,3575,1482637147,1,3497),(121,2,109,0,12622,'body',0,3499,398,3497,1482637147,1,3435),(121,2,109,0,12623,'body',0,1894,399,3435,1482637147,1,3499),(121,2,109,0,12624,'body',0,3572,400,3499,1482637147,1,1894),(121,2,109,0,12625,'body',0,3581,401,1894,1482637147,1,3572),(121,2,109,0,12626,'body',0,3541,402,3572,1482637147,1,3581),(121,2,109,0,12627,'body',0,1527,403,3581,1482637147,1,3541),(121,2,109,0,12628,'body',0,814,404,3541,1482637147,1,1527),(121,2,109,0,12629,'body',0,3509,405,1527,1482637147,1,814),(121,2,109,0,12630,'body',0,1553,406,814,1482637147,1,3509),(121,2,109,0,12631,'body',0,3432,407,3509,1482637147,1,1553),(121,2,109,0,12632,'body',0,3582,408,1553,1482637147,1,3432),(121,2,109,0,12633,'body',0,3444,409,3432,1482637147,1,3582),(121,2,109,0,12634,'body',0,3495,410,3582,1482637147,1,3444),(121,2,109,0,12635,'body',0,1553,411,3444,1482637147,1,3495),(121,2,109,0,12636,'body',0,3434,412,3495,1482637147,1,1553),(121,2,109,0,12637,'body',0,1801,413,1553,1482637147,1,3434),(121,2,109,0,12638,'body',0,1977,414,3434,1482637147,1,1801),(121,2,109,0,12639,'body',0,3575,415,1801,1482637147,1,1977),(121,2,109,0,12640,'body',0,3497,416,1977,1482637147,1,3575),(121,2,109,0,12641,'body',0,3435,417,3575,1482637147,1,3497),(121,2,109,0,12642,'body',0,3499,418,3497,1482637147,1,3435),(121,2,109,0,12643,'body',0,1894,419,3435,1482637147,1,3499),(121,2,109,0,12644,'body',0,3483,420,3499,1482637147,1,1894),(121,2,109,0,12645,'body',0,3583,421,1894,1482637147,1,3483),(121,2,109,0,12646,'body',0,3541,422,3483,1482637147,1,3583),(121,2,109,0,12647,'body',0,1527,423,3583,1482637147,1,3541),(121,2,109,0,12648,'body',0,3432,424,3541,1482637147,1,1527),(121,2,109,0,12649,'body',0,3584,425,1527,1482637147,1,3432),(121,2,109,0,12650,'body',0,1531,426,3432,1482637147,1,3584),(121,2,109,0,12651,'body',0,3585,427,3584,1482637147,1,1531),(121,2,109,0,12652,'body',0,3586,428,1531,1482637147,1,3585),(121,2,109,0,12653,'body',0,3499,429,3585,1482637147,1,3586),(121,2,109,0,12654,'body',0,3494,430,3586,1482637147,1,3499),(121,2,109,0,12655,'body',0,3483,431,3499,1482637147,1,3494),(121,2,109,0,12656,'body',0,3583,432,3494,1482637147,1,3483),(121,2,109,0,12657,'body',0,3541,433,3483,1482637147,1,3583),(121,2,109,0,12658,'body',0,1527,434,3583,1482637147,1,3541),(121,2,109,0,12659,'body',0,3579,435,3541,1482637147,1,1527),(121,2,109,0,12660,'body',0,3587,436,1527,1482637147,1,3579),(121,2,109,0,12661,'body',0,3588,437,3579,1482637147,1,3587),(121,2,109,0,12662,'body',0,3589,438,3587,1482637147,1,3588),(121,2,109,0,12663,'body',0,3590,439,3588,1482637147,1,3589),(121,2,109,0,12664,'body',0,3499,440,3589,1482637147,1,3590),(121,2,109,0,12665,'body',0,3502,441,3590,1482637147,1,3499),(121,2,109,0,12666,'body',0,3591,442,3499,1482637147,1,3502),(121,2,109,0,12667,'body',0,3423,443,3502,1482637147,1,3591),(121,2,109,0,12668,'body',0,1553,444,3591,1482637147,1,3423),(121,2,109,0,12669,'body',0,3592,445,3423,1482637147,1,1553),(121,2,109,0,12670,'body',0,3593,446,1553,1482637147,1,3592),(121,2,109,0,12671,'body',0,1531,447,3592,1482637147,1,3593),(121,2,109,0,12672,'body',0,3585,448,3593,1482637147,1,1531),(121,2,109,0,12673,'body',0,3589,449,1531,1482637147,1,3585),(121,2,109,0,12674,'body',0,3590,450,3585,1482637147,1,3589),(121,2,109,0,12675,'body',0,3499,451,3589,1482637147,1,3590),(121,2,109,0,12676,'body',0,3594,452,3590,1482637147,1,3499),(121,2,109,0,12677,'body',0,3595,453,3499,1482637147,1,3594),(121,2,109,0,12678,'body',0,3547,454,3594,1482637147,1,3595),(121,2,109,0,12679,'body',0,3596,455,3595,1482637147,1,3547),(121,2,109,0,12680,'body',0,1527,456,3547,1482637147,1,3596),(121,2,109,0,12681,'body',0,3444,457,3596,1482637147,1,1527),(121,2,109,0,12682,'body',0,3485,458,1527,1482637147,1,3444),(121,2,109,0,12683,'body',0,3597,459,3444,1482637147,1,3485),(121,2,109,0,12684,'body',0,3598,460,3485,1482637147,1,3597),(121,2,109,0,12685,'body',0,3599,461,3597,1482637147,1,3598),(121,2,109,0,12686,'body',0,3569,462,3598,1482637147,1,3599),(121,2,109,0,12687,'body',0,1553,463,3599,1482637147,1,3569),(121,2,109,0,12688,'body',0,3600,464,3569,1482637147,1,1553),(121,2,109,0,12689,'body',0,1527,465,1553,1482637147,1,3600),(121,2,109,0,12690,'body',0,3601,466,3600,1482637147,1,1527),(121,2,109,0,12691,'body',0,3602,467,1527,1482637147,1,3601),(121,2,109,0,12692,'body',0,1527,468,3601,1482637147,1,3602),(121,2,109,0,12693,'body',0,814,469,3602,1482637147,1,1527),(121,2,109,0,12694,'body',0,3603,470,1527,1482637147,1,814),(121,2,109,0,12695,'body',0,3604,471,814,1482637147,1,3603),(121,2,109,0,12696,'body',0,1527,472,3603,1482637147,1,3604),(121,2,109,0,12697,'body',0,3444,473,3604,1482637147,1,1527),(121,2,109,0,12698,'body',0,3605,474,1527,1482637147,1,3444),(121,2,109,0,12699,'body',0,3606,475,3444,1482637147,1,3605),(121,2,109,0,12700,'body',0,3561,476,3605,1482637147,1,3606),(121,2,109,0,12701,'body',0,3607,477,3606,1482637147,1,3561),(121,2,109,0,12702,'body',0,3608,478,3561,1482637147,1,3607),(121,2,109,0,12703,'body',0,1553,479,3607,1482637147,1,3608),(121,2,109,0,12704,'body',0,3609,480,3608,1482637147,1,1553),(121,2,109,0,12705,'body',0,3610,481,1553,1482637147,1,3609),(121,2,109,0,12706,'body',0,3602,482,3609,1482637147,1,3610),(121,2,109,0,12707,'body',0,1527,483,3610,1482637147,1,3602),(121,2,109,0,12708,'body',0,3611,484,3602,1482637147,1,1527),(121,2,109,0,12709,'body',0,3427,485,1527,1482637147,1,3611),(121,2,109,0,12710,'body',0,952,486,3611,1482637147,1,3427),(121,2,109,0,12711,'body',0,3612,487,3427,1482637147,1,952),(121,2,109,0,12712,'body',0,3613,488,952,1482637147,1,3612),(121,2,109,0,12713,'body',0,3561,489,3612,1482637147,1,3613),(121,2,109,0,12714,'body',0,3614,490,3613,1482637147,1,3561),(121,2,109,0,12715,'body',0,1842,491,3561,1482637147,1,3614),(121,2,109,0,12716,'body',0,3615,492,3614,1482637147,1,1842),(121,2,109,0,12717,'body',0,1553,493,1842,1482637147,1,3615),(121,2,109,0,12718,'body',0,3609,494,3615,1482637147,1,1553),(121,2,109,0,12719,'body',0,3610,495,1553,1482637147,1,3609),(121,2,109,0,12720,'body',0,1546,496,3609,1482637147,1,3610),(121,2,109,0,12721,'body',0,3616,497,3610,1482637147,1,1546),(121,2,109,0,12722,'body',0,1527,498,1546,1482637147,1,3616),(121,2,109,0,12723,'body',0,3617,499,3616,1482637147,1,1527),(121,2,109,0,12724,'body',0,3618,500,1527,1482637147,1,3617),(121,2,109,0,12725,'body',0,3427,501,3617,1482637147,1,3618),(121,2,109,0,12726,'body',0,1553,502,3618,1482637147,1,3427),(121,2,109,0,12727,'body',0,3619,503,3427,1482637147,1,1553),(121,2,109,0,12728,'body',0,3428,504,1553,1482637147,1,3619),(121,2,109,0,12729,'body',0,3620,505,3619,1482637147,1,3428),(121,2,109,0,12730,'body',0,3621,506,3428,1482637147,1,3620),(121,2,109,0,12731,'body',0,3602,507,3620,1482637147,1,3621),(121,2,109,0,12732,'body',0,3622,508,3621,1482637147,1,3602),(121,2,109,0,12733,'body',0,3613,509,3602,1482637147,1,3622),(121,2,109,0,12734,'body',0,3561,510,3622,1482637147,1,3613),(121,2,109,0,12735,'body',0,3617,511,3613,1482637147,1,3561),(121,2,109,0,12736,'body',0,1542,512,3561,1482637147,1,3617),(121,2,109,0,12737,'body',0,3623,513,3617,1482637147,1,1542),(121,2,109,0,12738,'body',0,3624,514,1542,1482637147,1,3623),(121,2,109,0,12739,'body',0,3625,515,3623,1482637147,1,3624),(121,2,109,0,12740,'body',0,3626,516,3624,1482637147,1,3625),(121,2,109,0,12741,'body',0,3627,517,3625,1482637147,1,3626),(121,2,109,0,12742,'body',0,3561,518,3626,1482637147,1,3627),(121,2,109,0,12743,'body',0,3628,519,3627,1482637147,1,3561),(121,2,109,0,12744,'body',0,3629,520,3561,1482637147,1,3628),(121,2,109,0,12745,'body',0,3561,521,3628,1482637147,1,3629),(121,2,109,0,12746,'body',0,3563,522,3629,1482637147,1,3561),(121,2,109,0,12747,'body',0,3559,523,3561,1482637147,1,3563),(121,2,109,0,12748,'body',0,1553,524,3563,1482637147,1,3559),(121,2,109,0,12749,'body',0,3630,525,3559,1482637147,1,1553),(121,2,109,0,12750,'body',0,1527,526,1553,1482637147,1,3630),(121,2,109,0,12751,'body',0,3631,527,3630,1482637147,1,1527),(121,2,109,0,12752,'body',0,3632,528,1527,1482637147,1,3631),(121,2,109,0,12753,'body',0,3633,529,3631,1482637147,1,3632),(121,2,109,0,12754,'body',0,3634,530,3632,1482637147,1,3633),(121,2,109,0,12755,'body',0,3561,531,3633,1482637147,1,3634),(121,2,109,0,12756,'body',0,3490,532,3634,1482637147,1,3561),(121,2,109,0,12757,'body',0,3635,533,3561,1482637147,1,3490),(121,2,109,0,12758,'body',0,3561,534,3490,1482637147,1,3635),(121,2,109,0,12759,'body',0,3495,535,3635,1482637147,1,3561),(121,2,109,0,12760,'body',0,1542,536,3561,1482637147,1,3495),(121,2,109,0,12761,'body',0,3636,537,3495,1482637147,1,1542),(121,2,109,0,12762,'body',0,3637,538,1542,1482637147,1,3636),(121,2,109,0,12763,'body',0,1125,539,3636,1482637147,1,3637),(121,2,109,0,12764,'body',0,814,540,3637,1482637147,1,1125),(121,2,109,0,12765,'body',0,3638,541,1125,1482637147,1,814),(121,2,109,0,12766,'body',0,3546,542,814,1482637147,1,3638),(121,2,109,0,12767,'body',0,3639,543,3638,1482637147,1,3546),(121,2,109,0,12768,'body',0,3640,544,3546,1482637147,1,3639),(121,2,109,0,12769,'body',0,3641,545,3639,1482637147,1,3640),(121,2,109,0,12770,'body',0,3570,546,3640,1482637147,1,3641),(121,2,109,0,12771,'body',0,3561,547,3641,1482637147,1,3570),(121,2,109,0,12772,'body',0,3525,548,3570,1482637147,1,3561),(121,2,109,0,12773,'body',0,3526,549,3561,1482637147,1,3525),(121,2,109,0,12774,'body',0,1553,550,3525,1482637147,1,3526),(121,2,109,0,12775,'body',0,3642,551,3526,1482637147,1,1553),(121,2,109,0,12776,'body',0,3643,552,1553,1482637147,1,3642),(121,2,109,0,12777,'body',0,3644,553,3642,1482637147,1,3643),(121,2,109,0,12778,'body',0,1527,554,3643,1482637147,1,3644),(121,2,109,0,12779,'body',0,814,555,3644,1482637147,1,1527),(121,2,109,0,12780,'body',0,3645,556,1527,1482637147,1,814),(121,2,109,0,12781,'body',0,3646,557,814,1482637147,1,3645),(121,2,109,0,12782,'body',0,3604,558,3645,1482637147,1,3646),(121,2,109,0,12783,'body',0,816,559,3646,1482637147,1,3604),(121,2,109,0,12784,'body',0,3444,560,3604,1482637147,1,816),(121,2,109,0,12785,'body',0,1553,561,816,1482637147,1,3444),(121,2,109,0,12786,'body',0,814,562,3444,1482637147,1,1553),(121,2,109,0,12787,'body',0,3647,563,1553,1482637147,1,814),(121,2,109,0,12788,'body',0,3646,564,814,1482637147,1,3647),(121,2,109,0,12789,'body',0,3430,565,3647,1482637147,1,3646),(121,2,109,0,12790,'body',0,3604,566,3646,1482637147,1,3430),(121,2,109,0,12791,'body',0,3648,567,3430,1482637147,1,3604),(121,2,109,0,12792,'body',0,3489,568,3604,1482637147,1,3648),(121,2,109,0,12793,'body',0,3649,569,3648,1482637147,1,3489),(121,2,109,0,12794,'body',0,1903,570,3489,1482637147,1,3649),(121,2,109,0,12795,'body',0,3453,571,3649,1482637147,1,1903),(121,2,109,0,12796,'body',0,3650,572,1903,1482637147,1,3453),(121,2,109,0,12797,'body',0,3651,573,3453,1482637147,1,3650),(121,2,109,0,12798,'body',0,814,574,3650,1482637147,1,3651),(121,2,109,0,12799,'body',0,3652,575,3651,1482637147,1,814),(121,2,109,0,12800,'body',0,1573,576,814,1482637147,1,3652),(121,2,109,0,12801,'body',0,3653,577,3652,1482637147,1,1573),(121,2,109,0,12802,'body',0,3569,578,1573,1482637147,1,3653),(121,2,109,0,12803,'body',0,3654,579,3653,1482637147,1,3569),(121,2,109,0,12804,'body',0,1553,580,3569,1482637147,1,3654),(121,2,109,0,12805,'body',0,3615,581,3654,1482637147,1,1553),(121,2,109,0,12806,'body',0,1125,582,1553,1482637147,1,3615),(121,2,109,0,12807,'body',0,3511,583,3615,1482637147,1,1125),(121,2,109,0,12808,'body',0,3655,584,1125,1482637147,1,3511),(121,2,109,0,12809,'body',0,3656,585,3511,1482637147,1,3655),(121,2,109,0,12810,'body',0,1527,586,3655,1482637147,1,3656),(121,2,109,0,12811,'body',0,3657,587,3656,1482637147,1,1527),(121,2,109,0,12812,'body',0,3658,588,1527,1482637147,1,3657),(121,2,109,0,12813,'body',0,3659,589,3657,1482637147,1,3658),(121,2,109,0,12814,'body',0,3660,590,3658,1482637147,1,3659),(121,2,109,0,12815,'body',0,1903,591,3659,1482637147,1,3660),(121,2,109,0,12816,'body',0,3661,592,3660,1482637147,1,1903),(121,2,109,0,12817,'body',0,1553,593,1903,1482637147,1,3661),(121,2,109,0,12818,'body',0,3554,594,3661,1482637147,1,1553),(121,2,109,0,12819,'body',0,3662,595,1553,1482637147,1,3554),(121,2,109,0,12820,'body',0,1747,596,3554,1482637147,1,3662),(121,2,109,0,12821,'body',0,2382,597,3662,1482637147,1,1747),(121,2,109,0,12822,'body',0,1125,598,1747,1482637147,1,2382),(121,2,109,0,12823,'body',0,1126,599,2382,1482637147,1,1125),(121,2,109,0,12824,'body',0,2383,600,1125,1482637147,1,1126),(121,2,109,0,12825,'body',0,1886,601,1126,1482637147,1,2383),(121,2,109,0,12826,'body',0,3663,602,2383,1482637147,1,1886),(121,2,109,0,12827,'body',0,2385,603,1886,1482637147,1,3663),(121,2,109,0,12828,'body',0,3664,604,3663,1482637147,1,2385),(121,2,109,0,12829,'body',0,3613,605,2385,1482637147,1,3664),(121,2,109,0,12830,'body',0,1903,606,3664,1482637147,1,3613),(121,2,109,0,12831,'body',0,3665,607,3613,1482637147,1,1903),(121,2,109,0,12832,'body',0,3666,608,1903,1482637147,1,3665),(121,2,109,0,12833,'body',0,3667,609,3665,1482637147,1,3666),(121,2,109,0,12834,'body',0,1125,610,3666,1482637147,1,3667),(121,2,109,0,12835,'body',0,1121,611,3667,1482637147,1,1125),(121,2,109,0,12836,'body',0,2390,612,1125,1482637147,1,1121),(121,2,109,0,12837,'body',0,3481,613,1121,1482637147,1,2390),(121,2,109,0,12838,'body',0,3668,614,2390,1482637147,1,3481),(121,2,109,0,12839,'body',0,3669,615,3481,1482637147,1,3668),(121,2,109,0,12840,'body',0,3547,616,3668,1482637147,1,3669),(121,2,109,0,12841,'body',0,3670,617,3669,1482637147,1,3547),(121,2,109,0,12842,'body',0,1527,618,3547,1482637147,1,3670),(121,2,109,0,12843,'body',0,3624,619,3670,1482637147,1,1527),(121,2,109,0,12844,'body',0,3654,620,1527,1482637147,1,3624),(121,2,109,0,12845,'body',0,3671,621,3624,1482637147,1,3654),(121,2,109,0,12846,'body',0,3629,622,3654,1482637147,1,3671),(121,2,109,0,12847,'body',0,1903,623,3671,1482637147,1,3629),(121,2,109,0,12848,'body',0,3672,624,3629,1482637147,1,1903),(121,2,109,0,12849,'body',0,1553,625,1903,1482637147,1,3672),(121,2,109,0,12850,'body',0,3673,626,3672,1482637147,1,1553),(121,2,109,0,12851,'body',0,1527,627,1553,1482637147,1,3673),(121,2,109,0,12852,'body',0,3624,628,3673,1482637147,1,1527),(121,2,109,0,12853,'body',0,3631,629,1527,1482637147,1,3624),(121,2,109,0,12854,'body',0,3674,630,3624,1482637147,1,3631),(121,2,109,0,12855,'body',0,3625,631,3631,1482637147,1,3674),(121,2,109,0,12856,'body',0,3602,632,3674,1482637147,1,3625),(121,2,109,0,12857,'body',0,1573,633,3625,1482637147,1,3602),(121,2,109,0,12858,'body',0,3432,634,3602,1482637147,1,1573),(121,2,109,0,12859,'body',0,3625,635,1573,1482637147,1,3432),(121,2,109,0,12860,'body',0,3675,636,3432,1482637147,1,3625),(121,2,109,0,12861,'body',0,3676,637,3625,1482637147,1,3675),(121,2,109,0,12862,'body',0,1903,638,3675,1482637147,1,3676),(121,2,109,0,12863,'body',0,3665,639,3676,1482637147,1,1903),(121,2,109,0,12864,'body',0,3666,640,1903,1482637147,1,3665),(121,2,109,0,12865,'body',0,814,641,3665,1482637147,1,3666),(121,2,109,0,12866,'body',0,3674,642,3666,1482637147,1,814),(121,2,109,0,12867,'body',0,1527,643,814,1482637147,1,3674),(121,2,109,0,12868,'body',0,3475,644,3674,1482637147,1,1527),(121,2,109,0,12869,'body',0,1553,645,1527,1482637147,1,3475),(121,2,109,0,12870,'body',0,3677,646,3475,1482637147,1,1553),(121,2,109,0,12871,'body',0,3678,647,1553,1482637147,1,3677),(121,2,109,0,12872,'body',0,3474,648,3677,1482637147,1,3678),(121,2,109,0,12873,'body',0,1553,649,3678,1482637147,1,3474),(121,2,109,0,12874,'body',0,3679,650,3474,1482637147,1,1553),(121,2,109,0,12875,'body',0,3680,651,1553,1482637147,1,3679),(121,2,109,0,12876,'body',0,3681,652,3679,1482637147,1,3680),(121,2,109,0,12877,'body',0,3547,653,3680,1482637147,1,3681),(121,2,109,0,12878,'body',0,3602,654,3681,1482637147,1,3547),(121,2,109,0,12879,'body',0,3682,655,3547,1482637147,1,3602),(121,2,109,0,12880,'body',0,3683,656,3602,1482637147,1,3682),(121,2,109,0,12881,'body',0,1903,657,3682,1482637147,1,3683),(121,2,109,0,12882,'body',0,3429,658,3683,1482637147,1,1903),(121,2,109,0,12883,'body',0,3564,659,1903,1482637147,1,3429),(121,2,109,0,12884,'body',0,1527,660,3429,1482637147,1,3564),(121,2,109,0,12885,'body',0,3481,661,3564,1482637147,1,1527),(121,2,109,0,12886,'body',0,3482,662,1527,1482637147,1,3481),(121,2,109,0,12887,'body',0,1553,663,3481,1482637147,1,3482),(121,2,109,0,12888,'body',0,1532,664,3482,1482637147,1,1553),(121,2,109,0,12889,'body',0,3684,665,1553,1482637147,1,1532),(121,2,109,0,12890,'body',0,3685,666,1532,1482637147,1,3684),(121,2,109,0,12891,'body',0,3686,667,3684,1482637147,1,3685),(121,2,109,0,12892,'body',0,1218,668,3685,1482637147,1,3686),(121,2,109,0,12893,'body',0,3661,669,3686,1482637147,1,1218),(121,2,109,0,12894,'body',0,3687,670,1218,1482637147,1,3661),(121,2,109,0,12895,'body',0,2385,671,3661,1482637147,1,3687),(121,2,109,0,12896,'body',0,1218,672,3687,1482637147,1,2385),(121,2,109,0,12897,'body',0,3688,673,2385,1482637147,1,1218),(121,2,109,0,12898,'body',0,3689,674,1218,1482637147,1,3688),(121,2,109,0,12899,'body',0,3683,675,3688,1482637147,1,3689),(121,2,109,0,12900,'body',0,1903,676,3689,1482637147,1,3683),(121,2,109,0,12901,'body',0,3665,677,3683,1482637147,1,1903),(121,2,109,0,12902,'body',0,3666,678,1903,1482637147,1,3665),(121,2,109,0,12903,'body',0,1189,679,3665,1482637147,1,3666),(121,2,109,0,12904,'body',0,3690,680,3666,1482637147,1,1189),(121,2,109,0,12905,'body',0,3691,681,1189,1482637147,1,3690),(121,2,109,0,12906,'body',0,1123,682,3690,1482637147,1,3691),(121,2,109,0,12907,'body',0,3686,683,3691,1482637147,1,1123),(121,2,109,0,12908,'body',0,1218,684,1123,1482637147,1,3686),(121,2,109,0,12909,'body',0,3661,685,3686,1482637147,1,1218),(121,2,109,0,12910,'body',0,2382,686,1218,1482637147,1,3661),(121,2,109,0,12911,'body',0,1912,687,3661,1482637147,1,2382),(121,2,109,0,12912,'body',0,1748,688,2382,1482637147,1,1912),(121,2,109,0,12913,'body',0,1123,689,1912,1482637147,1,1748),(121,2,109,0,12914,'body',0,3692,690,1748,1482637147,1,1123),(121,2,109,0,12915,'body',0,1125,691,1123,1482637147,1,3692),(121,2,109,0,12916,'body',0,1126,692,3692,1482637147,1,1125),(121,2,109,0,12917,'body',0,3693,693,1125,1482637147,1,1126),(121,2,109,0,12918,'body',0,2417,694,1126,1482637147,1,3693),(121,2,109,0,12919,'body',0,1120,695,3693,1482637147,1,2417),(121,2,109,0,12920,'body',0,3694,696,2417,1482637147,1,1120),(121,2,109,0,12921,'body',0,2044,697,1120,1482637147,1,3694),(121,2,109,0,12922,'body',0,3570,698,3694,1482637147,1,2044),(121,2,109,0,12923,'body',0,3460,699,2044,1482637147,1,3570),(121,2,109,0,12924,'body',0,3665,700,3570,1482637147,1,3460),(121,2,109,0,12925,'body',0,3666,701,3460,1482637147,1,3665),(121,2,109,0,12926,'body',0,3495,702,3665,1482637147,1,3666),(121,2,109,0,12927,'body',0,1542,703,3666,1482637147,1,3495),(121,2,109,0,12928,'body',0,3695,704,3495,1482637147,1,1542),(121,2,109,0,12929,'body',0,3477,705,1542,1482637147,1,3695),(121,2,109,0,12930,'body',0,3625,706,3695,1482637147,1,3477),(121,2,109,0,12931,'body',0,1553,707,3477,1482637147,1,3625),(121,2,109,0,12932,'body',0,3696,708,3625,1482637147,1,1553),(121,2,109,0,12933,'body',0,3697,709,1553,1482637147,1,3696),(121,2,109,0,12934,'body',0,1801,710,3696,1482637147,1,3697),(121,2,109,0,12935,'body',0,3432,711,3697,1482637147,1,1801),(121,2,109,0,12936,'body',0,3698,712,1801,1482637147,1,3432),(121,2,109,0,12937,'body',0,3602,713,3432,1482637147,1,3698),(121,2,109,0,12938,'body',0,1527,714,3698,1482637147,1,3602),(121,2,109,0,12939,'body',0,3611,715,3602,1482637147,1,1527),(121,2,109,0,12940,'body',0,3427,716,1527,1482637147,1,3611),(121,2,109,0,12941,'body',0,952,717,3611,1482637147,1,3427),(121,2,109,0,12942,'body',0,3612,718,3427,1482637147,1,952),(121,2,109,0,12943,'body',0,3613,719,952,1482637147,1,3612),(121,2,109,0,12944,'body',0,3424,720,3612,1482637147,1,3613),(121,2,109,0,12945,'body',0,3699,721,3613,1482637147,1,3424),(121,2,109,0,12946,'body',0,3559,722,3424,1482637147,1,3699),(121,2,109,0,12947,'body',0,1553,723,3699,1482637147,1,3559),(121,2,109,0,12948,'body',0,3700,724,3559,1482637147,1,1553),(121,2,109,0,12949,'body',0,3701,725,1553,1482637147,1,3700),(121,2,109,0,12950,'body',0,3702,726,3700,1482637147,1,3701),(121,2,109,0,12951,'body',0,2390,727,3701,1482637147,1,3702),(121,2,109,0,12952,'body',0,1125,728,3702,1482637147,1,2390),(121,2,109,0,12953,'body',0,1126,729,2390,1482637147,1,1125),(121,2,109,0,12954,'body',0,1817,730,1125,1482637147,1,1126),(121,2,109,0,12955,'body',0,1818,731,1126,1482637147,1,1817),(121,2,109,0,12956,'body',0,3703,732,1817,1482637147,1,1818),(121,2,109,0,12957,'body',0,3704,733,1818,1482637147,1,3703),(121,2,109,0,12958,'body',0,3424,734,3703,1482637147,1,3704),(121,2,109,0,12959,'body',0,3453,735,3704,1482637147,1,3424),(121,2,109,0,12960,'body',0,3650,736,3424,1482637147,1,3453),(121,2,109,0,12961,'body',0,1527,737,3453,1482637147,1,3650),(121,2,109,0,12962,'body',0,814,738,3650,1482637147,1,1527),(121,2,109,0,12963,'body',0,3455,739,1527,1482637147,1,814),(121,2,109,0,12964,'body',0,3562,740,814,1482637147,1,3455),(121,2,109,0,12965,'body',0,3705,741,3455,1482637147,1,3562),(121,2,109,0,12966,'body',0,1125,742,3562,1482637147,1,3705),(121,2,109,0,12967,'body',0,3706,743,3705,1482637147,1,1125),(121,2,109,0,12968,'body',0,3435,744,1125,1482637147,1,3706),(121,2,109,0,12969,'body',0,1527,745,3706,1482637147,1,3435),(121,2,109,0,12970,'body',0,3615,746,3435,1482637147,1,1527),(121,2,109,0,12971,'body',0,3706,747,1527,1482637147,1,3615),(121,2,109,0,12972,'body',0,3683,748,3615,1482637147,1,3706),(121,2,109,0,12973,'body',0,3424,749,3706,1482637147,1,3683),(121,2,109,0,12974,'body',0,3665,750,3683,1482637147,1,3424),(121,2,109,0,12975,'body',0,3666,751,3424,1482637147,1,3665),(121,2,109,0,12976,'body',0,3707,752,3665,1482637147,1,3666),(121,2,109,0,12977,'body',0,1230,753,3666,1482637147,1,3707),(121,2,109,0,12978,'body',0,3708,754,3707,1482637147,1,1230),(121,2,109,0,12979,'body',0,3619,755,1230,1482637147,1,3708),(121,2,109,0,12980,'body',0,3709,756,3708,1482637147,1,3619),(121,2,109,0,12981,'body',0,3555,757,3619,1482637147,1,3709),(121,2,109,0,12982,'body',0,1527,758,3709,1482637147,1,3555),(121,2,109,0,12983,'body',0,3478,759,3555,1482637147,1,1527),(121,2,109,0,12984,'body',0,3479,760,1527,1482637147,1,3478),(121,2,109,0,12985,'body',0,1515,761,3478,1482637147,1,3479),(121,2,109,0,12986,'body',0,3710,762,3479,1482637147,1,1515),(121,2,109,0,12987,'body',0,1573,763,1515,1482637147,1,3710),(121,2,109,0,12988,'body',0,814,764,3710,1482637147,1,1573),(121,2,109,0,12989,'body',0,3711,765,1573,1482637147,1,814),(121,2,109,0,12990,'body',0,1553,766,814,1482637147,1,3711),(121,2,109,0,12991,'body',0,1801,767,3711,1482637147,1,1553),(121,2,109,0,12992,'body',0,3712,768,1553,1482637147,1,1801),(121,2,109,0,12993,'body',0,1544,769,1801,1482637147,1,3712),(121,2,109,0,12994,'body',0,1557,770,3712,1482637147,1,1544),(121,2,109,0,12995,'body',0,3713,771,1544,1482637147,1,1557),(121,2,109,0,12996,'body',0,1524,772,1557,1482637147,1,3713),(121,2,109,0,12997,'body',0,3714,773,3713,1482637147,1,1524),(121,2,109,0,12998,'body',0,3715,774,1524,1482637147,1,3714),(121,2,109,0,12999,'body',0,3716,775,3714,1482637147,1,3715),(121,2,109,0,13000,'body',0,3717,776,3715,1482637147,1,3716),(121,2,109,0,13001,'body',0,3718,777,3716,1482637147,1,3717),(121,2,109,0,13002,'body',0,3445,778,3717,1482637147,1,3718),(121,2,109,0,13003,'body',0,1549,779,3718,1482637147,1,3445),(121,2,109,0,13004,'body',0,1544,780,3445,1482637147,1,1549),(121,2,109,0,13005,'body',0,3719,781,1549,1482637147,1,1544),(121,2,109,0,13006,'body',0,3491,782,1544,1482637147,1,3719),(121,2,109,0,13007,'body',0,3720,783,3719,1482637147,1,3491),(121,2,109,0,13008,'body',0,1524,784,3491,1482637147,1,3720),(121,2,109,0,13009,'body',0,3489,785,3720,1482637147,1,1524),(121,2,109,0,13010,'body',0,1527,786,1524,1482637147,1,3489),(121,2,109,0,13011,'body',0,3721,787,3489,1482637147,1,1527),(121,2,109,0,13012,'body',0,1553,788,1527,1482637147,1,3721),(121,2,109,0,13013,'body',0,3722,789,3721,1482637147,1,1553),(121,2,109,0,13014,'body',0,1511,790,1553,1482637147,1,3722),(121,2,109,0,13015,'body',0,2042,791,3722,1482637147,1,1511),(121,2,109,0,13016,'body',0,3709,792,1511,1482637147,1,2042),(121,2,109,0,13017,'body',0,3723,793,2042,1482637147,1,3709),(121,2,109,0,13018,'body',0,3519,794,3709,1482637147,1,3723),(121,2,109,0,13019,'body',0,1553,795,3723,1482637147,1,3519),(121,2,109,0,13020,'body',0,3563,796,3519,1482637147,1,1553),(121,2,109,0,13021,'body',0,3559,797,1553,1482637147,1,3563),(121,2,109,0,13022,'body',0,3719,798,3563,1482637147,1,3559),(121,2,109,0,13023,'body',0,3720,799,3559,1482637147,1,3719),(121,2,109,0,13024,'body',0,3724,800,3719,1482637147,1,3720),(121,2,109,0,13025,'body',0,3725,801,3720,1482637147,1,3724),(121,2,109,0,13026,'body',0,3499,802,3724,1482637147,1,3725),(121,2,109,0,13027,'body',0,3709,803,3725,1482637147,1,3499),(121,2,109,0,13028,'body',0,3453,804,3499,1482637147,1,3709),(121,2,109,0,13029,'body',0,3650,805,3709,1482637147,1,3453),(121,2,109,0,13030,'body',0,1527,806,3453,1482637147,1,3650),(121,2,109,0,13031,'body',0,3455,807,3650,1482637147,1,1527),(121,2,109,0,13032,'body',0,1549,808,1527,1482637147,1,3455),(121,2,109,0,13033,'body',0,3720,809,3455,1482637147,1,1549),(121,2,109,0,13034,'body',0,3724,810,1549,1482637147,1,3720),(121,2,109,0,13035,'body',0,3726,811,3720,1482637147,1,3724),(121,2,109,0,13036,'body',0,3540,812,3724,1482637147,1,3726),(121,2,109,0,13037,'body',0,1125,813,3726,1482637147,1,3540),(121,2,109,0,13038,'body',0,2044,814,3540,1482637147,1,1125),(121,2,109,0,13039,'body',0,3727,815,1125,1482637147,1,2044),(121,2,109,0,13040,'body',0,985,816,2044,1482637147,1,3727),(121,2,109,0,13041,'body',0,3728,817,3727,1482637147,1,985),(121,2,109,0,13042,'body',0,1123,818,985,1482637147,1,3728),(121,2,109,0,13043,'body',0,2110,819,3728,1482637147,1,1123),(121,2,109,0,13044,'body',0,3729,820,1123,1482637147,1,2110),(121,2,109,0,13045,'body',0,1125,821,2110,1482637147,1,3729),(121,2,109,0,13046,'body',0,1817,822,3729,1482637147,1,1125),(121,2,109,0,13047,'body',0,2390,823,1125,1482637147,1,1817),(121,2,109,0,13048,'body',0,3730,824,1817,1482637147,1,2390),(121,2,109,0,13049,'body',0,1123,825,2390,1482637147,1,3730),(121,2,109,0,13050,'body',0,3731,826,3730,1482637147,1,1123),(121,2,109,0,13051,'body',0,1145,827,1123,1482637147,1,3731),(121,2,109,0,13052,'body',0,1126,828,3731,1482637147,1,1145),(121,2,109,0,13053,'body',0,3732,829,1145,1482637147,1,1126),(121,2,109,0,13054,'body',0,985,830,1126,1482637147,1,3732),(121,2,109,0,13055,'body',0,1121,831,3732,1482637147,1,985),(121,2,109,0,13056,'body',0,3733,832,985,1482637147,1,1121),(121,2,109,0,13057,'body',0,1169,833,1121,1482637147,1,3733),(121,2,109,0,13058,'body',0,3734,834,3733,1482637147,1,1169),(121,2,109,0,13059,'body',0,3735,835,1169,1482637147,1,3734),(121,2,109,0,13060,'body',0,1911,836,3734,1482637147,1,3735),(121,2,109,0,13061,'body',0,3736,837,3735,1482637147,1,1911),(121,2,109,0,13062,'body',0,3737,838,1911,1482637147,1,3736),(121,2,109,0,13063,'body',0,3738,839,3736,1482637147,1,3737),(121,2,109,0,13064,'body',0,992,840,3737,1482637147,1,3738),(121,2,109,0,13065,'body',0,3739,841,3738,1482637147,1,992),(121,2,109,0,13066,'body',0,2042,842,992,1482637147,1,3739),(121,2,109,0,13067,'body',0,992,843,3739,1482637147,1,2042),(121,2,109,0,13068,'body',0,3740,844,2042,1482637147,1,992),(121,2,109,0,13069,'body',0,3741,845,992,1482637147,1,3740),(121,2,109,0,13070,'body',0,3460,846,3740,1482637147,1,3741),(121,2,109,0,13071,'body',0,3727,847,3741,1482637147,1,3460),(121,2,109,0,13072,'body',0,1121,848,3460,1482637147,1,3727),(121,2,109,0,13073,'body',0,1209,849,3727,1482637147,1,1121),(121,2,109,0,13074,'body',0,1169,850,1121,1482637147,1,1209),(121,2,109,0,13075,'body',0,2110,851,1209,1482637147,1,1169),(121,2,109,0,13076,'body',0,3742,852,1169,1482637147,1,2110),(121,2,109,0,13077,'body',0,1125,853,2110,1482637147,1,3742),(121,2,109,0,13078,'body',0,1817,854,3742,1482637147,1,1125),(121,2,109,0,13079,'body',0,2390,855,1125,1482637147,1,1817),(121,2,109,0,13080,'body',0,3730,856,1817,1482637147,1,2390),(121,2,109,0,13081,'body',0,1123,857,2390,1482637147,1,3730),(121,2,109,0,13082,'body',0,3731,858,3730,1482637147,1,1123),(121,2,109,0,13083,'body',0,1145,859,1123,1482637147,1,3731),(121,2,109,0,13084,'body',0,1126,860,3731,1482637147,1,1145),(121,2,109,0,13085,'body',0,3732,861,1145,1482637147,1,1126),(121,2,109,0,13086,'body',0,985,862,1126,1482637147,1,3732),(121,2,109,0,13087,'body',0,1121,863,3732,1482637147,1,985),(121,2,109,0,13088,'body',0,3733,864,985,1482637147,1,1121),(121,2,109,0,13089,'body',0,1169,865,1121,1482637147,1,3733),(121,2,109,0,13090,'body',0,3734,866,3733,1482637147,1,1169),(121,2,109,0,13091,'body',0,3735,867,1169,1482637147,1,3734),(121,2,109,0,13092,'body',0,1911,868,3734,1482637147,1,3735),(121,2,109,0,13093,'body',0,3736,869,3735,1482637147,1,1911),(121,2,109,0,13094,'body',0,3737,870,1911,1482637147,1,3736),(121,2,109,0,13095,'body',0,3738,871,3736,1482637147,1,3737),(121,2,109,0,13096,'body',0,994,872,3737,1482637147,1,3738),(121,2,109,0,13097,'body',0,3739,873,3738,1482637147,1,994),(121,2,109,0,13098,'body',0,2042,874,994,1482637147,1,3739),(121,2,109,0,13099,'body',0,994,875,3739,1482637147,1,2042),(121,2,109,0,13100,'body',0,3441,876,2042,1482637147,1,994),(121,2,109,0,13101,'body',0,3741,877,994,1482637147,1,3441),(121,2,109,0,13102,'body',0,3460,878,3441,1482637147,1,3741),(121,2,109,0,13103,'body',0,3727,879,3741,1482637147,1,3460),(121,2,109,0,13104,'body',0,985,880,3460,1482637147,1,3727),(121,2,109,0,13105,'body',0,1828,881,3727,1482637147,1,985),(121,2,109,0,13106,'body',0,3743,882,985,1482637147,1,1828),(121,2,109,0,13107,'body',0,1123,883,1828,1482637147,1,3743),(121,2,109,0,13108,'body',0,1828,884,3743,1482637147,1,1123),(121,2,109,0,13109,'body',0,1987,885,1123,1482637147,1,1828),(121,2,109,0,13110,'body',0,3730,886,1828,1482637147,1,1987),(121,2,109,0,13111,'body',0,1123,887,1987,1482637147,1,3730),(121,2,109,0,13112,'body',0,3731,888,3730,1482637147,1,1123),(121,2,109,0,13113,'body',0,1145,889,1123,1482637147,1,3731),(121,2,109,0,13114,'body',0,1126,890,3731,1482637147,1,1145),(121,2,109,0,13115,'body',0,3732,891,1145,1482637147,1,1126),(121,2,109,0,13116,'body',0,985,892,1126,1482637147,1,3732),(121,2,109,0,13117,'body',0,1121,893,3732,1482637147,1,985),(121,2,109,0,13118,'body',0,3733,894,985,1482637147,1,1121),(121,2,109,0,13119,'body',0,1169,895,1121,1482637147,1,3733),(121,2,109,0,13120,'body',0,3734,896,3733,1482637147,1,1169),(121,2,109,0,13121,'body',0,3735,897,1169,1482637147,1,3734),(121,2,109,0,13122,'body',0,1911,898,3734,1482637147,1,3735),(121,2,109,0,13123,'body',0,3736,899,3735,1482637147,1,1911),(121,2,109,0,13124,'body',0,3737,900,1911,1482637147,1,3736),(121,2,109,0,13125,'body',0,3739,901,3736,1482637147,1,3737),(121,2,109,0,13126,'body',0,2042,902,3737,1482637147,1,3739),(121,2,109,0,13127,'body',0,3744,903,3739,1482637147,1,2042),(121,2,109,0,13128,'body',0,3745,904,2042,1482637147,1,3744),(121,2,109,0,13129,'body',0,3460,905,3744,1482637147,1,3745),(121,2,109,0,13130,'body',0,3727,906,3745,1482637147,1,3460),(121,2,109,0,13131,'body',0,3525,907,3460,1482637147,1,3727),(121,2,109,0,13132,'body',0,3526,908,3727,1482637147,1,3525),(121,2,109,0,13133,'body',0,1553,909,3525,1482637147,1,3526),(121,2,109,0,13134,'body',0,3642,910,3526,1482637147,1,1553),(121,2,109,0,13135,'body',0,3451,911,1553,1482637147,1,3642),(121,2,109,0,13136,'body',0,1125,912,3642,1482637147,1,3451),(121,2,109,0,13137,'body',0,3746,913,3451,1482637147,1,1125),(121,2,109,0,13138,'body',0,1126,914,1125,1482637147,1,3746),(121,2,109,0,13139,'body',0,3747,915,3746,1482637147,1,1126),(121,2,109,0,13140,'body',0,3748,916,1126,1482637147,1,3747),(121,2,109,0,13141,'body',0,3749,917,3747,1482637147,1,3748),(121,2,109,0,13142,'body',0,1169,918,3748,1482637147,1,3749),(121,2,109,0,13143,'body',0,3750,919,3749,1482637147,1,1169),(121,2,109,0,13144,'body',0,3751,920,1169,1482637147,1,3750),(121,2,109,0,13145,'body',0,1123,921,3750,1482637147,1,3751),(121,2,109,0,13146,'body',0,3752,922,3751,1482637147,1,1123),(121,2,109,0,13147,'body',0,3753,923,1123,1482637147,1,3752),(121,2,109,0,13148,'body',0,3640,924,3752,1482637147,1,3753),(121,2,109,0,13149,'body',0,2478,925,3753,1482637147,1,3640),(121,2,109,0,13150,'body',0,1126,926,3640,1482637147,1,2478),(121,2,109,0,13151,'body',0,3754,927,2478,1482637147,1,1126),(121,2,109,0,13152,'body',0,3597,928,1126,1482637147,1,3754),(121,2,109,0,13153,'body',0,3755,929,3754,1482637147,1,3597),(121,2,109,0,13154,'body',0,3756,930,3597,1482637147,1,3755),(121,2,109,0,13155,'body',0,1850,931,3755,1482637147,1,3756),(121,2,109,0,13156,'body',0,3757,932,3756,1482637147,1,1850),(121,2,109,0,13157,'body',0,3758,933,1850,1482637147,1,3757),(121,2,109,0,13158,'body',0,3759,934,3757,1482637147,1,3758),(121,2,109,0,13159,'body',0,3760,935,3758,1482637147,1,3759),(121,2,109,0,13160,'body',0,3761,936,3759,1482637147,1,3760),(121,2,109,0,13161,'body',0,995,937,3760,1482637147,1,3761),(121,2,109,0,13162,'body',0,3762,938,3761,1482637147,1,995),(121,2,109,0,13163,'body',0,3763,939,995,1482637147,1,3762),(121,2,109,0,13164,'body',0,3459,940,3762,1482637147,1,3763),(121,2,109,0,13165,'body',0,3764,941,3763,1482637147,1,3459),(121,2,109,0,13166,'body',0,3460,942,3459,1482637147,1,3764),(121,2,109,0,13167,'body',0,3727,943,3764,1482637147,1,3460),(121,2,109,0,13168,'body',0,3661,944,3460,1482637147,1,3727),(121,2,109,0,13169,'body',0,1553,945,3727,1482637147,1,3661),(121,2,109,0,13170,'body',0,3554,946,3661,1482637147,1,1553),(121,2,109,0,13171,'body',0,3662,947,1553,1482637147,1,3554),(121,2,109,0,13172,'body',0,1521,948,3554,1482637147,1,3662),(121,2,109,0,13173,'body',0,1522,949,3662,1482637147,1,1521),(121,2,109,0,13174,'body',0,3451,950,1521,1482637147,1,1522),(121,2,109,0,13175,'body',0,1125,951,1522,1482637147,1,3451),(121,2,109,0,13176,'body',0,3765,952,3451,1482637147,1,1125),(121,2,109,0,13177,'body',0,3758,953,1125,1482637147,1,3765),(121,2,109,0,13178,'body',0,3766,954,3765,1482637147,1,3758),(121,2,109,0,13179,'body',0,3569,955,3758,1482637147,1,3766),(121,2,109,0,13180,'body',0,1553,956,3766,1482637147,1,3569),(121,2,109,0,13181,'body',0,3654,957,3569,1482637147,1,1553),(121,2,109,0,13182,'body',0,3540,958,1553,1482637147,1,3654),(121,2,109,0,13183,'body',0,3602,959,3654,1482637147,1,3540),(121,2,109,0,13184,'body',0,3767,960,3540,1482637147,1,3602),(121,2,109,0,13185,'body',0,3768,961,3602,1482637147,1,3767),(121,2,109,0,13186,'body',0,3602,962,3767,1482637147,1,3768),(121,2,109,0,13187,'body',0,1527,963,3768,1482637147,1,3602),(121,2,109,0,13188,'body',0,3434,964,3602,1482637147,1,1527),(121,2,109,0,13189,'body',0,3552,965,1527,1482637147,1,3434),(121,2,109,0,13190,'body',0,3584,966,3434,1482637147,1,3552),(121,2,109,0,13191,'body',0,3769,967,3552,1482637147,1,3584),(121,2,109,0,13192,'body',0,1126,968,3584,1482637147,1,3769),(121,2,109,0,13193,'body',0,2010,969,3769,1482637147,1,1126),(121,2,109,0,13194,'body',0,3770,970,1126,1482637147,1,2010),(121,2,109,0,13195,'body',0,3515,971,2010,1482637147,1,3770),(121,2,109,0,13196,'body',0,3771,972,3770,1482637147,1,3515),(121,2,109,0,13197,'body',0,3772,973,3515,1482637147,1,3771),(121,2,109,0,13198,'body',0,1125,974,3771,1482637147,1,3772),(121,2,109,0,13199,'body',0,2044,975,3772,1482637147,1,1125),(121,2,109,0,13200,'body',0,1125,976,1125,1482637147,1,2044),(121,2,109,0,13201,'body',0,3773,977,2044,1482637147,1,1125),(121,2,109,0,13202,'body',0,3774,978,1125,1482637147,1,3773),(121,2,109,0,13203,'body',0,3446,979,3773,1482637147,1,3774),(121,2,109,0,13204,'body',0,2032,980,3774,1482637147,1,3446),(121,2,109,0,13205,'body',0,2044,981,3446,1482637147,1,2032),(121,2,109,0,13206,'body',0,1553,982,2032,1482637147,1,2044),(121,2,109,0,13207,'body',0,2032,983,2044,1482637147,1,1553),(121,2,109,0,13208,'body',0,3775,984,1553,1482637147,1,2032),(121,2,109,0,13209,'body',0,3602,985,2032,1482637147,1,3775),(121,2,109,0,13210,'body',0,3776,986,3775,1482637147,1,3602),(121,2,109,0,13211,'body',0,1123,987,3602,1482637147,1,3776),(121,2,109,0,13212,'body',0,3777,988,3776,1482637147,1,1123),(121,2,109,0,13213,'body',0,3661,989,1123,1482637147,1,3777),(121,2,109,0,13214,'body',0,3778,990,3777,1482637147,1,3661),(121,2,109,0,13215,'body',0,1123,991,3661,1482637147,1,3778),(121,2,109,0,13216,'body',0,3779,992,3778,1482637147,1,1123),(121,2,109,0,13217,'body',0,3780,993,1123,1482637147,1,3779),(121,2,109,0,13218,'body',0,3540,994,3779,1482637147,1,3780),(121,2,109,0,13219,'body',0,1125,995,3780,1482637147,1,3540),(121,2,109,0,13220,'body',0,3781,996,3540,1482637147,1,1125),(121,2,109,0,13221,'body',0,3768,997,1125,1482637147,1,3781),(121,2,109,0,13222,'body',0,3782,998,3781,1482637147,1,3768),(121,2,109,0,13223,'body',0,0,999,3768,1482637147,1,3782),(121,2,109,0,13224,'body',0,1123,1000,0,1482637147,1,3569),(121,2,109,0,13225,'body',0,3783,1001,3569,1482637147,1,1123),(121,2,109,0,13226,'body',0,1125,1002,1123,1482637147,1,3783),(121,2,109,0,13227,'body',0,3784,1003,3783,1482637147,1,1125),(121,2,109,0,13228,'body',0,1123,1004,1125,1482637147,1,3784),(121,2,109,0,13229,'body',0,3785,1005,3784,1482637147,1,1123),(121,2,109,0,13230,'body',0,992,1006,1123,1482637147,1,3785),(121,2,109,0,13231,'body',0,995,1007,3785,1482637147,1,992),(121,2,109,0,13232,'body',0,3786,1008,992,1482637147,1,995),(121,2,109,0,13233,'body',0,3540,1009,995,1482637147,1,3786),(121,2,109,0,13234,'body',0,3787,1010,3786,1482637147,1,3540),(121,2,109,0,13235,'body',0,3788,1011,3540,1482637147,1,3787),(121,2,109,0,13236,'body',0,3789,1012,3787,1482637147,1,3788),(121,2,109,0,13237,'body',0,3777,1013,3788,1482637147,1,3789),(121,2,109,0,13238,'body',0,1814,1014,3789,1482637147,1,3777),(121,2,109,0,13239,'body',0,1123,1015,3777,1482637147,1,1814),(121,2,109,0,13240,'body',0,3790,1016,1814,1482637147,1,1123),(121,2,109,0,13241,'body',0,1151,1017,1123,1482637147,1,3790),(121,2,109,0,13242,'body',0,3424,1018,3790,1482637147,1,1151),(121,2,109,0,13243,'body',0,3791,1019,1151,1482637147,1,3424),(121,2,109,0,13244,'body',0,3745,1020,3424,1482637147,1,3791),(121,2,109,0,13245,'body',0,2036,1021,3791,1482637147,1,3745),(121,2,109,0,13246,'body',0,3792,1022,3745,1482637147,1,2036),(121,2,109,0,13247,'body',0,2138,1023,2036,1482637147,1,3792),(121,2,109,0,13248,'body',0,3421,1024,3792,1482637147,1,2138),(121,2,109,0,13249,'body',0,3793,1025,2138,1482637147,1,3421),(121,2,109,0,13250,'body',0,3794,1026,3421,1482637147,1,3793),(121,2,109,0,13251,'body',0,1536,1027,3793,1482637147,1,3794),(121,2,109,0,13252,'body',0,3794,1028,3794,1482637147,1,1536),(121,2,109,0,13253,'body',0,1151,1029,1536,1482637147,1,3794),(121,2,109,0,13254,'body',0,2036,1030,3794,1482637147,1,1151),(121,2,109,0,13255,'body',0,3792,1031,1151,1482637147,1,2036),(121,2,109,0,13256,'body',0,2138,1032,2036,1482637147,1,3792),(121,2,109,0,13257,'body',0,3421,1033,3792,1482637147,1,2138),(121,2,109,0,13258,'body',0,3793,1034,2138,1482637147,1,3421),(121,2,109,0,13259,'body',0,3795,1035,3421,1482637147,1,3793),(121,2,109,0,13260,'body',0,1536,1036,3793,1482637147,1,3795),(121,2,109,0,13261,'body',0,3795,1037,3795,1482637147,1,1536),(121,2,109,0,13262,'body',0,3459,1038,1536,1482637147,1,3795),(121,2,109,0,13263,'body',0,2036,1039,3795,1482637147,1,3459),(121,2,109,0,13264,'body',0,3792,1040,3459,1482637147,1,2036),(121,2,109,0,13265,'body',0,2138,1041,2036,1482637147,1,3792),(121,2,109,0,13266,'body',0,3421,1042,3792,1482637147,1,2138),(121,2,109,0,13267,'body',0,3793,1043,2138,1482637147,1,3421),(121,2,109,0,13268,'body',0,3796,1044,3421,1482637147,1,3793),(121,2,109,0,13269,'body',0,2140,1045,3793,1482637147,1,3796),(121,2,109,0,13270,'body',0,2036,1046,3796,1482637147,1,2140),(121,2,109,0,13271,'body',0,3792,1047,2140,1482637147,1,2036),(121,2,109,0,13272,'body',0,2138,1048,2036,1482637147,1,3792),(121,2,109,0,13273,'body',0,3421,1049,3792,1482637147,1,2138),(121,2,109,0,13274,'body',0,3793,1050,2138,1482637147,1,3421),(121,2,109,0,13275,'body',0,3797,1051,3421,1482637147,1,3793),(121,2,109,0,13276,'body',0,3427,1052,3793,1482637147,1,3797),(121,2,109,0,13277,'body',0,3798,1053,3797,1482637147,1,3427),(121,2,109,0,13278,'body',0,3799,1054,3427,1482637147,1,3798),(121,2,109,0,13279,'body',0,816,1055,3798,1482637147,1,3799),(121,2,109,0,13280,'body',0,3430,1056,3799,1482637147,1,816),(121,2,109,0,13281,'body',0,3429,1057,816,1482637147,1,3430),(121,2,109,0,13282,'body',0,1977,1058,3430,1482637147,1,3429),(121,2,109,0,13283,'body',0,1527,1059,3429,1482637147,1,1977),(121,2,109,0,13284,'body',0,3434,1060,1977,1482637147,1,1527),(121,2,109,0,13285,'body',0,1801,1061,1527,1482637147,1,3434),(121,2,109,0,13286,'body',0,3800,1062,3434,1482637147,1,1801),(121,2,109,0,13287,'body',0,3551,1063,1801,1482637147,1,3800),(121,2,109,0,13288,'body',0,1527,1064,3800,1482637147,1,3551),(121,2,109,0,13289,'body',0,3434,1065,3551,1482637147,1,1527),(121,2,109,0,13290,'body',0,3552,1066,1527,1482637147,1,3434),(121,2,109,0,13291,'body',0,3801,1067,3434,1482637147,1,3552),(121,2,109,0,13292,'body',0,1553,1068,3552,1482637147,1,3801),(121,2,109,0,13293,'body',0,3555,1069,3801,1482637147,1,1553),(121,2,109,0,13294,'body',0,1527,1070,1553,1482637147,1,3555),(121,2,109,0,13295,'body',0,3434,1071,3555,1482637147,1,1527),(121,2,109,0,13296,'body',0,1801,1072,1527,1482637147,1,3434),(121,2,109,0,13297,'body',0,3802,1073,3434,1482637147,1,1801),(121,2,109,0,13298,'body',0,1573,1074,1801,1482637147,1,3802),(121,2,109,0,13299,'body',0,3550,1075,3802,1482637147,1,1573),(121,2,109,0,13300,'body',0,3557,1076,1573,1482637147,1,3550),(121,2,109,0,13301,'body',0,1125,1077,3550,1482637147,1,3557),(121,2,109,0,13302,'body',0,3558,1078,3557,1482637147,1,1125),(121,2,109,0,13303,'body',0,3559,1079,1125,1482637147,1,3558),(121,2,109,0,13304,'body',0,3803,1080,3558,1482637147,1,3559),(121,2,109,0,13305,'body',0,3428,1081,3559,1482637147,1,3803),(121,2,109,0,13306,'body',0,3799,1082,3803,1482637147,1,3428),(121,2,109,0,13307,'body',0,816,1083,3428,1482637147,1,3799),(121,2,109,0,13308,'body',0,3804,1084,3799,1482637147,1,816),(121,2,109,0,13309,'body',0,3432,1085,816,1482637147,1,3804),(121,2,109,0,13310,'body',0,3584,1086,3804,1482637147,1,3432),(121,2,109,0,13311,'body',0,1125,1087,3432,1482637147,1,3584),(121,2,109,0,13312,'body',0,2182,1088,3584,1482637147,1,1125),(121,2,109,0,13313,'body',0,3805,1089,1125,1482637147,1,2182),(121,2,109,0,13314,'body',0,1125,1090,2182,1482637147,1,3805),(121,2,109,0,13315,'body',0,3558,1091,3805,1482637147,1,1125),(121,2,109,0,13316,'body',0,3559,1092,1125,1482637147,1,3558),(121,2,109,0,13317,'body',0,3445,1093,3558,1482637147,1,3559),(121,2,109,0,13318,'body',0,2182,1094,3559,1482637147,1,3445),(121,2,109,0,13319,'body',0,3424,1095,3445,1482637147,1,2182),(121,2,109,0,13320,'body',0,3806,1096,2182,1482637147,1,3424),(121,2,109,0,13321,'body',0,3807,1097,3424,1482637147,1,3806),(121,2,109,0,13322,'body',0,1553,1098,3806,1482637147,1,3807),(121,2,109,0,13323,'body',0,3428,1099,3807,1482637147,1,1553),(121,2,109,0,13324,'body',0,3808,1100,1553,1482637147,1,3428),(121,2,109,0,13325,'body',0,3799,1101,3428,1482637147,1,3808),(121,2,109,0,13326,'body',0,816,1102,3808,1482637147,1,3799),(121,2,109,0,13327,'body',0,1151,1103,3799,1482637147,1,816),(121,2,109,0,13328,'body',0,3805,1104,816,1482637147,1,1151),(121,2,109,0,13329,'body',0,3432,1105,1151,1482637147,1,3805),(121,2,109,0,13330,'body',0,3809,1106,3805,1482637147,1,3432),(121,2,109,0,13331,'body',0,3810,1107,3432,1482637147,1,3809),(121,2,109,0,13332,'body',0,3811,1108,3809,1482637147,1,3810),(121,2,109,0,13333,'body',0,1553,1109,3810,1482637147,1,3811),(121,2,109,0,13334,'body',0,3812,1110,3811,1482637147,1,1553),(121,2,109,0,13335,'body',0,3428,1111,1553,1482637147,1,3812),(121,2,109,0,13336,'body',0,3808,1112,3812,1482637147,1,3428),(121,2,109,0,13337,'body',0,3442,1113,3428,1482637147,1,3808),(121,2,109,0,13338,'body',0,3443,1114,3808,1482637147,1,3442),(121,2,109,0,13339,'body',0,3813,1115,3442,1482637147,1,3443),(121,2,109,0,13340,'body',0,816,1116,3443,1482637147,1,3813),(121,2,109,0,13341,'body',0,995,1117,3813,1482637147,1,816),(121,2,109,0,13342,'body',0,1570,1118,816,1482637147,1,995),(121,2,109,0,13343,'body',0,3445,1119,995,1482637147,1,1570),(121,2,109,0,13344,'body',0,992,1120,1570,1482637147,1,3445),(121,2,109,0,13345,'body',0,2140,1121,3445,1482637147,1,992),(121,2,109,0,13346,'body',0,3457,1122,992,1482637147,1,2140),(121,2,109,0,13347,'body',0,1544,1123,2140,1482637147,1,3457),(121,2,109,0,13348,'body',0,992,1124,3457,1482637147,1,1544),(121,2,109,0,13349,'body',0,2140,1125,1544,1482637147,1,992),(121,2,109,0,13350,'body',0,3460,1126,992,1482637147,1,2140),(121,2,109,0,13351,'body',0,3559,1127,2140,1482637147,1,3460),(121,2,109,0,13352,'body',0,3814,1128,3460,1482637147,1,3559),(121,2,109,0,13353,'body',0,3558,1129,3559,1482637147,1,3814),(121,2,109,0,13354,'body',0,3815,1130,3814,1482637147,1,3558),(121,2,109,0,13355,'body',0,1549,1131,3558,1482637147,1,3815),(121,2,109,0,13356,'body',0,3815,1132,3815,1482637147,1,1549),(121,2,109,0,13357,'body',0,3580,1133,1549,1482637147,1,3815),(121,2,109,0,13358,'body',0,3816,1134,3815,1482637147,1,3580),(121,2,109,0,13359,'body',0,3579,1135,3580,1482637147,1,3816),(121,2,109,0,13360,'body',0,3817,1136,3816,1482637147,1,3579),(121,2,109,0,13361,'body',0,3666,1137,3579,1482637147,1,3817),(121,2,109,0,13362,'body',0,1542,1138,3817,1482637147,1,3666),(121,2,109,0,13363,'body',0,3818,1139,3666,1482637147,1,1542),(121,2,109,0,13364,'body',0,1542,1140,1542,1482637147,1,3818),(121,2,109,0,13365,'body',0,3610,1141,3818,1482637147,1,1542),(121,2,109,0,13366,'body',0,1527,1142,1542,1482637147,1,3610),(121,2,109,0,13367,'body',0,814,1143,3610,1482637147,1,1527),(121,2,109,0,13368,'body',0,3819,1144,1527,1482637147,1,814),(121,2,109,0,13369,'body',0,3579,1145,814,1482637147,1,3819),(121,2,109,0,13370,'body',0,3559,1146,3819,1482637147,1,3579),(121,2,109,0,13371,'body',0,3819,1147,3579,1482637147,1,3559),(121,2,109,0,13372,'body',0,3820,1148,3559,1482637147,1,3819),(121,2,109,0,13373,'body',0,3821,1149,3819,1482637147,1,3820),(121,2,109,0,13374,'body',0,3822,1150,3820,1482637147,1,3821),(121,2,109,0,13375,'body',0,3823,1151,3821,1482637147,1,3822),(121,2,109,0,13376,'body',0,2087,1152,3822,1482637147,1,3823),(121,2,109,0,13377,'body',0,2103,1153,3823,1482637147,1,2087),(121,2,109,0,13378,'body',0,2104,1154,2087,1482637147,1,2103),(121,2,109,0,13379,'body',0,992,1155,2103,1482637147,1,2104),(121,2,109,0,13380,'body',0,2086,1156,2104,1482637147,1,992),(121,2,109,0,13381,'body',0,2087,1157,992,1482637147,1,2086),(121,2,109,0,13382,'body',0,3439,1158,2086,1482637147,1,2087),(121,2,109,0,13383,'body',0,3440,1159,2087,1482637147,1,3439),(121,2,109,0,13384,'body',0,3824,1160,3439,1482637147,1,3440),(121,2,109,0,13385,'body',0,1514,1161,3440,1482637147,1,3824),(121,2,109,0,13386,'body',0,3825,1162,3824,1482637147,1,1514),(121,2,109,0,13387,'body',0,3826,1163,1514,1482637147,1,3825),(121,2,109,0,13388,'body',0,1125,1164,3825,1482637147,1,3826),(121,2,109,0,13389,'body',0,3827,1165,3826,1482637147,1,1125),(121,2,109,0,13390,'body',0,3584,1166,1125,1482637147,1,3827),(121,2,109,0,13391,'body',0,3426,1167,3827,1482637147,1,3584),(121,2,109,0,13392,'body',0,1553,1168,3584,1482637147,1,3426),(121,2,109,0,13393,'body',0,3427,1169,3426,1482637147,1,1553),(121,2,109,0,13394,'body',0,3428,1170,1553,1482637147,1,3427),(121,2,109,0,13395,'body',0,1531,1171,3427,1482637147,1,3428),(121,2,109,0,13396,'body',0,3828,1172,3428,1482637147,1,1531),(121,2,109,0,13397,'body',0,3489,1173,1531,1482637147,1,3828),(121,2,109,0,13398,'body',0,1527,1174,3828,1482637147,1,3489),(121,2,109,0,13399,'body',0,2044,1175,3489,1482637147,1,1527),(121,2,109,0,13400,'body',0,1553,1176,1527,1482637147,1,2044),(121,2,109,0,13401,'body',0,3806,1177,2044,1482637147,1,1553),(121,2,109,0,13402,'body',0,1527,1178,1553,1482637147,1,3806),(121,2,109,0,13403,'body',0,3435,1179,3806,1482637147,1,1527),(121,2,109,0,13404,'body',0,1527,1180,1527,1482637147,1,3435),(121,2,109,0,13405,'body',0,3436,1181,3435,1482637147,1,1527),(121,2,109,0,13406,'body',0,3433,1182,1527,1482637147,1,3436),(121,2,109,0,13407,'body',0,1125,1183,3436,1482637147,1,3433),(121,2,109,0,13408,'body',0,3828,1184,3433,1482637147,1,1125),(121,2,109,0,13409,'body',0,3489,1185,1125,1482637147,1,3828),(121,2,109,0,13410,'body',0,1527,1186,3828,1482637147,1,3489),(121,2,109,0,13411,'body',0,2044,1187,3489,1482637147,1,1527),(121,2,109,0,13412,'body',0,2554,1188,1527,1482637147,1,2044),(121,2,109,0,13413,'body',0,3829,1189,2044,1482637147,1,2554),(121,2,109,0,13414,'body',0,3830,1190,2554,1482637147,1,3829),(121,2,109,0,13415,'body',0,3422,1191,3829,1482637147,1,3830),(121,2,109,0,13416,'body',0,2044,1192,3830,1482637147,1,3422),(121,2,109,0,13417,'body',0,2138,1193,3422,1482637147,1,2044),(121,2,109,0,13418,'body',0,994,1194,2044,1482637147,1,2138),(121,2,109,0,13419,'body',0,2086,1195,2138,1482637147,1,994),(121,2,109,0,13420,'body',0,2087,1196,994,1482637147,1,2086),(121,2,109,0,13421,'body',0,3750,1197,2086,1482637147,1,2087),(121,2,109,0,13422,'body',0,3751,1198,2087,1482637147,1,3750),(121,2,109,0,13423,'body',0,3824,1199,3750,1482637147,1,3751),(121,2,109,0,13424,'body',0,2101,1200,3751,1482637147,1,3824),(121,2,109,0,13425,'body',0,3825,1201,3824,1482637147,1,2101),(121,2,109,0,13426,'body',0,3826,1202,2101,1482637147,1,3825),(121,2,109,0,13427,'body',0,3620,1203,3825,1482637147,1,3826),(121,2,109,0,13428,'body',0,3442,1204,3826,1482637147,1,3620),(121,2,109,0,13429,'body',0,3443,1205,3620,1482637147,1,3442),(121,2,109,0,13430,'body',0,1531,1206,3442,1482637147,1,3443),(121,2,109,0,13431,'body',0,3828,1207,3443,1482637147,1,1531),(121,2,109,0,13432,'body',0,3489,1208,1531,1482637147,1,3828),(121,2,109,0,13433,'body',0,1527,1209,3828,1482637147,1,3489),(121,2,109,0,13434,'body',0,2044,1210,3489,1482637147,1,1527),(121,2,109,0,13435,'body',0,1553,1211,1527,1482637147,1,2044),(121,2,109,0,13436,'body',0,3808,1212,2044,1482637147,1,1553),(121,2,109,0,13437,'body',0,1527,1213,1553,1482637147,1,3808),(121,2,109,0,13438,'body',0,3831,1214,3808,1482637147,1,1527),(121,2,109,0,13439,'body',0,3641,1215,1527,1482637147,1,3831),(121,2,109,0,13440,'body',0,1125,1216,3831,1482637147,1,3641),(121,2,109,0,13441,'body',0,3597,1217,3641,1482637147,1,1125),(121,2,109,0,13442,'body',0,3416,1218,1125,1482637147,1,3597),(121,2,109,0,13443,'body',0,1555,1219,3597,1482637147,1,3416),(121,2,109,0,13444,'body',0,3824,1220,3416,1482637147,1,1555),(121,2,109,0,13445,'body',0,1514,1221,1555,1482637147,1,3824),(121,2,109,0,13446,'body',0,3444,1222,3824,1482637147,1,1514),(121,2,109,0,13447,'body',0,3826,1223,1514,1482637147,1,3444),(121,2,109,0,13448,'body',0,1125,1224,3444,1482637147,1,3826),(121,2,109,0,13449,'body',0,3706,1225,3826,1482637147,1,1125),(121,2,109,0,13450,'body',0,3435,1226,1125,1482637147,1,3706),(121,2,109,0,13451,'body',0,1527,1227,3706,1482637147,1,3435),(121,2,109,0,13452,'body',0,3615,1228,3435,1482637147,1,1527),(121,2,109,0,13453,'body',0,2554,1229,1527,1482637147,1,3615),(121,2,109,0,13454,'body',0,2087,1230,3615,1482637147,1,2554),(121,2,109,0,13455,'body',0,3751,1231,2554,1482637147,1,2087),(121,2,109,0,13456,'body',0,3640,1232,2087,1482637147,1,3751),(121,2,109,0,13457,'body',0,3421,1233,3751,1482637147,1,3640),(121,2,109,0,13458,'body',0,995,1234,3640,1482637147,1,3421),(121,2,109,0,13459,'body',0,2086,1235,3421,1482637147,1,995),(121,2,109,0,13460,'body',0,2087,1236,995,1482637147,1,2086),(121,2,109,0,13461,'body',0,2558,1237,2086,1482637147,1,2087),(121,2,109,0,13462,'body',0,2099,1238,2087,1482637147,1,2558),(121,2,109,0,13463,'body',0,3832,1239,2558,1482637147,1,2099),(121,2,109,0,13464,'body',0,3824,1240,2099,1482637147,1,3832),(121,2,109,0,13465,'body',0,1514,1241,3832,1482637147,1,3824),(121,2,109,0,13466,'body',0,1515,1242,3824,1482637147,1,1514),(121,2,109,0,13467,'body',0,3826,1243,1514,1482637147,1,1515),(121,2,109,0,13468,'body',0,1527,1244,1515,1482637147,1,3826),(121,2,109,0,13469,'body',0,3509,1245,3826,1482637147,1,1527),(121,2,109,0,13470,'body',0,3444,1246,1527,1482637147,1,3509),(121,2,109,0,13471,'body',0,1125,1247,3509,1482637147,1,3444),(121,2,109,0,13472,'body',0,3499,1248,3444,1482637147,1,1125),(121,2,109,0,13473,'body',0,3489,1249,1125,1482637147,1,3499),(121,2,109,0,13474,'body',0,1553,1250,3499,1482637147,1,3489),(121,2,109,0,13475,'body',0,3808,1251,3489,1482637147,1,1553),(121,2,109,0,13476,'body',0,1527,1252,1553,1482637147,1,3808),(121,2,109,0,13477,'body',0,3444,1253,3808,1482637147,1,1527),(121,2,109,0,13478,'body',0,3833,1254,1527,1482637147,1,3444),(121,2,109,0,13479,'body',0,1125,1255,3444,1482637147,1,3833),(121,2,109,0,13480,'body',0,2042,1256,3833,1482637147,1,1125),(121,2,109,0,13481,'body',0,3758,1257,1125,1482637147,1,2042),(121,2,109,0,13482,'body',0,3834,1258,2042,1482637147,1,3758),(121,2,109,0,13483,'body',0,3835,1259,3758,1482637147,1,3834),(121,2,109,0,13484,'body',0,3824,1260,3834,1482637147,1,3835),(121,2,109,0,13485,'body',0,3836,1261,3835,1482637147,1,3824),(121,2,109,0,13486,'body',0,1527,1262,3824,1482637147,1,3836),(121,2,109,0,13487,'body',0,3825,1263,3836,1482637147,1,1527),(121,2,109,0,13488,'body',0,1181,1264,1527,1482637147,1,3825),(121,2,109,0,13489,'body',0,3442,1265,3825,1482637147,1,1181),(121,2,109,0,13490,'body',0,3443,1266,1181,1482637147,1,3442),(121,2,109,0,13491,'body',0,1125,1267,3442,1482637147,1,3443),(121,2,109,0,13492,'body',0,3499,1268,3443,1482637147,1,1125),(121,2,109,0,13493,'body',0,2554,1269,1125,1482637147,1,3499),(121,2,109,0,13494,'body',0,3837,1270,3499,1482637147,1,2554),(121,2,109,0,13495,'body',0,3838,1271,2554,1482637147,1,3837),(121,2,109,0,13496,'body',0,3421,1272,3837,1482637147,1,3838),(121,2,109,0,13497,'body',0,0,1273,3838,1482637147,1,3421),(4,1,147,0,13567,'name',0,0,0,0,1482887942,1,974),(182,14,151,0,13580,'title',0,3868,0,0,1482946564,1,1511),(182,14,151,0,13581,'title',0,3869,1,1511,1482946564,1,3868),(210,14,151,0,13582,'description',0,3870,2,3868,1482946564,1,3869),(210,14,151,0,13583,'description',0,0,3,3869,1482946564,1,3870),(189,18,146,0,13587,'title',0,1043,0,0,1482887849,1,1042),(189,18,146,0,13588,'title',0,1042,1,1042,1482887849,1,1043),(204,18,146,0,13589,'title_bottom',0,1043,2,1043,1482887849,1,1042),(204,18,146,0,13590,'title_bottom',0,2043,3,1042,1482887849,1,1043),(204,18,146,0,13591,'title_bottom',0,0,4,1043,1482887849,1,2043),(1,2,113,0,13616,'title',0,986,0,0,1482638992,1,985),(1,2,113,0,13617,'title',0,3890,1,985,1482638992,1,986),(121,2,113,0,13618,'body',0,1218,2,986,1482638992,1,3890),(121,2,113,0,13619,'body',0,3891,3,3890,1482638992,1,1218),(121,2,113,0,13620,'body',0,1512,4,1218,1482638992,1,3891),(121,2,113,0,13621,'body',0,2625,5,3891,1482638992,1,1512),(121,2,113,0,13622,'body',0,2575,6,1512,1482638992,1,2625),(121,2,113,0,13623,'body',0,1169,7,2625,1482638992,1,2575),(121,2,113,0,13624,'body',0,1817,8,2575,1482638992,1,1169),(121,2,113,0,13625,'body',0,2572,9,1169,1482638992,1,1817),(121,2,113,0,13626,'body',0,1218,10,1817,1482638992,1,2572),(121,2,113,0,13627,'body',0,2577,11,2572,1482638992,1,1218),(121,2,113,0,13628,'body',0,2383,12,1218,1482638992,1,2577),(121,2,113,0,13629,'body',0,2578,13,2577,1482638992,1,2383),(121,2,113,0,13630,'body',0,3892,14,2383,1482638992,1,2578),(121,2,113,0,13631,'body',0,3893,15,2578,1482638992,1,3892),(121,2,113,0,13632,'body',0,985,16,3892,1482638992,1,3893),(121,2,113,0,13633,'body',0,1828,17,3893,1482638992,1,985),(121,2,113,0,13634,'body',0,3894,18,985,1482638992,1,1828),(121,2,113,0,13635,'body',0,1123,19,1828,1482638992,1,3894),(121,2,113,0,13636,'body',0,3895,20,3894,1482638992,1,1123),(121,2,113,0,13637,'body',0,3896,21,1123,1482638992,1,3895),(121,2,113,0,13638,'body',0,2613,22,3895,1482638992,1,3896),(121,2,113,0,13639,'body',0,1230,23,3896,1482638992,1,2613),(121,2,113,0,13640,'body',0,2570,24,2613,1482638992,1,1230),(121,2,113,0,13641,'body',0,1166,25,1230,1482638992,1,2570),(121,2,113,0,13642,'body',0,3897,26,2570,1482638992,1,1166),(121,2,113,0,13643,'body',0,1827,27,1166,1482638992,1,3897),(121,2,113,0,13644,'body',0,1121,28,3897,1482638992,1,1827),(121,2,113,0,13645,'body',0,2030,29,1827,1482638992,1,1121),(121,2,113,0,13646,'body',0,1166,30,1121,1482638992,1,2030),(121,2,113,0,13647,'body',0,1126,31,2030,1482638992,1,1166),(121,2,113,0,13648,'body',0,1042,32,1166,1482638992,1,1126),(121,2,113,0,13649,'body',0,1043,33,1126,1482638992,1,1042),(121,2,113,0,13650,'body',0,2032,34,1042,1482638992,1,1043),(121,2,113,0,13651,'body',0,1218,35,1043,1482638992,1,2032),(121,2,113,0,13652,'body',0,2042,36,2032,1482638992,1,1218),(121,2,113,0,13653,'body',0,3898,37,1218,1482638992,1,2042),(121,2,113,0,13654,'body',0,3899,38,2042,1482638992,1,3898),(121,2,113,0,13655,'body',0,1135,39,3898,1482638992,1,3899),(121,2,113,0,13656,'body',0,1174,40,3899,1482638992,1,1135),(121,2,113,0,13657,'body',0,1874,41,1135,1482638992,1,1174),(121,2,113,0,13658,'body',0,1771,42,1174,1482638992,1,1874),(121,2,113,0,13659,'body',0,986,43,1874,1482638992,1,1771),(121,2,113,0,13660,'body',0,3900,44,1771,1482638992,1,986),(121,2,113,0,13661,'body',0,1166,45,986,1482638992,1,3900),(121,2,113,0,13662,'body',0,3901,46,3900,1482638992,1,1166),(121,2,113,0,13663,'body',0,3902,47,1166,1482638992,1,3901),(121,2,113,0,13664,'body',0,3903,48,3901,1482638992,1,3902),(121,2,113,0,13665,'body',0,1847,49,3902,1482638992,1,3903),(121,2,113,0,13666,'body',0,3890,50,3903,1482638992,1,1847),(121,2,113,0,13667,'body',0,1218,51,1847,1482638992,1,3890),(121,2,113,0,13668,'body',0,3891,52,3890,1482638992,1,1218),(121,2,113,0,13669,'body',0,1512,53,1218,1482638992,1,3891),(121,2,113,0,13670,'body',0,2625,54,3891,1482638992,1,1512),(121,2,113,0,13671,'body',0,2575,55,1512,1482638992,1,2625),(121,2,113,0,13672,'body',0,1169,56,2625,1482638992,1,2575),(121,2,113,0,13673,'body',0,1817,57,2575,1482638992,1,1169),(121,2,113,0,13674,'body',0,2572,58,1169,1482638992,1,1817),(121,2,113,0,13675,'body',0,1218,59,1817,1482638992,1,2572),(121,2,113,0,13676,'body',0,2577,60,2572,1482638992,1,1218),(121,2,113,0,13677,'body',0,2383,61,1218,1482638992,1,2577),(121,2,113,0,13678,'body',0,2578,62,2577,1482638992,1,2383),(121,2,113,0,13679,'body',0,3892,63,2383,1482638992,1,2578),(121,2,113,0,13680,'body',0,3893,64,2578,1482638992,1,3892),(121,2,113,0,13681,'body',0,985,65,3892,1482638992,1,3893),(121,2,113,0,13682,'body',0,1828,66,3893,1482638992,1,985),(121,2,113,0,13683,'body',0,3894,67,985,1482638992,1,1828),(121,2,113,0,13684,'body',0,1123,68,1828,1482638992,1,3894),(121,2,113,0,13685,'body',0,3895,69,3894,1482638992,1,1123),(121,2,113,0,13686,'body',0,3896,70,1123,1482638992,1,3895),(121,2,113,0,13687,'body',0,2613,71,3895,1482638992,1,3896),(121,2,113,0,13688,'body',0,1230,72,3896,1482638992,1,2613),(121,2,113,0,13689,'body',0,2570,73,2613,1482638992,1,1230),(121,2,113,0,13690,'body',0,1166,74,1230,1482638992,1,2570),(121,2,113,0,13691,'body',0,3897,75,2570,1482638992,1,1166),(121,2,113,0,13692,'body',0,1827,76,1166,1482638992,1,3897),(121,2,113,0,13693,'body',0,1121,77,3897,1482638992,1,1827),(121,2,113,0,13694,'body',0,2030,78,1827,1482638992,1,1121),(121,2,113,0,13695,'body',0,1166,79,1121,1482638992,1,2030),(121,2,113,0,13696,'body',0,1126,80,2030,1482638992,1,1166),(121,2,113,0,13697,'body',0,1042,81,1166,1482638992,1,1126),(121,2,113,0,13698,'body',0,1043,82,1126,1482638992,1,1042),(121,2,113,0,13699,'body',0,2032,83,1042,1482638992,1,1043),(121,2,113,0,13700,'body',0,1218,84,1043,1482638992,1,2032),(121,2,113,0,13701,'body',0,2042,85,2032,1482638992,1,1218),(121,2,113,0,13702,'body',0,3898,86,1218,1482638992,1,2042),(121,2,113,0,13703,'body',0,3899,87,2042,1482638992,1,3898),(121,2,113,0,13704,'body',0,1135,88,3898,1482638992,1,3899),(121,2,113,0,13705,'body',0,1174,89,3899,1482638992,1,1135),(121,2,113,0,13706,'body',0,1874,90,1135,1482638992,1,1174),(121,2,113,0,13707,'body',0,1771,91,1174,1482638992,1,1874),(121,2,113,0,13708,'body',0,986,92,1874,1482638992,1,1771),(121,2,113,0,13709,'body',0,3900,93,1771,1482638992,1,986),(121,2,113,0,13710,'body',0,1166,94,986,1482638992,1,3900),(121,2,113,0,13711,'body',0,3901,95,3900,1482638992,1,1166),(121,2,113,0,13712,'body',0,3902,96,1166,1482638992,1,3901),(121,2,113,0,13713,'body',0,3903,97,3901,1482638992,1,3902),(121,2,113,0,13714,'body',0,1847,98,3902,1482638992,1,3903),(121,2,113,0,13715,'body',0,3890,99,3903,1482638992,1,1847),(121,2,113,0,13716,'body',0,1218,100,1847,1482638992,1,3890),(121,2,113,0,13717,'body',0,3891,101,3890,1482638992,1,1218),(121,2,113,0,13718,'body',0,1512,102,1218,1482638992,1,3891),(121,2,113,0,13719,'body',0,2625,103,3891,1482638992,1,1512),(121,2,113,0,13720,'body',0,2575,104,1512,1482638992,1,2625),(121,2,113,0,13721,'body',0,1169,105,2625,1482638992,1,2575),(121,2,113,0,13722,'body',0,1817,106,2575,1482638992,1,1169),(121,2,113,0,13723,'body',0,2572,107,1169,1482638992,1,1817),(121,2,113,0,13724,'body',0,1218,108,1817,1482638992,1,2572),(121,2,113,0,13725,'body',0,2577,109,2572,1482638992,1,1218),(121,2,113,0,13726,'body',0,2383,110,1218,1482638992,1,2577),(121,2,113,0,13727,'body',0,2578,111,2577,1482638992,1,2383),(121,2,113,0,13728,'body',0,3892,112,2383,1482638992,1,2578),(121,2,113,0,13729,'body',0,3893,113,2578,1482638992,1,3892),(121,2,113,0,13730,'body',0,985,114,3892,1482638992,1,3893),(121,2,113,0,13731,'body',0,1828,115,3893,1482638992,1,985),(121,2,113,0,13732,'body',0,3894,116,985,1482638992,1,1828),(121,2,113,0,13733,'body',0,1123,117,1828,1482638992,1,3894),(121,2,113,0,13734,'body',0,3895,118,3894,1482638992,1,1123),(121,2,113,0,13735,'body',0,3896,119,1123,1482638992,1,3895),(121,2,113,0,13736,'body',0,2613,120,3895,1482638992,1,3896),(121,2,113,0,13737,'body',0,1230,121,3896,1482638992,1,2613),(121,2,113,0,13738,'body',0,2570,122,2613,1482638992,1,1230),(121,2,113,0,13739,'body',0,1166,123,1230,1482638992,1,2570),(121,2,113,0,13740,'body',0,3897,124,2570,1482638992,1,1166),(121,2,113,0,13741,'body',0,1827,125,1166,1482638992,1,3897),(121,2,113,0,13742,'body',0,1121,126,3897,1482638992,1,1827),(121,2,113,0,13743,'body',0,2030,127,1827,1482638992,1,1121),(121,2,113,0,13744,'body',0,1166,128,1121,1482638992,1,2030),(121,2,113,0,13745,'body',0,1126,129,2030,1482638992,1,1166),(121,2,113,0,13746,'body',0,1042,130,1166,1482638992,1,1126),(121,2,113,0,13747,'body',0,1043,131,1126,1482638992,1,1042),(121,2,113,0,13748,'body',0,2032,132,1042,1482638992,1,1043),(121,2,113,0,13749,'body',0,1218,133,1043,1482638992,1,2032),(121,2,113,0,13750,'body',0,2042,134,2032,1482638992,1,1218),(121,2,113,0,13751,'body',0,3898,135,1218,1482638992,1,2042),(121,2,113,0,13752,'body',0,3899,136,2042,1482638992,1,3898),(121,2,113,0,13753,'body',0,1135,137,3898,1482638992,1,3899),(121,2,113,0,13754,'body',0,1174,138,3899,1482638992,1,1135),(121,2,113,0,13755,'body',0,1874,139,1135,1482638992,1,1174),(121,2,113,0,13756,'body',0,1771,140,1174,1482638992,1,1874),(121,2,113,0,13757,'body',0,986,141,1874,1482638992,1,1771),(121,2,113,0,13758,'body',0,3900,142,1771,1482638992,1,986),(121,2,113,0,13759,'body',0,1166,143,986,1482638992,1,3900),(121,2,113,0,13760,'body',0,3901,144,3900,1482638992,1,1166),(121,2,113,0,13761,'body',0,3902,145,1166,1482638992,1,3901),(121,2,113,0,13762,'body',0,3903,146,3901,1482638992,1,3902),(121,2,113,0,13763,'body',0,1847,147,3902,1482638992,1,3903),(121,2,113,0,13764,'body',0,3890,148,3903,1482638992,1,1847),(121,2,113,0,13765,'body',0,1218,149,1847,1482638992,1,3890),(121,2,113,0,13766,'body',0,3891,150,3890,1482638992,1,1218),(121,2,113,0,13767,'body',0,1512,151,1218,1482638992,1,3891),(121,2,113,0,13768,'body',0,2625,152,3891,1482638992,1,1512),(121,2,113,0,13769,'body',0,2575,153,1512,1482638992,1,2625),(121,2,113,0,13770,'body',0,1169,154,2625,1482638992,1,2575),(121,2,113,0,13771,'body',0,1817,155,2575,1482638992,1,1169),(121,2,113,0,13772,'body',0,2572,156,1169,1482638992,1,1817),(121,2,113,0,13773,'body',0,1218,157,1817,1482638992,1,2572),(121,2,113,0,13774,'body',0,2577,158,2572,1482638992,1,1218),(121,2,113,0,13775,'body',0,2383,159,1218,1482638992,1,2577),(121,2,113,0,13776,'body',0,2578,160,2577,1482638992,1,2383),(121,2,113,0,13777,'body',0,3892,161,2383,1482638992,1,2578),(121,2,113,0,13778,'body',0,3893,162,2578,1482638992,1,3892),(121,2,113,0,13779,'body',0,985,163,3892,1482638992,1,3893),(121,2,113,0,13780,'body',0,1828,164,3893,1482638992,1,985),(121,2,113,0,13781,'body',0,3894,165,985,1482638992,1,1828),(121,2,113,0,13782,'body',0,1123,166,1828,1482638992,1,3894),(121,2,113,0,13783,'body',0,3895,167,3894,1482638992,1,1123),(121,2,113,0,13784,'body',0,3896,168,1123,1482638992,1,3895),(121,2,113,0,13785,'body',0,2613,169,3895,1482638992,1,3896),(121,2,113,0,13786,'body',0,1230,170,3896,1482638992,1,2613),(121,2,113,0,13787,'body',0,2570,171,2613,1482638992,1,1230),(121,2,113,0,13788,'body',0,1166,172,1230,1482638992,1,2570),(121,2,113,0,13789,'body',0,3897,173,2570,1482638992,1,1166),(121,2,113,0,13790,'body',0,1827,174,1166,1482638992,1,3897),(121,2,113,0,13791,'body',0,1121,175,3897,1482638992,1,1827),(121,2,113,0,13792,'body',0,2030,176,1827,1482638992,1,1121),(121,2,113,0,13793,'body',0,1166,177,1121,1482638992,1,2030),(121,2,113,0,13794,'body',0,1126,178,2030,1482638992,1,1166),(121,2,113,0,13795,'body',0,1042,179,1166,1482638992,1,1126),(121,2,113,0,13796,'body',0,1043,180,1126,1482638992,1,1042),(121,2,113,0,13797,'body',0,2032,181,1042,1482638992,1,1043),(121,2,113,0,13798,'body',0,1218,182,1043,1482638992,1,2032),(121,2,113,0,13799,'body',0,2042,183,2032,1482638992,1,1218),(121,2,113,0,13800,'body',0,3898,184,1218,1482638992,1,2042),(121,2,113,0,13801,'body',0,3899,185,2042,1482638992,1,3898),(121,2,113,0,13802,'body',0,1135,186,3898,1482638992,1,3899),(121,2,113,0,13803,'body',0,1174,187,3899,1482638992,1,1135),(121,2,113,0,13804,'body',0,1874,188,1135,1482638992,1,1174),(121,2,113,0,13805,'body',0,1771,189,1174,1482638992,1,1874),(121,2,113,0,13806,'body',0,986,190,1874,1482638992,1,1771),(121,2,113,0,13807,'body',0,3900,191,1771,1482638992,1,986),(121,2,113,0,13808,'body',0,1166,192,986,1482638992,1,3900),(121,2,113,0,13809,'body',0,3901,193,3900,1482638992,1,1166),(121,2,113,0,13810,'body',0,3902,194,1166,1482638992,1,3901),(121,2,113,0,13811,'body',0,3903,195,3901,1482638992,1,3902),(121,2,113,0,13812,'body',0,1847,196,3902,1482638992,1,3903),(121,2,113,0,13813,'body',0,3890,197,3903,1482638992,1,1847),(121,2,113,0,13814,'body',0,1218,198,1847,1482638992,1,3890),(121,2,113,0,13815,'body',0,3891,199,3890,1482638992,1,1218),(121,2,113,0,13816,'body',0,1512,200,1218,1482638992,1,3891),(121,2,113,0,13817,'body',0,2625,201,3891,1482638992,1,1512),(121,2,113,0,13818,'body',0,2575,202,1512,1482638992,1,2625),(121,2,113,0,13819,'body',0,1169,203,2625,1482638992,1,2575),(121,2,113,0,13820,'body',0,1817,204,2575,1482638992,1,1169),(121,2,113,0,13821,'body',0,2572,205,1169,1482638992,1,1817),(121,2,113,0,13822,'body',0,1218,206,1817,1482638992,1,2572),(121,2,113,0,13823,'body',0,2577,207,2572,1482638992,1,1218),(121,2,113,0,13824,'body',0,2383,208,1218,1482638992,1,2577),(121,2,113,0,13825,'body',0,2578,209,2577,1482638992,1,2383),(121,2,113,0,13826,'body',0,3892,210,2383,1482638992,1,2578),(121,2,113,0,13827,'body',0,3893,211,2578,1482638992,1,3892),(121,2,113,0,13828,'body',0,985,212,3892,1482638992,1,3893),(121,2,113,0,13829,'body',0,1828,213,3893,1482638992,1,985),(121,2,113,0,13830,'body',0,3894,214,985,1482638992,1,1828),(121,2,113,0,13831,'body',0,1123,215,1828,1482638992,1,3894),(121,2,113,0,13832,'body',0,3895,216,3894,1482638992,1,1123),(121,2,113,0,13833,'body',0,3896,217,1123,1482638992,1,3895),(121,2,113,0,13834,'body',0,2613,218,3895,1482638992,1,3896),(121,2,113,0,13835,'body',0,1230,219,3896,1482638992,1,2613),(121,2,113,0,13836,'body',0,2570,220,2613,1482638992,1,1230),(121,2,113,0,13837,'body',0,1166,221,1230,1482638992,1,2570),(121,2,113,0,13838,'body',0,3897,222,2570,1482638992,1,1166),(121,2,113,0,13839,'body',0,1827,223,1166,1482638992,1,3897),(121,2,113,0,13840,'body',0,1121,224,3897,1482638992,1,1827),(121,2,113,0,13841,'body',0,2030,225,1827,1482638992,1,1121),(121,2,113,0,13842,'body',0,1166,226,1121,1482638992,1,2030),(121,2,113,0,13843,'body',0,1126,227,2030,1482638992,1,1166),(121,2,113,0,13844,'body',0,1042,228,1166,1482638992,1,1126),(121,2,113,0,13845,'body',0,1043,229,1126,1482638992,1,1042),(121,2,113,0,13846,'body',0,2032,230,1042,1482638992,1,1043),(121,2,113,0,13847,'body',0,1218,231,1043,1482638992,1,2032),(121,2,113,0,13848,'body',0,2042,232,2032,1482638992,1,1218),(121,2,113,0,13849,'body',0,3898,233,1218,1482638992,1,2042),(121,2,113,0,13850,'body',0,3899,234,2042,1482638992,1,3898),(121,2,113,0,13851,'body',0,1135,235,3898,1482638992,1,3899),(121,2,113,0,13852,'body',0,1174,236,3899,1482638992,1,1135),(121,2,113,0,13853,'body',0,1874,237,1135,1482638992,1,1174),(121,2,113,0,13854,'body',0,1771,238,1174,1482638992,1,1874),(121,2,113,0,13855,'body',0,986,239,1874,1482638992,1,1771),(121,2,113,0,13856,'body',0,3900,240,1771,1482638992,1,986),(121,2,113,0,13857,'body',0,1166,241,986,1482638992,1,3900),(121,2,113,0,13858,'body',0,3901,242,3900,1482638992,1,1166),(121,2,113,0,13859,'body',0,3902,243,1166,1482638992,1,3901),(121,2,113,0,13860,'body',0,3903,244,3901,1482638992,1,3902),(121,2,113,0,13861,'body',0,1847,245,3902,1482638992,1,3903),(121,2,113,0,13862,'body',0,3890,246,3903,1482638992,1,1847),(121,2,113,0,13863,'body',0,1218,247,1847,1482638992,1,3890),(121,2,113,0,13864,'body',0,3891,248,3890,1482638992,1,1218),(121,2,113,0,13865,'body',0,1512,249,1218,1482638992,1,3891),(121,2,113,0,13866,'body',0,2625,250,3891,1482638992,1,1512),(121,2,113,0,13867,'body',0,2575,251,1512,1482638992,1,2625),(121,2,113,0,13868,'body',0,1169,252,2625,1482638992,1,2575),(121,2,113,0,13869,'body',0,1817,253,2575,1482638992,1,1169),(121,2,113,0,13870,'body',0,2572,254,1169,1482638992,1,1817),(121,2,113,0,13871,'body',0,1218,255,1817,1482638992,1,2572),(121,2,113,0,13872,'body',0,2577,256,2572,1482638992,1,1218),(121,2,113,0,13873,'body',0,2383,257,1218,1482638992,1,2577),(121,2,113,0,13874,'body',0,2578,258,2577,1482638992,1,2383),(121,2,113,0,13875,'body',0,3892,259,2383,1482638992,1,2578),(121,2,113,0,13876,'body',0,3893,260,2578,1482638992,1,3892),(121,2,113,0,13877,'body',0,985,261,3892,1482638992,1,3893),(121,2,113,0,13878,'body',0,1828,262,3893,1482638992,1,985),(121,2,113,0,13879,'body',0,3894,263,985,1482638992,1,1828),(121,2,113,0,13880,'body',0,1123,264,1828,1482638992,1,3894),(121,2,113,0,13881,'body',0,3895,265,3894,1482638992,1,1123),(121,2,113,0,13882,'body',0,3896,266,1123,1482638992,1,3895),(121,2,113,0,13883,'body',0,2613,267,3895,1482638992,1,3896),(121,2,113,0,13884,'body',0,1230,268,3896,1482638992,1,2613),(121,2,113,0,13885,'body',0,2570,269,2613,1482638992,1,1230),(121,2,113,0,13886,'body',0,1166,270,1230,1482638992,1,2570),(121,2,113,0,13887,'body',0,3897,271,2570,1482638992,1,1166),(121,2,113,0,13888,'body',0,1827,272,1166,1482638992,1,3897),(121,2,113,0,13889,'body',0,1121,273,3897,1482638992,1,1827),(121,2,113,0,13890,'body',0,2030,274,1827,1482638992,1,1121),(121,2,113,0,13891,'body',0,1166,275,1121,1482638992,1,2030),(121,2,113,0,13892,'body',0,1126,276,2030,1482638992,1,1166),(121,2,113,0,13893,'body',0,1042,277,1166,1482638992,1,1126),(121,2,113,0,13894,'body',0,1043,278,1126,1482638992,1,1042),(121,2,113,0,13895,'body',0,2032,279,1042,1482638992,1,1043),(121,2,113,0,13896,'body',0,1218,280,1043,1482638992,1,2032),(121,2,113,0,13897,'body',0,2042,281,2032,1482638992,1,1218),(121,2,113,0,13898,'body',0,3898,282,1218,1482638992,1,2042),(121,2,113,0,13899,'body',0,3899,283,2042,1482638992,1,3898),(121,2,113,0,13900,'body',0,1135,284,3898,1482638992,1,3899),(121,2,113,0,13901,'body',0,1174,285,3899,1482638992,1,1135),(121,2,113,0,13902,'body',0,1874,286,1135,1482638992,1,1174),(121,2,113,0,13903,'body',0,1771,287,1174,1482638992,1,1874),(121,2,113,0,13904,'body',0,986,288,1874,1482638992,1,1771),(121,2,113,0,13905,'body',0,3900,289,1771,1482638992,1,986),(121,2,113,0,13906,'body',0,1166,290,986,1482638992,1,3900),(121,2,113,0,13907,'body',0,3901,291,3900,1482638992,1,1166),(121,2,113,0,13908,'body',0,3902,292,1166,1482638992,1,3901),(121,2,113,0,13909,'body',0,3903,293,3901,1482638992,1,3902),(121,2,113,0,13910,'body',0,1847,294,3902,1482638992,1,3903),(121,2,113,0,13911,'body',0,0,295,3903,1482638992,1,1847);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_return_count`
--

DROP TABLE IF EXISTS `ezsearch_return_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_return_count` (
  `count` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_return_cnt_ph_id_cnt` (`phrase_id`,`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=3904 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,1,'setup'),(814,5,'the'),(816,5,'for'),(927,2,'ez.no'),(930,3,'users'),(951,1,'main'),(952,5,'group'),(953,2,'anonymous'),(954,3,'user'),(955,2,'nospam'),(956,1,'guest'),(957,1,'accounts'),(958,2,'administrator'),(959,2,'editors'),(960,1,'admin'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(967,1,'sitestyle_identifier'),(974,1,'applications'),(985,7,'uber'),(986,2,'uns'),(991,2,'folder'),(992,6,'1'),(994,6,'2'),(995,4,'3'),(997,2,'studium'),(1004,1,'forschungreisen'),(1042,12,'al'),(1043,8,'mustafa'),(1113,3,'lorem'),(1114,3,'ipsum'),(1115,7,'ist'),(1116,5,'ein'),(1117,1,'einfacher'),(1118,1,'demo'),(1119,3,'text'),(1120,9,'fur'),(1121,13,'die'),(1122,1,'print'),(1123,14,'und'),(1124,1,'schriftindustrie'),(1125,13,'in'),(1126,15,'der'),(1127,1,'industrie'),(1128,1,'bereits'),(1129,1,'standard'),(1130,1,'seit'),(1131,1,'1500'),(1132,6,'als'),(1133,1,'unbekannter'),(1134,1,'schriftsteller'),(1135,7,'eine'),(1136,1,'hand'),(1137,1,'voll'),(1138,1,'worter'),(1139,1,'nahm'),(1140,3,'diese'),(1141,1,'durcheinander'),(1142,1,'warf'),(1143,6,'um'),(1144,1,'musterbuch'),(1145,12,'zu'),(1146,1,'erstellen'),(1147,3,'es'),(1148,3,'hat'),(1149,3,'nicht'),(1150,2,'nur'),(1151,5,'5'),(1152,1,'jahrhunderte'),(1153,1,'uberlebt'),(1154,1,'sondern'),(1155,6,'auch'),(1156,1,'spruch'),(1157,1,'elektronische'),(1158,1,'schriftbearbeitung'),(1159,1,'geschafft'),(1160,1,'bemerke'),(1161,1,'nahezu'),(1162,1,'unverandert'),(1163,1,'bekannt'),(1164,2,'wurde'),(1165,1,'1960'),(1166,10,'mit'),(1167,5,'dem'),(1168,1,'erscheinen'),(1169,12,'von'),(1170,1,'letraset'),(1171,1,'welches'),(1172,1,'passagen'),(1173,1,'enhielt'),(1174,6,'so'),(1175,1,'wie'),(1176,3,'desktop'),(1177,1,'software'),(1178,1,'aldus'),(1179,1,'pagemaker'),(1180,1,'ebenfalls'),(1181,2,'first'),(1182,2,'blog'),(1183,1,'post'),(1184,1,'lang'),(1185,1,'erwiesener'),(1186,1,'fakt'),(1187,2,'dass'),(1188,1,'leser'),(1189,5,'vom'),(1190,1,'abgelenkt'),(1191,4,'wird'),(1192,2,'wenn'),(1193,2,'er'),(1194,4,'sich'),(1195,2,'layout'),(1196,1,'ansieht'),(1197,1,'punkt'),(1198,1,'nutzen'),(1199,2,'mehr'),(1200,4,'oder'),(1201,1,'weniger'),(1202,1,'normale'),(1203,1,'anordnung'),(1204,1,'buchstaben'),(1205,1,'darstellt'),(1206,1,'somit'),(1207,4,'nach'),(1208,1,'lesbarer'),(1209,5,'sprache'),(1210,1,'aussieht'),(1211,2,'viele'),(1212,1,'publisher'),(1213,1,'webeditoren'),(1214,1,'mittlerweile'),(1215,6,'den'),(1216,1,'standardtext'),(1217,1,'suche'),(1218,11,'im'),(1219,2,'internet'),(1220,1,'macht'),(1221,2,'webseiten'),(1222,1,'sichtbar'),(1223,1,'wo'),(1224,1,'noch'),(1225,2,'immer'),(1226,1,'vorkommen'),(1227,2,'gibt'),(1228,1,'mehrere'),(1229,1,'versionen'),(1230,13,'des'),(1231,2,'einige'),(1232,1,'zufallig'),(1233,2,'andere'),(1234,1,'bewusst'),(1235,1,'beeinflusst'),(1236,1,'witz'),(1237,1,'eigenen'),(1238,1,'geschmacks'),(1309,1,'qom2'),(1511,5,'qom'),(1512,2,'2016'),(1513,1,'it'),(1514,2,'is'),(1515,8,'a'),(1516,1,'long'),(1517,1,'established'),(1518,1,'fact'),(1519,1,'that'),(1520,1,'reader'),(1521,4,'will'),(1522,4,'be'),(1523,1,'distracted'),(1524,4,'by'),(1525,1,'readable'),(1526,1,'content'),(1527,4,'of'),(1528,1,'page'),(1529,1,'when'),(1530,1,'looking'),(1531,4,'at'),(1532,4,'its'),(1533,1,'point'),(1534,1,'using'),(1535,1,'has'),(1536,4,'more'),(1537,1,'or'),(1538,1,'less'),(1539,1,'normal'),(1540,1,'distribution'),(1541,1,'letters'),(1542,5,'as'),(1543,1,'opposed'),(1544,4,'to'),(1545,1,'here'),(1546,4,'making'),(1547,1,'look'),(1548,1,'like'),(1549,4,'english'),(1550,1,'many'),(1551,1,'publishing'),(1552,1,'packages'),(1553,4,'and'),(1554,2,'web'),(1555,4,'now'),(1556,1,'use'),(1557,4,'their'),(1558,1,'default'),(1559,1,'model'),(1560,1,'search'),(1561,1,'uncover'),(1562,1,'sites'),(1563,1,'still'),(1564,1,'infancy'),(1565,1,'various'),(1566,1,'versions'),(1567,1,'have'),(1568,1,'evolved'),(1569,1,'over'),(1570,4,'years'),(1571,1,'sometimes'),(1572,1,'accident'),(1573,4,'on'),(1574,1,'purpose'),(1575,1,'injected'),(1576,1,'humour'),(1577,3,'large'),(1589,1,'veranstaltungen'),(1747,11,'islamische'),(1748,8,'theologie'),(1749,4,'b'),(1750,1,'zulassungsvoraussetzungen'),(1751,1,'zulassung'),(1752,4,'zum'),(1753,1,'bachelorstudiengang'),(1754,1,'mussen'),(1755,1,'bewerber'),(1756,1,'innen'),(1757,2,'folgenden'),(1758,1,'voraussetzungen'),(1759,1,'nachweisen'),(1760,1,'fachgebundene'),(1761,1,'allgemeine'),(1762,1,'hochschulreife'),(1763,1,'fachhochschulreife'),(1764,1,'gesetzlich'),(1765,1,'festgelegte'),(1766,1,'studienberechtigung'),(1767,2,'z'),(1768,1,'11'),(1769,1,'berlhg'),(1770,1,'sofern'),(1771,5,'sie'),(1772,2,'deutsche'),(1773,1,'staatsangehorigkeit'),(1774,1,'hochschulzugangsberechtigung'),(1775,3,'haben'),(1776,1,'nachweis'),(1777,1,'deutschkenntnissen'),(1778,1,'vorgeschrieben'),(1779,3,'dieser'),(1780,1,'muss'),(1781,3,'bis'),(1782,1,'ende'),(1783,1,'bewerbungsfrist'),(1784,1,'vorliegen'),(1785,1,'auflistung'),(1786,1,'nachweise'),(1787,3,'wir'),(1788,2,'ihre'),(1789,1,'bewerbung'),(1790,1,'akzeptieren'),(1791,1,'finden'),(1792,2,'hier'),(1793,1,'bewerbungszeitraum'),(1794,1,'sommersemester'),(1795,4,'01'),(1796,1,'januar'),(1797,1,'marz'),(1798,1,'gebuhren'),(1799,2,'inhalte'),(1800,1,'auswahl'),(1801,6,'an'),(1802,1,'modulen'),(1803,1,'theolgie'),(1804,2,'angeboten'),(1805,4,'werden'),(1806,2,'arabische'),(1807,1,'koranwissenschaften'),(1808,1,'koranexegese'),(1809,1,'hadithwissenschaften'),(1810,3,'geschichte'),(1811,2,'komparative'),(1812,1,'systematische'),(1813,2,'jurisprudenz'),(1814,5,'ethik'),(1815,1,'erkenntnislehre'),(1816,5,'kultur'),(1817,7,'islamischen'),(1818,4,'welt'),(1819,1,'zweite'),(1820,1,'fremdsprache'),(1821,1,'wahlpflichtmodule'),(1822,1,'berufsorientierte'),(1823,1,'module'),(1824,1,'weitere'),(1825,3,'informationen'),(1826,1,'klicken'),(1827,7,'auf'),(1828,10,'das'),(1829,2,'bild'),(1830,1,'broschure'),(1831,1,'studieninformationen'),(1832,1,'man'),(1833,1,'drauf'),(1834,1,'klickt'),(1835,1,'erscheint'),(1836,1,'ganze'),(1837,1,'brsoschure'),(1838,1,'inhalten'),(1839,1,'kenndaten'),(1840,1,'zulassungsbeschrankung'),(1841,1,'studienbeginn'),(1842,5,'art'),(1843,1,'bachelor'),(1844,1,'mono'),(1845,1,'kombi'),(1846,1,'regelstudienzeit'),(1847,4,'etc'),(1848,1,'studienaufbau'),(1849,1,'bachelorstudium'),(1850,4,'ca'),(1851,1,'240'),(1852,1,'cp'),(1853,1,'umfasst'),(1854,1,'sieben'),(1855,1,'semester'),(1856,2,'zwei'),(1857,1,'auslandsaufenthalte'),(1858,4,'einer'),(1859,1,'bachelorarbeit'),(1860,1,'abgeschlossen'),(1861,1,'erfolgreichen'),(1862,1,'abschluss'),(1863,1,'besteht'),(1864,1,'moglichkeit'),(1865,4,'einen'),(1866,1,'masterstudiengang'),(1867,1,'aufzunehmen'),(1868,2,'damit'),(1869,2,'wissenschaftliche'),(1870,1,'laufbahn'),(1871,1,'einzuschlagen'),(1872,1,'berufliche'),(1873,1,'spezialisierung'),(1874,2,'erreichen'),(1875,1,'berufsperspektiven'),(1876,2,'forschung'),(1877,1,'lehre'),(1878,1,'moscheegemeinden'),(1879,1,'seelsorge'),(1880,1,'verbandstatigkeiten'),(1881,1,'integrations'),(1882,1,'migrationsarbeit'),(1883,1,'kulturmanagement'),(1884,1,'erwachsenenbildung'),(1885,1,'beratungstatigkeiten'),(1886,5,'literatur'),(1887,1,'beispiel'),(1888,1,'dient'),(1889,1,'gestaltung'),(1890,1,'kitab'),(1891,1,'ʿayn'),(1892,1,'alef'),(1893,1,'verlag'),(1894,4,'2003'),(1895,1,'musnad'),(1896,1,'sanadayn'),(1897,1,'berta'),(1898,1,'1996'),(1899,1,'magmuʿ'),(1900,1,'ʿaṣafir'),(1901,1,'fair'),(1902,1,'lag'),(1903,4,'2012'),(1904,1,'modulhandbuch'),(1905,2,'koran'),(1906,1,'gilt'),(1907,1,'glauben'),(1908,1,'wort'),(1909,1,'gottes'),(1910,2,'propheten'),(1911,4,'muhammad'),(1912,5,'zwischen'),(1913,1,'610'),(1914,1,'632'),(1915,1,'offenbart'),(1916,1,'verkundeten'),(1917,1,'worte'),(1918,2,'wurden'),(1919,1,'seinen'),(1920,1,'lebzeiten'),(1921,1,'sowohl'),(1922,1,'mundlich'),(1923,1,'uberliefert'),(1924,1,'schriftlich'),(1925,1,'fixiert'),(1926,1,'uberzeugung'),(1927,1,'liege'),(1928,1,'originaltext'),(1929,3,'vor'),(1930,1,'pragte'),(1931,1,'koranrezeption'),(1932,1,'muslime'),(1933,1,'entscheidend'),(1934,2,'laufe'),(1935,1,'korantext'),(1936,1,'fortwahrend'),(1937,1,'solcher'),(1938,1,'rezitiert'),(1939,1,'rezipiert'),(1940,1,'interpretiert'),(1941,1,'zuge'),(1942,1,'rezeptionsgeschichtlichen'),(1943,2,'entwicklung'),(1944,1,'entstanden'),(1945,1,'disziplinen'),(1946,1,'denen'),(1947,1,'seinem'),(1948,1,'offenbarungscharakter'),(1949,2,'zentrum'),(1950,2,'steht'),(1951,1,'angesichts'),(1952,1,'fehlenden'),(1953,1,'institutionalisierten'),(1954,1,'religiosen'),(1955,1,'kontrollinstanz'),(1956,1,'christlichen'),(1957,1,'kirchen'),(1958,1,'vergleichbar'),(1959,1,'ware'),(1960,2,'bei'),(1961,1,'muslimen'),(1962,1,'historisch'),(1963,1,'vielschichtige'),(1964,1,'diskussionsfreudige'),(1965,1,'auslegungskultur'),(1966,1,'entwickelt'),(1967,1,'ausserfachliche'),(1968,1,'kenntnisse'),(1969,1,'vorbehaltlos'),(1970,1,'integrierte'),(1971,1,'widmeten'),(1972,1,'koranwissenschaftlichen'),(1973,1,'exegetischen'),(1974,1,'textgenese'),(1975,1,'sprachlichen'),(1976,1,'struktur'),(1977,4,'interpretation'),(1978,1,'korans'),(1979,1,'setzten'),(1980,2,'fragen'),(1981,2,'seiner'),(1982,1,'historizitat'),(1983,1,'kontextualitat'),(1984,1,'intertextualitat'),(1985,1,'intratextualitat'),(1986,1,'auseinander'),(1987,4,'jenseits'),(1988,1,'wortwortlichen'),(1989,1,'verstehens'),(1990,1,'deutungsweise'),(1991,1,'verschiedene'),(1992,1,'formen'),(1993,1,'koranauslegung'),(1994,1,'etabliert'),(1995,1,'uberlieferungsgut'),(1996,2,'eigene'),(1997,1,'meinung'),(1998,2,'sowie'),(1999,1,'innere'),(2000,1,'mystische'),(2001,1,'erfahrung'),(2002,1,'zugrunde'),(2003,1,'liegen'),(2004,1,'ausgewiesene'),(2005,1,'koranwissenschaft'),(2006,1,'setzt'),(2007,1,'daher'),(2008,1,'u'),(2009,1,'bedeutung'),(2010,4,'aktuellen'),(2011,1,'relevanz'),(2012,1,'offenbartseins'),(2013,1,'entstehungs'),(2014,1,'textwerdungsgeschichte'),(2015,1,'koranauslegungstraditionen'),(2016,1,'sunnitischen'),(2017,1,'schiitischen'),(2018,2,'anderen'),(2019,1,'richtungen'),(2020,1,'weiteren'),(2021,1,'schwerpunkt'),(2022,1,'bildet'),(2023,1,'erschliessung'),(2024,1,'judischen'),(2025,1,'traditionen'),(2026,1,'modernen'),(2027,1,'kommunikationstheorien'),(2028,1,'kritischen'),(2029,1,'methoden'),(2030,4,'kooperation'),(2031,2,'studiengang'),(2032,6,'universitat'),(2033,1,'raufklicken'),(2034,1,'link'),(2035,1,'weitergeleitet'),(2036,4,'http'),(2037,1,'en'),(2038,1,'miu'),(2039,4,'ac'),(2040,4,'ir'),(2041,2,'qum'),(2042,6,'iran'),(2043,7,'institut'),(2044,6,'berlin'),(2045,1,'handelt'),(2046,1,'bevollmachtigter'),(2047,3,'zur'),(2048,1,'vollmacht'),(2049,1,'studiums'),(2050,1,'auszuhandigenden'),(2051,1,'zeugnisse'),(2052,1,'stammen'),(2085,4,'dozenten'),(2086,4,'prof'),(2087,5,'dr'),(2088,1,'max'),(2089,1,'mustermann'),(2090,1,'alle'),(2091,1,'klickmoglichkeit'),(2092,1,'weiterfuhrung'),(2093,1,'cv'),(2094,1,'mix'),(2095,1,'musterfrau'),(2096,2,'fiqh'),(2097,1,'pd'),(2098,1,'hamid'),(2099,2,'reza'),(2100,1,'yousefi'),(2101,4,'was'),(2102,2,'kann'),(2103,5,'mahdi'),(2104,6,'esfahani'),(2105,1,'beispielseite'),(2106,1,'vorhanden'),(2107,1,'tim'),(2108,1,'leibner'),(2109,1,'arabisch'),(2110,4,'i'),(2111,1,'ii'),(2112,1,'iii'),(2113,1,'iv'),(2114,1,'hassan'),(2115,1,'sadeghi'),(2116,1,'koranrezitation'),(2122,3,'name'),(2129,3,'tel'),(2132,3,'e'),(2133,3,'mail'),(2138,3,'de'),(2140,3,'7'),(2182,3,'10'),(2253,3,'www'),(2382,3,'mystik'),(2383,4,'deutschsprachigen'),(2385,3,'akademie'),(2390,3,'philosophie'),(2417,3,'hochschule'),(2478,3,'schriften'),(2554,2,'email'),(2558,2,'mohammad'),(2567,1,'forschungsprojekte'),(2568,1,'primaren'),(2569,1,'ambitionen'),(2570,3,'instituts'),(2571,3,'humanwissenschaften'),(2572,5,'studien'),(2573,3,'gemeinnutzige'),(2574,3,'gmbh'),(2575,3,'forderung'),(2576,1,'islamischer'),(2577,2,'akademisch'),(2578,2,'raum'),(2579,2,'diesem'),(2580,1,'zwecke'),(2581,2,'wissenschaftlern'),(2582,1,'gebieten'),(2583,1,'arabistik'),(2584,1,'iranistik'),(2585,1,'islamwissenschaften'),(2586,1,'orientalistik'),(2587,3,'bucher'),(2588,1,'verfasst'),(2589,1,'ins'),(2590,1,'ubersetzt'),(2591,2,'ferner'),(2592,1,'verfolgt'),(2593,1,'vorhaben'),(2594,1,'kontinuierlichen'),(2595,1,'perioden'),(2596,2,'wissenschaftliches'),(2597,2,'magazin'),(2598,2,'rund'),(2599,2,'thema'),(2600,1,'publizieren'),(2601,1,'publikationen'),(2602,1,'eines'),(2603,1,'hauptanliegen'),(2604,1,'deutschsprachiger'),(2605,1,'kontext'),(2606,1,'reihe'),(2607,2,'ubersetzungen'),(2608,1,'akademischen'),(2609,1,'niveau'),(2610,1,'usw'),(2611,1,'ermoglichen'),(2612,1,'anschluss'),(2613,2,'vorstellung'),(2614,1,'verschiedener'),(2615,1,'projekte'),(2616,1,'verfassen'),(2617,1,'institutszeitschrift'),(2618,1,'kommt'),(2619,2,'hin'),(2620,1,'neuesten'),(2621,1,'zeitschrift'),(2622,1,'themen'),(2625,2,'ziele'),(2820,1,'partneruniversitat'),(2821,1,'1979'),(2822,1,'gegrundete'),(2823,1,'internationalen'),(2824,1,'ausbildung'),(2825,1,'bereich'),(2826,1,'befasst'),(2827,1,'tragt'),(2828,1,'namen'),(2829,1,'heiligen'),(2830,1,'bedeutet'),(2831,1,'auserwahlte'),(2832,1,'hauptziele'),(2833,1,'gesetzt'),(2834,1,'gross'),(2835,1,'gelehrten'),(2836,1,'lehrern'),(2837,1,'forschern'),(2838,1,'darlegung'),(2839,1,'vertiefung'),(2840,1,'koranischen'),(2841,1,'ansichten'),(2842,1,'theorien'),(2843,1,'gottlicher'),(2844,1,'menschlicher'),(2845,1,'erkenntnisse'),(2846,1,'jene'),(2847,1,'verwirklichen'),(2848,1,'stehen'),(2849,1,'folgende'),(2850,1,'punkte'),(2851,1,'programm'),(2852,1,'erziehung'),(2853,1,'aneignung'),(2854,1,'moralischer'),(2855,1,'werte'),(2856,1,'beachtung'),(2857,1,'tradition'),(2858,1,'institutionen'),(2859,1,'ihrer'),(2860,1,'alten'),(2861,1,'verfahrensweise'),(2862,1,'aufmerksamkeit'),(2863,2,'verbreitung'),(2864,1,'wissenschaften'),(2865,1,'quellen'),(2866,1,'einnahme'),(2867,1,'wissenschaftlichen'),(2868,1,'padagogischen'),(2869,1,'untersuchungsstiles'),(2870,1,'sicherung'),(2871,1,'menschenwurde'),(2872,2,'durch'),(2873,1,'respektvollen'),(2874,1,'umgang'),(2875,1,'achtung'),(2876,1,'einheit'),(2877,1,'rechtsschulen'),(2878,1,'tochterinstitute'),(2879,1,'sprach'),(2880,1,'islamausbildung'),(2881,1,'oberschule'),(2882,1,'imam'),(2883,1,'khomenei'),(2884,1,'aufbaustudium'),(2885,1,'rechtschulen'),(2886,1,'bint'),(2887,1,'ul'),(2888,1,'huda'),(2889,1,'kurzstudien'),(2890,1,'studienmoglichkeiten'),(2891,1,'offene'),(2892,1,'fernstudium'),(2893,1,'internationales'),(2894,1,'forschungscenter'),(2895,1,'linguistik'),(2896,1,'kulturcenter'),(2897,1,'filialen'),(2898,1,'teheran'),(2899,1,'maschhad'),(2900,1,'isfahan'),(2901,1,'qeschm'),(2902,1,'gorgan'),(2903,1,'zentren'),(2904,1,'kindern'),(2905,1,'ehepartnern'),(2906,1,'studenten'),(2907,2,'ausserhalb'),(2908,1,'irans'),(2909,1,'untergeordnete'),(2910,1,'kooperierende'),(2911,1,'instituten'),(2912,1,'ihnen'),(2913,1,'gehoren'),(2914,1,'akademien'),(2915,1,'london'),(2916,1,'indonesien'),(2917,1,'ghana'),(2918,1,'gruppe'),(2919,1,'unter'),(2920,1,'aufsicht'),(2921,1,'betreuung'),(2922,1,'ahlulbayt'),(2923,1,'hawza'),(2924,1,'athar'),(2925,1,'sabtayn'),(2926,1,'schule'),(2927,1,'martyrer'),(2928,1,'sadr'),(2929,1,'ebenso'),(2930,1,'arbeitet'),(2931,1,'schulen'),(2932,1,'aus'),(2933,1,'lander'),(2934,1,'zusammen'),(2935,1,'professoren'),(2936,1,'mitglieder'),(2937,1,'derzeit'),(2938,1,'arbeiten'),(2939,1,'500'),(2940,1,'innerhalb'),(2941,1,'studienschwerpunkte'),(2942,1,'bietet'),(2943,1,'150'),(2944,1,'fachgebiete'),(2945,1,'uṣul'),(2946,1,'grundlagen'),(2947,1,'rechtswissenshaft'),(2948,1,'maaref'),(2949,1,'rechtswissenschaft'),(2950,1,'gottesdienstliche'),(2951,1,'politische'),(2952,1,'wirtschaftliche'),(2953,1,'richterliche'),(2954,1,'familienrechtswissenschaft'),(2955,1,'padagogische'),(2956,1,'gesellschaftliche'),(2957,1,'exegese'),(2958,1,'wissenschaft'),(2959,1,'erkenntnis'),(2960,1,'islamgeschichte'),(2961,1,'schiitische'),(2962,1,'religionen'),(2963,1,'maḏahib'),(2964,1,'wirtschaft'),(2965,1,'beziehung'),(2966,1,'politikwissenschaft'),(2967,1,'jura'),(2968,1,'persisch'),(2969,1,'vieles'),(2970,1,'aufzeichnung'),(2971,1,'veroffentlichung'),(2972,1,'unterrichtsbuchern'),(2973,1,'1000'),(2974,1,'ausarbeitete'),(2975,1,'skripte'),(2976,1,'konnte'),(2977,1,'heute'),(2978,1,'veroffentlichen'),(2979,1,'aktivitaten'),(2980,1,'reisen'),(2981,1,'gottesdienst'),(2982,1,'sportwettbewerbe'),(2983,1,'tuba'),(2984,1,'festspiele'),(2985,1,'kulturelle'),(2986,1,'programme'),(2987,1,'geniessen'),(2988,1,'nationale'),(2989,1,'kommissionen'),(2990,1,'100'),(2991,1,'arbeitsgruppen'),(2992,1,'verschiedenen'),(2993,1,'dienstleistungen'),(2994,1,'programmen'),(2995,1,'journalistischen'),(2996,1,'medialen'),(2997,1,'bereichen'),(2998,1,'kunstlerische'),(2999,1,'technische'),(3000,1,'fahigkeitsausbildung'),(3001,1,'interessierte'),(3195,1,'impressum'),(3196,1,'angaben'),(3197,1,'gemass'),(3198,1,'tmg'),(3199,1,'hardenbergstrasse'),(3200,2,'8'),(3201,2,'10623'),(3202,1,'vertreten'),(3203,1,'vorsitzenden'),(3204,2,'kontakt'),(3205,1,'030'),(3206,1,'407'),(3207,1,'410'),(3208,1,'71'),(3209,1,'info'),(3210,1,'almustafa'),(3211,1,'registergericht'),(3212,1,'amtsgericht'),(3213,1,'charlottenburg'),(3214,1,'registernummer'),(3215,1,'hrb'),(3216,1,'177538'),(3217,1,'verantwortlich'),(3218,1,'inhalt'),(3219,1,'55'),(3220,1,'abs'),(3221,1,'rstv'),(3222,1,'haftungsausschluss'),(3223,1,'disclaimer'),(3224,1,'haftung'),(3225,1,'dienstanbieter'),(3226,1,'sind'),(3227,1,'diesen'),(3228,1,'seiten'),(3229,1,'allgemeinen'),(3230,1,'gesetzen'),(3231,1,'diensteanbieter'),(3232,1,'jedoch'),(3233,1,'verpflichtet'),(3234,1,'ubermittelte'),(3235,1,'gespeicherte'),(3236,1,'fremde'),(3237,1,'uberwachen'),(3238,1,'umstanden'),(3239,1,'forschen'),(3240,1,'rechtswidrige'),(3241,1,'tatigkeit'),(3242,1,'hinweisen'),(3243,1,'verpflichtungen'),(3244,1,'entfernung'),(3245,1,'sperrung'),(3246,1,'nutzung'),(3247,1,'bleiben'),(3248,1,'hiervon'),(3249,1,'unberuhrt'),(3250,1,'diesbezugliche'),(3251,1,'erst'),(3252,1,'ab'),(3253,1,'zeitpunkt'),(3254,1,'kenntnis'),(3255,1,'konkreten'),(3256,1,'rechtsverletzung'),(3257,1,'moglich'),(3258,1,'bekanntwerden'),(3259,1,'entsprechenden'),(3260,1,'rechtsverletzungen'),(3261,1,'umgehend'),(3262,1,'entfernen'),(3263,1,'links'),(3264,1,'unser'),(3265,1,'angebot'),(3266,1,'enthalt'),(3267,1,'externen'),(3268,1,'dritter'),(3269,1,'deren'),(3270,1,'keinen'),(3271,1,'einfluss'),(3272,1,'deshalb'),(3273,1,'konnen'),(3274,1,'fremden'),(3275,1,'keine'),(3276,1,'gewahr'),(3277,1,'ubernehmen'),(3278,1,'verlinkten'),(3279,1,'stets'),(3280,1,'jeweilige'),(3281,1,'anbieter'),(3282,1,'betreiber'),(3283,1,'verlinkung'),(3284,1,'mogliche'),(3285,1,'rechtsverstosse'),(3286,1,'uberpruft'),(3287,1,'waren'),(3288,1,'erkennbar'),(3289,1,'permanente'),(3290,1,'inhaltliche'),(3291,1,'kontrolle'),(3292,1,'ohne'),(3293,1,'konkrete'),(3294,1,'anhaltspunkte'),(3295,1,'zumutbar'),(3296,1,'derartige'),(3297,1,'urheberrecht'),(3298,1,'seitenbetreiber'),(3299,1,'erstellten'),(3300,1,'werke'),(3301,1,'unterliegen'),(3302,1,'deutschen'),(3303,1,'vervielfaltigung'),(3304,1,'bearbeitung'),(3305,1,'jede'),(3306,1,'verwertung'),(3307,1,'grenzen'),(3308,1,'urheberrechtes'),(3309,1,'bedurfen'),(3310,1,'schriftlichen'),(3311,1,'zustimmung'),(3312,1,'jeweiligen'),(3313,1,'autors'),(3314,1,'bzw'),(3315,1,'erstellers'),(3316,1,'downloads'),(3317,1,'kopien'),(3318,1,'seite'),(3319,1,'privaten'),(3320,1,'kommerziellen'),(3321,1,'gebrauch'),(3322,1,'gestattet'),(3323,1,'soweit'),(3324,1,'erstellt'),(3325,1,'urheberrechte'),(3326,1,'beachtet'),(3327,1,'insbesondere'),(3328,1,'solche'),(3329,1,'gekennzeichnet'),(3330,1,'sollten'),(3331,1,'trotzdem'),(3332,1,'urheberrechtsverletzung'),(3333,1,'aufmerksam'),(3334,1,'bitten'),(3335,1,'hinweis'),(3336,1,'datenschutzerklarung'),(3337,1,'datenschutz'),(3338,1,'unserer'),(3339,1,'webseite'),(3340,1,'regel'),(3341,1,'angabe'),(3342,1,'personenbezogener'),(3343,1,'daten'),(3344,1,'unseren'),(3345,1,'personenbezogene'),(3346,1,'beispielsweise'),(3347,1,'anschrift'),(3348,1,'adressen'),(3349,1,'erhoben'),(3350,1,'erfolgt'),(3351,1,'dies'),(3352,1,'freiwilliger'),(3353,1,'basis'),(3354,1,'ausdruckliche'),(3355,1,'dritte'),(3356,1,'weitergegeben'),(3357,1,'weisen'),(3358,1,'darauf'),(3359,1,'datenubertragung'),(3360,1,'kommunikation'),(3361,1,'per'),(3362,1,'sicherheitslucken'),(3363,1,'aufweisen'),(3364,1,'luckenloser'),(3365,1,'schutz'),(3366,1,'zugriff'),(3367,1,'rahmen'),(3368,1,'impressumspflicht'),(3369,1,'veroffentlichten'),(3370,1,'kontaktdaten'),(3371,1,'ubersendung'),(3372,1,'ausdrucklich'),(3373,1,'angeforderter'),(3374,1,'werbung'),(3375,1,'informationsmaterialien'),(3376,1,'hiermit'),(3377,1,'widersprochen'),(3378,1,'behalten'),(3379,1,'rechtliche'),(3380,1,'schritte'),(3381,1,'falle'),(3382,1,'unverlangten'),(3383,1,'zusendung'),(3384,1,'werbeinformationen'),(3385,1,'etwa'),(3386,1,'spam'),(3387,1,'mails'),(3388,1,'offenen'),(3389,1,'sprechstunde'),(3390,1,'erhalten'),(3391,1,'gerne'),(3392,1,'beantworten'),(3393,1,'bewerbungs'),(3394,1,'zulassungsverfahren'),(3395,1,'ort'),(3396,1,'adresse'),(3397,1,'hardenbergstr'),(3398,1,'sprechzeiten'),(3399,1,'dienstag'),(3400,1,'12'),(3401,1,'14'),(3402,1,'uhr'),(3403,1,'donnerstag'),(3404,1,'16'),(3405,1,'18'),(3406,1,'unterrubrik'),(3407,1,'c'),(3408,1,'v'),(3409,1,'personal'),(3410,1,'datas'),(3411,1,'address'),(3412,1,'konigsbergerstr'),(3413,1,'no'),(3414,1,'21'),(3415,1,'12207'),(3416,1,'germany'),(3417,1,'0049'),(3418,1,'17662884688'),(3419,1,'mahdi313esf'),(3420,1,'gmail'),(3421,1,'com'),(3422,1,'fu'),(3423,1,'education'),(3424,1,'2014'),(3425,1,'until'),(3426,1,'habilitation'),(3427,1,'research'),(3428,1,'project'),(3429,1,'mystical'),(3430,1,'philosophical'),(3431,1,'fundaments'),(3432,1,'islamic'),(3433,1,'ethics'),(3434,1,'qur'),(3435,1,'institute'),(3436,1,'comparative'),(3437,1,'ethicsfreie'),(3438,1,'supervisor'),(3439,1,'michael'),(3440,1,'bongardt'),(3441,1,'27'),(3442,1,'ph'),(3443,1,'d'),(3444,1,'philosophy'),(3445,1,'from'),(3446,1,'freie'),(3447,1,'magna'),(3448,1,'cum'),(3449,1,'laude'),(3450,1,'not'),(3451,1,'published'),(3452,1,'title'),(3453,1,'meaningfully'),(3454,1,'speakingof'),(3455,1,'unlimitedness'),(3456,1,'07'),(3457,1,'2010'),(3458,1,'30'),(3459,1,'6'),(3460,1,'2013'),(3461,1,'scholarship'),(3462,1,'elsa'),(3463,1,'neumann'),(3464,1,'stipendium'),(3465,1,'2009'),(3466,1,'iranian'),(3467,1,'philosophy1'),(3468,1,'dissertation'),(3469,1,'described'),(3470,1,'excellent'),(3471,1,'how'),(3472,1,'we'),(3473,1,'understand'),(3474,1,'names'),(3475,1,'god'),(3476,1,'study'),(3477,1,'between'),(3478,1,'pseudo'),(3479,1,'dionysius'),(3480,1,'areopagiteand'),(3481,1,'ibn'),(3482,1,'arabi'),(3483,1,'2006'),(3484,1,'04'),(3485,1,'2008'),(3486,1,'stay'),(3487,1,'albert'),(3488,1,'ludwig'),(3489,1,'university'),(3490,1,'freiburg'),(3491,1,'under'),(3492,1,'supervision'),(3493,1,'figal'),(3494,1,'1995'),(3495,1,'mysticism'),(3496,1,'djelveh'),(3497,1,'noor'),(3498,1,'institute2'),(3499,1,'tehran'),(3500,1,'focus'),(3501,1,'mysticism2'),(3502,1,'1993'),(3503,1,'quran'),(3504,1,'focusmystical'),(3505,1,'2001'),(3506,1,'2004'),(3507,1,'master'),(3508,1,'student'),(3509,1,'western'),(3510,1,'humanitiesand'),(3511,1,'cultural'),(3512,1,'studies3'),(3513,1,'average'),(3514,1,'rate'),(3515,1,'17'),(3516,1,'81'),(3517,1,'20'),(3518,1,'00'),(3519,1,'being'),(3520,1,'parmenides'),(3521,1,'logos'),(3522,1,'heraclitus'),(3523,1,'2002'),(3524,1,'avicenna'),(3525,1,'mulla'),(3526,1,'sadra'),(3527,1,'1992'),(3528,1,'industrial'),(3529,1,'engineering'),(3530,1,'technical'),(3531,1,'amirkabir'),(3532,1,'irip'),(3533,1,'jelveh'),(3534,1,'org'),(3535,1,'ihcs'),(3536,1,'ir2'),(3537,1,'workand'),(3538,1,'teachngexperiences'),(3539,1,'se'),(3540,1,'2015'),(3541,1,'teaching'),(3542,1,'universitatberlin'),(3543,1,'topic'),(3544,1,'nicomachean'),(3545,1,'aristotle'),(3546,1,'modern'),(3547,1,'world'),(3548,1,'today'),(3549,1,'short'),(3550,1,'etymological'),(3551,1,'dictionary'),(3552,1,'anic'),(3553,1,'rootsand'),(3554,1,'new'),(3555,1,'translation'),(3556,1,'anbased'),(3557,1,'investigations'),(3558,1,'german'),(3559,1,'language'),(3560,1,'wi'),(3561,1,'2011'),(3562,1,'faculty'),(3563,1,'religious'),(3564,1,'anthropology'),(3565,1,'latin'),(3566,1,'context'),(3567,1,'original'),(3568,1,'questions'),(3569,1,'religion'),(3570,1,'oct'),(3571,1,'center'),(3572,1,'2007'),(3573,1,'researcher'),(3574,1,'textbook'),(3575,1,'djelve'),(3576,1,'2005'),(3577,1,'interpretive'),(3578,1,'manual'),(3579,1,'persian'),(3580,1,'arabic'),(3581,1,'lecturer'),(3582,1,'logic'),(3583,1,'teacher'),(3584,1,'studies'),(3585,1,'high'),(3586,1,'schoollevel'),(3587,1,'literature'),(3588,1,'athigh'),(3589,1,'school'),(3590,1,'level'),(3591,1,'2000'),(3592,1,'training'),(3593,1,'consultant'),(3594,1,'conferences'),(3595,1,'presentations'),(3596,1,'day'),(3597,1,'bretten'),(3598,1,'baden'),(3599,1,'wurttemberg'),(3600,1,'dialogue'),(3601,1,'cultures'),(3602,1,'conference'),(3603,1,'austrian'),(3604,1,'society'),(3605,1,'vienna'),(3606,1,'june'),(3607,1,'thinkingabout'),(3608,1,'boundaries'),(3609,1,'self'),(3610,1,'knowledge'),(3611,1,'heidegger'),(3612,1,'messkirch'),(3613,1,'may'),(3614,1,'nature'),(3615,1,'technology'),(3616,1,'sense'),(3617,1,'pain'),(3618,1,'interdisciplinary'),(3619,1,'publications'),(3620,1,'second'),(3621,1,'global'),(3622,1,'warsaw'),(3623,1,'existential'),(3624,1,'political'),(3625,1,'theology'),(3626,1,'symposium'),(3627,1,'agenda'),(3628,1,'geneve'),(3629,1,'july'),(3630,1,'transformation'),(3631,1,'power'),(3632,1,'brucken'),(3633,1,'schlagen'),(3634,1,'milestone'),(3635,1,'jul'),(3636,1,'bridge'),(3637,1,'cicero'),(3638,1,'early'),(3639,1,'period'),(3640,1,'melanchthon'),(3641,1,'academy'),(3642,1,'stoicism'),(3643,1,'joint'),(3644,1,'meeting'),(3645,1,'south'),(3646,1,'carolina'),(3647,1,'north'),(3648,1,'elon'),(3649,1,'feb'),(3650,1,'speaking'),(3651,1,'about'),(3652,1,'gods'),(3653,1,'cratylus'),(3654,1,'science'),(3655,1,'contexts'),(3656,1,'dynamics'),(3657,1,'change'),(3658,1,'trondheim'),(3659,1,'norway'),(3660,1,'mar'),(3661,1,'islam'),(3662,1,'sciences'),(3663,1,'katholische'),(3664,1,'schwerte'),(3665,1,'invited'),(3666,1,'speaker'),(3667,1,'einfuhrung'),(3668,1,'arabis'),(3669,1,'xxii'),(3670,1,'congress'),(3671,1,'madrid'),(3672,1,'toahid'),(3673,1,'reshaping'),(3674,1,'mercy'),(3675,1,'munster'),(3676,1,'aug'),(3677,1,'his'),(3678,1,'other'),(3679,1,'attributes'),(3680,1,'rometaphysics'),(3681,1,'fifth'),(3682,1,'rome'),(3683,1,'nov'),(3684,1,'metaphysical'),(3685,1,'consequences'),(3686,1,'gewaltlosigkeit'),(3687,1,'evangelische'),(3688,1,'rheinland'),(3689,1,'bonn'),(3690,1,'walten'),(3691,1,'gewalt'),(3692,1,'lebenserfahrung'),(3693,1,'katholischen'),(3694,1,'sozialwesen'),(3695,1,'bound'),(3696,1,'everyday'),(3697,1,'life'),(3698,1,'example'),(3699,1,'destiny'),(3700,1,'freedom'),(3701,1,'workshop'),(3702,1,'zeitgenossische'),(3703,1,'bern'),(3704,1,'sep'),(3705,1,'speech'),(3706,1,'karlsruhe'),(3707,1,'phanomenologie'),(3708,1,'traumes'),(3709,1,'book'),(3710,1,'commentary'),(3711,1,'texts'),(3712,1,'introduction'),(3713,1,'influence'),(3714,1,'paul'),(3715,1,'rorem'),(3716,1,'oxford'),(3717,1,'univ'),(3718,1,'press'),(3719,1,'farsi'),(3720,1,'publication'),(3721,1,'religions'),(3722,1,'denominations'),(3723,1,'human'),(3724,1,'date'),(3725,1,'summer2015in'),(3726,1,'fall'),(3727,1,'paper'),(3728,1,'ḥaqiqi'),(3729,1,'tibari'),(3730,1,'ubersetzung'),(3731,1,'kommentar'),(3732,1,'abhandlung'),(3733,1,'vollkommenheit'),(3734,1,'allamah'),(3735,1,'sayyid'),(3736,1,'husain'),(3737,1,'tabatabai'),(3738,1,'teil'),(3739,1,'spektrum'),(3740,1,'26'),(3741,1,'jahrgang'),(3742,1,'tibar'),(3743,1,'diesseits'),(3744,1,'nr'),(3745,1,'4'),(3746,1,'ciceroin'),(3747,1,'fruhen'),(3748,1,'neuzeit'),(3749,1,'herausgegeben'),(3750,1,'gunter'),(3751,1,'frank'),(3752,1,'anne'),(3753,1,'eusterschulte'),(3754,1,'stadt'),(3755,1,'msb'),(3756,1,'13'),(3757,1,'480'),(3758,1,'s'),(3759,1,'gb'),(3760,1,'isbn'),(3761,1,'978'),(3762,1,'7728'),(3763,1,'2601'),(3764,1,'august'),(3765,1,'ashgate'),(3766,1,'series'),(3767,1,'organizations'),(3768,1,'international'),(3769,1,'desiderate'),(3770,1,'koranforschung'),(3771,1,'19'),(3772,1,'october2014'),(3773,1,'cooperation'),(3774,1,'with'),(3775,1,'munster4'),(3776,1,'fachtagung'),(3777,1,'podiumsdiskussion'),(3778,1,'islamophobie'),(3779,1,'extremismus'),(3780,1,'02'),(3781,1,'berlin5'),(3782,1,'interreligiousconference'),(3783,1,'vernunft'),(3784,1,'theorie'),(3785,1,'praxis'),(3786,1,'mai'),(3787,1,'maternushaus'),(3788,1,'koln6'),(3789,1,'interreligious'),(3790,1,'kapital'),(3791,1,'berlin7'),(3792,1,'sis'),(3793,1,'p'),(3794,1,'91'),(3795,1,'211'),(3796,1,'179'),(3797,1,'59'),(3798,1,'funding'),(3799,1,'fund'),(3800,1,'anetymological'),(3801,1,'roots'),(3802,1,'based'),(3803,1,'directorof'),(3804,1,'introductionseriesto'),(3805,1,'volumes'),(3806,1,'head'),(3807,1,'editor'),(3808,1,'director'),(3809,1,'teachings'),(3810,1,'booksfor'),(3811,1,'children'),(3812,1,'youth'),(3813,1,'stipend'),(3814,1,'skills'),(3815,1,'advanced'),(3816,1,'expert'),(3817,1,'native'),(3818,1,'well'),(3819,1,'ancient'),(3820,1,'greek'),(3821,1,'passive'),(3822,1,'references'),(3823,1,'list'),(3824,1,'he'),(3825,1,'my'),(3826,1,'professor'),(3827,1,'postdoc'),(3828,1,'free'),(3829,1,'mbongard'),(3830,1,'zedat'),(3831,1,'melanchton'),(3832,1,'beheshti'),(3833,1,'department'),(3834,1,'academyof'),(3835,1,'arts'),(3836,1,'wassupervisor'),(3837,1,'drmrhosseini'),(3838,1,'yahoo'),(3868,1,'2018'),(3869,1,'blah'),(3870,1,'blsdsdadsa'),(3890,1,'grundung'),(3891,1,'juni'),(3892,1,'kurze'),(3893,1,'gesamtinfo'),(3894,1,'team'),(3895,1,'kooperationspartner'),(3896,1,'zusammengefasste'),(3897,1,'hinblick'),(3898,1,'lagevorteile'),(3899,1,'unten'),(3900,1,'zeile'),(3901,1,'googlemaps'),(3902,1,'markierung'),(3903,1,'einfugen');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart'),(7,'application',NULL,'Application','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1'),('ezpublish-version','6.4.0');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1482636915,30,1,0,1482636915,'8e2b80e6b9d7b755768d0834eaa2b2b2','http://en.miu.ac.ir/'),(1482637147,31,1,0,1482637147,'fde471d1fc688864bddb95b0a03a2cb5','http://irip.ir/'),(1482637147,32,1,0,1482637147,'4c4186952ec6d9f365bc0d91afeb104a','http://jelveh.org/'),(1482637147,33,1,0,1482637147,'dd5b6f8803b046f046fa9f7b1a615a52','http://www.ihcs.ac.ir2/'),(1482637147,34,1,0,1482637147,'a141d632e4d94cb1152f0aad3b74da46','http://sis-de.com/?p=91'),(1482637147,35,1,0,1482637147,'fccbb28bd133480bae5996dccb5f892d','http://sis-de.com/?p=211'),(1482637147,36,1,0,1482637147,'2e11ce69d4800a7005d87bb560b96e7c','http://sis-de.com/?p=179'),(1482637147,37,1,0,1482637147,'4f78ab3568b04f17f45feb5d72cd1315','http://sis-de.com/?p=59'),(1482639161,38,1,0,1482639161,'67f35238792c14299642415ecc81c3b3','http://www.almustafa.de/');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (455,1,30),(466,1,31),(466,1,32),(466,1,33),(466,1,34),(466,1,35),(466,1,36),(466,1,37),(490,1,38),(490,2,38),(490,2,38),(466,2,31),(466,2,32),(466,2,33),(466,2,34),(466,2,35),(466,2,36),(466,2,37),(466,2,31),(466,2,32),(466,2,33),(466,2,34),(466,2,35),(466,2,36),(466,2,37);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` bigint(20) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('eznode:67','eznode',1,97,0,0,5,51,0,'Folder-1','00c96df9cd9d010ff263477f20621bca'),('eznode:77','eznode',0,61,0,1,5,61,0,'Veranstaltungen','071fae8a900e0092e887f3d604a49bbd'),('eznode:65','eznode',1,49,0,1,5,49,0,'Ueber-uns','32d11cc18ca4520fc6b900b928c2f0e1'),('eznode:77','eznode',1,96,0,0,5,61,0,'Vernstellungen','402cf2026c1252bf549651d94e28a984'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('eznode:121','eznode',0,144,0,1,5,144,0,'Applications2','4b1a0d2ade5a88594b274718d42d53f8'),('eznode:71','eznode',0,104,0,0,5,55,0,'Forschungsprojekte','4e130d846b14057345eb89a1c3648c04'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:71','eznode',0,55,0,1,5,55,0,'Forschung','91b6aeca692d95bb712fe78fe3039255'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:107','eznode',0,110,0,1,4,110,0,'Impressum','c3be4d4b41c11a55dd69ae16a96b51c6'),('eznode:2','eznode',1,1,0,1,5,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:71','eznode',1,103,0,0,5,55,0,'Folder-2','dddcdf376c1131c3b095c3b12f2bfb6b'),('eznode:67','eznode',0,51,0,1,5,51,0,'Studium','e0432b98442d77d2a6436ba4e6c28ba9'),('eznode:79','eznode',0,64,0,1,5,64,0,'Forschungreisen','e09cd6a92aa493e7e38982555d74dc1a'),('eznode:108','eznode',0,112,0,1,4,112,0,'Kontakt','fa84f07b07663634f3a7a260447a24c3'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:56','eznode',0,40,0,1,3,40,4,'Amir-Test-Amir-Test','cf0de445238ec5084251469ac3342c70'),('eznode:15','eznode',1,91,0,0,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,8,0,1,3,8,5,'Amir-Koklan','90c93d9d0307a665c281e060c7d55368'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:95','eznode',0,94,0,1,3,94,18,'Qom2','2f52bc118434a43b3db33d6f0c7c5196'),('eznode:109','eznode',0,113,0,1,3,113,18,'Esfahani','39fe5bae431759f7dcd7a160cff04c3f'),('eznode:105','eznode',1,108,0,1,4,108,49,'Ueber-uns','32d11cc18ca4520fc6b900b928c2f0e1'),('eznode:106','eznode',1,109,0,1,4,109,49,'Partneruniversitaet','b3b0443ad62e30a5d71dcf0901951366'),('eznode:101','eznode',1,102,0,1,4,102,51,'Dr.-des.-Mahdi-Esfahani-Unterrubrik-von-Dozenten','85b52832d9e51712688c3dba0fbfc1a5'),('eznode:97','eznode',1,98,0,1,4,98,51,'Islamische-Theologie-B.A.','b32f7e266bad98d9ff12d169932fc119'),('eznode:99','eznode',0,100,0,1,4,100,51,'Kooperation','bb5cd971ae73f59ec4aeba9aa859266c'),('eznode:98','eznode',0,99,0,1,4,99,51,'Modulhandbuch','efb00683e7bcb30e55076f05b11bab07'),('eznode:100','eznode',1,101,0,1,4,101,51,'Dozenten','f5d90366e24b0615c6156b3b272f94d1'),('eznode:103','eznode',0,106,0,1,4,106,55,'Publikationen','0d226eaf51801b8b141ff74fda9a2ae5'),('eznode:104','eznode',0,107,0,1,4,107,55,'Institutszeitschrift','2b03e9dea752ba8c702918ba3409316b'),('eznode:102','eznode',0,105,0,1,4,105,55,'Forschungsprojekte','4e130d846b14057345eb89a1c3648c04'),('eznode:78','eznode',0,67,0,0,5,62,61,'location_78','3fe12025b1fc810eac19c08424121c81'),('eznode:94','eznode',0,93,0,1,5,93,61,'Blog-Post-3','a9122dce667051c1283c683d2e980cc6'),('eznode:78','eznode',1,62,0,1,7,62,61,'First-Blog','aa9f805dafafcd4f26acd081bedf15af'),('eznode:93','eznode',1,92,0,1,5,92,61,'Lorem-Ipsum-ist-ein-einfacher-Demo','b5f4307dbbbc9475698304145495a432'),('eznode:125','eznode',0,148,0,1,5,148,64,'Qom-2018','7abed27919c61ad0859bbd30d671e2b1'),('eznode:82','eznode',1,68,0,1,5,68,64,'Qom-2016','e34aa6ed5001b7e5c787bb31ff331079');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  UNIQUE KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'amirkoklan@gmail.com','admin','e8610778ccafcc584b8cf5cefd990e08',2),(54,'amir@test.de','amir.test','d738f23739286b45b542c0518b6be838',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(12,34,'','',2),(13,70,'','',4),(11,71,'','',4),(11,76,'','',1),(42,77,'','',1);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14),(1,0,54);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1301057720,0,1301057720,0,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-30  4:32:12
