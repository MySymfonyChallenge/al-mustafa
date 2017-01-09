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
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1);
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
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,2,1481048844,14,'a3d405b81be900468eb153d774f4f0d2','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,2,1482637036,14,'c15b600eb9198b1924063b5a68758232','b:0;','a:1:{s:6:\"eng-GB\";s:7:\"Article\";}',1,1,NULL,0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,2,1483449781,14,'40faa822edc579b02c25f6bb7beec3ad','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"User\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1480380009,14,13,'application',2,0,2,1483887709,14,'5bbf5190e1e47c1bb05d51f6a98adf33','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Application\";}',2,0,'',0),(1,'<title>',1480551193,14,14,'event',2,1,2,1482517052,14,'8b414d609e96ba561a2463bb17a7ef56','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Event\";}',2,0,'',0),(1,'<first_name> <last_name>',1480551381,14,15,'attendee',2,0,2,1482838963,14,'612d38f4afcd632193e0a157eb5a90ef','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Attendee\";}',2,0,'',0),(1,'<name>',1480551543,14,16,'blog',2,1,2,1481073123,14,'2d9f3d0b6c2e6b57cd5864b815cbe5dc','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Blog\";}',2,0,'',0),(1,'<title>',1480551600,14,17,'blog_post',2,0,2,1481335889,14,'b0e4e5af9ed5e162520c9a5654cd65e0','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Blog Post\";}',2,0,'',0),(1,'<title>',1480877045,14,18,'home',2,1,2,1482464128,14,'f57a2f16dc09e0713817861099024d5b','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Home\";}',2,0,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'New article',NULL,NULL,NULL,NULL,'ezstring',1,'title',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring',4,'name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',8,'first_name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"First name\";}',0),(1,'',4,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',9,'last_name',0,1,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:9:\"Last name\";}',0),(0,'',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezuser',12,'user_account',0,1,0,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:12:\"User account\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',119,'short_description',0,0,1,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}',0),(1,'',2,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',121,'body',0,0,1,5,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Body\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezobjectrelation',154,'image',0,0,1,7,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',155,'short_name',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}',0),(1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',156,'description',0,0,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',181,'first_name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',182,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',184,'first_name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',185,'last_name',0,1,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',186,'name',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',187,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',188,'description',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',189,'title',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',190,'description',0,0,0,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',191,'show_menu',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',192,'show_menu',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',193,'publication_date',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',194,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',195,'listing_image',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',196,'cv',0,0,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:2:\"CV\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',197,'last_name',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',198,'image1',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 1\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',199,'image2',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 2\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',200,'image3',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 3\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',201,'image4',0,0,0,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 4\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',202,'image5',0,0,0,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 5\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',203,'image_bottom',0,0,0,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Bottom Image\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',204,'title_bottom',0,0,1,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Title Bottom\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',205,'text_bottom',0,0,0,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Text bottom\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',206,'listing_image',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',207,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',208,'publication_date',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<adjustment><year value=\"0\"/><month value=\"1\"/><day value=\"0\"/><hour value=\"0\"/><minute value=\"0\"/><second value=\"0\"/></adjustment>\n','ezdatetime',209,'deadline',0,0,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Deadline\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',210,'description',0,0,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,400,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',211,'father_name',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Vorname des Vaters\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Männlich\"/><option id=\"1\" name=\"Weiblich\"/></options></ezselection>\n','ezselection',212,'gender',0,1,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Geschlecht\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',213,'degree',0,0,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Akademischer Grad\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',214,'specification',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:32:\"Wissenschaftliche Spezifizierung\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',215,'job',0,0,1,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Berufstätigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',217,'confession',0,0,1,11,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Konfession\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',218,'nationality',0,0,1,12,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Staatsangehörigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',219,'experience',0,0,1,13,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:35:\"Erfahrungen im  kulturellen Bereich\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',220,'language',0,0,1,14,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Sprachkenntnisse\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',221,'residence_iran',0,0,1,15,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:30:\"Aufenthaltserfahrungen im Iran\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',222,'show_menu',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',225,'birthday',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Birthday\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',226,'birthday',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Geburstag\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',227,'father_name',0,1,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Vorname des Vaters\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',228,'street',0,1,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Straße\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',229,'house_number',0,1,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Hausnummer\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',230,'postal_code',0,1,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:3:\"PLZ\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',231,'city',0,1,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Wohnort\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',232,'country',0,1,1,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Staat\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',233,'tel',0,1,1,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Telefon\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',234,'mobile',0,1,1,11,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Mobilnummer\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezemail',235,'email',0,1,1,12,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:6:\"E-mail\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Männlich\"/><option id=\"1\" name=\"Weiblich\"/></options></ezselection>\n','ezselection',236,'gender',0,1,1,13,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Geschlecht\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',238,'birth_city',0,1,1,14,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Geburtsort\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Verheiratet\"/><option id=\"1\" name=\"Single\"/></options></ezselection>\n','ezselection',239,'martial',0,1,1,15,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:13:\"Familienstand\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,30,NULL,3,NULL,NULL,NULL,NULL,NULL,'ezinteger',240,'children',0,1,1,16,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Anzahl der Kinder\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',241,'earlier_citizenship',0,0,1,17,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:29:\"Frühere Staatsangehörigkeit\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',242,'citizenship',0,1,1,18,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:29:\"Aktuelle Staatsangehörigkeit\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',243,'earlier_confession',0,0,1,19,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Frühere Konfession\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',244,'confession',0,1,1,20,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Aktuelle Konfession\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',245,'resume',0,0,0,21,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:28:\"Lebenslauf in zwei Absätzen\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',246,'father_lastname',0,1,1,22,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Nachname des Vaters\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',247,'father_confession',0,0,1,23,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Aktuelle Konfession\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',248,'father_citizenship',0,0,1,24,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:29:\"Aktuelle Staatsangehörigkeit\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',249,'father_job',0,0,1,25,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Beruf\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',250,'spouse_name',0,0,1,26,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Vorname der Ehefrau\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',251,'spouse_lastname',0,0,1,27,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Nachname der Ehefrau\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',252,'wife_confession',0,0,1,28,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Aktuelle Konfession\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',253,'wife_citizenship',0,0,1,29,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:29:\"Aktuelle Staatsangehörigkeit\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',254,'wife_job',0,0,1,30,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Beruf\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',255,'health_problems',0,0,0,31,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:45:\"Gesundheitliche Verfassung (bitte erläutern)\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',256,'nickname',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Spitzname\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',257,'degree',0,1,1,32,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Abschluss\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',258,'major',0,1,1,33,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Fach\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',259,'education_city',0,0,1,34,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Ort der Ausbildung\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',260,'year_of_graduation',0,0,1,35,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:14:\"Abschlussjahr:\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',261,'average_grade',0,1,1,36,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Notendurchschnitt\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',262,'graduation_grade',0,1,1,37,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:24:\"Note der Abschlussarbeit\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',263,'theology_certificate',0,0,1,38,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:22:\"Theologische Abschluss\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',264,'theology_school',0,0,1,39,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:19:\"Theologische Schule\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',265,'theology_school_location',0,0,1,40,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:27:\"Theologische Ausbildungsort\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',266,'theology_study_length',0,0,1,41,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Dauer der Ausbildung\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',267,'quran_proficiency',0,0,1,42,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:64:\"Ausmaß der Auswendigkeit des Qur’ans (in Qur’anabschnitten)\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',268,'islamic_books',0,0,1,43,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:54:\"Islamische Bücher, die Sie vollständig gelesen haben\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',270,'reference_name',0,1,1,45,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Netzwerk Vorname\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',271,'reference_lastname',0,1,1,46,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Netzwerk Nachname\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',272,'reference_job',0,1,1,47,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:14:\"Netzwerk Beruf\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',273,'reference_tel',0,1,1,48,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Netzwerk Telefon\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',274,'reference_email',0,0,1,49,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:15:\"Netzwerk E-Mail\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',275,'reference_address',0,0,1,50,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Netzwerk Anschrift\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',276,'iranian_reference_name',0,0,1,51,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:26:\"Iranische Netzwerk Vorname\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',277,'iranian_reference_lastname',0,0,1,52,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:27:\"Iranische Netzwerk Nachname\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',278,'iranian_reference_job',0,0,1,53,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:24:\"Iranische Netzwerk Beruf\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',279,'iranian_reference_tel',0,0,1,54,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:26:\"Iranische Netzwerk Telefon\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',280,'iranian_reference_email',0,0,1,55,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:24:\"Iranische Netzwerk Email\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',281,'iranian_reference_address',0,0,1,56,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:28:\"Iranische Netzwerk Anschrift\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',282,'countries_visited',0,0,1,57,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Auslandsreisen Staat\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',283,'reason_visiting',0,0,1,58,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:15:\"Grund der Reise\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',284,'passport_photo',0,1,1,59,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Passfoto\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',285,'passport',0,1,1,60,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Ausweis/Reisepass\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',286,'certificate',0,1,1,61,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:24:\"Nachweis über Abschluss\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',287,'theology_certificate_scan',0,0,1,62,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:39:\"Nachweis über theologische  Ausbildung\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',288,'marriage_certificate',0,0,1,63,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Ehevertrag Nr. 1\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',289,'marriage_certificate1',0,0,1,64,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Ehevertrag Nr. 2\";}',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,8,14,2,3,1482635649,'Amir Koklan',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(4,1,54,2,3,1480382570,'Amir Test Amir Test',14,1480382570,'0e290e8ddd593c956ce978e920688f08',2,1),(1,2,63,4,5,1482639020,'Über uns',14,1480886445,'cb42c6d41024ba0dd623dc35854e184e',1,1),(1,3,65,4,5,1482635717,'Studium',14,1480901813,'61b7594e99cb23db57ef56c11c3de084',1,1),(1,4,69,4,5,1482638367,'Forschung',14,1480902015,'76db0e8d7ba793509c928fc2f34257d8',1,1),(16,3,75,4,5,1482540280,'Veranstaltungen',14,1480987917,'ac532cf14bfd97ad0a7ce203df7a373e',1,1),(17,7,76,4,7,1483636804,'Fotografie Workshop',14,1481073301,'002610dba64998387f0b932633c3c2d5',1,1),(16,1,77,4,5,1481239640,'Forschungreisen',14,1481239640,'d95ec8497384a566d659e880b153fc48',1,1),(14,10,80,4,5,1483451882,'Forschungsreise März 2017',14,1481337197,'6b926032c7c2b1bbf03523da6a531afd',1,1),(17,6,101,4,5,1483453323,'Forschungsreise März 2017',14,1482467232,'5e5309153f03b3c4c85858f0f33c43b7',1,1),(5,1,103,2,3,1482517381,'Qom2',14,1482517381,'db48b64037838563cc252b8f6958271f',3,1),(2,8,105,4,4,1483457447,'Islamische Theologie (B.A.)',14,1482635909,'9272d5ab2c0b67e2c2b241f009c95fbd',1,1),(2,2,106,4,4,1483459843,'Modulhandbuch',14,1482636598,'2419dbfb219bcb8809af8c184b0cc693',1,1),(2,3,107,4,4,1483460667,'Kooperation',14,1482636915,'b1a223a5781fb066257f6a246cc105c8',1,1),(2,3,108,4,4,1483461131,'Dozenten',14,1482636972,'eb30ea631fb23642ff614acf9eeeea51',1,1),(2,6,109,4,4,1483462506,'Dr. des. Mahdi Esfahani',14,1482637147,'759d2c8442383009a76941279273a035',1,1),(2,3,110,4,4,1483463751,'Forschungsprojekte',14,1482638406,'748146f858e9899026093e6c48f910d2',1,1),(2,2,111,4,4,1483454906,'Publikationen',14,1482638615,'cb9ca9c84ac4dbc6f519b9fdaf6f3b10',1,1),(2,3,112,4,4,1483463807,'Institutszeitschrift',14,1482638662,'7097ab9fb88d2c4b6b57e01768839119',1,1),(2,2,113,4,4,1483463641,'Über uns',14,1482638992,'abb9b6480838b1e2bb934a10321bdafd',1,1),(2,4,114,4,4,1483464185,'Partneruniversität',14,1482639073,'51774f50cd9e8d93f0213873b6c18320',1,1),(2,2,115,4,4,1482639182,'Impressum',14,1482639161,'a43053a773d03e857883bdfd46ebf551',1,1),(2,1,116,4,4,1482641127,'Kontakt',14,1482641127,'ec09d6de676e9b4a8f615ad5633e4a34',1,1),(5,1,117,2,3,1482653677,'Esfahani',14,1482653677,'70c1448508ee0d7a42ba9ad3c3d251fd',3,1),(18,4,146,4,5,1483449401,'Al-Mustafa Institut',14,1482887849,'3453d7924566e8cb4be9a2e764b8b3d6',1,1),(1,1,147,4,5,1482887942,'Applications',14,1482887942,'e1fe0c15a4f8cfe783893eee1c0e825c',1,1),(4,1,149,4,4,1483350375,'Al-Mustafa Institut',10,1483350375,'65f5965b0b38d5662d7ee1ebbaba21b3',2,1),(4,1,150,4,4,1483366065,'Shayan Arkian',10,1483366065,'e3073a45cc023a955bf37099c662e600',2,1),(4,1,151,4,4,1483546049,'Oliver Malik',10,1483546049,'080e176502b1abd52195d0a660f4005f',2,1),(4,1,153,4,4,1483546253,'Ali Taouil',10,1483546253,'b8a18946c55167886491aa3ebd3f7911',2,1),(17,3,156,4,5,1483636345,'Studiumbeginn',150,1483636155,'df3bd60f6f7728a80a2f071881f79dfd',1,1),(4,1,162,4,4,1483797355,'Hassan Khalife',10,1483797355,'2aae371c582b10a46ce74529f2b44edc',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=1180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,8,14,NULL,NULL,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',5),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',6),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',7),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',8),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(0,9,14,NULL,NULL,'User','ezstring',29,'eng-GB',3,0,'user',4),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',5),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',6),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',7),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',8),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',4),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',5),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',6),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',7),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',8),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',105,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',126,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',145,'eng-GB',3,0,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',150,'eng-GB',3,0,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',155,'eng-GB',3,0,'',1),(0,8,54,NULL,NULL,'Amir Test','ezstring',186,'eng-GB',3,0,'amir test',1),(0,9,54,NULL,NULL,'Amir Test','ezstring',187,'eng-GB',3,0,'amir test',1),(0,12,54,NULL,NULL,NULL,'ezuser',188,'eng-GB',3,0,'',1),(0,4,63,NULL,NULL,'Über uns','ezstring',204,'ger-DE',5,0,'über uns',1),(0,4,63,NULL,NULL,'Über uns','ezstring',204,'ger-DE',5,0,'über uns',2),(0,155,63,NULL,NULL,'Über uns','ezstring',205,'ger-DE',5,0,'über uns',1),(0,155,63,NULL,NULL,'Über uns','ezstring',205,'ger-DE',5,0,'über uns',2),(0,119,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hi There</para></section>\n','ezrichtext',206,'ger-DE',5,0,'',1),(0,119,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',206,'ger-DE',5,0,'',2),(0,156,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hello!</para></section>\n','ezrichtext',207,'ger-DE',5,0,'',1),(0,156,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',207,'ger-DE',5,0,'',2),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',1),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',2),(0,4,65,NULL,NULL,'Studium','ezstring',212,'ger-DE',5,0,'studium',3),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',1),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',2),(0,155,65,NULL,NULL,'Studium','ezstring',213,'ger-DE',5,0,'studium',3),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',1),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',2),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',3),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',1),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',2),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',3),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',1),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',2),(0,4,69,NULL,NULL,'Forschungsprojekte','ezstring',228,'ger-DE',5,0,'forschungsprojekte',3),(0,4,69,NULL,NULL,'Forschung','ezstring',228,'ger-DE',5,0,'forschung',4),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',1),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',2),(0,155,69,NULL,NULL,'Forschungsprojekte','ezstring',229,'ger-DE',5,0,'forschungsprojekte',3),(0,155,69,NULL,NULL,'Forschung','ezstring',229,'ger-DE',5,0,'forschung',4),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',1),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',2),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',3),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',4),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',1),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',2),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',3),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',4),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',1),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',2),(0,186,75,NULL,NULL,'Veranstaltungen','ezstring',252,'ger-DE',5,0,'veranstaltungen',3),(0,191,41,NULL,0,NULL,'ezboolean',254,'eng-GB',3,0,'',1),(0,191,45,NULL,0,NULL,'ezboolean',255,'eng-GB',3,0,'',1),(0,191,49,NULL,0,NULL,'ezboolean',256,'eng-GB',3,0,'',1),(0,191,50,NULL,0,NULL,'ezboolean',257,'eng-GB',3,0,'',1),(0,191,51,NULL,0,NULL,'ezboolean',258,'eng-GB',3,0,'',1),(0,191,63,NULL,0,NULL,'ezboolean',261,'ger-DE',5,0,'',1),(0,191,63,NULL,1,NULL,'ezboolean',261,'ger-DE',5,1,'',2),(0,191,65,NULL,0,NULL,'ezboolean',263,'ger-DE',5,0,'',1),(0,191,65,NULL,1,NULL,'ezboolean',263,'ger-DE',5,1,'',2),(0,191,65,NULL,1,NULL,'ezboolean',263,'ger-DE',5,1,'',3),(0,191,69,NULL,0,NULL,'ezboolean',267,'ger-DE',5,0,'',1),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',2),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',3),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',4),(0,192,75,NULL,0,NULL,'ezboolean',273,'ger-DE',5,0,'',1),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',2),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',2),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',4),(0,187,76,NULL,NULL,'Fotografie Workshop','ezstring',274,'ger-DE',5,0,'fotografie workshop',5),(0,187,76,NULL,NULL,'Fotografie Workshop','ezstring',274,'ger-DE',5,0,'fotografie workshop',6),(0,187,76,NULL,NULL,'Fotografie Workshop','ezstring',274,'ger-DE',5,0,'fotografie workshop',7),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',2),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',275,'ger-DE',5,0,'',5),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para><literallayout class=\"normal\">In Kooperation mit der Muslimischen Medienakademie möchten wir Sie gerne zum Workshop der Fotografie einladen. \n  \nFotografie Workshop \n19. November 2016 \n10:00 bis 17:00 Uhr \nTeilnahmegebühr: 50 € </literallayout></para><para><literallayout class=\"normal\">Veranstaltungsort: \nAl-Mustafa Institut \nHardenbergstr. 8 \n10623 Berlin </literallayout></para><para>Bei Fragen und Anmeldungen bitte direkt an <link xlink:href=\"ezurl://40\" xlink:show=\"none\">anmeldung@muslimische-medienakademie.de </link>wenden.</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',6),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In Kooperation mit der Muslimischen Medienakademie wurde am 19. November 2016 ein Workshop über Fotografie in den Räumlichkeiten der Al-Mustafa Institut abgehalten. Wir bedanken uns an dieser Stelle noch einmal bei den zahlreichen Teilnehmern und bei der Muslimischen Medienakademie für die erfolgreiche Durchführung des Workshops.</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',7),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',2),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',3),(0,193,76,NULL,1480546800,NULL,'ezdate',276,'ger-DE',5,1480546800,'',4),(0,193,76,NULL,1480464000,NULL,'ezdate',276,'ger-DE',5,1480464000,'',5),(0,193,76,NULL,1480464000,NULL,'ezdate',276,'ger-DE',5,1480464000,'',6),(0,193,76,NULL,1480464000,NULL,'ezdate',276,'ger-DE',5,1480464000,'',7),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',2),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',3),(0,194,76,NULL,NULL,'If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.','eztext',277,'ger-DE',5,0,'',4),(0,194,76,NULL,NULL,'In Kooperation mit der Muslimischen Medienakademie möchsten wir Sie gerne zum Workshop der Fotografie einladen. \n  \nFotografie Workshop \n19. November 2016 \n10:00 bis 17:00 Uhr \nTeilnahmegebühr: 50 € \n\nVeranstaltungsort: \nAl-Mustafa Institut \nHardenbergstr. 8 \n10623 Berlin \n\nBei Fragen und Anmeldungen bitte direkt an anmeldung@muslimische-medienakademie.de wenden.','eztext',277,'ger-DE',5,0,'',5),(0,194,76,NULL,NULL,'In Kooperation mit der Muslimischen Medienakademie möchten wir Sie gerne zum Workshop der Fotografie einladen.','eztext',277,'ger-DE',5,0,'',6),(0,194,76,NULL,NULL,'In Kooperation mit der Muslimischen Medienakademie wurde am 19. November 2016 der Fotografie-Workshop in den Räumlichkeiten der Al-Mustafa Institut abgehalten. ','eztext',277,'ger-DE',5,0,'',7),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481074441\">\n  <original attribute_id=\"278\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',2),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"278\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"278\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',4),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483452383\">\n  <original attribute_id=\"278\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',5),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453638\">\n  <original attribute_id=\"278\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',6),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483636801\">\n  <original attribute_id=\"278\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',7),(0,186,77,NULL,NULL,'Forschungreisen','ezstring',279,'ger-DE',5,0,'forschungreisen',1),(0,192,77,NULL,1,NULL,'ezboolean',280,'ger-DE',5,1,'',1),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',4),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',5),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',6),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',7),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',5),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',6),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',7),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',3),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',4),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',5),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',6),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',7),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',3),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',4),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',5),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',6),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',7),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"295\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"295\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',4),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483452383\">\n  <original attribute_id=\"295\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',5),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453638\">\n  <original attribute_id=\"295\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',6),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483636801\">\n  <original attribute_id=\"295\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',7),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',5),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',6),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',7),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',8),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',9),(0,182,80,NULL,NULL,'Forschungsreise März 2017','ezstring',296,'ger-DE',5,0,'forschungsreise märz 2017',10),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',1),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',2),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',3),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',4),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',5),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',6),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',7),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',8),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',9),(0,187,101,NULL,NULL,'Forschungsreise März 2017','ezstring',372,'ger-DE',5,0,'forschungsreise märz 2017',10),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',1),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',2),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para></section>\n','ezrichtext',373,'ger-DE',5,0,'',3),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para></section>\n','ezrichtext',373,'ger-DE',5,0,'',4),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden:</emphasis></para><para><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',5),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden: </emphasis><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',6),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden: </emphasis><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',7),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden: </emphasis><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',8),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden: </emphasis><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',9),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><para><emphasis role=\"strong\">Die Anmeldefrist endet am 25. Dezember 2016. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Wir bitten daher alle Interessenten, ihre Bewerbungen an folgende E-Mail Adresse zu senden: </emphasis><link xlink:href=\"ezurl://39\" xlink:show=\"none\"><emphasis role=\"strong\">info@almustafa.de</emphasis></link></para><para><emphasis role=\"strong\">Folgende Unterlagen sind der Bewerbung beizufügen:</emphasis></para><itemizedlist><listitem><para><emphasis role=\"strong\">Reisepasskopie (gültig bis mindestens sieben Monate nach Reisebeginn)</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Formular (siehe Anhang) </emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Passbild</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Kopie vom Abiturzeugnis oder Immatrikulationsbescheinigung</emphasis></para></listitem><listitem><para><emphasis role=\"strong\">Lebenslauf</emphasis></para></listitem></itemizedlist></section>\n','ezrichtext',373,'ger-DE',5,0,'',10),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',1),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',2),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',3),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',4),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',5),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',6),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',7),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',8),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',9),(0,193,101,NULL,1482364800,NULL,'ezdate',374,'ger-DE',5,1482364800,'',10),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',1),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',2),(0,194,101,NULL,NULL,NULL,'eztext',375,'ger-DE',5,0,'',3),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',4),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',5),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',6),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',7),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',8),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',9),(0,194,101,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht.\n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.','eztext',375,'ger-DE',5,0,'',10),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/6/7/3/0/376-1-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467232\">\n  <original attribute_id=\"376\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',1),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469064\">\n  <original attribute_id=\"376\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',2),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453039\">\n  <original attribute_id=\"376\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',3),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453147\">\n  <original attribute_id=\"376\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',4),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453289\">\n  <original attribute_id=\"376\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',5),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483453321\">\n  <original attribute_id=\"376\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',6),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483474309\">\n  <original attribute_id=\"376\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',7),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483474603\">\n  <original attribute_id=\"376\" attribute_version=\"8\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',8),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483475322\">\n  <original attribute_id=\"376\" attribute_version=\"9\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',9),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483475663\">\n  <original attribute_id=\"376\" attribute_version=\"10\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',10),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517478\">\n  <original attribute_id=\"382\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',5),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518220\">\n  <original attribute_id=\"382\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',6),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518440\">\n  <original attribute_id=\"382\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',7),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518590\">\n  <original attribute_id=\"382\" attribute_version=\"8\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',8),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483451383\">\n  <original attribute_id=\"382\" attribute_version=\"9\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',9),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483451527\">\n  <original attribute_id=\"382\" attribute_version=\"10\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',10),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',5),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',6),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',7),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',8),(0,207,80,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. \n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.\n\nFerner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. \n\nDas Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.\n\nDie Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.\nVoraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.','eztext',383,'ger-DE',5,0,'',9),(0,207,80,NULL,NULL,'Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. \n\nZiel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.\n\nFerner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. \n\nDas Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.\n\nDie Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.\nVoraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.','eztext',383,'ger-DE',5,0,'',10),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',5),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',6),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',7),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',8),(0,208,80,NULL,1482364800,NULL,'ezdate',384,'ger-DE',5,1482364800,'',9),(0,208,80,NULL,1482364800,NULL,'ezdate',384,'ger-DE',5,1482364800,'',10),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',5),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',6),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',7),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',8),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',9),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',10),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',5),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',6),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',7),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',8),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',9),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut mit Sitz in Berlin freut sich, Ihnen mitteilen zu dürfen, dass für März 2017 ein Forschungsaufenthalt in Qum/Iran zur Ausschreibung aussteht. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ziel der Reise ist es, interessierten Studierenden und/oder Abiturienten die Gelegenheit zu bieten, diverse Seminare im Bereich der islamischen Studien zu besuchen, um dabei umfangreiche Grundkenntnisse in den verschiedenen Themengebieten erlangen zu können. Die Inhalte der Seminare werden dem akademischen Niveau der jeweils anwesenden Gäste entsprechen. Die Unterrichtseinheiten sind vornehmlich englischsprachig, können in Ausnahmefällen aber auch auf Arabisch oder Persisch (mit einer Übersetzung ins Deutsche) stattfinden.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Ferner wird neben den Lehrveranstaltungen auch ein kulturelles Programm organisiert, das voraussichtlich 1-2 Reisen nach Maschhad, Isfahan oder Teheran beinhaltet. Die Gesamtaufenthaltsdauer der Forschungsreise beträgt ca. einen Monat. </emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Das Al-Mustafa Institut übernimmt für diesen Zeitraum die Übernachtungs- und Verpflegungskosten. Die Kosten für den Hin- und Rückflug sowie die Reisekosten im Iran sind von dem Reisenden selbst zu tragen.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Die Teilnehmerzahl ist auf 25 Personen begrenzt. Im Rahmen des Auswahlverfahrens wird den Bewerbern gemäß ihrer akademischen Qualifikation Vorzug gewährt.</emphasis></para><para ezxhtml:textalign=\"justify\"><emphasis role=\"strong\">Voraussetzung für die Bewerbung ist der Nachweis eines Abiturzeugnisses von einer in Deutschland anerkannten Schule und/oder die Immatrikulation an einer Universität mit Sitz in Deutschland.</emphasis></para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',10),(0,116,103,NULL,NULL,'Qom2','ezstring',387,'eng-GB',3,0,'qom2',1),(0,117,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',388,'eng-GB',3,0,'',1),(0,118,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Qom1.jpg\"\n    suffix=\"jpg\" basename=\"Qom1\" dirpath=\"var/site/storage/images/9/8/3/0/389-1-eng-GB\" url=\"var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg\"\n    original_filename=\"Qom1.jpg\" mime_type=\"image/jpeg\" width=\"1438\"\n    height=\"900\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517381\">\n  <original attribute_id=\"389\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"900\" Width=\"1438\" IsColor=\"1\"/>\n</ezimage>','ezimage',389,'eng-GB',3,0,'',1),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',3),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',4),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',5),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',6),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',7),(0,1,105,NULL,NULL,'Islamische Theologie (B.A.)','ezstring',436,'ger-DE',4,0,'islamische theologie (b.a.)',8),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para>Bewerbungszeitraum: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</para><para>(hier die Broschüre und wenn man drauf klickt erscheint die ganze Broschüre mit den Inhalten zu dem Studium)     </para><para>Kenndaten </para><para>Zulassungsbeschränkung, Studienbeginn, Art des Bachelor (Mono- oder Kombi-Bachelor), Regelstudienzeit, etc. </para><para>Studienaufbau </para><para>Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para>Berufsperspektiven </para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist><para>Literatur </para><para>Beispiel (dient der Gestaltung): Kitāb al-ʿAyn (Alef Verlag, 2003); Musnad as-Sanadayn (Berta Verlag, 1996); Mağmuʿ al-ʿAṣāfīr (Fair-Lag, 2012) </para></section>\n','ezrichtext',440,'ger-DE',4,0,'',3),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para><emphasis>Bewerbungszeitraum</emphasis>: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para ezxhtml:textalign=\"justify\">Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</para><para>(hier die Broschüre und wenn man drauf klickt erscheint die ganze Broschüre mit den Inhalten zu dem Studium)     </para><para><emphasis>Studienaufbau </emphasis></para><para ezxhtml:textalign=\"justify\">Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para>Berufsperspektiven </para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist></section>\n','ezrichtext',440,'ger-DE',4,0,'',4),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </emphasis></para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para><emphasis>Bewerbungszeitraum</emphasis>: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para ezxhtml:textalign=\"justify\"><emphasis>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:</emphasis>     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</para><para>(hier die Broschüre und wenn man drauf klickt erscheint die ganze Broschüre mit den Inhalten zu dem Studium)     </para><para><emphasis>Studienaufbau </emphasis></para><para ezxhtml:textalign=\"justify\">Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para><emphasis>Berufsperspektiven </emphasis></para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist></section>\n','ezrichtext',440,'ger-DE',4,0,'',5),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </emphasis></para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. Eine Auflistung der Nachweise, die wir für Ihre Bewerbung akzeptieren, finden Sie hier. </para></listitem></itemizedlist><para><emphasis>Bewerbungszeitraum</emphasis>: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para ezxhtml:textalign=\"justify\"><emphasis>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden, finden Sie hier:</emphasis>     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para><emphasis>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</emphasis> </para><para><emphasis>Studienaufbau </emphasis></para><para ezxhtml:textalign=\"justify\">Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para><emphasis>Berufsperspektiven </emphasis></para><itemizedlist><listitem><para>Forschung und Lehre  </para></listitem><listitem><para>Moscheegemeinden   </para></listitem><listitem><para>Islamische Seelsorge  </para></listitem><listitem><para>Verbandstätigkeiten  </para></listitem><listitem><para>Integrations- und Migrationsarbeit  </para></listitem><listitem><para>Kulturmanagement  </para></listitem><listitem><para>Erwachsenenbildung  </para></listitem><listitem><para>Beratungstätigkeiten  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt   </para></listitem></itemizedlist></section>\n','ezrichtext',440,'ger-DE',4,0,'',6),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </emphasis></para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. </para></listitem></itemizedlist><para><emphasis>Bewerbungszeitraum</emphasis>: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para ezxhtml:textalign=\"justify\"><emphasis>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden:</emphasis>     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para><emphasis>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</emphasis> </para><para><emphasis>Studienaufbau </emphasis></para><para ezxhtml:textalign=\"justify\">Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para><emphasis>Berufsperspektiven </emphasis></para><itemizedlist><listitem><para>in der Forschung und Lehre  </para></listitem><listitem><para>in Moscheegemeinden   </para></listitem><listitem><para>in der islamischen Seelsorge  </para></listitem><listitem><para>in Verbandstätigkeiten  </para></listitem><listitem><para>in der Integrations- und Migrationsarbeit  </para></listitem><listitem><para>im Kulturmanagement   </para></listitem><listitem><para>in Beratungstätigkeiten  </para></listitem></itemizedlist></section>\n','ezrichtext',440,'ger-DE',4,0,'',7),(0,121,105,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\"><emphasis>Für die Zulassung zum Bachelorstudiengang \"Islamische Theologie\" müssen Bewerber/innen die folgenden Voraussetzungen nachweisen: </emphasis></para><itemizedlist><listitem><para>Fachgebundene oder allgemeine Hochschulreife, Fachhochschulreife oder eine gesetzlich festgelegte Studienberechtigung (z.B. §11 BerlHG) </para></listitem><listitem><para>Sofern Sie nicht die deutsche Staatsangehörigkeit oder eine deutsche Hochschulzugangsberechtigung haben, ist der Nachweis von Deutschkenntnissen vorgeschrieben. Dieser Nachweis muss bis zum Ende der Bewerbungsfrist vorliegen. </para></listitem></itemizedlist><para><emphasis>Bewerbungszeitraum</emphasis>: </para><itemizedlist><listitem><para>Zum Sommersemester: 01. Januar - 01. März </para></listitem></itemizedlist><para ezxhtml:textalign=\"justify\"><emphasis>Eine Auswahl an Modulen, die in dem Bachelorstudiengang ”Islamische Theolgie” angeboten werden:</emphasis>     </para><itemizedlist><listitem><para>Arabische Sprache </para></listitem><listitem><para>Koranwissenschaften  </para></listitem><listitem><para>Koranexegese   </para></listitem><listitem><para>Hadithwissenschaften  </para></listitem><listitem><para>Islamische Geschichte    </para></listitem><listitem><para>Islamische Theologie (komparative und systematische)  </para></listitem><listitem><para>Islamische Jurisprudenz  </para></listitem><listitem><para>Islamische Ethik  </para></listitem><listitem><para>Islamische Erkenntnislehre  </para></listitem><listitem><para>Geschichte und Kultur der islamischen Welt  </para></listitem><listitem><para>Zweite Fremdsprache  </para></listitem><listitem><para>Wahlpflichtmodule  </para></listitem><listitem><para>Berufsorientierte Module  </para></listitem></itemizedlist><para><emphasis>Für weitere Informationen klicken Sie auf das Bild der Broschüre über die Studieninformationen:</emphasis> </para><para><emphasis>Studienaufbau </emphasis></para><para ezxhtml:textalign=\"justify\">Das Bachelorstudium (ca. 240 CP) umfasst sieben Semester und zwei Auslandsaufenthalte und wird mit einer Bachelorarbeit abgeschlossen. Nach dem erfolgreichen Abschluss besteht die Möglichkeit, einen Masterstudiengang aufzunehmen und damit eine wissenschaftliche Laufbahn einzuschlagen oder eine berufliche Spezialisierung zu erreichen. </para><para><emphasis>Berufsperspektiven </emphasis></para><itemizedlist><listitem><para>in der Forschung und Lehre  </para></listitem><listitem><para>in Moscheegemeinden   </para></listitem><listitem><para>in der islamischen Seelsorge  </para></listitem><listitem><para>in Verbandstätigkeiten  </para></listitem><listitem><para>in der Integrations- und Migrationsarbeit  </para></listitem><listitem><para>im Kulturmanagement   </para></listitem><listitem><para>in Beratungstätigkeiten  </para></listitem></itemizedlist></section>\n','ezrichtext',440,'ger-DE',4,0,'',8),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',3),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',4),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',5),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',6),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',7),(0,154,105,NULL,NULL,NULL,'ezobjectrelation',442,'ger-DE',4,0,'',8),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',3),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',4),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',5),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',6),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',7),(0,222,105,NULL,1,NULL,'ezboolean',443,'ger-DE',4,1,'',8),(0,1,106,NULL,NULL,'Modulhandbuch','ezstring',444,'ger-DE',4,0,'modulhandbuch',1),(0,1,106,NULL,NULL,'Modulhandbuch','ezstring',444,'ger-DE',4,0,'modulhandbuch',2),(0,121,106,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Koran gilt im islamischen Glauben als Wort Gottes, das dem Propheten Muhammad zwischen 610 und 632 offenbart wurde. Die von Muhammad verkündeten Worte wurden zu seinen Lebzeiten sowohl mündlich überliefert als auch  schriftlich fixiert. Die wissenschaftliche Überzeugung, damit liege der Originaltext vor, prägte die Koranrezeption der Muslime entscheidend. Im Laufe der Geschichte wurde der Korantext fortwährend als solcher rezitiert, rezipiert und interpretiert.</para><para>Im Zuge dieser rezeptionsgeschichtlichen Entwicklung entstanden viele wissenschaftliche Disziplinen, in denen der Koran mit seinem Offenbarungscharakter im Zentrum steht. Angesichts einer fehlenden institutionalisierten religiösen Kontrollinstanz, die den christlichen Kirchen vergleichbar wäre, hat sich bei Muslimen eine historisch vielschichtige und diskussionsfreudige Auslegungskultur entwickelt, die außerfachliche Kenntnisse vorbehaltlos integrierte. So widmeten sich die koranwissenschaftlichen und -exegetischen Disziplinen der Textgenese, sprachlichen Struktur und Interpretation des Korans und setzten sich mit Fragen nach seiner Historizität, Kontextualität, Intertextualität und Intratextualität auseinander.</para><para>Jenseits der wortwörtlichen Verstehens- und Deutungsweise haben sich verschiedene Formen der Koranauslegung etabliert, denen das Überlieferungsgut und die eigene Meinung sowie die innere und mystische Erfahrung zugrunde liegen. Eine ausgewiesene Koranwissenschaft setzt sich daher u.a. mit der Bedeutung und aktuellen Relevanz des Offenbartseins des Korans, seiner Entstehungs- und Textwerdungsgeschichte sowie den Koranauslegungstraditionen in sunnitischen, schiitischen und anderen Richtungen auseinander.</para><para>Einen weiteren Schwerpunkt bildet die Erschließung der jüdischen und christlichen exegetischen Traditionen sowie der modernen Kommunikationstheorien und historisch-kritischen Methoden.</para></section>\n','ezrichtext',448,'ger-DE',4,0,'',1),(0,121,106,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Das Modulhandbuch kann hier etwa Anfang Februar 2017 heruntergeladen werden.</para></section>\n','ezrichtext',448,'ger-DE',4,0,'',2),(0,154,106,NULL,NULL,NULL,'ezobjectrelation',449,'ger-DE',4,0,'',1),(0,154,106,NULL,NULL,NULL,'ezobjectrelation',449,'ger-DE',4,0,'',2),(0,222,106,NULL,1,NULL,'ezboolean',450,'ger-DE',4,1,'',1),(0,222,106,NULL,1,NULL,'ezboolean',450,'ger-DE',4,1,'',2),(0,1,107,NULL,NULL,'Kooperation','ezstring',451,'ger-DE',4,0,'kooperation',1),(0,1,107,NULL,NULL,'Kooperation','ezstring',451,'ger-DE',4,0,'kooperation',2),(0,1,107,NULL,NULL,'Kooperation','ezstring',451,'ger-DE',4,0,'kooperation',3),(0,121,107,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Studiengang Islamische Theologie (B.A.) wird in Kooperation mit der Al-Mustafa Universität (raufklicken um auf folgenden Link weitergeleitet zu werden: <link xlink:href=\"ezurl://30\" xlink:show=\"none\">http://en.miu.ac.ir/</link>) in Qum, Iran angeboten. Das Al-Mustafa Institut in Berlin handelt als Bevollmächtigter (Link zur Vollmacht) der Universität. Die im Laufe des Studiums auszuhändigenden Zeugnisse stammen von der Universität im Iran. </para></section>\n','ezrichtext',455,'ger-DE',4,0,'',1),(0,121,107,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Studiengang Islamische Theologie (B.A.) wird in Kooperation mit der <link xlink:href=\"ezurl://41\" xlink:show=\"none\">Al-Mustafa Universität</link> in Qum (Iran) angeboten. Das Al-Mustafa Institut in Berlin handelt als Bevollmächtigter der Universität. Die im Laufe des Studiums auszuhändigenden Zeugnisse stammen von der Universität in Iran. Da die Abschlüsse an der Al-Mustafa Universität in Iran Anerkennung genießen, kann insofern der Abschluss an unserem Institut in Deutschland akkreditiert werden.</para></section>\n','ezrichtext',455,'ger-DE',4,0,'',2),(0,121,107,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Der Studiengang Islamische Theologie (B.A.) wird in Kooperation mit der <link xlink:href=\"ezurl://41\" xlink:show=\"none\">Al-Mustafa Universität</link> in Qum (Iran) angeboten. Das Al-Mustafa Institut in Berlin handelt als Bevollmächtigter der Universität. Die im Laufe des Studiums auszuhändigenden Zeugnisse stammen von der Universität in Iran. Da die Abschlüsse an der Al-Mustafa Universität in Iran Anerkennung genießen, können insofern die Abschlüsse an unserem Institut in Deutschland akkreditiert werden.</para></section>\n','ezrichtext',455,'ger-DE',4,0,'',3),(0,154,107,NULL,NULL,NULL,'ezobjectrelation',456,'ger-DE',4,0,'',1),(0,154,107,NULL,NULL,NULL,'ezobjectrelation',456,'ger-DE',4,0,'',2),(0,154,107,NULL,NULL,NULL,'ezobjectrelation',456,'ger-DE',4,0,'',3),(0,222,107,NULL,1,NULL,'ezboolean',457,'ger-DE',4,1,'',1),(0,222,107,NULL,1,NULL,'ezboolean',457,'ger-DE',4,1,'',2),(0,222,107,NULL,1,NULL,'ezboolean',457,'ger-DE',4,1,'',3),(0,1,108,NULL,NULL,'Dozenten','ezstring',458,'ger-DE',4,0,'dozenten',1),(0,1,108,NULL,NULL,'Dozenten','ezstring',458,'ger-DE',4,0,'dozenten',2),(0,1,108,NULL,NULL,'Dozenten','ezstring',458,'ger-DE',4,0,'dozenten',3),(0,121,108,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Prof. Dr. Max Mustermann (alle mit Klickmöglichkeit --&gt; Weiterführung zum CV) </para><para>(Islamische Theologie, Islamische Geschichte) </para><para> </para><para>Prof. Dr. Mix Musterfrau </para><para>(Fiqh) </para><para> </para><para>PD Dr. Hamid Reza Yousefi </para><para>(Das was er kann) </para><para> </para><para>Dr. Dr. des. Mahdi Esfahani (Beispielseite vorhanden) </para><para>(Islamische Ethik, etc.) </para><para> </para><para>Tim Leibner </para><para>(Arabisch I, II, III &amp; IV) </para><para> </para><para>Hassan Sadeghi </para><para>(Koranrezitation)</para></section>\n','ezrichtext',462,'ger-DE',4,0,'',1),(0,121,108,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Prof. Dr. Max Mustermann (alle mit Klickmöglichkeit --&gt; Weiterführung zum CV) </para><para>(Islamische Theologie, Islamische Geschichte) </para><para> </para><para>Prof. Dr. Mix Musterfrau </para><para>(Fiqh) </para><para> </para><para>PD Dr. Hamid Reza Yousefi </para><para>(Das was er kann) </para><para> </para><para>Dr. Dr. des. Mahdi Esfahani (Beispielseite vorhanden) </para><para>(Islamische Ethik, etc.) </para><para> </para><para>Tim Leibner </para><para>(Arabisch I, II, III &amp; IV) </para><para> </para><para>Hassan Sadeghi </para><para>(Koranrezitation)</para></section>\n','ezrichtext',462,'ger-DE',4,0,'',2),(0,121,108,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>- Prof. Dr. Max Mustermann (Islamische Theologie, Islamische Geschichte) </para><para>- Prof. Dr. Mix Musterfrau (Fiqh) </para><para>- PD Dr. Hamid Reza Yousefi (Interkulturelle Philosophie) </para><para>- Dr. Dr. des. Mahdi Esfahani (Islamische Ethik, Islamische Philosophie) </para><para>- Tim Leibner (Arabisch I, II, III &amp; IV)     </para><para>- Hassan Sadeghi (Koranrezitation)</para></section>\n','ezrichtext',462,'ger-DE',4,0,'',3),(0,154,108,NULL,NULL,NULL,'ezobjectrelation',463,'ger-DE',4,0,'',1),(0,154,108,NULL,NULL,NULL,'ezobjectrelation',463,'ger-DE',4,0,'',2),(0,154,108,NULL,NULL,NULL,'ezobjectrelation',463,'ger-DE',4,0,'',3),(0,222,108,NULL,0,NULL,'ezboolean',464,'ger-DE',4,0,'',1),(0,222,108,NULL,1,NULL,'ezboolean',464,'ger-DE',4,1,'',2),(0,222,108,NULL,1,NULL,'ezboolean',464,'ger-DE',4,1,'',3),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani (unterrubrik von dozenten)',1),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani (unterrubrik von dozenten)',2),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani (unterrubrik von dozenten)',3),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani',4),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani',5),(0,1,109,NULL,NULL,'Dr. des. Mahdi Esfahani','ezstring',465,'ger-DE',4,0,'dr. des. mahdi esfahani',6),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>C.V. Mahdi Esfahani  </para><para>  </para><para> PERSONAL DATAS  </para><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para>Address: Königsbergerstr No. 21, </para><para>12207 Berlin, Germany </para><para>Tel.: 0049 17662884688  </para><para>E-Mail: mahdi313esf@gmail.com, mahdi.esfahani@fu-berlin.de </para><para> </para><para>EDUCATION </para><para> </para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative EthicsFreie Universität Berlin, supervisor:Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>1 <link xlink:href=\"ezurl://31\" xlink:show=\"none\">http://irip.ir/</link> </para><para>2 <link xlink:href=\"ezurl://32\" xlink:show=\"none\">http://jelveh.org/</link> </para><para>3 <link xlink:href=\"ezurl://33\" xlink:show=\"none\">www.ihcs.ac.ir2</link>  </para><para>  </para><para> </para><para>WORKAND TEACHNGEXPERIENCES </para><para> </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>  </para><para>CONFERENCES &amp; PRESENTATIONS </para><para> </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>  </para><para>  </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>PUBLICATIONS </para><para> </para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013. </para><para> </para><para>   </para><para>  </para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para> </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para> </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para> </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para> </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para><para>  </para><para>4 <link xlink:href=\"ezurl://34#more-91\" xlink:show=\"none\">http://sis-de.com/?p=91#more-91</link> </para><para>5 <link xlink:href=\"ezurl://35#more-211\" xlink:show=\"none\">http://sis-de.com/?p=211#more-211</link> </para><para>6 <link xlink:href=\"ezurl://36\" xlink:show=\"none\">http://sis-de.com/?p=179</link> </para><para>7 <link xlink:href=\"ezurl://37\" xlink:show=\"none\">http://sis-de.com/?p=59</link> </para><para> </para><para>RESEARCH FUNDING </para><para> </para><para>Fund for Philosophical mystical interpretation of Qur’an, anetymological Dictionary of Qur’ānic roots and translation of Qur’an based on etymological investigations in German language, Directorof Project. </para><para>Fund for introductionseriesto Islamic Studies in 10 Volumes in German Language,from 10.2014, Head Editor and Project Director. </para><para>Fund for 5 Volumes Islamic Teachings booksfor children and youth, Project Director. </para><para>Ph.D stipend for 3 years, from 1.7.2010 to 1.7.2013. </para><para>  </para><para>  </para><para>LANGUAGE SKILLS </para><para> </para><para>German: Advanced </para><para>English: Advanced  </para><para>Arabic: Expert </para><para>Persian: Native speaker, as well as knowledge of the ancient Persian language </para><para>Ancient Greek: passive  </para><para> </para><para>  </para><para> </para><para>References List (Dr. Mahdi Esfahani) </para><para> </para><para>1. Prof. Dr. Michael Bongardt </para><para>  </para><para>He is my Professor in Postdoc studies (Habilitation and Research Project) at Free University of Berlin and head of Institute of comparative ethics in Free University of  Berlin </para><para>Email: mbongard@zedat.fu-berlin.de </para><para> </para><para>2. Prof. Dr. Günter Frank </para><para>  </para><para>He was my Professor (second Ph.D.) at Free University of Berlin and Director of Melanchton Academy in Bretten, Germany.Now he is Philosophy Professor in Karlsruhe Institute of Technology. </para><para>Email: dr.frank@melanchthon.com </para><para> </para><para>3. Prof. Dr. Mohammad Reza Beheshti </para><para>  </para><para>He is a professor of western Philosophy in Tehran University and Director of philosophy department in Iran’s Academyof Arts. He wassupervisor of my first Ph.D. in Tehran. </para><para>Email: drmrhosseini@yahoo.com</para></section>\n','ezrichtext',466,'ger-DE',4,0,'',1),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para>C.V. Mahdi Esfahani  </para><para>  </para><para> PERSONAL DATAS  </para><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para>Address: Königsbergerstr No. 21, </para><para>12207 Berlin, Germany </para><para>Tel.: 0049 17662884688  </para><para>E-Mail: mahdi313esf@gmail.com, mahdi.esfahani@fu-berlin.de </para><para> </para><para>EDUCATION </para><para> </para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative EthicsFreie Universität Berlin, supervisor:Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>1 <link xlink:href=\"ezurl://31\" xlink:show=\"none\">http://irip.ir/</link> </para><para>2 <link xlink:href=\"ezurl://32\" xlink:show=\"none\">http://jelveh.org/</link> </para><para>3 <link xlink:href=\"ezurl://33\" xlink:show=\"none\">www.ihcs.ac.ir2</link>  </para><para>  </para><para> </para><para>WORKAND TEACHNGEXPERIENCES </para><para> </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>  </para><para>CONFERENCES &amp; PRESENTATIONS </para><para> </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>  </para><para>  </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>PUBLICATIONS </para><para> </para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013. </para><para> </para><para>   </para><para>  </para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para> </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para> </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para> </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para> </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para><para>  </para><para>4 <link xlink:href=\"ezurl://34#more-91\" xlink:show=\"none\">http://sis-de.com/?p=91#more-91</link> </para><para>5 <link xlink:href=\"ezurl://35#more-211\" xlink:show=\"none\">http://sis-de.com/?p=211#more-211</link> </para><para>6 <link xlink:href=\"ezurl://36\" xlink:show=\"none\">http://sis-de.com/?p=179</link> </para><para>7 <link xlink:href=\"ezurl://37\" xlink:show=\"none\">http://sis-de.com/?p=59</link> </para><para> </para><para>RESEARCH FUNDING </para><para> </para><para>Fund for Philosophical mystical interpretation of Qur’an, anetymological Dictionary of Qur’ānic roots and translation of Qur’an based on etymological investigations in German language, Directorof Project. </para><para>Fund for introductionseriesto Islamic Studies in 10 Volumes in German Language,from 10.2014, Head Editor and Project Director. </para><para>Fund for 5 Volumes Islamic Teachings booksfor children and youth, Project Director. </para><para>Ph.D stipend for 3 years, from 1.7.2010 to 1.7.2013. </para><para>  </para><para>  </para><para>LANGUAGE SKILLS </para><para> </para><para>German: Advanced </para><para>English: Advanced  </para><para>Arabic: Expert </para><para>Persian: Native speaker, as well as knowledge of the ancient Persian language </para><para>Ancient Greek: passive  </para><para> </para><para>  </para><para> </para><para>References List (Dr. Mahdi Esfahani) </para><para> </para><para>1. Prof. Dr. Michael Bongardt </para><para>  </para><para>He is my Professor in Postdoc studies (Habilitation and Research Project) at Free University of Berlin and head of Institute of comparative ethics in Free University of  Berlin </para><para>Email: mbongard@zedat.fu-berlin.de </para><para> </para><para>2. Prof. Dr. Günter Frank </para><para>  </para><para>He was my Professor (second Ph.D.) at Free University of Berlin and Director of Melanchton Academy in Bretten, Germany.Now he is Philosophy Professor in Karlsruhe Institute of Technology. </para><para>Email: dr.frank@melanchthon.com </para><para> </para><para>3. Prof. Dr. Mohammad Reza Beheshti </para><para>  </para><para>He is a professor of western Philosophy in Tehran University and Director of philosophy department in Iran’s Academyof Arts. He wassupervisor of my first Ph.D. in Tehran. </para><para>Email: drmrhosseini@yahoo.com</para></section>\n','ezrichtext',466,'ger-DE',4,0,'',2),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"left\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para> </para><para>EDUCATION </para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative EthicsFreie Universität Berlin, supervisor:Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>WORKAND TEACHNGEXPERIENCES </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>CONFERENCES &amp; PRESENTATIONS </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>  </para><para>  </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>PUBLICATIONS </para><para> </para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013. </para><para> </para><para>   </para><para>  </para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para> </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para> </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para> </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para> </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para><para>  </para><para>4 <link xlink:href=\"ezurl://34#more-91\" xlink:show=\"none\">http://sis-de.com/?p=91#more-91</link> </para><para>5 <link xlink:href=\"ezurl://35#more-211\" xlink:show=\"none\">http://sis-de.com/?p=211#more-211</link> </para><para>6 <link xlink:href=\"ezurl://36\" xlink:show=\"none\">http://sis-de.com/?p=179</link> </para><para>7 <link xlink:href=\"ezurl://37\" xlink:show=\"none\">http://sis-de.com/?p=59</link> </para><para> </para><para>  </para></section>\n','ezrichtext',466,'ger-DE',4,0,'',3),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"left\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para> </para><para>Name: Dr. Dr. des. Mahdi Esfahani </para><para>Lebenslauf</para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative Ethics Freie Universität Berlin, supervisor: Prof. Dr. Michael Bongardt. </para><para>27/3/2014:Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013:Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 –2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 –2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 –2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>WORKAND TEACHNGEXPERIENCES </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>CONFERENCES &amp; PRESENTATIONS </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para> Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para>  </para><para>Veröffentlichungen</para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013.</para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para><para>  </para><para>CONFERENCE ORGANIZATIONS </para><para>International Conference of Qur’anic Studies: „Desiderate der aktuellen Koranforschung“, 17. -19.October2014 in Berlin, in Cooperation with Freie Universität Berlin and Universität Münster4. </para><para>Conference: “Fachtagung und Podiumsdiskussion „Islam, Islamophobie und Extremismus” , 02.2015 in Berlin5. </para><para>International interreligiousConference: „Religion und Vernunft in Theorie und Praxis, 1. -3. Mai 2015, Maternushaus Köln6. </para><para>Interreligious Podiumsdiskussion: „Ethik und Kapital“, 5.2014, Berlin7. </para></section>\n','ezrichtext',466,'ger-DE',4,0,'',4),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"right\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para><emphasis>Lebenslauf</emphasis></para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative Ethics Freie Universität Berlin, supervisor: Prof. Dr. Michael Bongardt. </para><para>27/3/2014: Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013: Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 – 2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 – 2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 – 2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>WORK AND TEACHNG EXPERIENCES </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007–2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 –2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>CONFERENCES &amp; PRESENTATIONS </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para> <emphasis>Veröffentlichungen</emphasis></para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013.</para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para></section>\n','ezrichtext',466,'ger-DE',4,0,'',5),(0,121,109,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para> </para><ezembed xlink:href=\"ezcontent://117\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"right\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed><para><emphasis>Lebenslauf</emphasis></para><para>1/7/2014 until now: Habilitation and research project: mystical and philosophical fundaments of Islamic ethics in Qur’an, Institute of Comparative Ethics Freie Universität Berlin, supervisor: Prof. Dr. Michael Bongardt. </para><para>27/3/2014: Ph.D. of Philosophy from Freie Universität Berlin, magna cum laude,(not published), Title: “Meaningfully Speakingof the Unlimitedness”. </para><para>07/01/2010-30/6/2013: Scholarship from Freie Universität Berlin(Elsa Neumann Stipendium) </para><para>10.2009:Ph. D. of Philosophy Iranian Institute of Philosophy1, Dissertation was described as Excellent, (Title: How we understand the names of God, a comparative study between pseudo-Dionysius Areopagiteand Ibn al-Arabi) </para><para>10.2006-04.2008:Research Stay at the Albert-Ludwig University of Freiburg under the supervision of Prof. Dr. Figal </para><para>1995 – 2006:Study and Research on Islamic Philosophical Mysticism, Djelveh Noor Institute2, Tehran, Focus:1) Islamic mysticism2) Islamic Philosophy </para><para>1993 – 2006:Research on Quran Interpretation, FocusMystical Interpretation, Djelveh Noor Institute, Tehran. </para><para>2001 – 2004: Master Student of Western Philosophy, Institute of Humanitiesand Cultural Studies3, Tehran, (Average Rate 17.81 from 20.00) (Title: “How We Understand Being in Parmenides and Logos in Heraclitus”) </para><para>1993 –2002: Study of Islamic Philosophy, Djelveh Noor Institute, Tehran,  Focus:1) Avicenna, 2) Mulla Sadra </para><para>1992 –2001: Study of Industrial Engineering, Technical Amirkabir University of Tehran </para><para>  </para><para>WORK AND TEACHNG EXPERIENCES </para><para>So. Se. 2015: Teaching in Freie UniversitätBerlin, Institute of Comparative Ethics, Topic: Nicomachean Ethics from Aristotle to modern Islamic world. </para><para>6.2013-Today:research Project:a short Philosophical mystical interpretation of Qur’an, an etymological Dictionary of Qur’anic rootsand a new Translation of Qur’anbased on etymological investigations in German language. </para><para>WI.SE.2011: Teaching in FU Berlin, faculty of Philosophy,Topic: Philosophy of Religious Language. </para><para>WI. SE.2010: Teaching in FU Berlin, faculty of Philosophy, Topic: Anthropology in Latin and Islamic Context. </para><para>WI.SE.2009: Teaching in FU Berlin, faculty of Philosophy, Topic: Original Questions in Philosophy of Religion. </para><para>Oct. 2009 –Today:Teaching in Iranian Cultural Center Berlin. </para><para>2007– 2008:Researcher: Textbook of Islamic Philosophy, Djelve-Noor Institute (Tehran). </para><para>2005 – 2008: Researcher:Interpretive Manual of Islamic mysticism, in Persian and Arabic, Djelve-Noor Institute (Tehran). </para><para>2003 –2007: Lecturer: Teaching of the Western and Islamic logic, philosophy, mysticism and Qur’an interpretation, Djelve-Noor Institute (Tehran). </para><para>2003 –2006: Teacher: Teaching of Islamic Studies, at high schoollevel(Tehran) </para><para>1995 –2006: Teacher: Teaching of Persian literature, athigh school level (Tehran) </para><para>1993 –2000: Education and Training Consultant, at high school level (Tehran) </para><para> </para><para>CONFERENCES &amp; PRESENTATIONS </para><para>World Day of Philosophy, 2008, Bretten, Baden Württemberg, “Religion and Dialogue of Cultures”. </para><para>Conference of the Austrian Society of Philosophy, Vienna, June 2011 “Thinkingabout Boundaries and Self-Knowledge”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2011, “Nature, Art, Technology and Self-Knowledge”. </para><para>Making Sense of Pain, interdisciplinary research and publications project, Second Global Conference, Warsaw, May 2011, “Pain as Existential”.  </para><para>Political Theology Symposium, Agenda 2011, Genève, July 2011, “Religious Language and Transformation of Power”. </para><para>Brücken Schlagen, Milestone 2011, Freiburg,Jul.2011, “Mysticism as Bridge”.  </para><para>Cicero in the early modern period, Melanchthon Academy, Oct.2011, “Mulla Sadra and Stoicism”. </para><para>Joint Meeting of the South Carolina Society for Philosophy and the North Carolina Philosophical Society, Elon University, Feb.2012, “Meaningfully Speaking about the Gods (on Cratylus)”. </para><para>Religion, Science and Technology in Cultural Contexts: Dynamics of Change, Trondheim, Norway, Mar.2012, “Islam and New Sciences”. </para><para>Islamische Mystik in der deutschsprachigen Literatur, Katholische Akademie Schwerte, May 2012, (Invited Speaker), „Einführung in die Philosophie Ibn Arabis“. </para><para>XXII World Congress of Political Science, Madrid,July 2012, “Toahid and Reshaping of Political Power”. </para><para>‘Mercy’ Theology, Conference on Islamic Theology, Munster,Aug.2012, (Invited Speaker), “The Mercy of God and His Other Names and Attributes”. </para><para>Rometaphysics, fifth world conference,Rome,Nov.2012, “Mystical Anthropology of Ibn-Arabi and its Metaphysical Consequences”. </para><para>Gewaltlosigkeit im Islam, Evangelische Akademie im Rheinland, Bonn,Nov.2012, (Invited Speaker), „Vom Walten, Gewalt und Gewaltlosigkeit im Islam“. </para><para>\"Mystik -zwischen Theologie und Lebenserfahrung\", in der Katholischen Hochschule für Sozialwesen, Berlin, Oct.2013, (Invited Speaker), „Mysticism as Bound between Theology and Everyday Life, an Islamic Example”. </para><para>Conference of Heidegger Research Group, Meßkirch, May 2014, “Destiny, Language and Freedom”.  </para><para>Workshop: Zeitgenössische Philosophie in der Islamischen Welt, Bern, Sep. 2014,“Meaningfully Speaking of The Unlimitedness”. </para><para>Faculty speech in Karlsruhe Institute of Technology, Karlsruhe, Nov. 2014,(Invited Speaker), „Phänomenologie des Traumes“. </para><para><emphasis>Veröffentlichungen</emphasis></para><para>Book: Translation of ‘Pseudo-Dionysius: A Commentary on the Texts and an Introduction to Their Influence’by Paul Rorem, Oxford Univ. Press, from English to Farsi, under publication by University of Religions and Denominations (Qom-Iran). </para><para>Book: ‘Human Being and Religious Language’(Farsi) publication date:summer2015in Tehran. </para><para>Book: ‘Meaningfully speaking of Unlimitedness’ (English) publication date fall 2015 in Berlin. </para><para>Paper: Über ḥaqīqī  und i‛tibārī in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 1. Spektrum Iran, 1, 26. Jahrgang 2013.</para><para>Paper: Die Sprache von i‛tibār in islamischen Philosophie, Übersetzung und Kommentar zu der „Abhandlung über die Vollkommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Teil 2. Spektrum Iran, 2, 27. Jahrgang 2013. </para><para>Paper: Über das Diesseits und das Jenseits –Übersetzung und Kommentar zu der „Abhandlung über die Voll­kommenheit“ von Allamah Sayyid Muhammad Husain Tabatabai, Spektrum Iran, Nr.4-2013. </para><para>Paper: Mulla Sadra and Stoicism, published in Ciceroin der Frühen Neuzeit, Herausgegeben von Günter Frank und Anne Eusterschulte. Melanchthon-Schriften der Stadt Bretten. -MSB 13.Ca. 480 S. Gb., ISBN 978-3-7728-2601-6, August 2013 </para><para>Paper: Islam and New Sciences, will be Published in Ashgate\'s series Religion and Science, 2015 </para></section>\n','ezrichtext',466,'ger-DE',4,0,'',6),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',1),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',2),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',3),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',4),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',5),(0,154,109,NULL,NULL,NULL,'ezobjectrelation',467,'ger-DE',4,0,'',6),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',1),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',2),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',3),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',4),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',5),(0,222,109,NULL,1,NULL,'ezboolean',468,'ger-DE',4,1,'',6),(0,1,110,NULL,NULL,'Forschungsprojekte','ezstring',469,'ger-DE',4,0,'forschungsprojekte',1),(0,1,110,NULL,NULL,'Forschungsprojekte','ezstring',469,'ger-DE',4,0,'forschungsprojekte',2),(0,1,110,NULL,NULL,'Forschungsprojekte','ezstring',469,'ger-DE',4,0,'forschungsprojekte',3),(0,121,110,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eine der primären Ambitionen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung islamischer Studien im akademisch-deutschsprachigen Raum. Zu diesem Zwecke werden in Kooperation mit deutschsprachigen Wissenschaftlern auf den Gebieten der Arabistik, Iranistik, Islamwissenschaften und Orientalistik Bücher verfasst und/oder ins Deutsche übersetzt. Ferner verfolgt das Al-Mustafa Institut das Vorhaben in kontinuierlichen Perioden ein wissenschaftliches Magazin rund um das Thema islamische Studien zu publizieren.</para></section>\n','ezrichtext',470,'ger-DE',4,0,'',1),(0,121,110,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eine der primären Ambitionen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung von akademisch islamische Studien im deutschsprachigen Raum. Zu diesem Zweck werden in Kooperation mit deutschsprachigen Wissenschaftlern auf den Gebieten der Arabistik, Iranistik, Islamwissenschaften- und Orientalistik-Bücher verfasst oder ins Deutsche übersetzt. Ferner verfolgt das Al-Mustafa Institut das Vorhaben, in kontinuierlichen Perioden ein wissenschaftliches Magazin rund um das Thema islamische Studien zu publizieren.</para></section>\n','ezrichtext',470,'ger-DE',4,0,'',2),(0,121,110,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">Eine der primären Ambitionen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung von akademisch islamische Studien im deutschsprachigen Raum. Zu diesem Zweck werden in Kooperation mit deutschsprachigen Wissenschaftlern auf den Gebieten der Arabistik, Iranistik, Islamwissenschaften- und Orientalistik-Bücher verfasst oder ins Deutsche übersetzt.</para></section>\n','ezrichtext',470,'ger-DE',4,0,'',3),(0,154,110,NULL,NULL,NULL,'ezobjectrelation',471,'ger-DE',4,0,'',1),(0,154,110,NULL,NULL,NULL,'ezobjectrelation',471,'ger-DE',4,0,'',2),(0,154,110,NULL,NULL,NULL,'ezobjectrelation',471,'ger-DE',4,0,'',3),(0,222,110,NULL,1,NULL,'ezboolean',472,'ger-DE',4,1,'',1),(0,222,110,NULL,1,NULL,'ezboolean',472,'ger-DE',4,1,'',2),(0,222,110,NULL,1,NULL,'ezboolean',472,'ger-DE',4,1,'',3),(0,1,111,NULL,NULL,'Publikationen','ezstring',473,'ger-DE',4,0,'publikationen',1),(0,1,111,NULL,NULL,'Publikationen','ezstring',473,'ger-DE',4,0,'publikationen',2),(0,121,111,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eines der Hauptanliegen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung von Publikationen deutschsprachiger Schriften rund um das Thema islamische Studien. In diesem Kontext steht das Al-Mustafa Institut in Kooperation mit einer Reihe von Wissenschaftlern, um Übersetzungen (etc.) auf akademischen Niveau (usw.) zu ermöglichen.  --&gt; im Anschluss Vorstellung verschiedener Projekte: Übersetzungen, Bücher verfassen, wissenschaftliches Magazin, etc.</para></section>\n','ezrichtext',474,'ger-DE',4,0,'',1),(0,121,111,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Eines der Hauptanliegen des Al-Mustafa Instituts für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH ist die Förderung von Publikationen deutschsprachiger Schriften rund um das Thema islamische Studien. In diesem Kontext steht das Al-Mustafa Institut in Kooperation mit einer Reihe von Wissenschaftlern im In- und Ausland, um unter anderem Übersetzungen von Fachpublikationen zu ermöglichen.</para></section>\n','ezrichtext',474,'ger-DE',4,0,'',2),(0,154,111,NULL,NULL,NULL,'ezobjectrelation',475,'ger-DE',4,0,'',1),(0,154,111,NULL,NULL,NULL,'ezobjectrelation',475,'ger-DE',4,0,'',2),(0,222,111,NULL,1,NULL,'ezboolean',476,'ger-DE',4,1,'',1),(0,222,111,NULL,1,NULL,'ezboolean',476,'ger-DE',4,1,'',2),(0,1,112,NULL,NULL,'Institutszeitschrift','ezstring',477,'ger-DE',4,0,'institutszeitschrift',1),(0,1,112,NULL,NULL,'Institutszeitschrift','ezstring',477,'ger-DE',4,0,'institutszeitschrift',2),(0,1,112,NULL,NULL,'Institutszeitschrift','ezstring',477,'ger-DE',4,0,'institutszeitschrift',3),(0,121,112,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hier kommt immer ein Bild hin mit der neuesten Zeitschrift und seiner Themen.</para></section>\n','ezrichtext',478,'ger-DE',4,0,'',1),(0,121,112,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',478,'ger-DE',4,0,'',2),(0,121,112,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Das Al-Mustafa Institut verfolgt das Vorhaben, in kontinuierlichen Perioden ein wissenschaftliches Magazin rund um das Thema islamische Studien zu publizieren.</para></section>\n','ezrichtext',478,'ger-DE',4,0,'',3),(0,154,112,NULL,NULL,NULL,'ezobjectrelation',479,'ger-DE',4,0,'',1),(0,154,112,NULL,NULL,NULL,'ezobjectrelation',479,'ger-DE',4,0,'',2),(0,154,112,NULL,NULL,NULL,'ezobjectrelation',479,'ger-DE',4,0,'',3),(0,222,112,NULL,1,NULL,'ezboolean',480,'ger-DE',4,1,'',1),(0,222,112,NULL,1,NULL,'ezboolean',480,'ger-DE',4,1,'',2),(0,222,112,NULL,1,NULL,'ezboolean',480,'ger-DE',4,1,'',3),(0,1,113,NULL,NULL,'Über uns','ezstring',481,'ger-DE',4,0,'über uns',1),(0,1,113,NULL,NULL,'Über uns','ezstring',481,'ger-DE',4,0,'über uns',2),(0,121,113,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><itemizedlist><listitem><para>Gründung im Juni 2016 </para></listitem><listitem><para>Ziele: Förderung von islamischen Studien im akademisch-deutschsprachigen Raum </para></listitem><listitem><para>Kurze Gesamtinfo über das Team und Kooperationspartner </para></listitem><listitem><para>Zusammengefasste Vorstellung des Instituts mit Hinblick auf die Kooperation mit der Al-Mustafa Universität im Iran </para></listitem><listitem><para>Lagevorteile (?) --&gt; unten eine \"so erreichen Sie uns\"-Zeile mit Googlemaps Markierung einfügen </para></listitem><listitem><para>Etc.</para></listitem></itemizedlist></section>\n','ezrichtext',482,'ger-DE',4,0,'',1),(0,121,113,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">Das Al-Mustafa Institut für Kultur-, Humanwissenschaften und islamische Studien gemeinnützige GmbH mit Sitz im Herzen Berlins (gegenüber der TU Berlin) wurde im Juni 2016 gegründet und bietet in Kooperation mit der Al-Mustafa Universität in Qum das Studium der Islamischen Theologie (B.A.) an. Darüber hinaus widmet es sich der Förderung von akademisch islamische Studien im deutschsprachigen Raum. Zu diesem Zweck werden in Kooperation mit deutschsprachigen Wissenschaftlern Bücher verfasst oder ins Deutsche übersetzt. Ferner verfolgt das Al-Mustafa Institut das Vorhaben, in kontinuierlichen Perioden ein wissenschaftliches Magazin rund um das Thema islamische Studien zu publizieren. </para></section>\n','ezrichtext',482,'ger-DE',4,0,'',2),(0,154,113,NULL,NULL,NULL,'ezobjectrelation',483,'ger-DE',4,0,'',1),(0,154,113,NULL,NULL,NULL,'ezobjectrelation',483,'ger-DE',4,0,'',2),(0,222,113,NULL,1,NULL,'ezboolean',484,'ger-DE',4,1,'',1),(0,222,113,NULL,1,NULL,'ezboolean',484,'ger-DE',4,1,'',2),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',1),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',2),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',3),(0,1,114,NULL,NULL,'Partneruniversität','ezstring',485,'ger-DE',4,0,'partneruniversität',4),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>die Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para> </para><para>Einige Tochterinstitute der al-Mustafa Universität in Iran:  </para><para> </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para> </para><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para> </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para> </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para> </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para> </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',1),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>die Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para> </para><para>Einige Tochterinstitute der al-Mustafa Universität in Iran:  </para><para> </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para> </para><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para> </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para> </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para> </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para> </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',2),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">Die Al-Mustafa Universität ist eine im Jahr 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Beinamen des heiligen Propheten Muhammad, Al-Mustafa, welcher der \"Auserwählte“ bedeutet.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>Die Ausbildung von (Groß-)Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten sowie Entwicklung von islamischen     Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um diese Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von              islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para>Einige Tochterinstitute der Al-Mustafa Universität in Iran:  </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der Al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',3),(0,121,114,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">Die Al-Mustafa Universität ist eine im Jahr 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. Sie trägt einen der Beinamen des heiligen Propheten Muhammad, Al-Mustafa, welcher der \"Auserwählte“ bedeutet.   </para><para>Die Universität in Qum hat sich zwei Hauptziele gesetzt: </para><orderedlist><listitem><para>Die Ausbildung von (Groß-)Gelehrten, Lehrern und Forschern. </para></listitem><listitem><para>Die Darlegung und Vertiefung von islamischen und koranischen Ansichten sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   </para></listitem></orderedlist><para>Um diese Ziele zu verwirklichen, stehen folgende Punkte im Programm:  </para><itemizedlist><listitem><para>Erziehung und Aneignung moralischer Werte  </para></listitem><listitem><para>Beachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  </para></listitem><listitem><para>Aufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  </para></listitem><listitem><para>Einnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles </para></listitem><listitem><para>Sicherung der Menschenwürde durch respektvollen Umgang </para></listitem><listitem><para>Achtung der islamischen Einheit zwischen den islamischen Rechtsschulen </para></listitem></itemizedlist><para>Einige Tochterinstitute der Al-Mustafa Universität in Iran:  </para><itemizedlist><listitem><para>Zentrum der Sprach- und Islamausbildung  </para></listitem><listitem><para>Jurisprudenz Oberschule  </para></listitem><listitem><para>Akademie Imam Khomenei (Aufbaustudium) </para></listitem><listitem><para>Institut der Islamischen Rechtschulen (Aufbaustudium) </para></listitem><listitem><para>Bint ul-Huda (Aufbaustudium) </para></listitem><listitem><para>Institut für Kurzstudien und Studienmöglichkeiten </para></listitem><listitem><para>Offene Al Mustafa (Fernstudium) </para></listitem><listitem><para>Internationales Forschungscenter Al-Mustafa   </para></listitem><listitem><para>Linguistik und Kulturcenter  </para></listitem><listitem><para>Filialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  </para></listitem><listitem><para>Zentren zur Ausbildung von Kindern und Ehepartnern der Studenten </para></listitem></itemizedlist><para>Die Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  Auch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der Al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  </para><para>Ebenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  </para><para>Professoren und Mitglieder der Universität: Derzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  </para><para>Studienschwerpunkte:  </para><para>Die Universität bietet 150 Fachgebiete an, zu ihnen gehören:  Fiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  </para><para>Aufzeichnung und Veröffentlichung von Unterrichtsbüchern:  </para><para>Mehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  </para><para>Andere Aktivitäten:  </para><itemizedlist><listitem><para>Reisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  </para></listitem><listitem><para>Studenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  </para></listitem><listitem><para>Ferner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an.  </para></listitem></itemizedlist></section>\n','ezrichtext',486,'ger-DE',4,0,'',4),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',1),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',2),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',3),(0,154,114,NULL,NULL,NULL,'ezobjectrelation',487,'ger-DE',4,0,'',4),(0,222,114,NULL,0,NULL,'ezboolean',488,'ger-DE',4,0,'',1),(0,222,114,NULL,1,NULL,'ezboolean',488,'ger-DE',4,1,'',2),(0,222,114,NULL,1,NULL,'ezboolean',488,'ger-DE',4,1,'',3),(0,222,114,NULL,1,NULL,'ezboolean',488,'ger-DE',4,1,'',4),(0,1,115,NULL,NULL,'New article','ezstring',489,'ger-DE',4,0,'new article',1),(0,1,115,NULL,NULL,'Impressum','ezstring',489,'ger-DE',4,0,'impressum',2),(0,121,115,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Angaben gemäß § 5 TMG: </para><para> </para><para> </para><para>Al-Mustafa Institut für Kultur-, Humanwissenschaften und Islamische Studien gemeinnützige GmbH </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Vertreten durch den Vorsitzenden:  </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin  </para><para> </para><para> </para><para>Kontakt: </para><para> </para><para>Tel.: 030 / 407 410 71 </para><para>E-Mail: info@almustafa.de </para><para>Web: <link xlink:href=\"ezurl://38\" xlink:show=\"none\">www.almustafa.de</link> </para><para> </para><para> </para><para>Registergericht: Amtsgericht Berlin - Charlottenburg </para><para>Registernummer: HRB 177538 B </para><para> </para><para> </para><para>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV: </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Haftungsausschluss (Disclaimer) </para><para> </para><para>Haftung für Inhalte </para><para> </para><para>Als Dienstanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen. </para><para> </para><para>Haftung für Links </para><para> </para><para>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen. </para><para> </para><para>Urheberrecht </para><para> </para><para>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen. </para><para>  </para><para>Datenschutzerklärung: </para><para> </para><para>Datenschutz </para><para> </para><para>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben. </para><para> </para><para>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich. </para><para> </para><para>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor. </para></section>\n','ezrichtext',490,'ger-DE',4,0,'',1),(0,121,115,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Angaben gemäß § 5 TMG: </para><para> </para><para> </para><para>Al-Mustafa Institut für Kultur-, Humanwissenschaften und Islamische Studien gemeinnützige GmbH </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Vertreten durch den Vorsitzenden:  </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin  </para><para> </para><para> </para><para>Kontakt: </para><para> </para><para>Tel.: 030 / 407 410 71 </para><para>E-Mail: info@almustafa.de </para><para>Web: <link xlink:href=\"ezurl://38\" xlink:show=\"none\">www.almustafa.de</link> </para><para> </para><para> </para><para>Registergericht: Amtsgericht Berlin - Charlottenburg </para><para>Registernummer: HRB 177538 B </para><para> </para><para> </para><para>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV: </para><para> </para><para>Dr. Mahdi Esfahani </para><para>Hardenbergstraße 8 </para><para>10623 Berlin </para><para> </para><para> </para><para>Haftungsausschluss (Disclaimer) </para><para> </para><para>Haftung für Inhalte </para><para> </para><para>Als Dienstanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen. </para><para> </para><para>Haftung für Links </para><para> </para><para>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen. </para><para> </para><para>Urheberrecht </para><para> </para><para>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen. </para><para>  </para><para>Datenschutzerklärung: </para><para> </para><para>Datenschutz </para><para> </para><para>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben. </para><para> </para><para>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich. </para><para> </para><para>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor. </para></section>\n','ezrichtext',490,'ger-DE',4,0,'',2),(0,154,115,NULL,NULL,NULL,'ezobjectrelation',491,'ger-DE',4,0,'',1),(0,154,115,NULL,NULL,NULL,'ezobjectrelation',491,'ger-DE',4,0,'',2),(0,222,115,NULL,1,NULL,'ezboolean',492,'ger-DE',4,1,'',1),(0,222,115,NULL,0,NULL,'ezboolean',492,'ger-DE',4,0,'',2),(0,1,116,NULL,NULL,'Kontakt','ezstring',493,'ger-DE',4,0,'kontakt',1),(0,121,116,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In der offenen Sprechstunde erhalten Sie Informationen zum Studiengang Islamische Theologie (B.A.). Gerne beantworten wir auch Fragen zum Bewerbungs- und Zulassungsverfahren vor Ort. </para><para> </para><para>Adresse: </para><para>          Al-Mustafa Institut </para><para>          Hardenbergstr. 8 </para><para>          10623 Berlin </para><para> </para><para>Sprechzeiten:  </para><para>Dienstag                  12 – 14 Uhr </para><para>Donnerstag             16 – 18 Uhr </para></section>\n','ezrichtext',494,'ger-DE',4,0,'',1),(0,154,116,NULL,NULL,NULL,'ezobjectrelation',495,'ger-DE',4,0,'',1),(0,222,116,NULL,0,NULL,'ezboolean',496,'ger-DE',4,0,'',1),(0,116,117,NULL,NULL,'Esfahani','ezstring',497,'eng-GB',3,0,'esfahani',1),(0,117,117,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',498,'eng-GB',3,0,'',1),(0,118,117,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"image.png\"\n    suffix=\"png\" basename=\"image\" dirpath=\"var/site/storage/images/9/9/4/0/499-1-eng-GB\" url=\"var/site/storage/images/9/9/4/0/499-1-eng-GB/image.png\"\n    original_filename=\"image.png\" mime_type=\"image/png\" width=\"493\"\n    height=\"329\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482653677\">\n  <original attribute_id=\"499\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"329\" Width=\"493\" IsColor=\"1\"/>\n</ezimage>','ezimage',499,'eng-GB',3,0,'',1),(0,189,146,NULL,NULL,'AL Mustafa','ezstring',781,'ger-DE',5,0,'al mustafa',1),(0,189,146,NULL,NULL,'Al-Mustafa Institut','ezstring',781,'ger-DE',5,0,'al-mustafa institut',2),(0,189,146,NULL,NULL,'Al-Mustafa Institut','ezstring',781,'ger-DE',5,0,'al-mustafa institut',3),(0,189,146,NULL,NULL,'Al-Mustafa Institut','ezstring',781,'ger-DE',5,0,'al-mustafa institut',4),(0,189,146,NULL,NULL,'Al-Mustafa Institut','ezstring',781,'ger-DE',5,0,'al-mustafa institut',5),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',1),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',2),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',3),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',4),(0,190,146,NULL,NULL,NULL,'eztext',782,'ger-DE',5,0,'',5),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"783\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',1),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483446023\">\n  <original attribute_id=\"783\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',2),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449109\">\n  <original attribute_id=\"783\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',3),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449399\">\n  <original attribute_id=\"783\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',4),(0,198,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/3/8/7/0/783-1-ger-DE\" url=\"var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483635059\">\n  <original attribute_id=\"783\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',783,'ger-DE',5,0,'',5),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"784\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',1),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483446023\">\n  <original attribute_id=\"784\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',2),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449109\">\n  <original attribute_id=\"784\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',3),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449399\">\n  <original attribute_id=\"784\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',4),(0,199,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/4/8/7/0/784-1-ger-DE\" url=\"var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483635059\">\n  <original attribute_id=\"784\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',784,'ger-DE',5,0,'',5),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"785\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',1),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483446023\">\n  <original attribute_id=\"785\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',2),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449109\">\n  <original attribute_id=\"785\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',3),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449399\">\n  <original attribute_id=\"785\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',4),(0,200,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/5/8/7/0/785-1-ger-DE\" url=\"var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483635059\">\n  <original attribute_id=\"785\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',785,'ger-DE',5,0,'',5),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',1),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',2),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',3),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',4),(0,201,146,NULL,NULL,NULL,'ezimage',786,'ger-DE',5,0,'',5),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',1),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',2),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',3),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',4),(0,202,146,NULL,NULL,NULL,'ezimage',787,'ger-DE',5,0,'',5),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482887849\">\n  <original attribute_id=\"788\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',1),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483446023\">\n  <original attribute_id=\"788\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',2),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449109\">\n  <original attribute_id=\"788\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',3),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483449399\">\n  <original attribute_id=\"788\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',4),(0,203,146,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/8/8/7/0/788-1-ger-DE\" url=\"var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1483635059\">\n  <original attribute_id=\"788\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',788,'ger-DE',5,0,'',5),(0,204,146,NULL,NULL,'Al-Mustafa Universität','ezstring',789,'ger-DE',5,0,'al-mustafa universität',1),(0,204,146,NULL,NULL,'Partneruniversität','ezstring',789,'ger-DE',5,0,'partneruniversität',2),(0,204,146,NULL,NULL,NULL,'ezstring',789,'ger-DE',5,0,'',3),(0,204,146,NULL,NULL,'Partneruniversität','ezstring',789,'ger-DE',5,0,'partneruniversität',4),(0,204,146,NULL,NULL,'Partneruniversität','ezstring',789,'ger-DE',5,0,'partneruniversität',5),(0,205,146,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','eztext',790,'ger-DE',5,0,'',1),(0,205,146,NULL,NULL,'Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. \n\nSie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   \nDie Universität in Qum hat sich zwei Hauptziele gesetzt: \ndie Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. \nDie Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   \nUm jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  \nErziehung und Aneignung moralischer Werte  \nBeachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  \nAufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  \nEinnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles \nSicherung der Menschenwürde durch respektvollen Umgang \nAchtung der islamischen Einheit zwischen den islamischen Rechtsschulen \n \nEinige Tochterinstitute der al-Mustafa Universität in Iran:  \n \nZentrum der Sprach- und Islamausbildung  \nJurisprudenz Oberschule  \nAkademie Imam Khomenei (Aufbaustudium) \nInstitut der Islamischen Rechtschulen (Aufbaustudium) \nBint ul-Huda (Aufbaustudium) \nInstitut für Kurzstudien und Studienmöglichkeiten \nOffene Al Mustafa (Fernstudium) \nInternationales Forschungscenter Al-Mustafa   \nLinguistik und Kulturcenter  \nFilialen der Al-Mustafa in Teheran, Maschhad, Isfahan, Qeschm und Gorgan.  \nZentren zur Ausbildung von Kindern und Ehepartnern der Studenten \n \nDie Al-Mustafa Universität hat auch außerhalb Irans einige untergeordnete und kooperierende Zentren und Instituten. Zu ihnen gehören die islamischen Akademien in London, Indonesien und Ghana.  \nAuch gibt es eine Gruppe von Zentren, die unter Aufsicht und Betreuung der al-Mustafa Universität stehen: Universität der Ahlulbayt, Hawza al-Athar, Sabtayn-Schule, Märtyrer Sadr Schule.  \nEbenso arbeitet die Al-Mustafa Universität mit islamischen Instituten und Schulen aus anderen Länder zusammen.  \n \nProfessoren und Mitglieder der Universität: \nDerzeit arbeiten 500 Mitglieder und Professoren für die al-Mustafa innerhalb und außerhalb Irans.  \n \nStudienschwerpunkte:  \nDie Universität bietet 150 Fachgebiete an, zu ihnen gehören:  \nFiqh und Uṣūl (Grundlagen der Rechtswissenshaft), Fiqh und Maaref, komparative Rechtswissenschaft, gottesdienstliche Rechtswissenschaft, politische Rechtswissenschaft, wirtschaftliche Rechtswissenschaft, richterliche Rechtswissenschaft, Familienrechtswissenschaft, pädagogische Rechtswissenschaft, gesellschaftliche Rechtswissenschaft, komparative Exegese, Koran und Wissenschaft, Philosophie und islamische Erkenntnis/Mystik, islamische Theologie, islamische Kultur, Islamgeschichte, Schiitische Studien, Religionen und Maḏāhib, Wirtschaft, pädagogische Wissenschaft, Verbreitung und Beziehung, gesellschaftliche Studien, Politikwissenschaft, Jura, Persisch, arabische Literatur und vieles mehr.  \n \nAufzeichnung und Veröffentlichung von Unterrichtsbüchern:  \nMehr als 1000 Bücher, sowie über 500 ausarbeitete Skripte konnte die al-Mustafa Universität bis heute veröffentlichen.  \n \nAndere Aktivitäten:  \nReisen, Gottesdienst, Koran- und Sportwettbewerbe, Tuba-Festspiele und andere kulturelle Programme.  \nStudenten genießen nationale und kulturelle Kommissionen mit mehr als 100 Arbeitsgruppen mit verschiedenen Dienstleistungen und anderen Programmen in journalistischen und medialen Bereichen.  \nFerner bietet die Universität auch künstlerische und technische Fähigkeitsausbildung für interessierte Studenten an. ','eztext',790,'ger-DE',5,0,'',2),(0,205,146,NULL,NULL,'Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. \n\nSie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   \nDie Universität in Qum hat sich zwei Hauptziele gesetzt: \ndie Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. \nDie Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   \nUm jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  \nErziehung und Aneignung moralischer Werte  \nBeachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  \nAufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  \nEinnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles \nSicherung der Menschenwürde durch respektvollen Umgang \nAchtung der islamischen Einheit zwischen den islamischen Rechtsschulen ','eztext',790,'ger-DE',5,0,'',3),(0,205,146,NULL,NULL,'Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. \n\nSie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   \nDie Universität in Qum hat sich zwei Hauptziele gesetzt: \ndie Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. \nDie Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   \nUm jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  \nErziehung und Aneignung moralischer Werte  \nBeachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  \nAufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  \nEinnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles \nSicherung der Menschenwürde durch respektvollen Umgang \nAchtung der islamischen Einheit zwischen den islamischen Rechtsschulen ','eztext',790,'ger-DE',5,0,'',4),(0,205,146,NULL,NULL,'Die al-Mustafa Universität ist eine 1979 in Qum gegründete Hochschule, die sich mit der internationalen Ausbildung auf dem Bereich der islamischen Theologie befasst. \n\nSie trägt einen der Namen des heiligen Propheten Mohammad. Al-Mustafa bedeutet \"der Auserwählte“.   \nDie Universität in Qum hat sich zwei Hauptziele gesetzt: \ndie Ausbildung von (Groß-) Gelehrten, Lehrern und Forschern. \nDie Darlegung und Vertiefung von islamischen und koranischen Ansichten, sowie Entwicklung von islamischen Theorien und göttlicher und menschlicher Erkenntnisse.   \nUm jene Ziele zu verwirklichen, stehen folgende Punkte im Programm:  \nErziehung und Aneignung moralischer Werte  \nBeachtung der Tradition der islamischen Institutionen und ihrer alten Verfahrensweise  \nAufmerksamkeit auf die Verbreitung der islamischen Wissenschaften, Ansichten und Übersetzungen von islamischen Quellen.  \nEinnahme des wissenschaftlichen und pädagogischen Untersuchungsstiles \nSicherung der Menschenwürde durch respektvollen Umgang \nAchtung der islamischen Einheit zwischen den islamischen Rechtsschulen ','eztext',790,'ger-DE',5,0,'',5),(0,4,147,NULL,NULL,'Applications','ezstring',791,'ger-DE',5,0,'applications',1),(0,155,147,NULL,NULL,NULL,'ezstring',792,'ger-DE',5,0,'',1),(0,119,147,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',793,'ger-DE',5,0,'',1),(0,156,147,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',794,'ger-DE',5,0,'',1),(0,191,147,NULL,0,NULL,'ezboolean',795,'ger-DE',5,0,'',1),(0,8,149,NULL,NULL,'Al-Mustafa','ezstring',799,'ger-DE',4,0,'al-mustafa',1),(0,9,149,NULL,NULL,'Institut','ezstring',800,'ger-DE',4,0,'institut',1),(0,12,149,NULL,NULL,NULL,'ezuser',801,'ger-DE',4,0,'',1),(0,8,150,NULL,NULL,'Shayan','ezstring',804,'ger-DE',4,0,'shayan',1),(0,9,150,NULL,NULL,'Arkian','ezstring',805,'ger-DE',4,0,'arkian',1),(0,12,150,NULL,NULL,NULL,'ezuser',806,'ger-DE',4,0,'',1),(0,8,151,NULL,NULL,'Oliver','ezstring',809,'ger-DE',4,0,'oliver',1),(0,9,151,NULL,NULL,'Malik','ezstring',810,'ger-DE',4,0,'malik',1),(0,12,151,NULL,NULL,NULL,'ezuser',811,'ger-DE',4,0,'',1),(0,8,153,NULL,NULL,'Ali','ezstring',815,'ger-DE',4,0,'ali',1),(0,9,153,NULL,NULL,'Taouil','ezstring',816,'ger-DE',4,0,'taouil',1),(0,12,153,NULL,NULL,NULL,'ezuser',817,'ger-DE',4,0,'',1),(0,187,156,NULL,NULL,'Studiumbeginn','ezstring',825,'ger-DE',5,0,'studiumbeginn',1),(0,187,156,NULL,NULL,'Studiumbeginn','ezstring',825,'ger-DE',5,0,'studiumbeginn',2),(0,187,156,NULL,NULL,'Studiumbeginn','ezstring',825,'ger-DE',5,0,'studiumbeginn',3),(0,188,156,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Wir freuen uns, Ihnen mitteilen zu können, dass das Studium der Islamischen Theologie (B.A.) an dem Al-Mustafa Institut im April beginnen wird. Sie können sich für das Studium <link xlink:href=\"ezurl://42\" xlink:show=\"none\">hier bewerben</link>.</para></section>\n','ezrichtext',826,'ger-DE',5,0,'',1),(0,188,156,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Wir freuen uns, Ihnen mitteilen zu können, dass das Studium der Islamischen Theologie (B.A.) an dem Al-Mustafa Institut im April beginnen wird. Sie können sich für das Studium <link xlink:href=\"ezurl://42\" xlink:show=\"none\">hier bewerben</link>.</para></section>\n','ezrichtext',826,'ger-DE',5,0,'',2),(0,188,156,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Wir freuen uns, Ihnen mitteilen zu können, dass das Studium der Islamischen Theologie (B.A.) an dem Al-Mustafa Institut im April begonnen werden kann. Sie können sich für das Studium <link xlink:href=\"ezurl://42\" xlink:show=\"none\">hier bewerben</link>.</para></section>\n','ezrichtext',826,'ger-DE',5,0,'',3),(0,193,156,NULL,1483574400,NULL,'ezdate',827,'ger-DE',5,1483574400,'',1),(0,193,156,NULL,1483574400,NULL,'ezdate',827,'ger-DE',5,1483574400,'',2),(0,193,156,NULL,1483574400,NULL,'ezdate',827,'ger-DE',5,1483574400,'',3),(0,194,156,NULL,NULL,NULL,'eztext',828,'ger-DE',5,0,'',1),(0,194,156,NULL,NULL,'Wir freuen uns, Ihnen mitteilen zu können, dass das Studium der Islamischen Theologie (B.A.) an dem Al-Mustafa Institut im April beginnen wird. Sie können sich für das Studium hier bewerben.','eztext',828,'ger-DE',5,0,'',2),(0,194,156,NULL,NULL,'Wir freuen uns, Ihnen mitteilen zu können, dass das Studium der Islamischen Theologie (B.A.) an dem Al-Mustafa Institut im April begonnen werden kann..','eztext',828,'ger-DE',5,0,'',3),(0,195,156,NULL,NULL,NULL,'ezimage',829,'ger-DE',5,0,'',1),(0,195,156,NULL,NULL,NULL,'ezimage',829,'ger-DE',5,0,'',2),(0,195,156,NULL,NULL,NULL,'ezimage',829,'ger-DE',5,0,'',3),(0,8,162,NULL,NULL,'Hassan','ezstring',856,'ger-DE',4,0,'hassan',1),(0,9,162,NULL,NULL,'Khalife','ezstring',857,'ger-DE',4,0,'khalife',1),(0,12,162,NULL,NULL,NULL,'ezuser',858,'ger-DE',4,0,'',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (0,80,5,1,2,103),(0,80,6,2,2,103),(0,80,7,3,2,103),(0,80,8,4,2,103),(0,109,2,5,2,117),(0,80,9,6,2,103),(0,80,10,7,2,103),(0,109,3,8,2,117),(0,109,4,9,2,117),(0,109,5,10,2,117),(0,109,6,11,2,117);
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
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',4,14,2,'Administrator User','eng-GB'),('eng-GB',5,14,2,'Amir Koklan','eng-GB'),('eng-GB',6,14,2,'Amir Koklan','eng-GB'),('eng-GB',7,14,2,'Amir Koklan','eng-GB'),('eng-GB',8,14,2,'Amir Koklan','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,54,2,'Amir Test Amir Test','eng-GB'),('ger-DE',1,63,4,'Über uns','ger-DE'),('ger-DE',2,63,4,'Über uns','ger-DE'),('ger-DE',1,65,4,'Folder 1','ger-DE'),('ger-DE',2,65,4,'Folder 1','ger-DE'),('ger-DE',3,65,4,'Studium','ger-DE'),('ger-DE',1,69,4,'Folder 2','ger-DE'),('ger-DE',2,69,4,'Folder 2','ger-DE'),('ger-DE',3,69,4,'Forschungsprojekte','ger-DE'),('ger-DE',4,69,4,'Forschung','ger-DE'),('ger-DE',1,75,4,'Vernstellungen','ger-DE'),('ger-DE',2,75,4,'Vernstellungen','ger-DE'),('ger-DE',3,75,4,'Veranstaltungen','ger-DE'),('ger-DE',2,76,4,'','ger-DE'),('eng-GB',3,76,2,'First Blog','eng-GB'),('ger-DE',3,76,4,'First Blog','ger-DE'),('eng-GB',4,76,2,'First Blog','eng-GB'),('ger-DE',4,76,4,'First Blog','ger-DE'),('eng-GB',5,76,2,'First Blog','eng-GB'),('ger-DE',5,76,4,'Fotografie Workshop','ger-DE'),('eng-GB',6,76,2,'First Blog','eng-GB'),('ger-DE',6,76,4,'Fotografie Workshop','ger-DE'),('eng-GB',7,76,2,'First Blog','eng-GB'),('ger-DE',7,76,4,'Fotografie Workshop','ger-DE'),('ger-DE',1,77,4,'Forschungreisen','ger-DE'),('ger-DE',5,80,4,'Qom 2016','ger-DE'),('ger-DE',6,80,4,'Qom 2016','ger-DE'),('ger-DE',7,80,4,'Qom 2016','ger-DE'),('ger-DE',8,80,4,'Qom 2016','ger-DE'),('ger-DE',9,80,4,'Qom 2016','ger-DE'),('ger-DE',10,80,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',1,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',2,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',3,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',4,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',5,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',6,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',7,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',8,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',9,101,4,'Forschungsreise März 2017','ger-DE'),('ger-DE',10,101,4,'Forschungsreise März 2017','ger-DE'),('eng-GB',1,103,2,'Qom2','eng-GB'),('ger-DE',3,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',4,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',5,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',6,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',7,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',8,105,4,'Islamische Theologie (B.A.)','ger-DE'),('ger-DE',1,106,4,'Modulhandbuch','ger-DE'),('ger-DE',2,106,4,'Modulhandbuch','ger-DE'),('ger-DE',1,107,4,'Kooperation','ger-DE'),('ger-DE',2,107,4,'Kooperation','ger-DE'),('ger-DE',3,107,4,'Kooperation','ger-DE'),('ger-DE',1,108,4,'Dozenten','ger-DE'),('ger-DE',2,108,4,'Dozenten','ger-DE'),('ger-DE',3,108,4,'Dozenten','ger-DE'),('ger-DE',1,109,4,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ger-DE'),('ger-DE',2,109,4,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ger-DE'),('ger-DE',3,109,4,'Dr. des. Mahdi Esfahani (Unterrubrik von Dozenten)','ger-DE'),('ger-DE',4,109,4,'Dr. des. Mahdi Esfahani','ger-DE'),('ger-DE',5,109,4,'Dr. des. Mahdi Esfahani','ger-DE'),('ger-DE',6,109,4,'Dr. des. Mahdi Esfahani','ger-DE'),('ger-DE',1,110,4,'Forschungsprojekte','ger-DE'),('ger-DE',2,110,4,'Forschungsprojekte','ger-DE'),('ger-DE',3,110,4,'Forschungsprojekte','ger-DE'),('ger-DE',1,111,4,'Publikationen','ger-DE'),('ger-DE',2,111,4,'Publikationen','ger-DE'),('ger-DE',1,112,4,'Institutszeitschrift','ger-DE'),('ger-DE',2,112,4,'Institutszeitschrift','ger-DE'),('ger-DE',3,112,4,'Institutszeitschrift','ger-DE'),('ger-DE',1,113,4,'Über uns','ger-DE'),('ger-DE',2,113,4,'Über uns','ger-DE'),('ger-DE',1,114,4,'Partneruniversität','ger-DE'),('ger-DE',2,114,4,'Partneruniversität','ger-DE'),('ger-DE',3,114,4,'Partneruniversität','ger-DE'),('ger-DE',4,114,4,'Partneruniversität','ger-DE'),('ger-DE',1,115,4,'New article','ger-DE'),('ger-DE',2,115,4,'Impressum','ger-DE'),('ger-DE',1,116,4,'Kontakt','ger-DE'),('eng-GB',1,117,2,'Esfahani','eng-GB'),('ger-DE',1,146,4,'AL Mustafa','ger-DE'),('ger-DE',2,146,4,'Al-Mustafa Institut','ger-DE'),('ger-DE',3,146,4,'Al-Mustafa Institut','ger-DE'),('ger-DE',4,146,4,'Al-Mustafa Institut','ger-DE'),('ger-DE',5,146,4,'Al-Mustafa Institut','ger-DE'),('ger-DE',1,147,4,'Applications','ger-DE'),('ger-DE',1,149,4,'Al-Mustafa Institut','ger-DE'),('ger-DE',1,150,4,'Shayan Arkian','ger-DE'),('ger-DE',1,151,4,'Oliver Malik','ger-DE'),('ger-DE',1,153,4,'Ali Taouil','ger-DE'),('ger-DE',1,156,4,'Studiumbeginn','ger-DE'),('ger-DE',2,156,4,'Studiumbeginn','ger-DE'),('ger-DE',3,156,4,'Studiumbeginn','ger-DE'),('ger-DE',1,162,4,'Hassan Khalife','ger-DE');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1483910937,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(146,1,4,1,0,0,2,1483910937,2,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1301062024,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1301062024,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,8,3,0,0,15,1301062024,15,13,'users/administrator_users/amir_koklan','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1483671898,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1448833726,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1483671898,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(54,1,1,3,0,0,56,1480382570,56,12,'users/guest_accounts/amir_test_amir_test','/1/5/12/56/',0,'b28f4b892ed6ded2fa24982a9e43ea06',9,1),(63,1,2,2,0,0,65,1482638733,65,2,'node_2/ueber_uns','/1/2/65/',0,'a0fc4d24042ce9b35626dc936e458fe1',1,1),(65,1,3,2,0,0,67,1482635755,67,2,'node_2/studium','/1/2/67/',0,'ffd1dbcea3da4147158d4f21e7cedf90',1,1),(69,1,4,2,0,0,71,1482638374,71,2,'node_2/forschung','/1/2/71/',0,'6ce9a9fa90830fafe01c4544e61f7be9',1,1),(75,1,3,2,0,0,77,1483635907,77,2,'node_2/veranstaltungen','/1/2/77/',0,'8de9380c5e9ec89bbd371648b129633a',1,1),(76,1,7,3,0,0,78,1481073301,78,77,'node_2/veranstaltungen/fotografie_workshop','/1/2/77/78/',0,'e14d8bdda6a0aafcd8139bf40b5f5eba',1,1),(77,1,1,2,0,0,79,1483704062,79,2,'node_2/forschungreisen','/1/2/79/',0,'f624b3f093a1a87604726cca1256c658',1,1),(80,1,10,3,0,0,82,1483704062,82,79,'node_2/forschungreisen/forschungsreise_maerz_2017','/1/2/79/82/',0,'d56cc7c2d056a7258de31222d1d40841',1,1),(101,1,6,3,0,0,93,1482467232,93,77,'node_2/veranstaltungen/forschungsreise_maerz_2017','/1/2/77/93/',0,'dd282d50f782efba25af15d87d2a7b6d',1,1),(103,1,1,3,0,0,95,1482517381,95,51,'media/images/qom2','/1/43/51/95/',0,'577b5067a6274ce3e0cdbc2811ecda5e',1,1),(105,1,8,3,0,0,97,1482635909,97,67,'node_2/studium/islamische_theologie_b_a','/1/2/67/97/',0,'5617aa767e04c0e36c553e1d6011081e',1,1),(106,1,2,3,0,0,98,1482636598,98,67,'node_2/studium/modulhandbuch','/1/2/67/98/',0,'351d6d65cf3bad62a05e350081356ce6',1,1),(107,1,3,3,0,0,99,1482636915,99,67,'node_2/studium/kooperation','/1/2/67/99/',0,'19f947b2cbcdcf37d51182451bbb2cde',1,1),(108,1,3,3,0,0,100,1482636972,100,67,'node_2/studium/dozenten','/1/2/67/100/',0,'2ca7bcd7c3c872cd90ae148b0ccf1889',1,1),(109,1,6,3,0,0,125,1482637147,101,67,'node_2/studium/dr_des_mahdi_esfahani','/1/2/67/101/',0,'573756e8c2da118903d554efa1356e2e',1,1),(110,1,3,3,0,0,102,1482638406,102,71,'node_2/forschung/forschungsprojekte','/1/2/71/102/',0,'b03e1d86a42f5d09b43a0f14c1c1485a',1,1),(111,1,2,3,0,0,103,1482638615,103,71,'node_2/forschung/publikationen','/1/2/71/103/',0,'56c4219cbf05fa5bdf838e4475aefcbe',1,1),(112,1,3,3,0,0,104,1482638662,104,71,'node_2/forschung/institutszeitschrift','/1/2/71/104/',0,'df9ff92eb5a16cebcbafd4793f99dd88',1,1),(113,1,2,3,0,0,105,1482638992,105,65,'node_2/ueber_uns/ueber_uns','/1/2/65/105/',0,'5112c95a47b9c7ab7d4ae87081253f17',1,1),(114,1,4,3,0,0,106,1482639073,106,65,'node_2/ueber_uns/partneruniversitaet','/1/2/65/106/',0,'f85b8667135675a5fb46bb4c87c080d3',1,1),(115,1,2,2,0,0,107,1482639161,107,2,'node_2/impressum','/1/2/107/',0,'6ce954e6cb5ab790593b4f3693dd85cc',1,1),(116,1,1,2,0,0,108,1482641127,108,2,'node_2/kontakt','/1/2/108/',0,'63b26596a386682d78ec355e536d0777',1,1),(117,1,1,3,0,0,109,1482653677,109,51,'media/images/esfahani','/1/43/51/109/',0,'628f19c85e8065734184a88e2f965567',1,1),(147,1,1,2,0,0,121,1483910937,121,2,'node_2/applications2','/1/2/121/',0,'65a9def2b9d93d7c87a329c493ab550c',1,1),(149,1,1,3,0,0,123,1483350375,123,14,'users/editors//al_mustafa_institut','/1/5/14/123/',0,'a83fc8bc30ad41a578b44e2b029a57e0',9,1),(150,1,1,3,0,0,124,1483366065,124,14,'users/editors//shayan_arkian','/1/5/14/124/',0,'970fc411f8652177f364ac06ceceaee1',9,1),(109,1,6,4,0,0,125,1483461433,125,100,'node_2/studium/dozenten/dr_des_mahdi_esfahani','/1/2/67/100/125/',0,'6f335c76bd1f93fc29ef7a8725cd0931',1,1),(151,1,1,3,0,0,126,1483546049,126,12,'users/guest_accounts/oliver_malik','/1/5/12/126/',0,'64a9b24db8a973c388385c8ff42a6104',9,1),(153,1,1,3,0,0,128,1483546253,128,12,'users/guest_accounts/ali_taouil','/1/5/12/128/',0,'e1ac63fe9751f85b712fecac810f953b',9,1),(156,1,3,3,0,0,131,1483636155,131,77,'node_2/veranstaltungen/studiumbeginn','/1/2/77/131/',0,'0e7312fd8bada07000689d5f57bb0731',1,1),(162,1,1,3,0,0,137,1483797355,137,12,'users/guest_accounts/hassan_khalife','/1/5/12/137/',0,'1124553232aabb7c606dae3e7711f160',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(14,1301061783,14,499,2,3,1482105019,3,0,3,0),(54,1480382570,14,509,2,3,1480382570,1,0,1,0),(63,1480886444,14,520,4,5,1482639020,3,0,1,0),(65,1480901813,14,522,4,5,1481048891,3,0,1,0),(69,1480902014,14,527,4,5,1481058722,3,0,1,0),(75,1480987916,14,533,4,5,1481071731,3,0,1,0),(65,1481048891,14,534,4,5,1482635717,3,0,2,0),(69,1481058722,14,535,4,5,1482638343,3,0,2,0),(75,1481071731,14,538,4,5,1482540280,3,0,2,0),(76,1481074440,14,540,4,5,1481335792,3,0,2,0),(77,1481239640,14,541,4,5,1481239640,1,0,1,0),(76,1481335792,14,544,2,7,1482469213,3,0,3,0),(14,1482105019,14,567,2,3,1482105019,0,0,4,0),(14,1482105019,14,568,2,3,1482105153,3,0,5,0),(14,1482105153,14,569,2,3,1482105153,0,0,6,0),(14,1482105153,14,570,2,3,1482635649,3,0,7,0),(101,1482467232,14,579,4,5,1482469064,3,0,1,0),(101,1482469063,14,580,4,5,1483453041,3,0,2,0),(76,1482469212,14,581,4,7,1483452384,3,0,4,0),(103,1482517381,14,586,2,3,1482517381,1,0,1,0),(80,1482517478,14,587,4,5,1482518221,3,0,5,0),(80,1482518220,14,588,4,5,1482518440,3,0,6,0),(80,1482518440,14,589,4,5,1482518590,3,0,7,0),(80,1482518590,14,590,4,5,1483451385,3,0,8,0),(75,1482540280,14,592,4,5,1482540280,1,0,3,0),(14,1482635649,14,594,2,3,1482635649,1,0,8,0),(65,1482635717,14,595,4,5,1482635717,1,0,3,0),(106,1482636598,14,598,4,4,1483459843,3,0,1,0),(107,1482636914,14,599,4,4,1483460617,3,0,1,0),(108,1482636971,14,600,4,4,1482636982,3,0,1,0),(108,1482636982,14,601,4,4,1483461131,3,0,2,0),(109,1482637147,14,602,4,4,1482653720,3,0,1,0),(69,1482638342,14,603,4,5,1482638367,3,0,3,0),(69,1482638367,14,604,4,5,1482638367,1,0,4,0),(110,1482638406,14,605,4,4,1483454365,3,0,1,0),(111,1482638615,14,606,4,4,1483454906,3,0,1,0),(112,1482638661,14,607,4,4,1483454987,3,0,1,0),(113,1482638991,14,608,4,4,1483463641,3,0,1,0),(63,1482639019,14,609,4,5,1482639020,1,0,2,0),(114,1482639073,14,610,4,4,1482639083,3,0,1,0),(114,1482639083,14,611,4,4,1483464119,3,0,2,0),(115,1482639161,14,612,4,4,1482639182,3,0,1,0),(115,1482639181,14,613,4,4,1482639182,1,0,2,0),(116,1482641127,14,614,4,4,1482641127,1,0,1,0),(117,1482653677,14,615,2,3,1482653677,1,0,1,0),(109,1482653720,14,616,4,4,1483461782,3,0,2,0),(146,1482887848,14,657,4,5,1483448399,3,0,1,0),(147,1482887942,14,658,4,5,1482887942,1,0,1,0),(149,1483350375,10,660,4,4,1483350375,1,0,1,0),(150,1483366065,10,661,4,4,1483366065,1,0,1,0),(146,1483446023,150,662,4,5,1483449111,3,0,2,0),(146,1483449109,150,663,4,5,1483449401,3,0,3,0),(146,1483449399,150,664,4,5,1483449401,1,0,4,0),(80,1483451383,150,665,4,5,1483451882,3,0,9,0),(80,1483451527,150,666,4,5,1483451882,1,0,10,0),(76,1483452383,150,667,4,7,1483453639,3,0,5,0),(101,1483453039,150,668,4,5,1483453148,3,0,3,0),(101,1483453147,150,669,4,5,1483453290,3,0,4,0),(101,1483453289,150,670,4,5,1483453323,3,0,5,0),(101,1483453321,150,671,4,5,1483453323,1,0,6,0),(76,1483453638,150,672,4,7,1483636804,3,0,6,0),(110,1483454364,150,673,4,4,1483463751,3,0,2,0),(111,1483454904,150,674,4,4,1483454906,1,0,2,0),(112,1483454986,150,675,4,4,1483463807,3,0,2,0),(105,1483456253,150,676,4,4,1483456723,3,0,3,0),(105,1483456722,150,677,4,4,1483456855,3,0,4,0),(105,1483456854,150,678,4,4,1483456913,3,0,5,0),(105,1483456912,150,679,4,4,1483457401,3,0,6,0),(105,1483457399,150,680,4,4,1483457447,3,0,7,0),(105,1483457445,150,681,4,4,1483457447,1,0,8,0),(106,1483459842,150,682,4,4,1483459843,1,0,2,0),(107,1483460616,150,683,4,4,1483460667,3,0,2,0),(107,1483460666,150,684,4,4,1483460667,1,0,3,0),(108,1483461130,150,685,4,4,1483461131,1,0,3,0),(109,1483461780,150,686,4,4,1483462116,3,0,3,0),(109,1483462114,150,687,4,4,1483462399,3,0,4,0),(109,1483462397,150,688,4,4,1483462506,3,0,5,0),(109,1483462504,150,689,4,4,1483462506,1,0,6,0),(113,1483463640,150,690,4,4,1483463641,1,0,2,0),(110,1483463750,150,691,4,4,1483463751,1,0,3,0),(112,1483463805,150,692,4,4,1483463807,1,0,3,0),(114,1483464116,150,693,4,4,1483464185,3,0,3,0),(114,1483464183,150,694,4,4,1483464185,1,0,4,0),(101,1483474309,14,695,4,5,1483474309,0,0,7,0),(101,1483474603,14,696,4,5,1483474603,0,0,8,0),(101,1483475322,14,697,4,5,1483475322,0,0,9,0),(101,1483475663,14,698,4,5,1483475663,0,0,10,0),(151,1483546049,10,699,4,4,1483546049,1,0,1,0),(153,1483546253,10,701,4,4,1483546253,1,0,1,0),(146,1483635059,150,703,4,5,1483635451,0,0,5,0),(156,1483636157,150,706,4,5,1483636232,3,0,1,0),(156,1483636230,150,707,4,5,1483636345,3,0,2,0),(156,1483636343,150,708,4,5,1483636345,1,0,3,0),(76,1483636801,150,709,4,7,1483636804,1,0,7,0),(162,1483797355,10,720,4,4,1483797355,1,0,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',1),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',2),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',3),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',51),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',52),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',53),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',54),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',55),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',56),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',57),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',58),(389,'var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg',59),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',60),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',61),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',62),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',63),(499,'var/site/storage/images/9/9/4/0/499-1-eng-GB/image.png',64),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',145),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',146),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',147),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',148),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',149),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',150),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',151),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',152),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',153),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',154),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',155),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',156),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',157),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',158),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',159),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',160),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',161),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',162),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',163),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',164),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',165),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',166),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',167),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',168),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',169),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',170),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',171),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',172),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',173),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',174),(783,'var/site/storage/images/3/8/7/0/783-1-ger-DE/uni1.jpg',175),(784,'var/site/storage/images/4/8/7/0/784-1-ger-DE/uni2.jpg',176),(785,'var/site/storage/images/5/8/7/0/785-1-ger-DE/uni3.jpg',177),(788,'var/site/storage/images/8/8/7/0/788-1-ger-DE/uni1.jpg',178),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',179),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',180),(835,'var/site/storage/images/5/3/8/0/835-1-ger-DE/lozi new.png',182),(835,'var/site/storage/images/5/3/8/0/835-1-ger-DE/lozi new.png',183),(835,'var/site/storage/images/5/3/8/0/835-1-ger-DE/lozi new.png',184),(835,'var/site/storage/images/5/3/8/0/835-1-ger-DE/lozi new.png',185),(835,'var/site/storage/images/5/3/8/0/835-3-ger-DE/Screen Shot 2016-12-29 at 04.24.44.png',187),(841,'var/site/storage/images/1/4/8/0/841-1-ger-DE/Screen Shot 2016-12-29 at 04.24.44.png',190),(841,'var/site/storage/images/1/4/8/0/841-1-ger-DE/Screen Shot 2016-12-29 at 04.24.44.png',191);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(52,1,0,40,1,2,2,'7d65780390a240b94176fa62fd3e78e4','0',1,1,0,0),(53,1,0,41,1,2,54,'73d566928297c09a06fa76f1e4425b2e','0',9,1,0,0),(54,1,0,42,1,2,12,'b28f4b892ed6ded2fa24982a9e43ea06','0',9,1,0,0),(55,1,0,43,1,2,54,'4101e831147e95c12889b00347518ffc','0',9,1,0,0),(56,1,0,44,1,2,54,'c711c325ae01c7fc481e8a9089674cfc','0',9,1,0,0),(57,1,0,45,1,2,54,'c541974ef0bf80c02848d1c0f2df0e4f','0',1,1,0,0),(58,1,0,46,1,2,54,'5e445974400cae3c948502b3503a64f5','0',9,1,0,0),(59,1,0,47,1,2,54,'a5d5e94b8d1d91c43ac1a024c284d89f','0',9,1,0,0),(60,1,0,48,1,2,54,'d98d23225f188f4c2ef03b2cbb018c9f','0',9,1,0,0),(61,1,0,49,1,2,54,'24d25867cce8d10e2598a238c2b05d3f','0',9,1,0,0),(63,1,0,51,1,2,2,'a0fc4d24042ce9b35626dc936e458fe1','0',1,1,0,0),(64,1,0,52,1,2,65,'06dcac24342445ecc0d0f41ad51427d8','0',1,1,0,0),(65,1,0,53,1,2,2,'ffd1dbcea3da4147158d4f21e7cedf90','0',1,1,0,0),(66,1,0,54,1,2,67,'a1f4e01c66c58471f1f52080b52cc8f1','0',1,1,0,0),(67,1,0,55,1,2,67,'371d5b483e545ec53ed8cfa65de6c0ba','0',1,1,0,0),(68,1,0,56,1,2,67,'8f445fb0d64dd60f126ae0381a74e0fe','0',1,1,0,0),(69,1,0,57,1,2,2,'6ce9a9fa90830fafe01c4544e61f7be9','0',1,1,0,0),(70,1,0,58,1,2,71,'fbc80353ed6569b517c77322313fa661','0',1,1,0,0),(71,1,0,59,1,2,65,'c1d3eb06b5c676f8f233b07e1e99b7f3','0',1,1,0,0),(72,1,0,60,1,2,68,'131279c6b221af1ae30df59185750711','0',1,1,0,0),(73,1,0,61,1,2,68,'f5edc5ba2e6892c780757be12cb78e30','0',1,1,0,0),(74,1,0,62,1,2,2,'b12c38bb337fab0eba0c46d4af6cff97','0',1,1,0,0),(75,1,0,63,1,2,2,'8de9380c5e9ec89bbd371648b129633a','0',1,1,0,0),(77,1,0,65,1,2,2,'f624b3f093a1a87604726cca1256c658','0',1,1,0,0),(78,1,0,66,1,2,77,'782256aec842a62b03836f142c1723b4','0',1,1,0,0),(79,1,0,67,1,2,79,'5018445a3d960e7ca6ffac5c97a1a779','0',1,1,0,0),(82,1,0,70,1,2,82,'b644bdbb02fe081515256ef9d2aee220','0',9,1,0,0),(83,1,0,71,1,2,82,'2baca779a7fa0417357afed11b38b73e','0',9,1,0,0),(84,1,0,72,1,2,82,'3493c6108407956c019ae59d6ab8ade0','0',9,1,0,0),(85,1,0,73,1,2,82,'c38ae8df1e7f6676bf524036b6cbe595','0',9,1,0,0),(86,1,0,74,1,2,82,'f3b2dd62e7396a601c5ae34bf630667d','0',9,1,0,0),(87,1,0,75,1,2,82,'c5c6bedaedd3ece0078c836fd1a0fd9f','0',9,1,0,0),(88,1,0,76,1,2,82,'ca2a2c0229f16c67c083b80220ba32a9','0',9,1,0,0),(89,1,0,77,1,2,82,'ca04292ca25a987949c8f29c92a76518','0',9,1,0,0),(90,1,0,78,1,2,82,'927ea39610695ca163c68938f17af11c','0',9,1,0,0),(91,1,0,79,1,2,82,'d34526a9b5f03567fcd52b460918d2af','0',9,1,0,0),(92,1,0,80,1,5,65,'05c4ce53ce353c50168f3c3a4ed186d9','0',9,1,0,0),(93,1,0,81,1,2,82,'f52855db8a1662c13ee012f45330f0df','0',9,1,0,0),(94,1,0,82,1,2,82,'baa8255645b19d4326b20eedd2ff0ef4','0',9,1,0,0),(95,1,0,83,1,2,54,'0bdfad3dd34406a9e50526b1c7f724b2','0',9,1,0,0),(96,1,0,84,1,2,54,'50331f818a9b74af0bcc55a35133633b','0',9,1,0,0),(97,1,0,85,1,2,54,'2d709e97b93e065243eac541f2cb3ded','0',9,1,0,0),(98,1,0,86,1,2,54,'447cba779e24eaacc4d65ad030dde9b4','0',9,1,0,0),(99,1,0,87,1,2,54,'3fb1eb2fbf1848f404d890042a8bad20','0',9,1,0,0),(100,1,0,88,1,2,54,'c3b5fbcde3f89ace8394949738f3d9d8','0',9,1,0,0),(101,1,0,89,1,2,77,'dd282d50f782efba25af15d87d2a7b6d','0',1,1,0,0),(102,1,0,90,1,2,77,'add1ac841a29bbad27fab2512f72423b','0',1,1,0,0),(103,1,0,91,1,2,51,'577b5067a6274ce3e0cdbc2811ecda5e','0',1,1,0,0),(104,1,0,92,1,2,82,'e9ed1d9d76ef5bb65f0e7d0be79bbd3b','0',9,1,0,0),(106,1,0,94,1,2,67,'351d6d65cf3bad62a05e350081356ce6','0',1,1,0,0),(107,1,0,95,1,2,67,'19f947b2cbcdcf37d51182451bbb2cde','0',1,1,0,0),(108,1,0,96,1,2,67,'2ca7bcd7c3c872cd90ae148b0ccf1889','0',1,1,0,0),(109,1,0,97,1,2,67,'573756e8c2da118903d554efa1356e2e','0',1,1,0,0),(110,1,0,98,1,2,71,'b03e1d86a42f5d09b43a0f14c1c1485a','0',1,1,0,0),(111,1,0,99,1,2,71,'56c4219cbf05fa5bdf838e4475aefcbe','0',1,1,0,0),(112,1,0,100,1,2,71,'df9ff92eb5a16cebcbafd4793f99dd88','0',1,1,0,0),(113,1,0,101,1,2,65,'5112c95a47b9c7ab7d4ae87081253f17','0',1,1,0,0),(114,1,0,102,1,2,65,'f85b8667135675a5fb46bb4c87c080d3','0',1,1,0,0),(115,1,0,103,1,2,2,'6ce954e6cb5ab790593b4f3693dd85cc','0',1,1,0,0),(116,1,0,104,1,2,2,'63b26596a386682d78ec355e536d0777','0',1,1,0,0),(117,1,0,105,1,2,51,'628f19c85e8065734184a88e2f965567','0',1,1,0,0),(118,1,0,106,1,2,54,'fc9098aa5bdcbd52515f2772695dc876','0',9,1,0,0),(119,1,0,107,1,2,2,'d8924199ba306dd81cac770e4bb8437b','0',1,1,0,0),(120,1,0,108,1,2,54,'7f6522760eeaaaf36857b5acc56ba5dd','0',9,1,0,0),(121,1,0,109,1,2,54,'a7d4d795fcb70352366c3ec6fc6ed640','0',9,1,0,0),(122,1,0,110,1,2,54,'5b2265e4f335a382cbc5106d199265ad','0',9,1,0,0),(123,1,0,111,1,2,54,'8ee8d13968d72bd1ea0a94d5f8c95253','0',9,1,0,0),(124,1,0,112,1,2,54,'a41892aa80ec8c4dd46db45151993ffb','0',9,1,0,0),(125,1,0,113,1,2,54,'08b4b050989f9fbc16cc496f6e532b2f','0',9,1,0,0),(126,1,0,114,1,2,54,'e31a897e14ed90c8f4c8e45d7c1e26ac','0',9,1,0,0),(127,1,0,115,1,2,54,'dbf89eee12e8f22117c1a4d7622ec301','0',9,1,0,0),(128,1,0,116,1,2,54,'df391b1302945919b6e91593c712e3c7','0',9,1,0,0),(129,1,0,117,1,2,54,'7713a732378615b0f48a1a01c5816169','0',9,1,0,0),(130,1,0,118,1,2,54,'ca3587f0e7656c71a257cc38f8b41d78','0',9,1,0,0),(131,1,0,119,1,2,54,'3892f5ef2e5a8b53edeb7a419aee1489','0',9,1,0,0),(132,1,0,120,1,2,82,'99dc74bcf0d042611475335136733e5b','0',9,1,0,0),(133,1,0,121,1,2,82,'deb302d39e6117d41cc4b088d0c3c015','0',9,1,0,0),(134,1,0,122,1,2,82,'6ed7828766bb9cfcdf1f97f15ded6c27','0',9,1,0,0),(135,1,0,123,1,2,82,'659ef84e2a0eaef6417550083c41e1f0','0',9,1,0,0),(136,1,0,124,1,2,82,'e617e303da47abbc4939a952954a4d32','0',9,1,0,0),(137,1,0,125,1,2,54,'a2f870ee8e5b78428d491ed13ceb85b8','0',9,1,0,0),(138,1,0,126,1,2,54,'f790208be16da0f37a132b179a5710bd','0',9,1,0,0),(139,1,0,127,1,2,54,'f2ecf14f9262ef6902c0058c5282d720','0',1,1,0,0),(140,1,0,128,1,2,54,'629e85d85b8597416accc0c1e24fe833','0',1,1,0,0),(141,1,0,129,1,2,2,'610886bc4fe660ffe70226630e8db837','0',1,1,0,0),(142,1,0,130,1,2,2,'60d0d4612cf3ab9033915dc23654da09','0',1,1,0,0),(143,1,0,131,1,2,54,'408fd35092d8eb043af2b475b3de2e28','0',9,1,0,0),(144,1,0,132,1,2,54,'2d8ed1c834935c8defa1f0055bd8bbb0','0',9,1,0,0),(145,11,0,133,1,2,54,'b20dc1319d5df5c734e702f186fe4c62','0',9,1,0,0),(146,1,0,134,1,2,2,'a9df4c2901e2133ec1467ad0b8b02e54','0',1,1,0,0),(147,1,0,135,1,2,2,'65a9def2b9d93d7c87a329c493ab550c','0',1,1,0,0),(148,1,0,136,1,2,121,'4f8175a4136f50f8f98fb3d89e24c1e6','0',9,1,0,0),(149,1,0,137,1,5,14,'a83fc8bc30ad41a578b44e2b029a57e0','0',9,1,0,0),(150,1,0,138,1,5,14,'970fc411f8652177f364ac06ceceaee1','0',9,1,0,0),(109,2,0,139,1,2,100,'6f335c76bd1f93fc29ef7a8725cd0931','0',1,1,0,0),(151,1,0,140,1,2,12,'64a9b24db8a973c388385c8ff42a6104','0',9,1,0,0),(152,1,0,141,1,2,121,'2865799c59059272135494ea6e114262','0',9,1,0,0),(153,1,0,142,1,2,12,'e1ac63fe9751f85b712fecac810f953b','0',9,1,0,0),(154,1,0,143,1,2,121,'be6fa5b3357046e83aa7ebe23f1b7f44','0',9,1,0,0),(155,1,0,144,1,2,77,'e008a5aa3d99029484597a4c996d9221','0',1,1,0,0),(156,1,0,145,1,2,77,'0e7312fd8bada07000689d5f57bb0731','0',1,1,0,0),(157,1,0,146,1,2,51,'effe891d37bc5bf2b4ad559c9031589d','0',1,1,0,0),(158,1,0,147,1,2,51,'49fefdafb458628296c3b2f3c54633f5','0',1,1,0,0),(159,1,0,148,1,2,51,'2207d7a4f67e855796b43f3a36292968','0',1,1,0,0),(160,1,0,149,1,2,51,'c6f31c73f01087858d6930182829699c','0',1,1,0,0),(161,1,0,150,1,2,82,'b055a45ceae675a435ff782f38cfa84e','0',9,1,0,0),(162,1,0,151,1,2,12,'1124553232aabb7c606dae3e7711f160','0',9,1,0,0),(163,1,0,152,1,2,121,'4cfffa976893291953b6479673952879','0',9,1,0,0),(164,1,0,153,1,2,121,'7b87cd32de40914233dc43a681d97e83','0',9,1,0,0),(165,1,0,154,1,2,121,'ce4250c31c8753f084b561f632d3521f','0',9,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,11,0,4671,'name',0,957,0,0,1033920746,2,956),(6,3,11,0,4672,'name',0,0,1,956,1033920746,2,957),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(8,4,14,0,4676,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,4677,'last_name',0,960,1,958,1033920830,2,954),(12,4,14,0,4678,'user_account',0,955,2,954,1033920830,2,960),(12,4,14,0,4679,'user_account',0,927,3,960,1033920830,2,955),(12,4,14,0,4680,'user_account',0,0,4,955,1033920830,2,927),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,72,0,4768,'name',0,992,0,0,1480965238,1,991),(4,1,72,0,4769,'name',0,994,1,991,1480965238,1,992),(4,1,72,0,4770,'name',0,992,2,992,1480965238,1,994),(4,1,72,0,4771,'name',0,0,3,994,1480965238,1,992),(4,1,73,0,4772,'name',0,992,0,0,1480965292,1,991),(4,1,73,0,4773,'name',0,994,1,991,1480965292,1,992),(4,1,73,0,4774,'name',0,994,2,992,1480965292,1,994),(4,1,73,0,4775,'name',0,0,3,994,1480965292,1,994),(186,16,77,0,4806,'name',0,0,0,0,1481239640,1,1004),(187,17,102,0,5432,'title',0,1183,0,0,1482509239,1,1182),(187,17,102,0,5433,'title',0,995,1,1182,1482509239,1,1183),(187,17,102,0,5434,'title',0,1147,2,1183,1482509239,1,995),(188,17,102,0,5435,'description',0,1115,3,995,1482509239,1,1147),(188,17,102,0,5436,'description',0,1116,4,1147,1482509239,1,1115),(188,17,102,0,5437,'description',0,1184,5,1115,1482509239,1,1116),(188,17,102,0,5438,'description',0,1185,6,1116,1482509239,1,1184),(188,17,102,0,5439,'description',0,1186,7,1184,1482509239,1,1185),(188,17,102,0,5440,'description',0,1187,8,1185,1482509239,1,1186),(188,17,102,0,5441,'description',0,1116,9,1186,1482509239,1,1187),(188,17,102,0,5442,'description',0,1188,10,1187,1482509239,1,1116),(188,17,102,0,5443,'description',0,1189,11,1116,1482509239,1,1188),(188,17,102,0,5444,'description',0,1119,12,1188,1482509239,1,1189),(188,17,102,0,5445,'description',0,1190,13,1189,1482509239,1,1119),(188,17,102,0,5446,'description',0,1191,14,1119,1482509239,1,1190),(188,17,102,0,5447,'description',0,1192,15,1190,1482509239,1,1191),(188,17,102,0,5448,'description',0,1193,16,1191,1482509239,1,1192),(188,17,102,0,5449,'description',0,1194,17,1192,1482509239,1,1193),(188,17,102,0,5450,'description',0,1116,18,1193,1482509239,1,1194),(188,17,102,0,5451,'description',0,1195,19,1194,1482509239,1,1116),(188,17,102,0,5452,'description',0,1196,20,1116,1482509239,1,1195),(188,17,102,0,5453,'description',0,1126,21,1195,1482509239,1,1196),(188,17,102,0,5454,'description',0,1197,22,1196,1482509239,1,1126),(188,17,102,0,5455,'description',0,1113,23,1126,1482509239,1,1197),(188,17,102,0,5456,'description',0,1114,24,1197,1482509239,1,1113),(188,17,102,0,5457,'description',0,1145,25,1113,1482509239,1,1114),(188,17,102,0,5458,'description',0,1198,26,1114,1482509239,1,1145),(188,17,102,0,5459,'description',0,1115,27,1145,1482509239,1,1198),(188,17,102,0,5460,'description',0,1187,28,1198,1482509239,1,1115),(188,17,102,0,5461,'description',0,1147,29,1115,1482509239,1,1187),(188,17,102,0,5462,'description',0,1199,30,1187,1482509239,1,1147),(188,17,102,0,5463,'description',0,1200,31,1147,1482509239,1,1199),(188,17,102,0,5464,'description',0,1201,32,1199,1482509239,1,1200),(188,17,102,0,5465,'description',0,1121,33,1200,1482509239,1,1201),(188,17,102,0,5466,'description',0,1202,34,1201,1482509239,1,1121),(188,17,102,0,5467,'description',0,1203,35,1121,1482509239,1,1202),(188,17,102,0,5468,'description',0,1169,36,1202,1482509239,1,1203),(188,17,102,0,5469,'description',0,1204,37,1203,1482509239,1,1169),(188,17,102,0,5470,'description',0,1205,38,1169,1482509239,1,1204),(188,17,102,0,5471,'description',0,1123,39,1204,1482509239,1,1205),(188,17,102,0,5472,'description',0,1206,40,1205,1482509239,1,1123),(188,17,102,0,5473,'description',0,1207,41,1123,1482509239,1,1206),(188,17,102,0,5474,'description',0,1208,42,1206,1482509239,1,1207),(188,17,102,0,5475,'description',0,1209,43,1207,1482509239,1,1208),(188,17,102,0,5476,'description',0,1210,44,1208,1482509239,1,1209),(188,17,102,0,5477,'description',0,1211,45,1209,1482509239,1,1210),(188,17,102,0,5478,'description',0,1176,46,1210,1482509239,1,1211),(188,17,102,0,5479,'description',0,1212,47,1211,1482509239,1,1176),(188,17,102,0,5480,'description',0,1123,48,1176,1482509239,1,1212),(188,17,102,0,5481,'description',0,1213,49,1212,1482509239,1,1123),(188,17,102,0,5482,'description',0,1198,50,1123,1482509239,1,1213),(188,17,102,0,5483,'description',0,1214,51,1213,1482509239,1,1198),(188,17,102,0,5484,'description',0,1113,52,1198,1482509239,1,1214),(188,17,102,0,5485,'description',0,1114,53,1214,1482509239,1,1113),(188,17,102,0,5486,'description',0,1132,54,1113,1482509239,1,1114),(188,17,102,0,5487,'description',0,1215,55,1114,1482509239,1,1132),(188,17,102,0,5488,'description',0,1216,56,1132,1482509239,1,1215),(188,17,102,0,5489,'description',0,1155,57,1215,1482509239,1,1216),(188,17,102,0,5490,'description',0,1121,58,1216,1482509239,1,1155),(188,17,102,0,5491,'description',0,1217,59,1155,1482509239,1,1121),(188,17,102,0,5492,'description',0,1218,60,1121,1482509239,1,1217),(188,17,102,0,5493,'description',0,1219,61,1217,1482509239,1,1218),(188,17,102,0,5494,'description',0,1207,62,1218,1482509239,1,1219),(188,17,102,0,5495,'description',0,1113,63,1219,1482509239,1,1207),(188,17,102,0,5496,'description',0,1114,64,1207,1482509239,1,1113),(188,17,102,0,5497,'description',0,1220,65,1113,1482509239,1,1114),(188,17,102,0,5498,'description',0,1211,66,1114,1482509239,1,1220),(188,17,102,0,5499,'description',0,1221,67,1220,1482509239,1,1211),(188,17,102,0,5500,'description',0,1222,68,1211,1482509239,1,1221),(188,17,102,0,5501,'description',0,1223,69,1221,1482509239,1,1222),(188,17,102,0,5502,'description',0,1140,70,1222,1482509239,1,1223),(188,17,102,0,5503,'description',0,1224,71,1223,1482509239,1,1140),(188,17,102,0,5504,'description',0,1225,72,1140,1482509239,1,1224),(188,17,102,0,5505,'description',0,1226,73,1224,1482509239,1,1225),(188,17,102,0,5506,'description',0,1214,74,1225,1482509239,1,1226),(188,17,102,0,5507,'description',0,1227,75,1226,1482509239,1,1214),(188,17,102,0,5508,'description',0,1147,76,1214,1482509239,1,1227),(188,17,102,0,5509,'description',0,1228,77,1227,1482509239,1,1147),(188,17,102,0,5510,'description',0,1229,78,1147,1482509239,1,1228),(188,17,102,0,5511,'description',0,1230,79,1228,1482509239,1,1229),(188,17,102,0,5512,'description',0,1113,80,1229,1482509239,1,1230),(188,17,102,0,5513,'description',0,1114,81,1230,1482509239,1,1113),(188,17,102,0,5514,'description',0,1231,82,1113,1482509239,1,1114),(188,17,102,0,5515,'description',0,1232,83,1114,1482509239,1,1231),(188,17,102,0,5516,'description',0,1233,84,1231,1482509239,1,1232),(188,17,102,0,5517,'description',0,1234,85,1232,1482509239,1,1233),(188,17,102,0,5518,'description',0,1235,86,1233,1482509239,1,1234),(188,17,102,0,5519,'description',0,1169,87,1234,1482509239,1,1235),(188,17,102,0,5520,'description',0,1236,88,1235,1482509239,1,1169),(188,17,102,0,5521,'description',0,1123,89,1169,1482509239,1,1236),(188,17,102,0,5522,'description',0,1230,90,1236,1482509239,1,1123),(188,17,102,0,5523,'description',0,1237,91,1123,1482509239,1,1230),(188,17,102,0,5524,'description',0,1238,92,1230,1482509239,1,1237),(188,17,102,0,5525,'description',0,1147,93,1237,1482509239,1,1238),(188,17,102,0,5526,'description',0,1115,94,1238,1482509239,1,1147),(188,17,102,0,5527,'description',0,1116,95,1147,1482509239,1,1115),(188,17,102,0,5528,'description',0,1184,96,1115,1482509239,1,1116),(188,17,102,0,5529,'description',0,1185,97,1116,1482509239,1,1184),(188,17,102,0,5530,'description',0,1186,98,1184,1482509239,1,1185),(188,17,102,0,5531,'description',0,1187,99,1185,1482509239,1,1186),(188,17,102,0,5532,'description',0,1116,100,1186,1482509239,1,1187),(188,17,102,0,5533,'description',0,1188,101,1187,1482509239,1,1116),(188,17,102,0,5534,'description',0,1189,102,1116,1482509239,1,1188),(188,17,102,0,5535,'description',0,1119,103,1188,1482509239,1,1189),(188,17,102,0,5536,'description',0,1190,104,1189,1482509239,1,1119),(188,17,102,0,5537,'description',0,1191,105,1119,1482509239,1,1190),(188,17,102,0,5538,'description',0,1192,106,1190,1482509239,1,1191),(188,17,102,0,5539,'description',0,1193,107,1191,1482509239,1,1192),(188,17,102,0,5540,'description',0,1194,108,1192,1482509239,1,1193),(188,17,102,0,5541,'description',0,1116,109,1193,1482509239,1,1194),(188,17,102,0,5542,'description',0,1195,110,1194,1482509239,1,1116),(188,17,102,0,5543,'description',0,1196,111,1116,1482509239,1,1195),(188,17,102,0,5544,'description',0,1126,112,1195,1482509239,1,1196),(188,17,102,0,5545,'description',0,1197,113,1196,1482509239,1,1126),(188,17,102,0,5546,'description',0,1113,114,1126,1482509239,1,1197),(188,17,102,0,5547,'description',0,1114,115,1197,1482509239,1,1113),(188,17,102,0,5548,'description',0,1145,116,1113,1482509239,1,1114),(188,17,102,0,5549,'description',0,1198,117,1114,1482509239,1,1145),(188,17,102,0,5550,'description',0,1115,118,1145,1482509239,1,1198),(188,17,102,0,5551,'description',0,1187,119,1198,1482509239,1,1115),(188,17,102,0,5552,'description',0,1147,120,1115,1482509239,1,1187),(188,17,102,0,5553,'description',0,1199,121,1187,1482509239,1,1147),(188,17,102,0,5554,'description',0,1200,122,1147,1482509239,1,1199),(188,17,102,0,5555,'description',0,1201,123,1199,1482509239,1,1200),(188,17,102,0,5556,'description',0,1121,124,1200,1482509239,1,1201),(188,17,102,0,5557,'description',0,1202,125,1201,1482509239,1,1121),(188,17,102,0,5558,'description',0,1203,126,1121,1482509239,1,1202),(188,17,102,0,5559,'description',0,1169,127,1202,1482509239,1,1203),(188,17,102,0,5560,'description',0,1204,128,1203,1482509239,1,1169),(188,17,102,0,5561,'description',0,1205,129,1169,1482509239,1,1204),(188,17,102,0,5562,'description',0,1123,130,1204,1482509239,1,1205),(188,17,102,0,5563,'description',0,1206,131,1205,1482509239,1,1123),(188,17,102,0,5564,'description',0,1207,132,1123,1482509239,1,1206),(188,17,102,0,5565,'description',0,1208,133,1206,1482509239,1,1207),(188,17,102,0,5566,'description',0,1209,134,1207,1482509239,1,1208),(188,17,102,0,5567,'description',0,1210,135,1208,1482509239,1,1209),(188,17,102,0,5568,'description',0,1211,136,1209,1482509239,1,1210),(188,17,102,0,5569,'description',0,1176,137,1210,1482509239,1,1211),(188,17,102,0,5570,'description',0,1212,138,1211,1482509239,1,1176),(188,17,102,0,5571,'description',0,1123,139,1176,1482509239,1,1212),(188,17,102,0,5572,'description',0,1213,140,1212,1482509239,1,1123),(188,17,102,0,5573,'description',0,1198,141,1123,1482509239,1,1213),(188,17,102,0,5574,'description',0,1214,142,1213,1482509239,1,1198),(188,17,102,0,5575,'description',0,1113,143,1198,1482509239,1,1214),(188,17,102,0,5576,'description',0,1114,144,1214,1482509239,1,1113),(188,17,102,0,5577,'description',0,1132,145,1113,1482509239,1,1114),(188,17,102,0,5578,'description',0,1215,146,1114,1482509239,1,1132),(188,17,102,0,5579,'description',0,1216,147,1132,1482509239,1,1215),(188,17,102,0,5580,'description',0,1155,148,1215,1482509239,1,1216),(188,17,102,0,5581,'description',0,1121,149,1216,1482509239,1,1155),(188,17,102,0,5582,'description',0,1217,150,1155,1482509239,1,1121),(188,17,102,0,5583,'description',0,1218,151,1121,1482509239,1,1217),(188,17,102,0,5584,'description',0,1219,152,1217,1482509239,1,1218),(188,17,102,0,5585,'description',0,1207,153,1218,1482509239,1,1219),(188,17,102,0,5586,'description',0,1113,154,1219,1482509239,1,1207),(188,17,102,0,5587,'description',0,1114,155,1207,1482509239,1,1113),(188,17,102,0,5588,'description',0,1220,156,1113,1482509239,1,1114),(188,17,102,0,5589,'description',0,1211,157,1114,1482509239,1,1220),(188,17,102,0,5590,'description',0,1221,158,1220,1482509239,1,1211),(188,17,102,0,5591,'description',0,1222,159,1211,1482509239,1,1221),(188,17,102,0,5592,'description',0,1223,160,1221,1482509239,1,1222),(188,17,102,0,5593,'description',0,1140,161,1222,1482509239,1,1223),(188,17,102,0,5594,'description',0,1224,162,1223,1482509239,1,1140),(188,17,102,0,5595,'description',0,1225,163,1140,1482509239,1,1224),(188,17,102,0,5596,'description',0,1226,164,1224,1482509239,1,1225),(188,17,102,0,5597,'description',0,1214,165,1225,1482509239,1,1226),(188,17,102,0,5598,'description',0,1227,166,1226,1482509239,1,1214),(188,17,102,0,5599,'description',0,1147,167,1214,1482509239,1,1227),(188,17,102,0,5600,'description',0,1228,168,1227,1482509239,1,1147),(188,17,102,0,5601,'description',0,1229,169,1147,1482509239,1,1228),(188,17,102,0,5602,'description',0,1230,170,1228,1482509239,1,1229),(188,17,102,0,5603,'description',0,1113,171,1229,1482509239,1,1230),(188,17,102,0,5604,'description',0,1114,172,1230,1482509239,1,1113),(188,17,102,0,5605,'description',0,1231,173,1113,1482509239,1,1114),(188,17,102,0,5606,'description',0,1232,174,1114,1482509239,1,1231),(188,17,102,0,5607,'description',0,1233,175,1231,1482509239,1,1232),(188,17,102,0,5608,'description',0,1234,176,1232,1482509239,1,1233),(188,17,102,0,5609,'description',0,1235,177,1233,1482509239,1,1234),(188,17,102,0,5610,'description',0,1169,178,1234,1482509239,1,1235),(188,17,102,0,5611,'description',0,1236,179,1235,1482509239,1,1169),(188,17,102,0,5612,'description',0,1123,180,1169,1482509239,1,1236),(188,17,102,0,5613,'description',0,1230,181,1236,1482509239,1,1123),(188,17,102,0,5614,'description',0,1237,182,1123,1482509239,1,1230),(188,17,102,0,5615,'description',0,1238,183,1230,1482509239,1,1237),(188,17,102,0,5616,'description',0,1147,184,1237,1482509239,1,1238),(188,17,102,0,5617,'description',0,1115,185,1238,1482509239,1,1147),(188,17,102,0,5618,'description',0,1116,186,1147,1482509239,1,1115),(188,17,102,0,5619,'description',0,1184,187,1115,1482509239,1,1116),(188,17,102,0,5620,'description',0,1185,188,1116,1482509239,1,1184),(188,17,102,0,5621,'description',0,1186,189,1184,1482509239,1,1185),(188,17,102,0,5622,'description',0,1187,190,1185,1482509239,1,1186),(188,17,102,0,5623,'description',0,1116,191,1186,1482509239,1,1187),(188,17,102,0,5624,'description',0,1188,192,1187,1482509239,1,1116),(188,17,102,0,5625,'description',0,1189,193,1116,1482509239,1,1188),(188,17,102,0,5626,'description',0,1119,194,1188,1482509239,1,1189),(188,17,102,0,5627,'description',0,1190,195,1189,1482509239,1,1119),(188,17,102,0,5628,'description',0,1191,196,1119,1482509239,1,1190),(188,17,102,0,5629,'description',0,1192,197,1190,1482509239,1,1191),(188,17,102,0,5630,'description',0,1193,198,1191,1482509239,1,1192),(188,17,102,0,5631,'description',0,1194,199,1192,1482509239,1,1193),(188,17,102,0,5632,'description',0,1116,200,1193,1482509239,1,1194),(188,17,102,0,5633,'description',0,1195,201,1194,1482509239,1,1116),(188,17,102,0,5634,'description',0,1196,202,1116,1482509239,1,1195),(188,17,102,0,5635,'description',0,1126,203,1195,1482509239,1,1196),(188,17,102,0,5636,'description',0,1197,204,1196,1482509239,1,1126),(188,17,102,0,5637,'description',0,1113,205,1126,1482509239,1,1197),(188,17,102,0,5638,'description',0,1114,206,1197,1482509239,1,1113),(188,17,102,0,5639,'description',0,1145,207,1113,1482509239,1,1114),(188,17,102,0,5640,'description',0,1198,208,1114,1482509239,1,1145),(188,17,102,0,5641,'description',0,1115,209,1145,1482509239,1,1198),(188,17,102,0,5642,'description',0,1187,210,1198,1482509239,1,1115),(188,17,102,0,5643,'description',0,1147,211,1115,1482509239,1,1187),(188,17,102,0,5644,'description',0,1199,212,1187,1482509239,1,1147),(188,17,102,0,5645,'description',0,1200,213,1147,1482509239,1,1199),(188,17,102,0,5646,'description',0,1201,214,1199,1482509239,1,1200),(188,17,102,0,5647,'description',0,1121,215,1200,1482509239,1,1201),(188,17,102,0,5648,'description',0,1202,216,1201,1482509239,1,1121),(188,17,102,0,5649,'description',0,1203,217,1121,1482509239,1,1202),(188,17,102,0,5650,'description',0,1169,218,1202,1482509239,1,1203),(188,17,102,0,5651,'description',0,1204,219,1203,1482509239,1,1169),(188,17,102,0,5652,'description',0,1205,220,1169,1482509239,1,1204),(188,17,102,0,5653,'description',0,1123,221,1204,1482509239,1,1205),(188,17,102,0,5654,'description',0,1206,222,1205,1482509239,1,1123),(188,17,102,0,5655,'description',0,1207,223,1123,1482509239,1,1206),(188,17,102,0,5656,'description',0,1208,224,1206,1482509239,1,1207),(188,17,102,0,5657,'description',0,1209,225,1207,1482509239,1,1208),(188,17,102,0,5658,'description',0,1210,226,1208,1482509239,1,1209),(188,17,102,0,5659,'description',0,1211,227,1209,1482509239,1,1210),(188,17,102,0,5660,'description',0,1176,228,1210,1482509239,1,1211),(188,17,102,0,5661,'description',0,1212,229,1211,1482509239,1,1176),(188,17,102,0,5662,'description',0,1123,230,1176,1482509239,1,1212),(188,17,102,0,5663,'description',0,1213,231,1212,1482509239,1,1123),(188,17,102,0,5664,'description',0,1198,232,1123,1482509239,1,1213),(188,17,102,0,5665,'description',0,1214,233,1213,1482509239,1,1198),(188,17,102,0,5666,'description',0,1113,234,1198,1482509239,1,1214),(188,17,102,0,5667,'description',0,1114,235,1214,1482509239,1,1113),(188,17,102,0,5668,'description',0,1132,236,1113,1482509239,1,1114),(188,17,102,0,5669,'description',0,1215,237,1114,1482509239,1,1132),(188,17,102,0,5670,'description',0,1216,238,1132,1482509239,1,1215),(188,17,102,0,5671,'description',0,1155,239,1215,1482509239,1,1216),(188,17,102,0,5672,'description',0,1121,240,1216,1482509239,1,1155),(188,17,102,0,5673,'description',0,1217,241,1155,1482509239,1,1121),(188,17,102,0,5674,'description',0,1218,242,1121,1482509239,1,1217),(188,17,102,0,5675,'description',0,1219,243,1217,1482509239,1,1218),(188,17,102,0,5676,'description',0,1207,244,1218,1482509239,1,1219),(188,17,102,0,5677,'description',0,1113,245,1219,1482509239,1,1207),(188,17,102,0,5678,'description',0,1114,246,1207,1482509239,1,1113),(188,17,102,0,5679,'description',0,1220,247,1113,1482509239,1,1114),(188,17,102,0,5680,'description',0,1211,248,1114,1482509239,1,1220),(188,17,102,0,5681,'description',0,1221,249,1220,1482509239,1,1211),(188,17,102,0,5682,'description',0,1222,250,1211,1482509239,1,1221),(188,17,102,0,5683,'description',0,1223,251,1221,1482509239,1,1222),(188,17,102,0,5684,'description',0,1140,252,1222,1482509239,1,1223),(188,17,102,0,5685,'description',0,1224,253,1223,1482509239,1,1140),(188,17,102,0,5686,'description',0,1225,254,1140,1482509239,1,1224),(188,17,102,0,5687,'description',0,1226,255,1224,1482509239,1,1225),(188,17,102,0,5688,'description',0,1214,256,1225,1482509239,1,1226),(188,17,102,0,5689,'description',0,1227,257,1226,1482509239,1,1214),(188,17,102,0,5690,'description',0,1147,258,1214,1482509239,1,1227),(188,17,102,0,5691,'description',0,1228,259,1227,1482509239,1,1147),(188,17,102,0,5692,'description',0,1229,260,1147,1482509239,1,1228),(188,17,102,0,5693,'description',0,1230,261,1228,1482509239,1,1229),(188,17,102,0,5694,'description',0,1113,262,1229,1482509239,1,1230),(188,17,102,0,5695,'description',0,1114,263,1230,1482509239,1,1113),(188,17,102,0,5696,'description',0,1231,264,1113,1482509239,1,1114),(188,17,102,0,5697,'description',0,1232,265,1114,1482509239,1,1231),(188,17,102,0,5698,'description',0,1233,266,1231,1482509239,1,1232),(188,17,102,0,5699,'description',0,1234,267,1232,1482509239,1,1233),(188,17,102,0,5700,'description',0,1235,268,1233,1482509239,1,1234),(188,17,102,0,5701,'description',0,1169,269,1234,1482509239,1,1235),(188,17,102,0,5702,'description',0,1236,270,1235,1482509239,1,1169),(188,17,102,0,5703,'description',0,1123,271,1169,1482509239,1,1236),(188,17,102,0,5704,'description',0,1230,272,1236,1482509239,1,1123),(188,17,102,0,5705,'description',0,1237,273,1123,1482509239,1,1230),(188,17,102,0,5706,'description',0,1238,274,1230,1482509239,1,1237),(188,17,102,0,5707,'description',0,1147,275,1237,1482509239,1,1238),(188,17,102,0,5708,'description',0,1115,276,1238,1482509239,1,1147),(188,17,102,0,5709,'description',0,1116,277,1147,1482509239,1,1115),(188,17,102,0,5710,'description',0,1184,278,1115,1482509239,1,1116),(188,17,102,0,5711,'description',0,1185,279,1116,1482509239,1,1184),(188,17,102,0,5712,'description',0,1186,280,1184,1482509239,1,1185),(188,17,102,0,5713,'description',0,1187,281,1185,1482509239,1,1186),(188,17,102,0,5714,'description',0,1116,282,1186,1482509239,1,1187),(188,17,102,0,5715,'description',0,1188,283,1187,1482509239,1,1116),(188,17,102,0,5716,'description',0,1189,284,1116,1482509239,1,1188),(188,17,102,0,5717,'description',0,1119,285,1188,1482509239,1,1189),(188,17,102,0,5718,'description',0,1190,286,1189,1482509239,1,1119),(188,17,102,0,5719,'description',0,1191,287,1119,1482509239,1,1190),(188,17,102,0,5720,'description',0,1192,288,1190,1482509239,1,1191),(188,17,102,0,5721,'description',0,1193,289,1191,1482509239,1,1192),(188,17,102,0,5722,'description',0,1194,290,1192,1482509239,1,1193),(188,17,102,0,5723,'description',0,1116,291,1193,1482509239,1,1194),(188,17,102,0,5724,'description',0,1195,292,1194,1482509239,1,1116),(188,17,102,0,5725,'description',0,1196,293,1116,1482509239,1,1195),(188,17,102,0,5726,'description',0,1126,294,1195,1482509239,1,1196),(188,17,102,0,5727,'description',0,1197,295,1196,1482509239,1,1126),(188,17,102,0,5728,'description',0,1113,296,1126,1482509239,1,1197),(188,17,102,0,5729,'description',0,1114,297,1197,1482509239,1,1113),(188,17,102,0,5730,'description',0,1145,298,1113,1482509239,1,1114),(188,17,102,0,5731,'description',0,1198,299,1114,1482509239,1,1145),(188,17,102,0,5732,'description',0,1115,300,1145,1482509239,1,1198),(188,17,102,0,5733,'description',0,1187,301,1198,1482509239,1,1115),(188,17,102,0,5734,'description',0,1147,302,1115,1482509239,1,1187),(188,17,102,0,5735,'description',0,1199,303,1187,1482509239,1,1147),(188,17,102,0,5736,'description',0,1200,304,1147,1482509239,1,1199),(188,17,102,0,5737,'description',0,1201,305,1199,1482509239,1,1200),(188,17,102,0,5738,'description',0,1121,306,1200,1482509239,1,1201),(188,17,102,0,5739,'description',0,1202,307,1201,1482509239,1,1121),(188,17,102,0,5740,'description',0,1203,308,1121,1482509239,1,1202),(188,17,102,0,5741,'description',0,1169,309,1202,1482509239,1,1203),(188,17,102,0,5742,'description',0,1204,310,1203,1482509239,1,1169),(188,17,102,0,5743,'description',0,1205,311,1169,1482509239,1,1204),(188,17,102,0,5744,'description',0,1123,312,1204,1482509239,1,1205),(188,17,102,0,5745,'description',0,1206,313,1205,1482509239,1,1123),(188,17,102,0,5746,'description',0,1207,314,1123,1482509239,1,1206),(188,17,102,0,5747,'description',0,1208,315,1206,1482509239,1,1207),(188,17,102,0,5748,'description',0,1209,316,1207,1482509239,1,1208),(188,17,102,0,5749,'description',0,1210,317,1208,1482509239,1,1209),(188,17,102,0,5750,'description',0,1211,318,1209,1482509239,1,1210),(188,17,102,0,5751,'description',0,1176,319,1210,1482509239,1,1211),(188,17,102,0,5752,'description',0,1212,320,1211,1482509239,1,1176),(188,17,102,0,5753,'description',0,1123,321,1176,1482509239,1,1212),(188,17,102,0,5754,'description',0,1213,322,1212,1482509239,1,1123),(188,17,102,0,5755,'description',0,1198,323,1123,1482509239,1,1213),(188,17,102,0,5756,'description',0,1214,324,1213,1482509239,1,1198),(188,17,102,0,5757,'description',0,1113,325,1198,1482509239,1,1214),(188,17,102,0,5758,'description',0,1114,326,1214,1482509239,1,1113),(188,17,102,0,5759,'description',0,1132,327,1113,1482509239,1,1114),(188,17,102,0,5760,'description',0,1215,328,1114,1482509239,1,1132),(188,17,102,0,5761,'description',0,1216,329,1132,1482509239,1,1215),(188,17,102,0,5762,'description',0,1155,330,1215,1482509239,1,1216),(188,17,102,0,5763,'description',0,1121,331,1216,1482509239,1,1155),(188,17,102,0,5764,'description',0,1217,332,1155,1482509239,1,1121),(188,17,102,0,5765,'description',0,1218,333,1121,1482509239,1,1217),(188,17,102,0,5766,'description',0,1219,334,1217,1482509239,1,1218),(188,17,102,0,5767,'description',0,1207,335,1218,1482509239,1,1219),(188,17,102,0,5768,'description',0,1113,336,1219,1482509239,1,1207),(188,17,102,0,5769,'description',0,1114,337,1207,1482509239,1,1113),(188,17,102,0,5770,'description',0,1220,338,1113,1482509239,1,1114),(188,17,102,0,5771,'description',0,1211,339,1114,1482509239,1,1220),(188,17,102,0,5772,'description',0,1221,340,1220,1482509239,1,1211),(188,17,102,0,5773,'description',0,1222,341,1211,1482509239,1,1221),(188,17,102,0,5774,'description',0,1223,342,1221,1482509239,1,1222),(188,17,102,0,5775,'description',0,1140,343,1222,1482509239,1,1223),(188,17,102,0,5776,'description',0,1224,344,1223,1482509239,1,1140),(188,17,102,0,5777,'description',0,1225,345,1140,1482509239,1,1224),(188,17,102,0,5778,'description',0,1226,346,1224,1482509239,1,1225),(188,17,102,0,5779,'description',0,1214,347,1225,1482509239,1,1226),(188,17,102,0,5780,'description',0,1227,348,1226,1482509239,1,1214),(188,17,102,0,5781,'description',0,1147,349,1214,1482509239,1,1227),(188,17,102,0,5782,'description',0,1228,350,1227,1482509239,1,1147),(188,17,102,0,5783,'description',0,1229,351,1147,1482509239,1,1228),(188,17,102,0,5784,'description',0,1230,352,1228,1482509239,1,1229),(188,17,102,0,5785,'description',0,1113,353,1229,1482509239,1,1230),(188,17,102,0,5786,'description',0,1114,354,1230,1482509239,1,1113),(188,17,102,0,5787,'description',0,1231,355,1113,1482509239,1,1114),(188,17,102,0,5788,'description',0,1232,356,1114,1482509239,1,1231),(188,17,102,0,5789,'description',0,1233,357,1231,1482509239,1,1232),(188,17,102,0,5790,'description',0,1234,358,1232,1482509239,1,1233),(188,17,102,0,5791,'description',0,1235,359,1233,1482509239,1,1234),(188,17,102,0,5792,'description',0,1169,360,1234,1482509239,1,1235),(188,17,102,0,5793,'description',0,1236,361,1235,1482509239,1,1169),(188,17,102,0,5794,'description',0,1123,362,1169,1482509239,1,1236),(188,17,102,0,5795,'description',0,1230,363,1236,1482509239,1,1123),(188,17,102,0,5796,'description',0,1237,364,1123,1482509239,1,1230),(188,17,102,0,5797,'description',0,1238,365,1230,1482509239,1,1237),(188,17,102,0,5798,'description',0,1147,366,1237,1482509239,1,1238),(188,17,102,0,5799,'description',0,1115,367,1238,1482509239,1,1147),(188,17,102,0,5800,'description',0,1116,368,1147,1482509239,1,1115),(188,17,102,0,5801,'description',0,1184,369,1115,1482509239,1,1116),(188,17,102,0,5802,'description',0,1185,370,1116,1482509239,1,1184),(188,17,102,0,5803,'description',0,1186,371,1184,1482509239,1,1185),(188,17,102,0,5804,'description',0,1187,372,1185,1482509239,1,1186),(188,17,102,0,5805,'description',0,1116,373,1186,1482509239,1,1187),(188,17,102,0,5806,'description',0,1188,374,1187,1482509239,1,1116),(188,17,102,0,5807,'description',0,1189,375,1116,1482509239,1,1188),(188,17,102,0,5808,'description',0,1119,376,1188,1482509239,1,1189),(188,17,102,0,5809,'description',0,1190,377,1189,1482509239,1,1119),(188,17,102,0,5810,'description',0,1191,378,1119,1482509239,1,1190),(188,17,102,0,5811,'description',0,1192,379,1190,1482509239,1,1191),(188,17,102,0,5812,'description',0,1193,380,1191,1482509239,1,1192),(188,17,102,0,5813,'description',0,1194,381,1192,1482509239,1,1193),(188,17,102,0,5814,'description',0,1116,382,1193,1482509239,1,1194),(188,17,102,0,5815,'description',0,1195,383,1194,1482509239,1,1116),(188,17,102,0,5816,'description',0,1196,384,1116,1482509239,1,1195),(188,17,102,0,5817,'description',0,1126,385,1195,1482509239,1,1196),(188,17,102,0,5818,'description',0,1197,386,1196,1482509239,1,1126),(188,17,102,0,5819,'description',0,1113,387,1126,1482509239,1,1197),(188,17,102,0,5820,'description',0,1114,388,1197,1482509239,1,1113),(188,17,102,0,5821,'description',0,1145,389,1113,1482509239,1,1114),(188,17,102,0,5822,'description',0,1198,390,1114,1482509239,1,1145),(188,17,102,0,5823,'description',0,1115,391,1145,1482509239,1,1198),(188,17,102,0,5824,'description',0,1187,392,1198,1482509239,1,1115),(188,17,102,0,5825,'description',0,1147,393,1115,1482509239,1,1187),(188,17,102,0,5826,'description',0,1199,394,1187,1482509239,1,1147),(188,17,102,0,5827,'description',0,1200,395,1147,1482509239,1,1199),(188,17,102,0,5828,'description',0,1201,396,1199,1482509239,1,1200),(188,17,102,0,5829,'description',0,1121,397,1200,1482509239,1,1201),(188,17,102,0,5830,'description',0,1202,398,1201,1482509239,1,1121),(188,17,102,0,5831,'description',0,1203,399,1121,1482509239,1,1202),(188,17,102,0,5832,'description',0,1169,400,1202,1482509239,1,1203),(188,17,102,0,5833,'description',0,1204,401,1203,1482509239,1,1169),(188,17,102,0,5834,'description',0,1205,402,1169,1482509239,1,1204),(188,17,102,0,5835,'description',0,1123,403,1204,1482509239,1,1205),(188,17,102,0,5836,'description',0,1206,404,1205,1482509239,1,1123),(188,17,102,0,5837,'description',0,1207,405,1123,1482509239,1,1206),(188,17,102,0,5838,'description',0,1208,406,1206,1482509239,1,1207),(188,17,102,0,5839,'description',0,1209,407,1207,1482509239,1,1208),(188,17,102,0,5840,'description',0,1210,408,1208,1482509239,1,1209),(188,17,102,0,5841,'description',0,1211,409,1209,1482509239,1,1210),(188,17,102,0,5842,'description',0,1176,410,1210,1482509239,1,1211),(188,17,102,0,5843,'description',0,1212,411,1211,1482509239,1,1176),(188,17,102,0,5844,'description',0,1123,412,1176,1482509239,1,1212),(188,17,102,0,5845,'description',0,1213,413,1212,1482509239,1,1123),(188,17,102,0,5846,'description',0,1198,414,1123,1482509239,1,1213),(188,17,102,0,5847,'description',0,1214,415,1213,1482509239,1,1198),(188,17,102,0,5848,'description',0,1113,416,1198,1482509239,1,1214),(188,17,102,0,5849,'description',0,1114,417,1214,1482509239,1,1113),(188,17,102,0,5850,'description',0,1132,418,1113,1482509239,1,1114),(188,17,102,0,5851,'description',0,1215,419,1114,1482509239,1,1132),(188,17,102,0,5852,'description',0,1216,420,1132,1482509239,1,1215),(188,17,102,0,5853,'description',0,1155,421,1215,1482509239,1,1216),(188,17,102,0,5854,'description',0,1121,422,1216,1482509239,1,1155),(188,17,102,0,5855,'description',0,1217,423,1155,1482509239,1,1121),(188,17,102,0,5856,'description',0,1218,424,1121,1482509239,1,1217),(188,17,102,0,5857,'description',0,1219,425,1217,1482509239,1,1218),(188,17,102,0,5858,'description',0,1207,426,1218,1482509239,1,1219),(188,17,102,0,5859,'description',0,1113,427,1219,1482509239,1,1207),(188,17,102,0,5860,'description',0,1114,428,1207,1482509239,1,1113),(188,17,102,0,5861,'description',0,1220,429,1113,1482509239,1,1114),(188,17,102,0,5862,'description',0,1211,430,1114,1482509239,1,1220),(188,17,102,0,5863,'description',0,1221,431,1220,1482509239,1,1211),(188,17,102,0,5864,'description',0,1222,432,1211,1482509239,1,1221),(188,17,102,0,5865,'description',0,1223,433,1221,1482509239,1,1222),(188,17,102,0,5866,'description',0,1140,434,1222,1482509239,1,1223),(188,17,102,0,5867,'description',0,1224,435,1223,1482509239,1,1140),(188,17,102,0,5868,'description',0,1225,436,1140,1482509239,1,1224),(188,17,102,0,5869,'description',0,1226,437,1224,1482509239,1,1225),(188,17,102,0,5870,'description',0,1214,438,1225,1482509239,1,1226),(188,17,102,0,5871,'description',0,1227,439,1226,1482509239,1,1214),(188,17,102,0,5872,'description',0,1147,440,1214,1482509239,1,1227),(188,17,102,0,5873,'description',0,1228,441,1227,1482509239,1,1147),(188,17,102,0,5874,'description',0,1229,442,1147,1482509239,1,1228),(188,17,102,0,5875,'description',0,1230,443,1228,1482509239,1,1229),(188,17,102,0,5876,'description',0,1113,444,1229,1482509239,1,1230),(188,17,102,0,5877,'description',0,1114,445,1230,1482509239,1,1113),(188,17,102,0,5878,'description',0,1231,446,1113,1482509239,1,1114),(188,17,102,0,5879,'description',0,1232,447,1114,1482509239,1,1231),(188,17,102,0,5880,'description',0,1233,448,1231,1482509239,1,1232),(188,17,102,0,5881,'description',0,1234,449,1232,1482509239,1,1233),(188,17,102,0,5882,'description',0,1235,450,1233,1482509239,1,1234),(188,17,102,0,5883,'description',0,1169,451,1234,1482509239,1,1235),(188,17,102,0,5884,'description',0,1236,452,1235,1482509239,1,1169),(188,17,102,0,5885,'description',0,1123,453,1169,1482509239,1,1236),(188,17,102,0,5886,'description',0,1230,454,1236,1482509239,1,1123),(188,17,102,0,5887,'description',0,1237,455,1123,1482509239,1,1230),(188,17,102,0,5888,'description',0,1238,456,1230,1482509239,1,1237),(188,17,102,0,5889,'description',0,1147,457,1237,1482509239,1,1238),(188,17,102,0,5890,'description',0,1115,458,1238,1482509239,1,1147),(188,17,102,0,5891,'description',0,1116,459,1147,1482509239,1,1115),(188,17,102,0,5892,'description',0,1184,460,1115,1482509239,1,1116),(188,17,102,0,5893,'description',0,1185,461,1116,1482509239,1,1184),(188,17,102,0,5894,'description',0,1186,462,1184,1482509239,1,1185),(188,17,102,0,5895,'description',0,1187,463,1185,1482509239,1,1186),(188,17,102,0,5896,'description',0,1116,464,1186,1482509239,1,1187),(188,17,102,0,5897,'description',0,1188,465,1187,1482509239,1,1116),(188,17,102,0,5898,'description',0,1189,466,1116,1482509239,1,1188),(188,17,102,0,5899,'description',0,1119,467,1188,1482509239,1,1189),(188,17,102,0,5900,'description',0,1190,468,1189,1482509239,1,1119),(188,17,102,0,5901,'description',0,1191,469,1119,1482509239,1,1190),(188,17,102,0,5902,'description',0,1192,470,1190,1482509239,1,1191),(188,17,102,0,5903,'description',0,1193,471,1191,1482509239,1,1192),(188,17,102,0,5904,'description',0,1194,472,1192,1482509239,1,1193),(188,17,102,0,5905,'description',0,1116,473,1193,1482509239,1,1194),(188,17,102,0,5906,'description',0,1195,474,1194,1482509239,1,1116),(188,17,102,0,5907,'description',0,1196,475,1116,1482509239,1,1195),(188,17,102,0,5908,'description',0,1126,476,1195,1482509239,1,1196),(188,17,102,0,5909,'description',0,1197,477,1196,1482509239,1,1126),(188,17,102,0,5910,'description',0,1113,478,1126,1482509239,1,1197),(188,17,102,0,5911,'description',0,1114,479,1197,1482509239,1,1113),(188,17,102,0,5912,'description',0,1145,480,1113,1482509239,1,1114),(188,17,102,0,5913,'description',0,1198,481,1114,1482509239,1,1145),(188,17,102,0,5914,'description',0,1115,482,1145,1482509239,1,1198),(188,17,102,0,5915,'description',0,1187,483,1198,1482509239,1,1115),(188,17,102,0,5916,'description',0,1147,484,1115,1482509239,1,1187),(188,17,102,0,5917,'description',0,1199,485,1187,1482509239,1,1147),(188,17,102,0,5918,'description',0,1200,486,1147,1482509239,1,1199),(188,17,102,0,5919,'description',0,1201,487,1199,1482509239,1,1200),(188,17,102,0,5920,'description',0,1121,488,1200,1482509239,1,1201),(188,17,102,0,5921,'description',0,1202,489,1201,1482509239,1,1121),(188,17,102,0,5922,'description',0,1203,490,1121,1482509239,1,1202),(188,17,102,0,5923,'description',0,1169,491,1202,1482509239,1,1203),(188,17,102,0,5924,'description',0,1204,492,1203,1482509239,1,1169),(188,17,102,0,5925,'description',0,1205,493,1169,1482509239,1,1204),(188,17,102,0,5926,'description',0,1123,494,1204,1482509239,1,1205),(188,17,102,0,5927,'description',0,1206,495,1205,1482509239,1,1123),(188,17,102,0,5928,'description',0,1207,496,1123,1482509239,1,1206),(188,17,102,0,5929,'description',0,1208,497,1206,1482509239,1,1207),(188,17,102,0,5930,'description',0,1209,498,1207,1482509239,1,1208),(188,17,102,0,5931,'description',0,1210,499,1208,1482509239,1,1209),(188,17,102,0,5932,'description',0,1211,500,1209,1482509239,1,1210),(188,17,102,0,5933,'description',0,1176,501,1210,1482509239,1,1211),(188,17,102,0,5934,'description',0,1212,502,1211,1482509239,1,1176),(188,17,102,0,5935,'description',0,1123,503,1176,1482509239,1,1212),(188,17,102,0,5936,'description',0,1213,504,1212,1482509239,1,1123),(188,17,102,0,5937,'description',0,1198,505,1123,1482509239,1,1213),(188,17,102,0,5938,'description',0,1214,506,1213,1482509239,1,1198),(188,17,102,0,5939,'description',0,1113,507,1198,1482509239,1,1214),(188,17,102,0,5940,'description',0,1114,508,1214,1482509239,1,1113),(188,17,102,0,5941,'description',0,1132,509,1113,1482509239,1,1114),(188,17,102,0,5942,'description',0,1215,510,1114,1482509239,1,1132),(188,17,102,0,5943,'description',0,1216,511,1132,1482509239,1,1215),(188,17,102,0,5944,'description',0,1155,512,1215,1482509239,1,1216),(188,17,102,0,5945,'description',0,1121,513,1216,1482509239,1,1155),(188,17,102,0,5946,'description',0,1217,514,1155,1482509239,1,1121),(188,17,102,0,5947,'description',0,1218,515,1121,1482509239,1,1217),(188,17,102,0,5948,'description',0,1219,516,1217,1482509239,1,1218),(188,17,102,0,5949,'description',0,1207,517,1218,1482509239,1,1219),(188,17,102,0,5950,'description',0,1113,518,1219,1482509239,1,1207),(188,17,102,0,5951,'description',0,1114,519,1207,1482509239,1,1113),(188,17,102,0,5952,'description',0,1220,520,1113,1482509239,1,1114),(188,17,102,0,5953,'description',0,1211,521,1114,1482509239,1,1220),(188,17,102,0,5954,'description',0,1221,522,1220,1482509239,1,1211),(188,17,102,0,5955,'description',0,1222,523,1211,1482509239,1,1221),(188,17,102,0,5956,'description',0,1223,524,1221,1482509239,1,1222),(188,17,102,0,5957,'description',0,1140,525,1222,1482509239,1,1223),(188,17,102,0,5958,'description',0,1224,526,1223,1482509239,1,1140),(188,17,102,0,5959,'description',0,1225,527,1140,1482509239,1,1224),(188,17,102,0,5960,'description',0,1226,528,1224,1482509239,1,1225),(188,17,102,0,5961,'description',0,1214,529,1225,1482509239,1,1226),(188,17,102,0,5962,'description',0,1227,530,1226,1482509239,1,1214),(188,17,102,0,5963,'description',0,1147,531,1214,1482509239,1,1227),(188,17,102,0,5964,'description',0,1228,532,1227,1482509239,1,1147),(188,17,102,0,5965,'description',0,1229,533,1147,1482509239,1,1228),(188,17,102,0,5966,'description',0,1230,534,1228,1482509239,1,1229),(188,17,102,0,5967,'description',0,1113,535,1229,1482509239,1,1230),(188,17,102,0,5968,'description',0,1114,536,1230,1482509239,1,1113),(188,17,102,0,5969,'description',0,1231,537,1113,1482509239,1,1114),(188,17,102,0,5970,'description',0,1232,538,1114,1482509239,1,1231),(188,17,102,0,5971,'description',0,1233,539,1231,1482509239,1,1232),(188,17,102,0,5972,'description',0,1234,540,1232,1482509239,1,1233),(188,17,102,0,5973,'description',0,1235,541,1233,1482509239,1,1234),(188,17,102,0,5974,'description',0,1169,542,1234,1482509239,1,1235),(188,17,102,0,5975,'description',0,1236,543,1235,1482509239,1,1169),(188,17,102,0,5976,'description',0,1123,544,1169,1482509239,1,1236),(188,17,102,0,5977,'description',0,1230,545,1236,1482509239,1,1123),(188,17,102,0,5978,'description',0,1237,546,1123,1482509239,1,1230),(188,17,102,0,5979,'description',0,1238,547,1230,1482509239,1,1237),(188,17,102,0,5980,'description',0,0,548,1237,1482509239,1,1238),(116,5,103,0,6305,'name',0,0,0,0,1482517381,3,1309),(186,16,75,0,7603,'name',0,0,0,0,1480987917,1,1589),(4,1,65,0,7606,'name',0,997,0,0,1480901813,1,997),(155,1,65,0,7607,'short_name',0,0,1,997,1480901813,1,997),(4,1,69,0,10152,'name',0,1876,0,0,1480902015,1,1876),(155,1,69,0,10153,'short_name',0,0,1,1876,1480902015,1,1876),(4,1,63,0,10356,'name',0,986,0,0,1480886445,1,985),(4,1,63,0,10357,'name',0,985,1,985,1480886445,1,986),(155,1,63,0,10358,'short_name',0,986,2,986,1480886445,1,985),(155,1,63,0,10359,'short_name',0,0,3,985,1480886445,1,986),(1,2,115,0,11696,'title',0,3196,0,0,1482639161,1,3195),(121,2,115,0,11697,'body',0,3197,1,3195,1482639161,1,3196),(121,2,115,0,11698,'body',0,1151,2,3196,1482639161,1,3197),(121,2,115,0,11699,'body',0,3198,3,3197,1482639161,1,1151),(121,2,115,0,11700,'body',0,1042,4,1151,1482639161,1,3198),(121,2,115,0,11701,'body',0,1043,5,3198,1482639161,1,1042),(121,2,115,0,11702,'body',0,2043,6,1042,1482639161,1,1043),(121,2,115,0,11703,'body',0,1120,7,1043,1482639161,1,2043),(121,2,115,0,11704,'body',0,1816,8,2043,1482639161,1,1120),(121,2,115,0,11705,'body',0,2571,9,1120,1482639161,1,1816),(121,2,115,0,11706,'body',0,1123,10,1816,1482639161,1,2571),(121,2,115,0,11707,'body',0,1747,11,2571,1482639161,1,1123),(121,2,115,0,11708,'body',0,2572,12,1123,1482639161,1,1747),(121,2,115,0,11709,'body',0,2573,13,1747,1482639161,1,2572),(121,2,115,0,11710,'body',0,2574,14,2572,1482639161,1,2573),(121,2,115,0,11711,'body',0,3199,15,2573,1482639161,1,2574),(121,2,115,0,11712,'body',0,3200,16,2574,1482639161,1,3199),(121,2,115,0,11713,'body',0,3201,17,3199,1482639161,1,3200),(121,2,115,0,11714,'body',0,2044,18,3200,1482639161,1,3201),(121,2,115,0,11715,'body',0,3202,19,3201,1482639161,1,2044),(121,2,115,0,11716,'body',0,2872,20,2044,1482639161,1,3202),(121,2,115,0,11717,'body',0,1215,21,3202,1482639161,1,2872),(121,2,115,0,11718,'body',0,3203,22,2872,1482639161,1,1215),(121,2,115,0,11719,'body',0,2087,23,1215,1482639161,1,3203),(121,2,115,0,11720,'body',0,2103,24,3203,1482639161,1,2087),(121,2,115,0,11721,'body',0,2104,25,2087,1482639161,1,2103),(121,2,115,0,11722,'body',0,3199,26,2103,1482639161,1,2104),(121,2,115,0,11723,'body',0,3200,27,2104,1482639161,1,3199),(121,2,115,0,11724,'body',0,3201,28,3199,1482639161,1,3200),(121,2,115,0,11725,'body',0,2044,29,3200,1482639161,1,3201),(121,2,115,0,11726,'body',0,3204,30,3201,1482639161,1,2044),(121,2,115,0,11727,'body',0,2129,31,2044,1482639161,1,3204),(121,2,115,0,11728,'body',0,3205,32,3204,1482639161,1,2129),(121,2,115,0,11729,'body',0,3206,33,2129,1482639161,1,3205),(121,2,115,0,11730,'body',0,3207,34,3205,1482639161,1,3206),(121,2,115,0,11731,'body',0,3208,35,3206,1482639161,1,3207),(121,2,115,0,11732,'body',0,2132,36,3207,1482639161,1,3208),(121,2,115,0,11733,'body',0,2133,37,3208,1482639161,1,2132),(121,2,115,0,11734,'body',0,3209,38,2132,1482639161,1,2133),(121,2,115,0,11735,'body',0,3210,39,2133,1482639161,1,3209),(121,2,115,0,11736,'body',0,2138,40,3209,1482639161,1,3210),(121,2,115,0,11737,'body',0,1554,41,3210,1482639161,1,2138),(121,2,115,0,11738,'body',0,2253,42,2138,1482639161,1,1554),(121,2,115,0,11739,'body',0,3210,43,1554,1482639161,1,2253),(121,2,115,0,11740,'body',0,2138,44,2253,1482639161,1,3210),(121,2,115,0,11741,'body',0,3211,45,3210,1482639161,1,2138),(121,2,115,0,11742,'body',0,3212,46,2138,1482639161,1,3211),(121,2,115,0,11743,'body',0,2044,47,3211,1482639161,1,3212),(121,2,115,0,11744,'body',0,3213,48,3212,1482639161,1,2044),(121,2,115,0,11745,'body',0,3214,49,2044,1482639161,1,3213),(121,2,115,0,11746,'body',0,3215,50,3213,1482639161,1,3214),(121,2,115,0,11747,'body',0,3216,51,3214,1482639161,1,3215),(121,2,115,0,11748,'body',0,1749,52,3215,1482639161,1,3216),(121,2,115,0,11749,'body',0,3217,53,3216,1482639161,1,1749),(121,2,115,0,11750,'body',0,1120,54,1749,1482639161,1,3217),(121,2,115,0,11751,'body',0,1215,55,3217,1482639161,1,1120),(121,2,115,0,11752,'body',0,3218,56,1120,1482639161,1,1215),(121,2,115,0,11753,'body',0,1207,57,1215,1482639161,1,3218),(121,2,115,0,11754,'body',0,3219,58,3218,1482639161,1,1207),(121,2,115,0,11755,'body',0,3220,59,1207,1482639161,1,3219),(121,2,115,0,11756,'body',0,994,60,3219,1482639161,1,3220),(121,2,115,0,11757,'body',0,3221,61,3220,1482639161,1,994),(121,2,115,0,11758,'body',0,2087,62,994,1482639161,1,3221),(121,2,115,0,11759,'body',0,2103,63,3221,1482639161,1,2087),(121,2,115,0,11760,'body',0,2104,64,2087,1482639161,1,2103),(121,2,115,0,11761,'body',0,3199,65,2103,1482639161,1,2104),(121,2,115,0,11762,'body',0,3200,66,2104,1482639161,1,3199),(121,2,115,0,11763,'body',0,3201,67,3199,1482639161,1,3200),(121,2,115,0,11764,'body',0,2044,68,3200,1482639161,1,3201),(121,2,115,0,11765,'body',0,3222,69,3201,1482639161,1,2044),(121,2,115,0,11766,'body',0,3223,70,2044,1482639161,1,3222),(121,2,115,0,11767,'body',0,3224,71,3222,1482639161,1,3223),(121,2,115,0,11768,'body',0,1120,72,3223,1482639161,1,3224),(121,2,115,0,11769,'body',0,1799,73,3224,1482639161,1,1120),(121,2,115,0,11770,'body',0,1132,74,1120,1482639161,1,1799),(121,2,115,0,11771,'body',0,3225,75,1799,1482639161,1,1132),(121,2,115,0,11772,'body',0,3226,76,1132,1482639161,1,3225),(121,2,115,0,11773,'body',0,1787,77,3225,1482639161,1,3226),(121,2,115,0,11774,'body',0,3197,78,3226,1482639161,1,1787),(121,2,115,0,11775,'body',0,2140,79,1787,1482639161,1,3197),(121,2,115,0,11776,'body',0,3220,80,3197,1482639161,1,2140),(121,2,115,0,11777,'body',0,992,81,2140,1482639161,1,3220),(121,2,115,0,11778,'body',0,3198,82,3220,1482639161,1,992),(121,2,115,0,11779,'body',0,1120,83,992,1482639161,1,3198),(121,2,115,0,11780,'body',0,1996,84,3198,1482639161,1,1120),(121,2,115,0,11781,'body',0,1799,85,1120,1482639161,1,1996),(121,2,115,0,11782,'body',0,1827,86,1996,1482639161,1,1799),(121,2,115,0,11783,'body',0,3227,87,1799,1482639161,1,1827),(121,2,115,0,11784,'body',0,3228,88,1827,1482639161,1,3227),(121,2,115,0,11785,'body',0,1207,89,3227,1482639161,1,3228),(121,2,115,0,11786,'body',0,1215,90,3228,1482639161,1,1207),(121,2,115,0,11787,'body',0,3229,91,1207,1482639161,1,1215),(121,2,115,0,11788,'body',0,3230,92,1215,1482639161,1,3229),(121,2,115,0,11789,'body',0,3217,93,3229,1482639161,1,3230),(121,2,115,0,11790,'body',0,1207,94,3230,1482639161,1,3217),(121,2,115,0,11791,'body',0,3200,95,3217,1482639161,1,1207),(121,2,115,0,11792,'body',0,1781,96,1207,1482639161,1,3200),(121,2,115,0,11793,'body',0,2182,97,3200,1482639161,1,1781),(121,2,115,0,11794,'body',0,3198,98,1781,1482639161,1,2182),(121,2,115,0,11795,'body',0,3226,99,2182,1482639161,1,3198),(121,2,115,0,11796,'body',0,1787,100,3198,1482639161,1,3226),(121,2,115,0,11797,'body',0,1132,101,3226,1482639161,1,1787),(121,2,115,0,11798,'body',0,3231,102,1787,1482639161,1,1132),(121,2,115,0,11799,'body',0,3232,103,1132,1482639161,1,3231),(121,2,115,0,11800,'body',0,1149,104,3231,1482639161,1,3232),(121,2,115,0,11801,'body',0,3233,105,3232,1482639161,1,1149),(121,2,115,0,11802,'body',0,3234,106,1149,1482639161,1,3233),(121,2,115,0,11803,'body',0,1200,107,3233,1482639161,1,3234),(121,2,115,0,11804,'body',0,3235,108,3234,1482639161,1,1200),(121,2,115,0,11805,'body',0,3236,109,1200,1482639161,1,3235),(121,2,115,0,11806,'body',0,1825,110,3235,1482639161,1,3236),(121,2,115,0,11807,'body',0,1145,111,3236,1482639161,1,1825),(121,2,115,0,11808,'body',0,3237,112,1825,1482639161,1,1145),(121,2,115,0,11809,'body',0,1200,113,1145,1482639161,1,3237),(121,2,115,0,11810,'body',0,1207,114,3237,1482639161,1,1200),(121,2,115,0,11811,'body',0,3238,115,1200,1482639161,1,1207),(121,2,115,0,11812,'body',0,1145,116,1207,1482639161,1,3238),(121,2,115,0,11813,'body',0,3239,117,3238,1482639161,1,1145),(121,2,115,0,11814,'body',0,1121,118,1145,1482639161,1,3239),(121,2,115,0,11815,'body',0,1827,119,3239,1482639161,1,1121),(121,2,115,0,11816,'body',0,1135,120,1121,1482639161,1,1827),(121,2,115,0,11817,'body',0,3240,121,1827,1482639161,1,1135),(121,2,115,0,11818,'body',0,3241,122,1135,1482639161,1,3240),(121,2,115,0,11819,'body',0,3242,123,3240,1482639161,1,3241),(121,2,115,0,11820,'body',0,3243,124,3241,1482639161,1,3242),(121,2,115,0,11821,'body',0,2047,125,3242,1482639161,1,3243),(121,2,115,0,11822,'body',0,3244,126,3243,1482639161,1,2047),(121,2,115,0,11823,'body',0,1200,127,2047,1482639161,1,3244),(121,2,115,0,11824,'body',0,3245,128,3244,1482639161,1,1200),(121,2,115,0,11825,'body',0,1126,129,1200,1482639161,1,3245),(121,2,115,0,11826,'body',0,3246,130,3245,1482639161,1,1126),(121,2,115,0,11827,'body',0,1169,131,1126,1482639161,1,3246),(121,2,115,0,11828,'body',0,1825,132,3246,1482639161,1,1169),(121,2,115,0,11829,'body',0,1207,133,1169,1482639161,1,1825),(121,2,115,0,11830,'body',0,1215,134,1825,1482639161,1,1207),(121,2,115,0,11831,'body',0,3229,135,1207,1482639161,1,1215),(121,2,115,0,11832,'body',0,3230,136,1215,1482639161,1,3229),(121,2,115,0,11833,'body',0,3247,137,3229,1482639161,1,3230),(121,2,115,0,11834,'body',0,3248,138,3230,1482639161,1,3247),(121,2,115,0,11835,'body',0,3249,139,3247,1482639161,1,3248),(121,2,115,0,11836,'body',0,1135,140,3248,1482639161,1,3249),(121,2,115,0,11837,'body',0,3250,141,3249,1482639161,1,1135),(121,2,115,0,11838,'body',0,3224,142,1135,1482639161,1,3250),(121,2,115,0,11839,'body',0,1115,143,3250,1482639161,1,3224),(121,2,115,0,11840,'body',0,3232,144,3224,1482639161,1,1115),(121,2,115,0,11841,'body',0,3251,145,1115,1482639161,1,3232),(121,2,115,0,11842,'body',0,3252,146,3232,1482639161,1,3251),(121,2,115,0,11843,'body',0,1167,147,3251,1482639161,1,3252),(121,2,115,0,11844,'body',0,3253,148,3252,1482639161,1,1167),(121,2,115,0,11845,'body',0,1126,149,1167,1482639161,1,3253),(121,2,115,0,11846,'body',0,3254,150,3253,1482639161,1,1126),(121,2,115,0,11847,'body',0,1858,151,1126,1482639161,1,3254),(121,2,115,0,11848,'body',0,3255,152,3254,1482639161,1,1858),(121,2,115,0,11849,'body',0,3256,153,1858,1482639161,1,3255),(121,2,115,0,11850,'body',0,3257,154,3255,1482639161,1,3256),(121,2,115,0,11851,'body',0,1960,155,3256,1482639161,1,3257),(121,2,115,0,11852,'body',0,3258,156,3257,1482639161,1,1960),(121,2,115,0,11853,'body',0,1169,157,1960,1482639161,1,3258),(121,2,115,0,11854,'body',0,3259,158,3258,1482639161,1,1169),(121,2,115,0,11855,'body',0,3260,159,1169,1482639161,1,3259),(121,2,115,0,11856,'body',0,1805,160,3259,1482639161,1,3260),(121,2,115,0,11857,'body',0,1787,161,3260,1482639161,1,1805),(121,2,115,0,11858,'body',0,1140,162,1805,1482639161,1,1787),(121,2,115,0,11859,'body',0,1799,163,1787,1482639161,1,1140),(121,2,115,0,11860,'body',0,3261,164,1140,1482639161,1,1799),(121,2,115,0,11861,'body',0,3262,165,1799,1482639161,1,3261),(121,2,115,0,11862,'body',0,3224,166,3261,1482639161,1,3262),(121,2,115,0,11863,'body',0,1120,167,3262,1482639161,1,3224),(121,2,115,0,11864,'body',0,3263,168,3224,1482639161,1,1120),(121,2,115,0,11865,'body',0,3264,169,1120,1482639161,1,3263),(121,2,115,0,11866,'body',0,3265,170,3263,1482639161,1,3264),(121,2,115,0,11867,'body',0,3266,171,3264,1482639161,1,3265),(121,2,115,0,11868,'body',0,3263,172,3265,1482639161,1,3266),(121,2,115,0,11869,'body',0,1145,173,3266,1482639161,1,3263),(121,2,115,0,11870,'body',0,3267,174,3263,1482639161,1,1145),(121,2,115,0,11871,'body',0,1221,175,1145,1482639161,1,3267),(121,2,115,0,11872,'body',0,3268,176,3267,1482639161,1,1221),(121,2,115,0,11873,'body',0,1827,177,1221,1482639161,1,3268),(121,2,115,0,11874,'body',0,3269,178,3268,1482639161,1,1827),(121,2,115,0,11875,'body',0,1799,179,1827,1482639161,1,3269),(121,2,115,0,11876,'body',0,1787,180,3269,1482639161,1,1799),(121,2,115,0,11877,'body',0,3270,181,1799,1482639161,1,1787),(121,2,115,0,11878,'body',0,3271,182,1787,1482639161,1,3270),(121,2,115,0,11879,'body',0,1775,183,3270,1482639161,1,3271),(121,2,115,0,11880,'body',0,3272,184,3271,1482639161,1,1775),(121,2,115,0,11881,'body',0,3273,185,1775,1482639161,1,3272),(121,2,115,0,11882,'body',0,1787,186,3272,1482639161,1,3273),(121,2,115,0,11883,'body',0,1120,187,3273,1482639161,1,1787),(121,2,115,0,11884,'body',0,1140,188,1787,1482639161,1,1120),(121,2,115,0,11885,'body',0,3274,189,1120,1482639161,1,1140),(121,2,115,0,11886,'body',0,1799,190,1140,1482639161,1,3274),(121,2,115,0,11887,'body',0,1155,191,3274,1482639161,1,1799),(121,2,115,0,11888,'body',0,3275,192,1799,1482639161,1,1155),(121,2,115,0,11889,'body',0,3276,193,1155,1482639161,1,3275),(121,2,115,0,11890,'body',0,3277,194,3275,1482639161,1,3276),(121,2,115,0,11891,'body',0,1120,195,3276,1482639161,1,3277),(121,2,115,0,11892,'body',0,1121,196,3277,1482639161,1,1120),(121,2,115,0,11893,'body',0,1799,197,1120,1482639161,1,1121),(121,2,115,0,11894,'body',0,1126,198,1121,1482639161,1,1799),(121,2,115,0,11895,'body',0,3278,199,1799,1482639161,1,1126),(121,2,115,0,11896,'body',0,3228,200,1126,1482639161,1,3278),(121,2,115,0,11897,'body',0,1115,201,3278,1482639161,1,3228),(121,2,115,0,11898,'body',0,3279,202,3228,1482639161,1,1115),(121,2,115,0,11899,'body',0,1126,203,1115,1482639161,1,3279),(121,2,115,0,11900,'body',0,3280,204,3279,1482639161,1,1126),(121,2,115,0,11901,'body',0,3281,205,1126,1482639161,1,3280),(121,2,115,0,11902,'body',0,1200,206,3280,1482639161,1,3281),(121,2,115,0,11903,'body',0,3282,207,3281,1482639161,1,1200),(121,2,115,0,11904,'body',0,1126,208,1200,1482639161,1,3282),(121,2,115,0,11905,'body',0,3228,209,3282,1482639161,1,1126),(121,2,115,0,11906,'body',0,3217,210,1126,1482639161,1,3228),(121,2,115,0,11907,'body',0,1121,211,3228,1482639161,1,3217),(121,2,115,0,11908,'body',0,3278,212,3217,1482639161,1,1121),(121,2,115,0,11909,'body',0,3228,213,1121,1482639161,1,3278),(121,2,115,0,11910,'body',0,1918,214,3278,1482639161,1,3228),(121,2,115,0,11911,'body',0,1752,215,3228,1482639161,1,1918),(121,2,115,0,11912,'body',0,3253,216,1918,1482639161,1,1752),(121,2,115,0,11913,'body',0,1126,217,1752,1482639161,1,3253),(121,2,115,0,11914,'body',0,3283,218,3253,1482639161,1,1126),(121,2,115,0,11915,'body',0,1827,219,1126,1482639161,1,3283),(121,2,115,0,11916,'body',0,3284,220,3283,1482639161,1,1827),(121,2,115,0,11917,'body',0,3285,221,1827,1482639161,1,3284),(121,2,115,0,11918,'body',0,3286,222,3284,1482639161,1,3285),(121,2,115,0,11919,'body',0,3240,223,3285,1482639161,1,3286),(121,2,115,0,11920,'body',0,1799,224,3286,1482639161,1,3240),(121,2,115,0,11921,'body',0,3287,225,3240,1482639161,1,1799),(121,2,115,0,11922,'body',0,1752,226,1799,1482639161,1,3287),(121,2,115,0,11923,'body',0,3253,227,3287,1482639161,1,1752),(121,2,115,0,11924,'body',0,1126,228,1752,1482639161,1,3253),(121,2,115,0,11925,'body',0,3283,229,3253,1482639161,1,1126),(121,2,115,0,11926,'body',0,1149,230,1126,1482639161,1,3283),(121,2,115,0,11927,'body',0,3288,231,3283,1482639161,1,1149),(121,2,115,0,11928,'body',0,1135,232,1149,1482639161,1,3288),(121,2,115,0,11929,'body',0,3289,233,3288,1482639161,1,1135),(121,2,115,0,11930,'body',0,3290,234,1135,1482639161,1,3289),(121,2,115,0,11931,'body',0,3291,235,3289,1482639161,1,3290),(121,2,115,0,11932,'body',0,1126,236,3290,1482639161,1,3291),(121,2,115,0,11933,'body',0,3278,237,3291,1482639161,1,1126),(121,2,115,0,11934,'body',0,3228,238,1126,1482639161,1,3278),(121,2,115,0,11935,'body',0,1115,239,3278,1482639161,1,3228),(121,2,115,0,11936,'body',0,3232,240,3228,1482639161,1,1115),(121,2,115,0,11937,'body',0,3292,241,1115,1482639161,1,3232),(121,2,115,0,11938,'body',0,3293,242,3232,1482639161,1,3292),(121,2,115,0,11939,'body',0,3294,243,3292,1482639161,1,3293),(121,2,115,0,11940,'body',0,1858,244,3293,1482639161,1,3294),(121,2,115,0,11941,'body',0,3256,245,3294,1482639161,1,1858),(121,2,115,0,11942,'body',0,1149,246,1858,1482639161,1,3256),(121,2,115,0,11943,'body',0,3295,247,3256,1482639161,1,1149),(121,2,115,0,11944,'body',0,1960,248,1149,1482639161,1,3295),(121,2,115,0,11945,'body',0,3258,249,3295,1482639161,1,1960),(121,2,115,0,11946,'body',0,1169,250,1960,1482639161,1,3258),(121,2,115,0,11947,'body',0,3260,251,3258,1482639161,1,1169),(121,2,115,0,11948,'body',0,1805,252,1169,1482639161,1,3260),(121,2,115,0,11949,'body',0,1787,253,3260,1482639161,1,1805),(121,2,115,0,11950,'body',0,3296,254,1805,1482639161,1,1787),(121,2,115,0,11951,'body',0,3263,255,1787,1482639161,1,3296),(121,2,115,0,11952,'body',0,3261,256,3296,1482639161,1,3263),(121,2,115,0,11953,'body',0,3262,257,3263,1482639161,1,3261),(121,2,115,0,11954,'body',0,3297,258,3261,1482639161,1,3262),(121,2,115,0,11955,'body',0,1121,259,3262,1482639161,1,3297),(121,2,115,0,11956,'body',0,2872,260,3297,1482639161,1,1121),(121,2,115,0,11957,'body',0,1121,261,1121,1482639161,1,2872),(121,2,115,0,11958,'body',0,3298,262,2872,1482639161,1,1121),(121,2,115,0,11959,'body',0,3299,263,1121,1482639161,1,3298),(121,2,115,0,11960,'body',0,1799,264,3298,1482639161,1,3299),(121,2,115,0,11961,'body',0,1123,265,3299,1482639161,1,1799),(121,2,115,0,11962,'body',0,3300,266,1799,1482639161,1,1123),(121,2,115,0,11963,'body',0,1827,267,1123,1482639161,1,3300),(121,2,115,0,11964,'body',0,3227,268,3300,1482639161,1,1827),(121,2,115,0,11965,'body',0,3228,269,1827,1482639161,1,3227),(121,2,115,0,11966,'body',0,3301,270,3227,1482639161,1,3228),(121,2,115,0,11967,'body',0,1167,271,3228,1482639161,1,3301),(121,2,115,0,11968,'body',0,3302,272,3301,1482639161,1,1167),(121,2,115,0,11969,'body',0,3297,273,1167,1482639161,1,3302),(121,2,115,0,11970,'body',0,1121,274,3302,1482639161,1,3297),(121,2,115,0,11971,'body',0,3303,275,3297,1482639161,1,1121),(121,2,115,0,11972,'body',0,3304,276,1121,1482639161,1,3303),(121,2,115,0,11973,'body',0,2863,277,3303,1482639161,1,3304),(121,2,115,0,11974,'body',0,1123,278,3304,1482639161,1,2863),(121,2,115,0,11975,'body',0,3305,279,2863,1482639161,1,1123),(121,2,115,0,11976,'body',0,1842,280,1123,1482639161,1,3305),(121,2,115,0,11977,'body',0,1126,281,3305,1482639161,1,1842),(121,2,115,0,11978,'body',0,3306,282,1842,1482639161,1,1126),(121,2,115,0,11979,'body',0,2907,283,1126,1482639161,1,3306),(121,2,115,0,11980,'body',0,1126,284,3306,1482639161,1,2907),(121,2,115,0,11981,'body',0,3307,285,2907,1482639161,1,1126),(121,2,115,0,11982,'body',0,1230,286,1126,1482639161,1,3307),(121,2,115,0,11983,'body',0,3308,287,3307,1482639161,1,1230),(121,2,115,0,11984,'body',0,3309,288,1230,1482639161,1,3308),(121,2,115,0,11985,'body',0,1126,289,3308,1482639161,1,3309),(121,2,115,0,11986,'body',0,3310,290,3309,1482639161,1,1126),(121,2,115,0,11987,'body',0,3311,291,1126,1482639161,1,3310),(121,2,115,0,11988,'body',0,1230,292,3310,1482639161,1,3311),(121,2,115,0,11989,'body',0,3312,293,3311,1482639161,1,1230),(121,2,115,0,11990,'body',0,3313,294,1230,1482639161,1,3312),(121,2,115,0,11991,'body',0,3314,295,3312,1482639161,1,3313),(121,2,115,0,11992,'body',0,3315,296,3313,1482639161,1,3314),(121,2,115,0,11993,'body',0,3316,297,3314,1482639161,1,3315),(121,2,115,0,11994,'body',0,1123,298,3315,1482639161,1,3316),(121,2,115,0,11995,'body',0,3317,299,3316,1482639161,1,1123),(121,2,115,0,11996,'body',0,1779,300,1123,1482639161,1,3317),(121,2,115,0,11997,'body',0,3318,301,3317,1482639161,1,1779),(121,2,115,0,11998,'body',0,3226,302,1779,1482639161,1,3318),(121,2,115,0,11999,'body',0,1150,303,3318,1482639161,1,3226),(121,2,115,0,12000,'body',0,1120,304,3226,1482639161,1,1150),(121,2,115,0,12001,'body',0,1215,305,1150,1482639161,1,1120),(121,2,115,0,12002,'body',0,3319,306,1120,1482639161,1,1215),(121,2,115,0,12003,'body',0,1149,307,1215,1482639161,1,3319),(121,2,115,0,12004,'body',0,3320,308,3319,1482639161,1,1149),(121,2,115,0,12005,'body',0,3321,309,1149,1482639161,1,3320),(121,2,115,0,12006,'body',0,3322,310,3320,1482639161,1,3321),(121,2,115,0,12007,'body',0,3323,311,3321,1482639161,1,3322),(121,2,115,0,12008,'body',0,1121,312,3322,1482639161,1,3323),(121,2,115,0,12009,'body',0,1799,313,3323,1482639161,1,1121),(121,2,115,0,12010,'body',0,1827,314,1121,1482639161,1,1799),(121,2,115,0,12011,'body',0,1779,315,1799,1482639161,1,1827),(121,2,115,0,12012,'body',0,3318,316,1827,1482639161,1,1779),(121,2,115,0,12013,'body',0,1149,317,1779,1482639161,1,3318),(121,2,115,0,12014,'body',0,1189,318,3318,1482639161,1,1149),(121,2,115,0,12015,'body',0,3282,319,1149,1482639161,1,1189),(121,2,115,0,12016,'body',0,3324,320,1189,1482639161,1,3282),(121,2,115,0,12017,'body',0,1918,321,3282,1482639161,1,3324),(121,2,115,0,12018,'body',0,1805,322,3324,1482639161,1,1918),(121,2,115,0,12019,'body',0,1121,323,1918,1482639161,1,1805),(121,2,115,0,12020,'body',0,3325,324,1805,1482639161,1,1121),(121,2,115,0,12021,'body',0,3268,325,1121,1482639161,1,3325),(121,2,115,0,12022,'body',0,3326,326,3325,1482639161,1,3268),(121,2,115,0,12023,'body',0,3327,327,3268,1482639161,1,3326),(121,2,115,0,12024,'body',0,1805,328,3326,1482639161,1,3327),(121,2,115,0,12025,'body',0,1799,329,3327,1482639161,1,1805),(121,2,115,0,12026,'body',0,3268,330,1805,1482639161,1,1799),(121,2,115,0,12027,'body',0,1132,331,1799,1482639161,1,3268),(121,2,115,0,12028,'body',0,3328,332,3268,1482639161,1,1132),(121,2,115,0,12029,'body',0,3329,333,1132,1482639161,1,3328),(121,2,115,0,12030,'body',0,3330,334,3328,1482639161,1,3329),(121,2,115,0,12031,'body',0,1771,335,3329,1482639161,1,3330),(121,2,115,0,12032,'body',0,3331,336,3330,1482639161,1,1771),(121,2,115,0,12033,'body',0,1827,337,1771,1482639161,1,3331),(121,2,115,0,12034,'body',0,1135,338,3331,1482639161,1,1827),(121,2,115,0,12035,'body',0,3332,339,1827,1482639161,1,1135),(121,2,115,0,12036,'body',0,3333,340,1135,1482639161,1,3332),(121,2,115,0,12037,'body',0,1805,341,3332,1482639161,1,3333),(121,2,115,0,12038,'body',0,3334,342,3333,1482639161,1,1805),(121,2,115,0,12039,'body',0,1787,343,1805,1482639161,1,3334),(121,2,115,0,12040,'body',0,1143,344,3334,1482639161,1,1787),(121,2,115,0,12041,'body',0,1865,345,1787,1482639161,1,1143),(121,2,115,0,12042,'body',0,3259,346,1143,1482639161,1,1865),(121,2,115,0,12043,'body',0,3335,347,1865,1482639161,1,3259),(121,2,115,0,12044,'body',0,1960,348,3259,1482639161,1,3335),(121,2,115,0,12045,'body',0,3258,349,3335,1482639161,1,1960),(121,2,115,0,12046,'body',0,1169,350,1960,1482639161,1,3258),(121,2,115,0,12047,'body',0,3260,351,3258,1482639161,1,1169),(121,2,115,0,12048,'body',0,1805,352,1169,1482639161,1,3260),(121,2,115,0,12049,'body',0,1787,353,3260,1482639161,1,1805),(121,2,115,0,12050,'body',0,3296,354,1805,1482639161,1,1787),(121,2,115,0,12051,'body',0,1799,355,1787,1482639161,1,3296),(121,2,115,0,12052,'body',0,3261,356,3296,1482639161,1,1799),(121,2,115,0,12053,'body',0,3262,357,1799,1482639161,1,3261),(121,2,115,0,12054,'body',0,3336,358,3261,1482639161,1,3262),(121,2,115,0,12055,'body',0,3337,359,3262,1482639161,1,3336),(121,2,115,0,12056,'body',0,1121,360,3336,1482639161,1,3337),(121,2,115,0,12057,'body',0,3246,361,3337,1482639161,1,1121),(121,2,115,0,12058,'body',0,3338,362,1121,1482639161,1,3246),(121,2,115,0,12059,'body',0,3339,363,3246,1482639161,1,3338),(121,2,115,0,12060,'body',0,1115,364,3338,1482639161,1,3339),(121,2,115,0,12061,'body',0,1125,365,3339,1482639161,1,1115),(121,2,115,0,12062,'body',0,1126,366,1115,1482639161,1,1125),(121,2,115,0,12063,'body',0,3340,367,1125,1482639161,1,1126),(121,2,115,0,12064,'body',0,3292,368,1126,1482639161,1,3340),(121,2,115,0,12065,'body',0,3341,369,3340,1482639161,1,3292),(121,2,115,0,12066,'body',0,3342,370,3292,1482639161,1,3341),(121,2,115,0,12067,'body',0,3343,371,3341,1482639161,1,3342),(121,2,115,0,12068,'body',0,3257,372,3342,1482639161,1,3343),(121,2,115,0,12069,'body',0,3323,373,3343,1482639161,1,3257),(121,2,115,0,12070,'body',0,1827,374,3257,1482639161,1,3323),(121,2,115,0,12071,'body',0,3344,375,3323,1482639161,1,1827),(121,2,115,0,12072,'body',0,3228,376,1827,1482639161,1,3344),(121,2,115,0,12073,'body',0,3345,377,3344,1482639161,1,3228),(121,2,115,0,12074,'body',0,3343,378,3228,1482639161,1,3345),(121,2,115,0,12075,'body',0,3346,379,3345,1482639161,1,3343),(121,2,115,0,12076,'body',0,2122,380,3343,1482639161,1,3346),(121,2,115,0,12077,'body',0,3347,381,3346,1482639161,1,2122),(121,2,115,0,12078,'body',0,1200,382,2122,1482639161,1,3347),(121,2,115,0,12079,'body',0,2554,383,3347,1482639161,1,1200),(121,2,115,0,12080,'body',0,3348,384,1200,1482639161,1,2554),(121,2,115,0,12081,'body',0,3349,385,2554,1482639161,1,3348),(121,2,115,0,12082,'body',0,1805,386,3348,1482639161,1,3349),(121,2,115,0,12083,'body',0,3350,387,3349,1482639161,1,1805),(121,2,115,0,12084,'body',0,3351,388,1805,1482639161,1,3350),(121,2,115,0,12085,'body',0,3323,389,3350,1482639161,1,3351),(121,2,115,0,12086,'body',0,3257,390,3351,1482639161,1,3323),(121,2,115,0,12087,'body',0,3279,391,3323,1482639161,1,3257),(121,2,115,0,12088,'body',0,1827,392,3257,1482639161,1,3279),(121,2,115,0,12089,'body',0,3352,393,3279,1482639161,1,1827),(121,2,115,0,12090,'body',0,3353,394,1827,1482639161,1,3352),(121,2,115,0,12091,'body',0,1140,395,3352,1482639161,1,3353),(121,2,115,0,12092,'body',0,3343,396,3353,1482639161,1,1140),(121,2,115,0,12093,'body',0,1805,397,1140,1482639161,1,3343),(121,2,115,0,12094,'body',0,3292,398,3343,1482639161,1,1805),(121,2,115,0,12095,'body',0,1788,399,1805,1482639161,1,3292),(121,2,115,0,12096,'body',0,3354,400,3292,1482639161,1,1788),(121,2,115,0,12097,'body',0,3311,401,1788,1482639161,1,3354),(121,2,115,0,12098,'body',0,1149,402,3354,1482639161,1,3311),(121,2,115,0,12099,'body',0,1801,403,3311,1482639161,1,1149),(121,2,115,0,12100,'body',0,3355,404,1149,1482639161,1,1801),(121,2,115,0,12101,'body',0,3356,405,1801,1482639161,1,3355),(121,2,115,0,12102,'body',0,1787,406,3355,1482639161,1,3356),(121,2,115,0,12103,'body',0,3357,407,3356,1482639161,1,1787),(121,2,115,0,12104,'body',0,3358,408,1787,1482639161,1,3357),(121,2,115,0,12105,'body',0,2619,409,3357,1482639161,1,3358),(121,2,115,0,12106,'body',0,1187,410,3358,1482639161,1,2619),(121,2,115,0,12107,'body',0,1121,411,2619,1482639161,1,1187),(121,2,115,0,12108,'body',0,3359,412,1187,1482639161,1,1121),(121,2,115,0,12109,'body',0,1218,413,1121,1482639161,1,3359),(121,2,115,0,12110,'body',0,1219,414,3359,1482639161,1,1218),(121,2,115,0,12111,'body',0,1767,415,1218,1482639161,1,1219),(121,2,115,0,12112,'body',0,1749,416,1219,1482639161,1,1767),(121,2,115,0,12113,'body',0,1960,417,1767,1482639161,1,1749),(121,2,115,0,12114,'body',0,1126,418,1749,1482639161,1,1960),(121,2,115,0,12115,'body',0,3360,419,1960,1482639161,1,1126),(121,2,115,0,12116,'body',0,3361,420,1126,1482639161,1,3360),(121,2,115,0,12117,'body',0,2132,421,3360,1482639161,1,3361),(121,2,115,0,12118,'body',0,2133,422,3361,1482639161,1,2132),(121,2,115,0,12119,'body',0,3362,423,2132,1482639161,1,2133),(121,2,115,0,12120,'body',0,3363,424,2133,1482639161,1,3362),(121,2,115,0,12121,'body',0,2102,425,3362,1482639161,1,3363),(121,2,115,0,12122,'body',0,1116,426,3363,1482639161,1,2102),(121,2,115,0,12123,'body',0,3364,427,2102,1482639161,1,1116),(121,2,115,0,12124,'body',0,3365,428,1116,1482639161,1,3364),(121,2,115,0,12125,'body',0,1126,429,3364,1482639161,1,3365),(121,2,115,0,12126,'body',0,3343,430,3365,1482639161,1,1126),(121,2,115,0,12127,'body',0,1929,431,1126,1482639161,1,3343),(121,2,115,0,12128,'body',0,1167,432,3343,1482639161,1,1929),(121,2,115,0,12129,'body',0,3366,433,1929,1482639161,1,1167),(121,2,115,0,12130,'body',0,2872,434,1167,1482639161,1,3366),(121,2,115,0,12131,'body',0,3355,435,3366,1482639161,1,2872),(121,2,115,0,12132,'body',0,1115,436,2872,1482639161,1,3355),(121,2,115,0,12133,'body',0,1149,437,3355,1482639161,1,1115),(121,2,115,0,12134,'body',0,3257,438,1115,1482639161,1,1149),(121,2,115,0,12135,'body',0,1126,439,1149,1482639161,1,3257),(121,2,115,0,12136,'body',0,3246,440,3257,1482639161,1,1126),(121,2,115,0,12137,'body',0,1169,441,1126,1482639161,1,3246),(121,2,115,0,12138,'body',0,1218,442,3246,1482639161,1,1169),(121,2,115,0,12139,'body',0,3367,443,1169,1482639161,1,1218),(121,2,115,0,12140,'body',0,1126,444,1218,1482639161,1,3367),(121,2,115,0,12141,'body',0,3368,445,3367,1482639161,1,1126),(121,2,115,0,12142,'body',0,3369,446,1126,1482639161,1,3368),(121,2,115,0,12143,'body',0,3370,447,3368,1482639161,1,3369),(121,2,115,0,12144,'body',0,2872,448,3369,1482639161,1,3370),(121,2,115,0,12145,'body',0,3355,449,3370,1482639161,1,2872),(121,2,115,0,12146,'body',0,2047,450,2872,1482639161,1,3355),(121,2,115,0,12147,'body',0,3371,451,3355,1482639161,1,2047),(121,2,115,0,12148,'body',0,1169,452,2047,1482639161,1,3371),(121,2,115,0,12149,'body',0,1149,453,3371,1482639161,1,1169),(121,2,115,0,12150,'body',0,3372,454,1169,1482639161,1,1149),(121,2,115,0,12151,'body',0,3373,455,1149,1482639161,1,3372),(121,2,115,0,12152,'body',0,3374,456,3372,1482639161,1,3373),(121,2,115,0,12153,'body',0,1123,457,3373,1482639161,1,3374),(121,2,115,0,12154,'body',0,3375,458,3374,1482639161,1,1123),(121,2,115,0,12155,'body',0,1191,459,1123,1482639161,1,3375),(121,2,115,0,12156,'body',0,3376,460,3375,1482639161,1,1191),(121,2,115,0,12157,'body',0,3372,461,1191,1482639161,1,3376),(121,2,115,0,12158,'body',0,3377,462,3376,1482639161,1,3372),(121,2,115,0,12159,'body',0,1121,463,3372,1482639161,1,3377),(121,2,115,0,12160,'body',0,3282,464,3377,1482639161,1,1121),(121,2,115,0,12161,'body',0,1126,465,1121,1482639161,1,3282),(121,2,115,0,12162,'body',0,3228,466,3282,1482639161,1,1126),(121,2,115,0,12163,'body',0,3378,467,1126,1482639161,1,3228),(121,2,115,0,12164,'body',0,1194,468,3228,1482639161,1,3378),(121,2,115,0,12165,'body',0,3372,469,3378,1482639161,1,1194),(121,2,115,0,12166,'body',0,3379,470,1194,1482639161,1,3372),(121,2,115,0,12167,'body',0,3380,471,3372,1482639161,1,3379),(121,2,115,0,12168,'body',0,1218,472,3379,1482639161,1,3380),(121,2,115,0,12169,'body',0,3381,473,3380,1482639161,1,1218),(121,2,115,0,12170,'body',0,1126,474,1218,1482639161,1,3381),(121,2,115,0,12171,'body',0,3382,475,3381,1482639161,1,1126),(121,2,115,0,12172,'body',0,3383,476,1126,1482639161,1,3382),(121,2,115,0,12173,'body',0,1169,477,3382,1482639161,1,3383),(121,2,115,0,12174,'body',0,3384,478,3383,1482639161,1,1169),(121,2,115,0,12175,'body',0,3385,479,1169,1482639161,1,3384),(121,2,115,0,12176,'body',0,2872,480,3384,1482639161,1,3385),(121,2,115,0,12177,'body',0,3386,481,3385,1482639161,1,2872),(121,2,115,0,12178,'body',0,3387,482,2872,1482639161,1,3386),(121,2,115,0,12179,'body',0,1929,483,3386,1482639161,1,3387),(121,2,115,0,12180,'body',0,0,484,3387,1482639161,1,1929),(1,2,116,0,12181,'title',0,1125,0,0,1482641127,1,3204),(121,2,116,0,12182,'body',0,1126,1,3204,1482641127,1,1125),(121,2,116,0,12183,'body',0,3388,2,1125,1482641127,1,1126),(121,2,116,0,12184,'body',0,3389,3,1126,1482641127,1,3388),(121,2,116,0,12185,'body',0,3390,4,3388,1482641127,1,3389),(121,2,116,0,12186,'body',0,1771,5,3389,1482641127,1,3390),(121,2,116,0,12187,'body',0,1825,6,3390,1482641127,1,1771),(121,2,116,0,12188,'body',0,1752,7,1771,1482641127,1,1825),(121,2,116,0,12189,'body',0,2031,8,1825,1482641127,1,1752),(121,2,116,0,12190,'body',0,1747,9,1752,1482641127,1,2031),(121,2,116,0,12191,'body',0,1748,10,2031,1482641127,1,1747),(121,2,116,0,12192,'body',0,1749,11,1747,1482641127,1,1748),(121,2,116,0,12193,'body',0,1515,12,1748,1482641127,1,1749),(121,2,116,0,12194,'body',0,3391,13,1749,1482641127,1,1515),(121,2,116,0,12195,'body',0,3392,14,1515,1482641127,1,3391),(121,2,116,0,12196,'body',0,1787,15,3391,1482641127,1,3392),(121,2,116,0,12197,'body',0,1155,16,3392,1482641127,1,1787),(121,2,116,0,12198,'body',0,1980,17,1787,1482641127,1,1155),(121,2,116,0,12199,'body',0,1752,18,1155,1482641127,1,1980),(121,2,116,0,12200,'body',0,3393,19,1980,1482641127,1,1752),(121,2,116,0,12201,'body',0,1123,20,1752,1482641127,1,3393),(121,2,116,0,12202,'body',0,3394,21,3393,1482641127,1,1123),(121,2,116,0,12203,'body',0,1929,22,1123,1482641127,1,3394),(121,2,116,0,12204,'body',0,3395,23,3394,1482641127,1,1929),(121,2,116,0,12205,'body',0,3396,24,1929,1482641127,1,3395),(121,2,116,0,12206,'body',0,1042,25,3395,1482641127,1,3396),(121,2,116,0,12207,'body',0,1043,26,3396,1482641127,1,1042),(121,2,116,0,12208,'body',0,2043,27,1042,1482641127,1,1043),(121,2,116,0,12209,'body',0,3397,28,1043,1482641127,1,2043),(121,2,116,0,12210,'body',0,3200,29,2043,1482641127,1,3397),(121,2,116,0,12211,'body',0,3201,30,3397,1482641127,1,3200),(121,2,116,0,12212,'body',0,2044,31,3200,1482641127,1,3201),(121,2,116,0,12213,'body',0,3398,32,3201,1482641127,1,2044),(121,2,116,0,12214,'body',0,3399,33,2044,1482641127,1,3398),(121,2,116,0,12215,'body',0,3400,34,3398,1482641127,1,3399),(121,2,116,0,12216,'body',0,3401,35,3399,1482641127,1,3400),(121,2,116,0,12217,'body',0,3402,36,3400,1482641127,1,3401),(121,2,116,0,12218,'body',0,3403,37,3401,1482641127,1,3402),(121,2,116,0,12219,'body',0,3404,38,3402,1482641127,1,3403),(121,2,116,0,12220,'body',0,3405,39,3403,1482641127,1,3404),(121,2,116,0,12221,'body',0,3402,40,3404,1482641127,1,3405),(121,2,116,0,12222,'body',0,0,41,3405,1482641127,1,3402),(116,5,117,0,12223,'name',0,0,0,0,1482653677,3,2104),(4,1,147,0,13567,'name',0,0,0,0,1482887942,1,974),(189,18,146,0,13577,'title',0,1043,0,0,1482887849,1,1042),(189,18,146,0,13578,'title',0,2043,1,1042,1482887849,1,1043),(189,18,146,0,13579,'title',0,2820,2,1043,1482887849,1,2043),(204,18,146,0,13580,'title_bottom',0,0,3,2043,1482887849,1,2820),(182,14,80,0,13902,'title',0,1797,0,0,1481337197,1,3910),(182,14,80,0,13903,'title',0,3911,1,3910,1481337197,1,1797),(182,14,80,0,13904,'title',0,1828,2,1797,1481337197,1,3911),(210,14,80,0,13905,'description',0,1042,3,3911,1481337197,1,1828),(210,14,80,0,13906,'description',0,1043,4,1828,1481337197,1,1042),(210,14,80,0,13907,'description',0,2043,5,1042,1481337197,1,1043),(210,14,80,0,13908,'description',0,1166,6,1043,1481337197,1,2043),(210,14,80,0,13909,'description',0,3912,7,2043,1481337197,1,1166),(210,14,80,0,13910,'description',0,1125,8,1166,1481337197,1,3912),(210,14,80,0,13911,'description',0,2044,9,3912,1481337197,1,1125),(210,14,80,0,13912,'description',0,3913,10,1125,1481337197,1,2044),(210,14,80,0,13913,'description',0,1194,11,2044,1481337197,1,3913),(210,14,80,0,13914,'description',0,2912,12,3913,1481337197,1,1194),(210,14,80,0,13915,'description',0,3914,13,1194,1481337197,1,2912),(210,14,80,0,13916,'description',0,1145,14,2912,1481337197,1,3914),(210,14,80,0,13917,'description',0,3915,15,3914,1481337197,1,1145),(210,14,80,0,13918,'description',0,1187,16,1145,1481337197,1,3915),(210,14,80,0,13919,'description',0,1120,17,3915,1481337197,1,1187),(210,14,80,0,13920,'description',0,1797,18,1187,1481337197,1,1120),(210,14,80,0,13921,'description',0,3911,19,1120,1481337197,1,1797),(210,14,80,0,13922,'description',0,1116,20,1797,1481337197,1,3911),(210,14,80,0,13923,'description',0,3916,21,3911,1481337197,1,1116),(210,14,80,0,13924,'description',0,1125,22,1116,1481337197,1,3916),(210,14,80,0,13925,'description',0,2041,23,3916,1481337197,1,1125),(210,14,80,0,13926,'description',0,2042,24,1125,1481337197,1,2041),(210,14,80,0,13927,'description',0,2047,25,2041,1481337197,1,2042),(210,14,80,0,13928,'description',0,3917,26,2042,1481337197,1,2047),(210,14,80,0,13929,'description',0,3918,27,2047,1481337197,1,3917),(210,14,80,0,13930,'description',0,3919,28,3917,1481337197,1,3918),(210,14,80,0,13931,'description',0,1126,29,3918,1481337197,1,3919),(210,14,80,0,13932,'description',0,3920,30,3919,1481337197,1,1126),(210,14,80,0,13933,'description',0,1115,31,1126,1481337197,1,3920),(210,14,80,0,13934,'description',0,1147,32,3920,1481337197,1,1115),(210,14,80,0,13935,'description',0,3921,33,1115,1481337197,1,1147),(210,14,80,0,13936,'description',0,3922,34,1147,1481337197,1,3921),(210,14,80,0,13937,'description',0,1123,35,3921,1481337197,1,3922),(210,14,80,0,13938,'description',0,1200,36,3922,1481337197,1,1123),(210,14,80,0,13939,'description',0,3923,37,1123,1481337197,1,1200),(210,14,80,0,13940,'description',0,1121,38,1200,1481337197,1,3923),(210,14,80,0,13941,'description',0,3924,39,3923,1481337197,1,1121),(210,14,80,0,13942,'description',0,1145,40,1121,1481337197,1,3924),(210,14,80,0,13943,'description',0,3925,41,3924,1481337197,1,1145),(210,14,80,0,13944,'description',0,3926,42,1145,1481337197,1,3925),(210,14,80,0,13945,'description',0,3927,43,3925,1481337197,1,3926),(210,14,80,0,13946,'description',0,1218,44,3926,1481337197,1,3927),(210,14,80,0,13947,'description',0,2825,45,3927,1481337197,1,1218),(210,14,80,0,13948,'description',0,1126,46,1218,1481337197,1,2825),(210,14,80,0,13949,'description',0,1817,47,2825,1481337197,1,1126),(210,14,80,0,13950,'description',0,2572,48,1126,1481337197,1,1817),(210,14,80,0,13951,'description',0,1145,49,1817,1481337197,1,2572),(210,14,80,0,13952,'description',0,3928,50,2572,1481337197,1,1145),(210,14,80,0,13953,'description',0,1143,51,1145,1481337197,1,3928),(210,14,80,0,13954,'description',0,3929,52,3928,1481337197,1,1143),(210,14,80,0,13955,'description',0,3930,53,1143,1481337197,1,3929),(210,14,80,0,13956,'description',0,3931,54,3929,1481337197,1,3930),(210,14,80,0,13957,'description',0,1125,55,3930,1481337197,1,3931),(210,14,80,0,13958,'description',0,1215,56,3931,1481337197,1,1125),(210,14,80,0,13959,'description',0,2992,57,1125,1481337197,1,1215),(210,14,80,0,13960,'description',0,3932,58,1215,1481337197,1,2992),(210,14,80,0,13961,'description',0,3933,59,2992,1481337197,1,3932),(210,14,80,0,13962,'description',0,1145,60,3932,1481337197,1,3933),(210,14,80,0,13963,'description',0,3273,61,3933,1481337197,1,1145),(210,14,80,0,13964,'description',0,1121,62,1145,1481337197,1,3273),(210,14,80,0,13965,'description',0,1799,63,3273,1481337197,1,1121),(210,14,80,0,13966,'description',0,1126,64,1121,1481337197,1,1799),(210,14,80,0,13967,'description',0,3927,65,1799,1481337197,1,1126),(210,14,80,0,13968,'description',0,1805,66,1126,1481337197,1,3927),(210,14,80,0,13969,'description',0,1167,67,3927,1481337197,1,1805),(210,14,80,0,13970,'description',0,2608,68,1805,1481337197,1,1167),(210,14,80,0,13971,'description',0,2609,69,1167,1481337197,1,2608),(210,14,80,0,13972,'description',0,1126,70,2608,1481337197,1,2609),(210,14,80,0,13973,'description',0,3934,71,2609,1481337197,1,1126),(210,14,80,0,13974,'description',0,3935,72,1126,1481337197,1,3934),(210,14,80,0,13975,'description',0,3936,73,3934,1481337197,1,3935),(210,14,80,0,13976,'description',0,3937,74,3935,1481337197,1,3936),(210,14,80,0,13977,'description',0,1121,75,3936,1481337197,1,3937),(210,14,80,0,13978,'description',0,3938,76,3937,1481337197,1,1121),(210,14,80,0,13979,'description',0,3226,77,1121,1481337197,1,3938),(210,14,80,0,13980,'description',0,3939,78,3938,1481337197,1,3226),(210,14,80,0,13981,'description',0,3940,79,3226,1481337197,1,3939),(210,14,80,0,13982,'description',0,3273,80,3939,1481337197,1,3940),(210,14,80,0,13983,'description',0,1125,81,3940,1481337197,1,3273),(210,14,80,0,13984,'description',0,3941,82,3273,1481337197,1,1125),(210,14,80,0,13985,'description',0,3942,83,1125,1481337197,1,3941),(210,14,80,0,13986,'description',0,1155,84,3941,1481337197,1,3942),(210,14,80,0,13987,'description',0,1827,85,3942,1481337197,1,1155),(210,14,80,0,13988,'description',0,2109,86,1155,1481337197,1,1827),(210,14,80,0,13989,'description',0,1200,87,1827,1481337197,1,2109),(210,14,80,0,13990,'description',0,2968,88,2109,1481337197,1,1200),(210,14,80,0,13991,'description',0,1166,89,1200,1481337197,1,2968),(210,14,80,0,13992,'description',0,1858,90,2968,1481337197,1,1166),(210,14,80,0,13993,'description',0,3730,91,1166,1481337197,1,1858),(210,14,80,0,13994,'description',0,2589,92,1858,1481337197,1,3730),(210,14,80,0,13995,'description',0,1772,93,3730,1481337197,1,2589),(210,14,80,0,13996,'description',0,3943,94,2589,1481337197,1,1772),(210,14,80,0,13997,'description',0,2591,95,1772,1481337197,1,3943),(210,14,80,0,13998,'description',0,1191,96,3943,1481337197,1,2591),(210,14,80,0,13999,'description',0,3944,97,2591,1481337197,1,1191),(210,14,80,0,14000,'description',0,1215,98,1191,1481337197,1,3944),(210,14,80,0,14001,'description',0,3945,99,3944,1481337197,1,1215),(210,14,80,0,14002,'description',0,1155,100,1215,1481337197,1,3945),(210,14,80,0,14003,'description',0,1116,101,3945,1481337197,1,1155),(210,14,80,0,14004,'description',0,3946,102,1155,1481337197,1,1116),(210,14,80,0,14005,'description',0,2851,103,1116,1481337197,1,3946),(210,14,80,0,14006,'description',0,3947,104,3946,1481337197,1,2851),(210,14,80,0,14007,'description',0,1828,105,2851,1481337197,1,3947),(210,14,80,0,14008,'description',0,3948,106,3947,1481337197,1,1828),(210,14,80,0,14009,'description',0,992,107,1828,1481337197,1,3948),(210,14,80,0,14010,'description',0,994,108,3948,1481337197,1,992),(210,14,80,0,14011,'description',0,2980,109,992,1481337197,1,994),(210,14,80,0,14012,'description',0,1207,110,994,1481337197,1,2980),(210,14,80,0,14013,'description',0,2899,111,2980,1481337197,1,1207),(210,14,80,0,14014,'description',0,2900,112,1207,1481337197,1,2899),(210,14,80,0,14015,'description',0,1200,113,2899,1481337197,1,2900),(210,14,80,0,14016,'description',0,2898,114,2900,1481337197,1,1200),(210,14,80,0,14017,'description',0,3949,115,1200,1481337197,1,2898),(210,14,80,0,14018,'description',0,1121,116,2898,1481337197,1,3949),(210,14,80,0,14019,'description',0,3950,117,3949,1481337197,1,1121),(210,14,80,0,14020,'description',0,1126,118,1121,1481337197,1,3950),(210,14,80,0,14021,'description',0,3910,119,3950,1481337197,1,1126),(210,14,80,0,14022,'description',0,3951,120,1126,1481337197,1,3910),(210,14,80,0,14023,'description',0,1850,121,3910,1481337197,1,3951),(210,14,80,0,14024,'description',0,1865,122,3951,1481337197,1,1850),(210,14,80,0,14025,'description',0,3952,123,1850,1481337197,1,1865),(210,14,80,0,14026,'description',0,1828,124,1865,1481337197,1,3952),(210,14,80,0,14027,'description',0,1042,125,3952,1481337197,1,1828),(210,14,80,0,14028,'description',0,1043,126,1828,1481337197,1,1042),(210,14,80,0,14029,'description',0,2043,127,1042,1481337197,1,1043),(210,14,80,0,14030,'description',0,3953,128,1043,1481337197,1,2043),(210,14,80,0,14031,'description',0,1120,129,2043,1481337197,1,3953),(210,14,80,0,14032,'description',0,3227,130,3953,1481337197,1,1120),(210,14,80,0,14033,'description',0,3954,131,1120,1481337197,1,3227),(210,14,80,0,14034,'description',0,1121,132,3227,1481337197,1,3954),(210,14,80,0,14035,'description',0,3955,133,3954,1481337197,1,1121),(210,14,80,0,14036,'description',0,1123,134,1121,1481337197,1,3955),(210,14,80,0,14037,'description',0,3956,135,3955,1481337197,1,1123),(210,14,80,0,14038,'description',0,1121,136,1123,1481337197,1,3956),(210,14,80,0,14039,'description',0,3957,137,3956,1481337197,1,1121),(210,14,80,0,14040,'description',0,1120,138,1121,1481337197,1,3957),(210,14,80,0,14041,'description',0,1215,139,3957,1481337197,1,1120),(210,14,80,0,14042,'description',0,2619,140,1120,1481337197,1,1215),(210,14,80,0,14043,'description',0,1123,141,1215,1481337197,1,2619),(210,14,80,0,14044,'description',0,3958,142,2619,1481337197,1,1123),(210,14,80,0,14045,'description',0,1998,143,1123,1481337197,1,3958),(210,14,80,0,14046,'description',0,1121,144,3958,1481337197,1,1998),(210,14,80,0,14047,'description',0,3959,145,1998,1481337197,1,1121),(210,14,80,0,14048,'description',0,1218,146,1121,1481337197,1,3959),(210,14,80,0,14049,'description',0,2042,147,3959,1481337197,1,1218),(210,14,80,0,14050,'description',0,3226,148,1218,1481337197,1,2042),(210,14,80,0,14051,'description',0,1169,149,2042,1481337197,1,3226),(210,14,80,0,14052,'description',0,1167,150,3226,1481337197,1,1169),(210,14,80,0,14053,'description',0,3960,151,1169,1481337197,1,1167),(210,14,80,0,14054,'description',0,3961,152,1167,1481337197,1,3960),(210,14,80,0,14055,'description',0,1145,153,3960,1481337197,1,3961),(210,14,80,0,14056,'description',0,3962,154,3961,1481337197,1,1145),(210,14,80,0,14057,'description',0,1121,155,1145,1481337197,1,3962),(210,14,80,0,14058,'description',0,3963,156,3962,1481337197,1,1121),(210,14,80,0,14059,'description',0,1115,157,1121,1481337197,1,3963),(210,14,80,0,14060,'description',0,1827,158,3963,1481337197,1,1115),(210,14,80,0,14061,'description',0,3964,159,1115,1481337197,1,1827),(210,14,80,0,14062,'description',0,3965,160,1827,1481337197,1,3964),(210,14,80,0,14063,'description',0,3966,161,3964,1481337197,1,3965),(210,14,80,0,14064,'description',0,1218,162,3965,1481337197,1,3966),(210,14,80,0,14065,'description',0,3367,163,3966,1481337197,1,1218),(210,14,80,0,14066,'description',0,1230,164,1218,1481337197,1,3367),(210,14,80,0,14067,'description',0,3967,165,3367,1481337197,1,1230),(210,14,80,0,14068,'description',0,1191,166,1230,1481337197,1,3967),(210,14,80,0,14069,'description',0,1215,167,3967,1481337197,1,1191),(210,14,80,0,14070,'description',0,3968,168,1191,1481337197,1,1215),(210,14,80,0,14071,'description',0,3197,169,1215,1481337197,1,3968),(210,14,80,0,14072,'description',0,2859,170,3968,1481337197,1,3197),(210,14,80,0,14073,'description',0,2608,171,3197,1481337197,1,2859),(210,14,80,0,14074,'description',0,3969,172,2859,1481337197,1,2608),(210,14,80,0,14075,'description',0,3970,173,2608,1481337197,1,3969),(210,14,80,0,14076,'description',0,3971,174,3969,1481337197,1,3970),(210,14,80,0,14077,'description',0,3972,175,3970,1481337197,1,3971),(210,14,80,0,14078,'description',0,1120,176,3971,1481337197,1,3972),(210,14,80,0,14079,'description',0,1121,177,3972,1481337197,1,1120),(210,14,80,0,14080,'description',0,1789,178,1120,1481337197,1,1121),(210,14,80,0,14081,'description',0,1115,179,1121,1481337197,1,1789),(210,14,80,0,14082,'description',0,1126,180,1789,1481337197,1,1115),(210,14,80,0,14083,'description',0,1776,181,1115,1481337197,1,1126),(210,14,80,0,14084,'description',0,2602,182,1126,1481337197,1,1776),(210,14,80,0,14085,'description',0,3973,183,1776,1481337197,1,2602),(210,14,80,0,14086,'description',0,1169,184,2602,1481337197,1,3973),(210,14,80,0,14087,'description',0,1858,185,3973,1481337197,1,1169),(210,14,80,0,14088,'description',0,1125,186,1169,1481337197,1,1858),(210,14,80,0,14089,'description',0,3974,187,1858,1481337197,1,1125),(210,14,80,0,14090,'description',0,3975,188,1125,1481337197,1,3974),(210,14,80,0,14091,'description',0,2926,189,3974,1481337197,1,3975),(210,14,80,0,14092,'description',0,1123,190,3975,1481337197,1,2926),(210,14,80,0,14093,'description',0,1200,191,2926,1481337197,1,1123),(210,14,80,0,14094,'description',0,1121,192,1123,1481337197,1,1200),(210,14,80,0,14095,'description',0,3976,193,1200,1481337197,1,1121),(210,14,80,0,14096,'description',0,1801,194,1121,1481337197,1,3976),(210,14,80,0,14097,'description',0,1858,195,3976,1481337197,1,1801),(210,14,80,0,14098,'description',0,2032,196,1801,1481337197,1,1858),(210,14,80,0,14099,'description',0,1166,197,1858,1481337197,1,2032),(210,14,80,0,14100,'description',0,3912,198,2032,1481337197,1,1166),(210,14,80,0,14101,'description',0,1125,199,1166,1481337197,1,3912),(210,14,80,0,14102,'description',0,3974,200,3912,1481337197,1,1125),(210,14,80,0,14103,'description',0,1577,201,1125,1481337197,1,3974),(210,14,80,0,14104,'description',0,0,202,3974,1481337197,1,1577),(187,17,101,0,14765,'title',0,1797,0,0,1482467232,1,3910),(187,17,101,0,14766,'title',0,3911,1,3910,1482467232,1,1797),(187,17,101,0,14767,'title',0,1828,2,1797,1482467232,1,3911),(188,17,101,0,14768,'description',0,1042,3,3911,1482467232,1,1828),(188,17,101,0,14769,'description',0,1043,4,1828,1482467232,1,1042),(188,17,101,0,14770,'description',0,2043,5,1042,1482467232,1,1043),(188,17,101,0,14771,'description',0,1166,6,1043,1482467232,1,2043),(188,17,101,0,14772,'description',0,3912,7,2043,1482467232,1,1166),(188,17,101,0,14773,'description',0,1125,8,1166,1482467232,1,3912),(188,17,101,0,14774,'description',0,2044,9,3912,1482467232,1,1125),(188,17,101,0,14775,'description',0,3913,10,1125,1482467232,1,2044),(188,17,101,0,14776,'description',0,1194,11,2044,1482467232,1,3913),(188,17,101,0,14777,'description',0,2912,12,3913,1482467232,1,1194),(188,17,101,0,14778,'description',0,3914,13,1194,1482467232,1,2912),(188,17,101,0,14779,'description',0,1145,14,2912,1482467232,1,3914),(188,17,101,0,14780,'description',0,3915,15,3914,1482467232,1,1145),(188,17,101,0,14781,'description',0,1187,16,1145,1482467232,1,3915),(188,17,101,0,14782,'description',0,1120,17,3915,1482467232,1,1187),(188,17,101,0,14783,'description',0,1797,18,1187,1482467232,1,1120),(188,17,101,0,14784,'description',0,3911,19,1120,1482467232,1,1797),(188,17,101,0,14785,'description',0,1116,20,1797,1482467232,1,3911),(188,17,101,0,14786,'description',0,3916,21,3911,1482467232,1,1116),(188,17,101,0,14787,'description',0,1125,22,1116,1482467232,1,3916),(188,17,101,0,14788,'description',0,2041,23,3916,1482467232,1,1125),(188,17,101,0,14789,'description',0,2042,24,1125,1482467232,1,2041),(188,17,101,0,14790,'description',0,2047,25,2041,1482467232,1,2042),(188,17,101,0,14791,'description',0,3917,26,2042,1482467232,1,2047),(188,17,101,0,14792,'description',0,3918,27,2047,1482467232,1,3917),(188,17,101,0,14793,'description',0,3919,28,3917,1482467232,1,3918),(188,17,101,0,14794,'description',0,1126,29,3918,1482467232,1,3919),(188,17,101,0,14795,'description',0,3920,30,3919,1482467232,1,1126),(188,17,101,0,14796,'description',0,1115,31,1126,1482467232,1,3920),(188,17,101,0,14797,'description',0,1147,32,3920,1482467232,1,1115),(188,17,101,0,14798,'description',0,3921,33,1115,1482467232,1,1147),(188,17,101,0,14799,'description',0,3922,34,1147,1482467232,1,3921),(188,17,101,0,14800,'description',0,1123,35,3921,1482467232,1,3922),(188,17,101,0,14801,'description',0,1200,36,3922,1482467232,1,1123),(188,17,101,0,14802,'description',0,3923,37,1123,1482467232,1,1200),(188,17,101,0,14803,'description',0,1121,38,1200,1482467232,1,3923),(188,17,101,0,14804,'description',0,3924,39,3923,1482467232,1,1121),(188,17,101,0,14805,'description',0,1145,40,1121,1482467232,1,3924),(188,17,101,0,14806,'description',0,3925,41,3924,1482467232,1,1145),(188,17,101,0,14807,'description',0,3926,42,1145,1482467232,1,3925),(188,17,101,0,14808,'description',0,3927,43,3925,1482467232,1,3926),(188,17,101,0,14809,'description',0,1218,44,3926,1482467232,1,3927),(188,17,101,0,14810,'description',0,2825,45,3927,1482467232,1,1218),(188,17,101,0,14811,'description',0,1126,46,1218,1482467232,1,2825),(188,17,101,0,14812,'description',0,1817,47,2825,1482467232,1,1126),(188,17,101,0,14813,'description',0,2572,48,1126,1482467232,1,1817),(188,17,101,0,14814,'description',0,1145,49,1817,1482467232,1,2572),(188,17,101,0,14815,'description',0,3928,50,2572,1482467232,1,1145),(188,17,101,0,14816,'description',0,1143,51,1145,1482467232,1,3928),(188,17,101,0,14817,'description',0,3929,52,3928,1482467232,1,1143),(188,17,101,0,14818,'description',0,3930,53,1143,1482467232,1,3929),(188,17,101,0,14819,'description',0,3931,54,3929,1482467232,1,3930),(188,17,101,0,14820,'description',0,1125,55,3930,1482467232,1,3931),(188,17,101,0,14821,'description',0,1215,56,3931,1482467232,1,1125),(188,17,101,0,14822,'description',0,2992,57,1125,1482467232,1,1215),(188,17,101,0,14823,'description',0,3932,58,1215,1482467232,1,2992),(188,17,101,0,14824,'description',0,3933,59,2992,1482467232,1,3932),(188,17,101,0,14825,'description',0,1145,60,3932,1482467232,1,3933),(188,17,101,0,14826,'description',0,3273,61,3933,1482467232,1,1145),(188,17,101,0,14827,'description',0,1121,62,1145,1482467232,1,3273),(188,17,101,0,14828,'description',0,1799,63,3273,1482467232,1,1121),(188,17,101,0,14829,'description',0,1126,64,1121,1482467232,1,1799),(188,17,101,0,14830,'description',0,3927,65,1799,1482467232,1,1126),(188,17,101,0,14831,'description',0,1805,66,1126,1482467232,1,3927),(188,17,101,0,14832,'description',0,1167,67,3927,1482467232,1,1805),(188,17,101,0,14833,'description',0,2608,68,1805,1482467232,1,1167),(188,17,101,0,14834,'description',0,2609,69,1167,1482467232,1,2608),(188,17,101,0,14835,'description',0,1126,70,2608,1482467232,1,2609),(188,17,101,0,14836,'description',0,3934,71,2609,1482467232,1,1126),(188,17,101,0,14837,'description',0,3935,72,1126,1482467232,1,3934),(188,17,101,0,14838,'description',0,3936,73,3934,1482467232,1,3935),(188,17,101,0,14839,'description',0,3937,74,3935,1482467232,1,3936),(188,17,101,0,14840,'description',0,1121,75,3936,1482467232,1,3937),(188,17,101,0,14841,'description',0,3938,76,3937,1482467232,1,1121),(188,17,101,0,14842,'description',0,3226,77,1121,1482467232,1,3938),(188,17,101,0,14843,'description',0,3939,78,3938,1482467232,1,3226),(188,17,101,0,14844,'description',0,3940,79,3226,1482467232,1,3939),(188,17,101,0,14845,'description',0,3273,80,3939,1482467232,1,3940),(188,17,101,0,14846,'description',0,1125,81,3940,1482467232,1,3273),(188,17,101,0,14847,'description',0,3941,82,3273,1482467232,1,1125),(188,17,101,0,14848,'description',0,3942,83,1125,1482467232,1,3941),(188,17,101,0,14849,'description',0,1155,84,3941,1482467232,1,3942),(188,17,101,0,14850,'description',0,1827,85,3942,1482467232,1,1155),(188,17,101,0,14851,'description',0,2109,86,1155,1482467232,1,1827),(188,17,101,0,14852,'description',0,1200,87,1827,1482467232,1,2109),(188,17,101,0,14853,'description',0,2968,88,2109,1482467232,1,1200),(188,17,101,0,14854,'description',0,1166,89,1200,1482467232,1,2968),(188,17,101,0,14855,'description',0,1858,90,2968,1482467232,1,1166),(188,17,101,0,14856,'description',0,3730,91,1166,1482467232,1,1858),(188,17,101,0,14857,'description',0,2589,92,1858,1482467232,1,3730),(188,17,101,0,14858,'description',0,1772,93,3730,1482467232,1,2589),(188,17,101,0,14859,'description',0,3943,94,2589,1482467232,1,1772),(188,17,101,0,14860,'description',0,2591,95,1772,1482467232,1,3943),(188,17,101,0,14861,'description',0,1191,96,3943,1482467232,1,2591),(188,17,101,0,14862,'description',0,3944,97,2591,1482467232,1,1191),(188,17,101,0,14863,'description',0,1215,98,1191,1482467232,1,3944),(188,17,101,0,14864,'description',0,3945,99,3944,1482467232,1,1215),(188,17,101,0,14865,'description',0,1155,100,1215,1482467232,1,3945),(188,17,101,0,14866,'description',0,1116,101,3945,1482467232,1,1155),(188,17,101,0,14867,'description',0,3946,102,1155,1482467232,1,1116),(188,17,101,0,14868,'description',0,2851,103,1116,1482467232,1,3946),(188,17,101,0,14869,'description',0,3947,104,3946,1482467232,1,2851),(188,17,101,0,14870,'description',0,1828,105,2851,1482467232,1,3947),(188,17,101,0,14871,'description',0,3948,106,3947,1482467232,1,1828),(188,17,101,0,14872,'description',0,992,107,1828,1482467232,1,3948),(188,17,101,0,14873,'description',0,994,108,3948,1482467232,1,992),(188,17,101,0,14874,'description',0,2980,109,992,1482467232,1,994),(188,17,101,0,14875,'description',0,1207,110,994,1482467232,1,2980),(188,17,101,0,14876,'description',0,2899,111,2980,1482467232,1,1207),(188,17,101,0,14877,'description',0,2900,112,1207,1482467232,1,2899),(188,17,101,0,14878,'description',0,1200,113,2899,1482467232,1,2900),(188,17,101,0,14879,'description',0,2898,114,2900,1482467232,1,1200),(188,17,101,0,14880,'description',0,3949,115,1200,1482467232,1,2898),(188,17,101,0,14881,'description',0,1121,116,2898,1482467232,1,3949),(188,17,101,0,14882,'description',0,3950,117,3949,1482467232,1,1121),(188,17,101,0,14883,'description',0,1126,118,1121,1482467232,1,3950),(188,17,101,0,14884,'description',0,3910,119,3950,1482467232,1,1126),(188,17,101,0,14885,'description',0,3951,120,1126,1482467232,1,3910),(188,17,101,0,14886,'description',0,1850,121,3910,1482467232,1,3951),(188,17,101,0,14887,'description',0,1865,122,3951,1482467232,1,1850),(188,17,101,0,14888,'description',0,3952,123,1850,1482467232,1,1865),(188,17,101,0,14889,'description',0,1828,124,1865,1482467232,1,3952),(188,17,101,0,14890,'description',0,1042,125,3952,1482467232,1,1828),(188,17,101,0,14891,'description',0,1043,126,1828,1482467232,1,1042),(188,17,101,0,14892,'description',0,2043,127,1042,1482467232,1,1043),(188,17,101,0,14893,'description',0,3953,128,1043,1482467232,1,2043),(188,17,101,0,14894,'description',0,1120,129,2043,1482467232,1,3953),(188,17,101,0,14895,'description',0,3227,130,3953,1482467232,1,1120),(188,17,101,0,14896,'description',0,3954,131,1120,1482467232,1,3227),(188,17,101,0,14897,'description',0,1121,132,3227,1482467232,1,3954),(188,17,101,0,14898,'description',0,3955,133,3954,1482467232,1,1121),(188,17,101,0,14899,'description',0,1123,134,1121,1482467232,1,3955),(188,17,101,0,14900,'description',0,3956,135,3955,1482467232,1,1123),(188,17,101,0,14901,'description',0,1121,136,1123,1482467232,1,3956),(188,17,101,0,14902,'description',0,3957,137,3956,1482467232,1,1121),(188,17,101,0,14903,'description',0,1120,138,1121,1482467232,1,3957),(188,17,101,0,14904,'description',0,1215,139,3957,1482467232,1,1120),(188,17,101,0,14905,'description',0,2619,140,1120,1482467232,1,1215),(188,17,101,0,14906,'description',0,1123,141,1215,1482467232,1,2619),(188,17,101,0,14907,'description',0,3958,142,2619,1482467232,1,1123),(188,17,101,0,14908,'description',0,1998,143,1123,1482467232,1,3958),(188,17,101,0,14909,'description',0,1121,144,3958,1482467232,1,1998),(188,17,101,0,14910,'description',0,3959,145,1998,1482467232,1,1121),(188,17,101,0,14911,'description',0,1218,146,1121,1482467232,1,3959),(188,17,101,0,14912,'description',0,2042,147,3959,1482467232,1,1218),(188,17,101,0,14913,'description',0,3226,148,1218,1482467232,1,2042),(188,17,101,0,14914,'description',0,1169,149,2042,1482467232,1,3226),(188,17,101,0,14915,'description',0,1167,150,3226,1482467232,1,1169),(188,17,101,0,14916,'description',0,3960,151,1169,1482467232,1,1167),(188,17,101,0,14917,'description',0,3961,152,1167,1482467232,1,3960),(188,17,101,0,14918,'description',0,1145,153,3960,1482467232,1,3961),(188,17,101,0,14919,'description',0,3962,154,3961,1482467232,1,1145),(188,17,101,0,14920,'description',0,1121,155,1145,1482467232,1,3962),(188,17,101,0,14921,'description',0,3963,156,3962,1482467232,1,1121),(188,17,101,0,14922,'description',0,1115,157,1121,1482467232,1,3963),(188,17,101,0,14923,'description',0,1827,158,3963,1482467232,1,1115),(188,17,101,0,14924,'description',0,3964,159,1115,1482467232,1,1827),(188,17,101,0,14925,'description',0,3965,160,1827,1482467232,1,3964),(188,17,101,0,14926,'description',0,3966,161,3964,1482467232,1,3965),(188,17,101,0,14927,'description',0,1218,162,3965,1482467232,1,3966),(188,17,101,0,14928,'description',0,3367,163,3966,1482467232,1,1218),(188,17,101,0,14929,'description',0,1230,164,1218,1482467232,1,3367),(188,17,101,0,14930,'description',0,3967,165,3367,1482467232,1,1230),(188,17,101,0,14931,'description',0,1191,166,1230,1482467232,1,3967),(188,17,101,0,14932,'description',0,1215,167,3967,1482467232,1,1191),(188,17,101,0,14933,'description',0,3968,168,1191,1482467232,1,1215),(188,17,101,0,14934,'description',0,3197,169,1215,1482467232,1,3968),(188,17,101,0,14935,'description',0,2859,170,3968,1482467232,1,3197),(188,17,101,0,14936,'description',0,2608,171,3197,1482467232,1,2859),(188,17,101,0,14937,'description',0,3969,172,2859,1482467232,1,2608),(188,17,101,0,14938,'description',0,3970,173,2608,1482467232,1,3969),(188,17,101,0,14939,'description',0,3971,174,3969,1482467232,1,3970),(188,17,101,0,14940,'description',0,3972,175,3970,1482467232,1,3971),(188,17,101,0,14941,'description',0,1120,176,3971,1482467232,1,3972),(188,17,101,0,14942,'description',0,1121,177,3972,1482467232,1,1120),(188,17,101,0,14943,'description',0,1789,178,1120,1482467232,1,1121),(188,17,101,0,14944,'description',0,1115,179,1121,1482467232,1,1789),(188,17,101,0,14945,'description',0,1126,180,1789,1482467232,1,1115),(188,17,101,0,14946,'description',0,1776,181,1115,1482467232,1,1126),(188,17,101,0,14947,'description',0,2602,182,1126,1482467232,1,1776),(188,17,101,0,14948,'description',0,3973,183,1776,1482467232,1,2602),(188,17,101,0,14949,'description',0,1169,184,2602,1482467232,1,3973),(188,17,101,0,14950,'description',0,1858,185,3973,1482467232,1,1169),(188,17,101,0,14951,'description',0,1125,186,1169,1482467232,1,1858),(188,17,101,0,14952,'description',0,3974,187,1858,1482467232,1,1125),(188,17,101,0,14953,'description',0,3975,188,1125,1482467232,1,3974),(188,17,101,0,14954,'description',0,2926,189,3974,1482467232,1,3975),(188,17,101,0,14955,'description',0,1123,190,3975,1482467232,1,2926),(188,17,101,0,14956,'description',0,1200,191,2926,1482467232,1,1123),(188,17,101,0,14957,'description',0,1121,192,1123,1482467232,1,1200),(188,17,101,0,14958,'description',0,3976,193,1200,1482467232,1,1121),(188,17,101,0,14959,'description',0,1801,194,1121,1482467232,1,3976),(188,17,101,0,14960,'description',0,1858,195,3976,1482467232,1,1801),(188,17,101,0,14961,'description',0,2032,196,1801,1482467232,1,1858),(188,17,101,0,14962,'description',0,1166,197,1858,1482467232,1,2032),(188,17,101,0,14963,'description',0,3912,198,2032,1482467232,1,1166),(188,17,101,0,14964,'description',0,1125,199,1166,1482467232,1,3912),(188,17,101,0,14965,'description',0,3974,200,3912,1482467232,1,1125),(188,17,101,0,14966,'description',0,1121,201,1125,1482467232,1,3974),(188,17,101,0,14967,'description',0,4000,202,3974,1482467232,1,1121),(188,17,101,0,14968,'description',0,4001,203,1121,1482467232,1,4000),(188,17,101,0,14969,'description',0,4002,204,4000,1482467232,1,4001),(188,17,101,0,14970,'description',0,3964,205,4001,1482467232,1,4002),(188,17,101,0,14971,'description',0,4003,206,4002,1482467232,1,3964),(188,17,101,0,14972,'description',0,1512,207,3964,1482467232,1,4003),(188,17,101,0,14973,'description',0,1787,208,4003,1482467232,1,1512),(188,17,101,0,14974,'description',0,3334,209,1512,1482467232,1,1787),(188,17,101,0,14975,'description',0,2007,210,1787,1482467232,1,3334),(188,17,101,0,14976,'description',0,2090,211,3334,1482467232,1,2007),(188,17,101,0,14977,'description',0,4004,212,2007,1482467232,1,2090),(188,17,101,0,14978,'description',0,1788,213,2090,1482467232,1,4004),(188,17,101,0,14979,'description',0,4005,214,4004,1482467232,1,1788),(188,17,101,0,14980,'description',0,1801,215,1788,1482467232,1,4005),(188,17,101,0,14981,'description',0,2849,216,4005,1482467232,1,1801),(188,17,101,0,14982,'description',0,2132,217,1801,1482467232,1,2849),(188,17,101,0,14983,'description',0,2133,218,2849,1482467232,1,2132),(188,17,101,0,14984,'description',0,3396,219,2132,1482467232,1,2133),(188,17,101,0,14985,'description',0,1145,220,2133,1482467232,1,3396),(188,17,101,0,14986,'description',0,4006,221,3396,1482467232,1,1145),(188,17,101,0,14987,'description',0,3209,222,1145,1482467232,1,4006),(188,17,101,0,14988,'description',0,3210,223,4006,1482467232,1,3209),(188,17,101,0,14989,'description',0,2138,224,3209,1482467232,1,3210),(188,17,101,0,14990,'description',0,2849,225,3210,1482467232,1,2138),(188,17,101,0,14991,'description',0,4007,226,2138,1482467232,1,2849),(188,17,101,0,14992,'description',0,3226,227,2849,1482467232,1,4007),(188,17,101,0,14993,'description',0,1126,228,4007,1482467232,1,3226),(188,17,101,0,14994,'description',0,1789,229,3226,1482467232,1,1126),(188,17,101,0,14995,'description',0,4008,230,1126,1482467232,1,1789),(188,17,101,0,14996,'description',0,4009,231,1789,1482467232,1,4008),(188,17,101,0,14997,'description',0,4010,232,4008,1482467232,1,4009),(188,17,101,0,14998,'description',0,1781,233,4009,1482467232,1,4010),(188,17,101,0,14999,'description',0,4011,234,4010,1482467232,1,1781),(188,17,101,0,15000,'description',0,1854,235,1781,1482467232,1,4011),(188,17,101,0,15001,'description',0,4012,236,4011,1482467232,1,1854),(188,17,101,0,15002,'description',0,1207,237,1854,1482467232,1,4012),(188,17,101,0,15003,'description',0,4013,238,4012,1482467232,1,1207),(188,17,101,0,15004,'description',0,4014,239,1207,1482467232,1,4013),(188,17,101,0,15005,'description',0,4015,240,4013,1482467232,1,4014),(188,17,101,0,15006,'description',0,4016,241,4014,1482467232,1,4015),(188,17,101,0,15007,'description',0,4017,242,4015,1482467232,1,4016),(188,17,101,0,15008,'description',0,4018,243,4016,1482467232,1,4017),(188,17,101,0,15009,'description',0,1189,244,4017,1482467232,1,4018),(188,17,101,0,15010,'description',0,4019,245,4018,1482467232,1,1189),(188,17,101,0,15011,'description',0,1200,246,1189,1482467232,1,4019),(188,17,101,0,15012,'description',0,4020,247,4019,1482467232,1,1200),(188,17,101,0,15013,'description',0,4021,248,1200,1482467232,1,4020),(188,17,101,0,15014,'description',0,0,249,4020,1482467232,1,4021),(1,2,111,0,15142,'title',0,2602,0,0,1482638615,1,4053),(121,2,111,0,15143,'body',0,1126,1,4053,1482638615,1,2602),(121,2,111,0,15144,'body',0,4054,2,2602,1482638615,1,1126),(121,2,111,0,15145,'body',0,1230,3,1126,1482638615,1,4054),(121,2,111,0,15146,'body',0,1042,4,4054,1482638615,1,1230),(121,2,111,0,15147,'body',0,1043,5,1230,1482638615,1,1042),(121,2,111,0,15148,'body',0,2570,6,1042,1482638615,1,1043),(121,2,111,0,15149,'body',0,1120,7,1043,1482638615,1,2570),(121,2,111,0,15150,'body',0,1816,8,2570,1482638615,1,1120),(121,2,111,0,15151,'body',0,2571,9,1120,1482638615,1,1816),(121,2,111,0,15152,'body',0,1123,10,1816,1482638615,1,2571),(121,2,111,0,15153,'body',0,1747,11,2571,1482638615,1,1123),(121,2,111,0,15154,'body',0,2572,12,1123,1482638615,1,1747),(121,2,111,0,15155,'body',0,2573,13,1747,1482638615,1,2572),(121,2,111,0,15156,'body',0,2574,14,2572,1482638615,1,2573),(121,2,111,0,15157,'body',0,1115,15,2573,1482638615,1,2574),(121,2,111,0,15158,'body',0,1121,16,2574,1482638615,1,1115),(121,2,111,0,15159,'body',0,2575,17,1115,1482638615,1,1121),(121,2,111,0,15160,'body',0,1169,18,1121,1482638615,1,2575),(121,2,111,0,15161,'body',0,4053,19,2575,1482638615,1,1169),(121,2,111,0,15162,'body',0,4055,20,1169,1482638615,1,4053),(121,2,111,0,15163,'body',0,2478,21,4053,1482638615,1,4055),(121,2,111,0,15164,'body',0,2598,22,4055,1482638615,1,2478),(121,2,111,0,15165,'body',0,1143,23,2478,1482638615,1,2598),(121,2,111,0,15166,'body',0,1828,24,2598,1482638615,1,1143),(121,2,111,0,15167,'body',0,2599,25,1143,1482638615,1,1828),(121,2,111,0,15168,'body',0,1747,26,1828,1482638615,1,2599),(121,2,111,0,15169,'body',0,2572,27,2599,1482638615,1,1747),(121,2,111,0,15170,'body',0,1125,28,1747,1482638615,1,2572),(121,2,111,0,15171,'body',0,2579,29,2572,1482638615,1,1125),(121,2,111,0,15172,'body',0,4056,30,1125,1482638615,1,2579),(121,2,111,0,15173,'body',0,1950,31,2579,1482638615,1,4056),(121,2,111,0,15174,'body',0,1828,32,4056,1482638615,1,1950),(121,2,111,0,15175,'body',0,1042,33,1950,1482638615,1,1828),(121,2,111,0,15176,'body',0,1043,34,1828,1482638615,1,1042),(121,2,111,0,15177,'body',0,2043,35,1042,1482638615,1,1043),(121,2,111,0,15178,'body',0,1125,36,1043,1482638615,1,2043),(121,2,111,0,15179,'body',0,2030,37,2043,1482638615,1,1125),(121,2,111,0,15180,'body',0,1166,38,1125,1482638615,1,2030),(121,2,111,0,15181,'body',0,1858,39,2030,1482638615,1,1166),(121,2,111,0,15182,'body',0,4057,40,1166,1482638615,1,1858),(121,2,111,0,15183,'body',0,1169,41,1858,1482638615,1,4057),(121,2,111,0,15184,'body',0,2581,42,4057,1482638615,1,1169),(121,2,111,0,15185,'body',0,1218,43,1169,1482638615,1,2581),(121,2,111,0,15186,'body',0,1125,44,2581,1482638615,1,1218),(121,2,111,0,15187,'body',0,1123,45,1218,1482638615,1,1125),(121,2,111,0,15188,'body',0,4058,46,1125,1482638615,1,1123),(121,2,111,0,15189,'body',0,1143,47,1123,1482638615,1,4058),(121,2,111,0,15190,'body',0,2919,48,4058,1482638615,1,1143),(121,2,111,0,15191,'body',0,4059,49,1143,1482638615,1,2919),(121,2,111,0,15192,'body',0,2607,50,2919,1482638615,1,4059),(121,2,111,0,15193,'body',0,1169,51,4059,1482638615,1,2607),(121,2,111,0,15194,'body',0,4060,52,2607,1482638615,1,1169),(121,2,111,0,15195,'body',0,1145,53,1169,1482638615,1,4060),(121,2,111,0,15196,'body',0,4061,54,4060,1482638615,1,1145),(121,2,111,0,15197,'body',0,0,55,1145,1482638615,1,4061),(1,2,105,0,16245,'title',0,1748,0,0,1482635909,1,1747),(1,2,105,0,16246,'title',0,1749,1,1747,1482635909,1,1748),(1,2,105,0,16247,'title',0,1515,2,1748,1482635909,1,1749),(1,2,105,0,16248,'title',0,1120,3,1749,1482635909,1,1515),(121,2,105,0,16249,'body',0,1121,4,1515,1482635909,1,1120),(121,2,105,0,16250,'body',0,4497,5,1120,1482635909,1,1121),(121,2,105,0,16251,'body',0,1752,6,1121,1482635909,1,4497),(121,2,105,0,16252,'body',0,4498,7,4497,1482635909,1,1752),(121,2,105,0,16253,'body',0,1747,8,1752,1482635909,1,4498),(121,2,105,0,16254,'body',0,1748,9,4498,1482635909,1,1747),(121,2,105,0,16255,'body',0,4499,10,1747,1482635909,1,1748),(121,2,105,0,16256,'body',0,4500,11,1748,1482635909,1,4499),(121,2,105,0,16257,'body',0,4501,12,4499,1482635909,1,4500),(121,2,105,0,16258,'body',0,1121,13,4500,1482635909,1,4501),(121,2,105,0,16259,'body',0,1757,14,4501,1482635909,1,1121),(121,2,105,0,16260,'body',0,4502,15,1121,1482635909,1,1757),(121,2,105,0,16261,'body',0,4503,16,1757,1482635909,1,4502),(121,2,105,0,16262,'body',0,4504,17,4502,1482635909,1,4503),(121,2,105,0,16263,'body',0,1200,18,4503,1482635909,1,4504),(121,2,105,0,16264,'body',0,4505,19,4504,1482635909,1,1200),(121,2,105,0,16265,'body',0,4506,20,1200,1482635909,1,4505),(121,2,105,0,16266,'body',0,4507,21,4505,1482635909,1,4506),(121,2,105,0,16267,'body',0,1200,22,4506,1482635909,1,4507),(121,2,105,0,16268,'body',0,1135,23,4507,1482635909,1,1200),(121,2,105,0,16269,'body',0,4508,24,1200,1482635909,1,1135),(121,2,105,0,16270,'body',0,4509,25,1135,1482635909,1,4508),(121,2,105,0,16271,'body',0,4510,26,4508,1482635909,1,4509),(121,2,105,0,16272,'body',0,1767,27,4509,1482635909,1,4510),(121,2,105,0,16273,'body',0,1749,28,4510,1482635909,1,1767),(121,2,105,0,16274,'body',0,4511,29,1767,1482635909,1,1749),(121,2,105,0,16275,'body',0,4512,30,1749,1482635909,1,4511),(121,2,105,0,16276,'body',0,4513,31,4511,1482635909,1,4512),(121,2,105,0,16277,'body',0,1771,32,4512,1482635909,1,4513),(121,2,105,0,16278,'body',0,1149,33,4513,1482635909,1,1771),(121,2,105,0,16279,'body',0,1121,34,1771,1482635909,1,1149),(121,2,105,0,16280,'body',0,1772,35,1149,1482635909,1,1121),(121,2,105,0,16281,'body',0,4514,36,1121,1482635909,1,1772),(121,2,105,0,16282,'body',0,1200,37,1772,1482635909,1,4514),(121,2,105,0,16283,'body',0,1135,38,4514,1482635909,1,1200),(121,2,105,0,16284,'body',0,1772,39,1200,1482635909,1,1135),(121,2,105,0,16285,'body',0,4515,40,1135,1482635909,1,1772),(121,2,105,0,16286,'body',0,1775,41,1772,1482635909,1,4515),(121,2,105,0,16287,'body',0,1115,42,4515,1482635909,1,1775),(121,2,105,0,16288,'body',0,1126,43,1775,1482635909,1,1115),(121,2,105,0,16289,'body',0,1776,44,1115,1482635909,1,1126),(121,2,105,0,16290,'body',0,1169,45,1126,1482635909,1,1776),(121,2,105,0,16291,'body',0,4516,46,1776,1482635909,1,1169),(121,2,105,0,16292,'body',0,4517,47,1169,1482635909,1,4516),(121,2,105,0,16293,'body',0,1779,48,4516,1482635909,1,4517),(121,2,105,0,16294,'body',0,1776,49,4517,1482635909,1,1779),(121,2,105,0,16295,'body',0,4518,50,1779,1482635909,1,1776),(121,2,105,0,16296,'body',0,1781,51,1776,1482635909,1,4518),(121,2,105,0,16297,'body',0,1752,52,4518,1482635909,1,1781),(121,2,105,0,16298,'body',0,4519,53,1781,1482635909,1,1752),(121,2,105,0,16299,'body',0,1126,54,1752,1482635909,1,4519),(121,2,105,0,16300,'body',0,4520,55,4519,1482635909,1,1126),(121,2,105,0,16301,'body',0,4521,56,1126,1482635909,1,4520),(121,2,105,0,16302,'body',0,4522,57,4520,1482635909,1,4521),(121,2,105,0,16303,'body',0,1752,58,4521,1482635909,1,4522),(121,2,105,0,16304,'body',0,4523,59,4522,1482635909,1,1752),(121,2,105,0,16305,'body',0,1795,60,1752,1482635909,1,4523),(121,2,105,0,16306,'body',0,4524,61,4523,1482635909,1,1795),(121,2,105,0,16307,'body',0,1795,62,1795,1482635909,1,4524),(121,2,105,0,16308,'body',0,1797,63,4524,1482635909,1,1795),(121,2,105,0,16309,'body',0,1135,64,1795,1482635909,1,1797),(121,2,105,0,16310,'body',0,4525,65,1797,1482635909,1,1135),(121,2,105,0,16311,'body',0,1801,66,1135,1482635909,1,4525),(121,2,105,0,16312,'body',0,4526,67,4525,1482635909,1,1801),(121,2,105,0,16313,'body',0,1121,68,1801,1482635909,1,4526),(121,2,105,0,16314,'body',0,1125,69,4526,1482635909,1,1121),(121,2,105,0,16315,'body',0,1167,70,1121,1482635909,1,1125),(121,2,105,0,16316,'body',0,4498,71,1125,1482635909,1,1167),(121,2,105,0,16317,'body',0,1747,72,1167,1482635909,1,4498),(121,2,105,0,16318,'body',0,4527,73,4498,1482635909,1,1747),(121,2,105,0,16319,'body',0,1804,74,1747,1482635909,1,4527),(121,2,105,0,16320,'body',0,1805,75,4527,1482635909,1,1804),(121,2,105,0,16321,'body',0,1806,76,1804,1482635909,1,1805),(121,2,105,0,16322,'body',0,1209,77,1805,1482635909,1,1806),(121,2,105,0,16323,'body',0,4528,78,1806,1482635909,1,1209),(121,2,105,0,16324,'body',0,4529,79,1209,1482635909,1,4528),(121,2,105,0,16325,'body',0,4530,80,4528,1482635909,1,4529),(121,2,105,0,16326,'body',0,1747,81,4529,1482635909,1,4530),(121,2,105,0,16327,'body',0,1810,82,4530,1482635909,1,1747),(121,2,105,0,16328,'body',0,1747,83,1747,1482635909,1,1810),(121,2,105,0,16329,'body',0,1748,84,1810,1482635909,1,1747),(121,2,105,0,16330,'body',0,1811,85,1747,1482635909,1,1748),(121,2,105,0,16331,'body',0,1123,86,1748,1482635909,1,1811),(121,2,105,0,16332,'body',0,4531,87,1811,1482635909,1,1123),(121,2,105,0,16333,'body',0,1747,88,1123,1482635909,1,4531),(121,2,105,0,16334,'body',0,1813,89,4531,1482635909,1,1747),(121,2,105,0,16335,'body',0,1747,90,1747,1482635909,1,1813),(121,2,105,0,16336,'body',0,1814,91,1813,1482635909,1,1747),(121,2,105,0,16337,'body',0,1747,92,1747,1482635909,1,1814),(121,2,105,0,16338,'body',0,4532,93,1814,1482635909,1,1747),(121,2,105,0,16339,'body',0,1810,94,1747,1482635909,1,4532),(121,2,105,0,16340,'body',0,1123,95,4532,1482635909,1,1810),(121,2,105,0,16341,'body',0,1816,96,1810,1482635909,1,1123),(121,2,105,0,16342,'body',0,1126,97,1123,1482635909,1,1816),(121,2,105,0,16343,'body',0,1817,98,1816,1482635909,1,1126),(121,2,105,0,16344,'body',0,1818,99,1126,1482635909,1,1817),(121,2,105,0,16345,'body',0,4533,100,1817,1482635909,1,1818),(121,2,105,0,16346,'body',0,4534,101,1818,1482635909,1,4533),(121,2,105,0,16347,'body',0,4535,102,4533,1482635909,1,4534),(121,2,105,0,16348,'body',0,4536,103,4534,1482635909,1,4535),(121,2,105,0,16349,'body',0,4537,104,4535,1482635909,1,4536),(121,2,105,0,16350,'body',0,1120,105,4536,1482635909,1,4537),(121,2,105,0,16351,'body',0,4538,106,4537,1482635909,1,1120),(121,2,105,0,16352,'body',0,1825,107,1120,1482635909,1,4538),(121,2,105,0,16353,'body',0,4539,108,4538,1482635909,1,1825),(121,2,105,0,16354,'body',0,1771,109,1825,1482635909,1,4539),(121,2,105,0,16355,'body',0,1827,110,4539,1482635909,1,1771),(121,2,105,0,16356,'body',0,1828,111,1771,1482635909,1,1827),(121,2,105,0,16357,'body',0,4540,112,1827,1482635909,1,1828),(121,2,105,0,16358,'body',0,1126,113,1828,1482635909,1,4540),(121,2,105,0,16359,'body',0,4541,114,4540,1482635909,1,1126),(121,2,105,0,16360,'body',0,985,115,1126,1482635909,1,4541),(121,2,105,0,16361,'body',0,1121,116,4541,1482635909,1,985),(121,2,105,0,16362,'body',0,4542,117,985,1482635909,1,1121),(121,2,105,0,16363,'body',0,4543,118,1121,1482635909,1,4542),(121,2,105,0,16364,'body',0,1828,119,4542,1482635909,1,4543),(121,2,105,0,16365,'body',0,4544,120,4543,1482635909,1,1828),(121,2,105,0,16366,'body',0,1850,121,1828,1482635909,1,4544),(121,2,105,0,16367,'body',0,4545,122,4544,1482635909,1,1850),(121,2,105,0,16368,'body',0,4546,123,1850,1482635909,1,4545),(121,2,105,0,16369,'body',0,4547,124,4545,1482635909,1,4546),(121,2,105,0,16370,'body',0,1854,125,4546,1482635909,1,4547),(121,2,105,0,16371,'body',0,4548,126,4547,1482635909,1,1854),(121,2,105,0,16372,'body',0,1123,127,1854,1482635909,1,4548),(121,2,105,0,16373,'body',0,1856,128,4548,1482635909,1,1123),(121,2,105,0,16374,'body',0,4549,129,1123,1482635909,1,1856),(121,2,105,0,16375,'body',0,1123,130,1856,1482635909,1,4549),(121,2,105,0,16376,'body',0,1191,131,4549,1482635909,1,1123),(121,2,105,0,16377,'body',0,1166,132,1123,1482635909,1,1191),(121,2,105,0,16378,'body',0,1858,133,1191,1482635909,1,1166),(121,2,105,0,16379,'body',0,4550,134,1166,1482635909,1,1858),(121,2,105,0,16380,'body',0,4551,135,1858,1482635909,1,4550),(121,2,105,0,16381,'body',0,1207,136,4550,1482635909,1,4551),(121,2,105,0,16382,'body',0,1167,137,4551,1482635909,1,1207),(121,2,105,0,16383,'body',0,4552,138,1207,1482635909,1,1167),(121,2,105,0,16384,'body',0,4553,139,1167,1482635909,1,4552),(121,2,105,0,16385,'body',0,4554,140,4552,1482635909,1,4553),(121,2,105,0,16386,'body',0,1121,141,4553,1482635909,1,4554),(121,2,105,0,16387,'body',0,4555,142,4554,1482635909,1,1121),(121,2,105,0,16388,'body',0,1865,143,1121,1482635909,1,4555),(121,2,105,0,16389,'body',0,4556,144,4555,1482635909,1,1865),(121,2,105,0,16390,'body',0,4557,145,1865,1482635909,1,4556),(121,2,105,0,16391,'body',0,1123,146,4556,1482635909,1,4557),(121,2,105,0,16392,'body',0,1868,147,4557,1482635909,1,1123),(121,2,105,0,16393,'body',0,1135,148,1123,1482635909,1,1868),(121,2,105,0,16394,'body',0,1869,149,1868,1482635909,1,1135),(121,2,105,0,16395,'body',0,4558,150,1135,1482635909,1,1869),(121,2,105,0,16396,'body',0,4559,151,1869,1482635909,1,4558),(121,2,105,0,16397,'body',0,1200,152,4558,1482635909,1,4559),(121,2,105,0,16398,'body',0,1135,153,4559,1482635909,1,1200),(121,2,105,0,16399,'body',0,4560,154,1200,1482635909,1,1135),(121,2,105,0,16400,'body',0,4561,155,1135,1482635909,1,4560),(121,2,105,0,16401,'body',0,1145,156,4560,1482635909,1,4561),(121,2,105,0,16402,'body',0,1874,157,4561,1482635909,1,1145),(121,2,105,0,16403,'body',0,4562,158,1145,1482635909,1,1874),(121,2,105,0,16404,'body',0,1125,159,1874,1482635909,1,4562),(121,2,105,0,16405,'body',0,1126,160,4562,1482635909,1,1125),(121,2,105,0,16406,'body',0,1876,161,1125,1482635909,1,1126),(121,2,105,0,16407,'body',0,1123,162,1126,1482635909,1,1876),(121,2,105,0,16408,'body',0,4563,163,1876,1482635909,1,1123),(121,2,105,0,16409,'body',0,1125,164,1123,1482635909,1,4563),(121,2,105,0,16410,'body',0,4564,165,4563,1482635909,1,1125),(121,2,105,0,16411,'body',0,1125,166,1125,1482635909,1,4564),(121,2,105,0,16412,'body',0,1126,167,4564,1482635909,1,1125),(121,2,105,0,16413,'body',0,1817,168,1125,1482635909,1,1126),(121,2,105,0,16414,'body',0,4565,169,1126,1482635909,1,1817),(121,2,105,0,16415,'body',0,1125,170,1817,1482635909,1,4565),(121,2,105,0,16416,'body',0,4566,171,4565,1482635909,1,1125),(121,2,105,0,16417,'body',0,1125,172,1125,1482635909,1,4566),(121,2,105,0,16418,'body',0,1126,173,4566,1482635909,1,1125),(121,2,105,0,16419,'body',0,4567,174,1125,1482635909,1,1126),(121,2,105,0,16420,'body',0,1123,175,1126,1482635909,1,4567),(121,2,105,0,16421,'body',0,4568,176,4567,1482635909,1,1123),(121,2,105,0,16422,'body',0,1218,177,1123,1482635909,1,4568),(121,2,105,0,16423,'body',0,4569,178,4568,1482635909,1,1218),(121,2,105,0,16424,'body',0,1125,179,1218,1482635909,1,4569),(121,2,105,0,16425,'body',0,4570,180,4569,1482635909,1,1125),(121,2,105,0,16426,'body',0,0,181,1125,1482635909,1,4570),(1,2,106,0,16427,'title',0,1828,0,0,1482636598,1,4571),(121,2,106,0,16428,'body',0,4571,1,4571,1482636598,1,1828),(121,2,106,0,16429,'body',0,2102,2,1828,1482636598,1,4571),(121,2,106,0,16430,'body',0,4572,3,4571,1482636598,1,2102),(121,2,106,0,16431,'body',0,3385,4,2102,1482636598,1,4572),(121,2,106,0,16432,'body',0,4573,5,4572,1482636598,1,3385),(121,2,106,0,16433,'body',0,4574,6,3385,1482636598,1,4573),(121,2,106,0,16434,'body',0,3911,7,4573,1482636598,1,4574),(121,2,106,0,16435,'body',0,4575,8,4574,1482636598,1,3911),(121,2,106,0,16436,'body',0,1805,9,3911,1482636598,1,4575),(121,2,106,0,16437,'body',0,0,10,4575,1482636598,1,1805),(1,2,107,0,16504,'title',0,1126,0,0,1482636915,1,2030),(121,2,107,0,16505,'body',0,2031,1,2030,1482636915,1,1126),(121,2,107,0,16506,'body',0,1747,2,1126,1482636915,1,2031),(121,2,107,0,16507,'body',0,1748,3,2031,1482636915,1,1747),(121,2,107,0,16508,'body',0,1749,4,1747,1482636915,1,1748),(121,2,107,0,16509,'body',0,1515,5,1748,1482636915,1,1749),(121,2,107,0,16510,'body',0,1191,6,1749,1482636915,1,1515),(121,2,107,0,16511,'body',0,1125,7,1515,1482636915,1,1191),(121,2,107,0,16512,'body',0,2030,8,1191,1482636915,1,1125),(121,2,107,0,16513,'body',0,1166,9,1125,1482636915,1,2030),(121,2,107,0,16514,'body',0,1126,10,2030,1482636915,1,1166),(121,2,107,0,16515,'body',0,1042,11,1166,1482636915,1,1126),(121,2,107,0,16516,'body',0,1043,12,1126,1482636915,1,1042),(121,2,107,0,16517,'body',0,2032,13,1042,1482636915,1,1043),(121,2,107,0,16518,'body',0,1125,14,1043,1482636915,1,2032),(121,2,107,0,16519,'body',0,2041,15,2032,1482636915,1,1125),(121,2,107,0,16520,'body',0,2042,16,1125,1482636915,1,2041),(121,2,107,0,16521,'body',0,1804,17,2041,1482636915,1,2042),(121,2,107,0,16522,'body',0,1828,18,2042,1482636915,1,1804),(121,2,107,0,16523,'body',0,1042,19,1804,1482636915,1,1828),(121,2,107,0,16524,'body',0,1043,20,1828,1482636915,1,1042),(121,2,107,0,16525,'body',0,2043,21,1042,1482636915,1,1043),(121,2,107,0,16526,'body',0,1125,22,1043,1482636915,1,2043),(121,2,107,0,16527,'body',0,2044,23,2043,1482636915,1,1125),(121,2,107,0,16528,'body',0,4589,24,1125,1482636915,1,2044),(121,2,107,0,16529,'body',0,1132,25,2044,1482636915,1,4589),(121,2,107,0,16530,'body',0,4590,26,4589,1482636915,1,1132),(121,2,107,0,16531,'body',0,1126,27,1132,1482636915,1,4590),(121,2,107,0,16532,'body',0,2032,28,4590,1482636915,1,1126),(121,2,107,0,16533,'body',0,1121,29,1126,1482636915,1,2032),(121,2,107,0,16534,'body',0,1218,30,2032,1482636915,1,1121),(121,2,107,0,16535,'body',0,4591,31,1121,1482636915,1,1218),(121,2,107,0,16536,'body',0,1230,32,1218,1482636915,1,4591),(121,2,107,0,16537,'body',0,4592,33,4591,1482636915,1,1230),(121,2,107,0,16538,'body',0,4593,34,1230,1482636915,1,4592),(121,2,107,0,16539,'body',0,4594,35,4592,1482636915,1,4593),(121,2,107,0,16540,'body',0,4595,36,4593,1482636915,1,4594),(121,2,107,0,16541,'body',0,1169,37,4594,1482636915,1,4595),(121,2,107,0,16542,'body',0,1126,38,4595,1482636915,1,1169),(121,2,107,0,16543,'body',0,2032,39,1169,1482636915,1,1126),(121,2,107,0,16544,'body',0,1125,40,1126,1482636915,1,2032),(121,2,107,0,16545,'body',0,2042,41,2032,1482636915,1,1125),(121,2,107,0,16546,'body',0,4596,42,1125,1482636915,1,2042),(121,2,107,0,16547,'body',0,1121,43,2042,1482636915,1,4596),(121,2,107,0,16548,'body',0,4597,44,4596,1482636915,1,1121),(121,2,107,0,16549,'body',0,1801,45,1121,1482636915,1,4597),(121,2,107,0,16550,'body',0,1126,46,4597,1482636915,1,1801),(121,2,107,0,16551,'body',0,1042,47,1801,1482636915,1,1126),(121,2,107,0,16552,'body',0,1043,48,1126,1482636915,1,1042),(121,2,107,0,16553,'body',0,2032,49,1042,1482636915,1,1043),(121,2,107,0,16554,'body',0,1125,50,1043,1482636915,1,2032),(121,2,107,0,16555,'body',0,2042,51,2032,1482636915,1,1125),(121,2,107,0,16556,'body',0,4598,52,1125,1482636915,1,2042),(121,2,107,0,16557,'body',0,2987,53,2042,1482636915,1,4598),(121,2,107,0,16558,'body',0,3273,54,4598,1482636915,1,2987),(121,2,107,0,16559,'body',0,4599,55,2987,1482636915,1,3273),(121,2,107,0,16560,'body',0,1121,56,3273,1482636915,1,4599),(121,2,107,0,16561,'body',0,4597,57,4599,1482636915,1,1121),(121,2,107,0,16562,'body',0,1801,58,1121,1482636915,1,4597),(121,2,107,0,16563,'body',0,4600,59,4597,1482636915,1,1801),(121,2,107,0,16564,'body',0,2043,60,1801,1482636915,1,4600),(121,2,107,0,16565,'body',0,1125,61,4600,1482636915,1,2043),(121,2,107,0,16566,'body',0,3974,62,2043,1482636915,1,1125),(121,2,107,0,16567,'body',0,4601,63,1125,1482636915,1,3974),(121,2,107,0,16568,'body',0,1805,64,3974,1482636915,1,4601),(121,2,107,0,16569,'body',0,0,65,4601,1482636915,1,1805),(1,2,108,0,16570,'title',0,2086,0,0,1482636972,1,2085),(121,2,108,0,16571,'body',0,2087,1,2085,1482636972,1,2086),(121,2,108,0,16572,'body',0,4602,2,2086,1482636972,1,2087),(121,2,108,0,16573,'body',0,4603,3,2087,1482636972,1,4602),(121,2,108,0,16574,'body',0,1747,4,4602,1482636972,1,4603),(121,2,108,0,16575,'body',0,1748,5,4603,1482636972,1,1747),(121,2,108,0,16576,'body',0,1747,6,1747,1482636972,1,1748),(121,2,108,0,16577,'body',0,1810,7,1748,1482636972,1,1747),(121,2,108,0,16578,'body',0,2086,8,1747,1482636972,1,1810),(121,2,108,0,16579,'body',0,2087,9,1810,1482636972,1,2086),(121,2,108,0,16580,'body',0,4604,10,2086,1482636972,1,2087),(121,2,108,0,16581,'body',0,4605,11,2087,1482636972,1,4604),(121,2,108,0,16582,'body',0,2096,12,4604,1482636972,1,4605),(121,2,108,0,16583,'body',0,4606,13,4605,1482636972,1,2096),(121,2,108,0,16584,'body',0,2087,14,2096,1482636972,1,4606),(121,2,108,0,16585,'body',0,4607,15,4606,1482636972,1,2087),(121,2,108,0,16586,'body',0,2099,16,2087,1482636972,1,4607),(121,2,108,0,16587,'body',0,4608,17,4607,1482636972,1,2099),(121,2,108,0,16588,'body',0,4609,18,2099,1482636972,1,4608),(121,2,108,0,16589,'body',0,2390,19,4608,1482636972,1,4609),(121,2,108,0,16590,'body',0,2087,20,4609,1482636972,1,2390),(121,2,108,0,16591,'body',0,2087,21,2390,1482636972,1,2087),(121,2,108,0,16592,'body',0,1230,22,2087,1482636972,1,2087),(121,2,108,0,16593,'body',0,2103,23,2087,1482636972,1,1230),(121,2,108,0,16594,'body',0,2104,24,1230,1482636972,1,2103),(121,2,108,0,16595,'body',0,1747,25,2103,1482636972,1,2104),(121,2,108,0,16596,'body',0,1814,26,2104,1482636972,1,1747),(121,2,108,0,16597,'body',0,1747,27,1747,1482636972,1,1814),(121,2,108,0,16598,'body',0,2390,28,1814,1482636972,1,1747),(121,2,108,0,16599,'body',0,4610,29,1747,1482636972,1,2390),(121,2,108,0,16600,'body',0,4611,30,2390,1482636972,1,4610),(121,2,108,0,16601,'body',0,2109,31,4610,1482636972,1,4611),(121,2,108,0,16602,'body',0,2110,32,4611,1482636972,1,2109),(121,2,108,0,16603,'body',0,4612,33,2109,1482636972,1,2110),(121,2,108,0,16604,'body',0,4613,34,2110,1482636972,1,4612),(121,2,108,0,16605,'body',0,4614,35,4612,1482636972,1,4613),(121,2,108,0,16606,'body',0,4615,36,4613,1482636972,1,4614),(121,2,108,0,16607,'body',0,4616,37,4614,1482636972,1,4615),(121,2,108,0,16608,'body',0,4617,38,4615,1482636972,1,4616),(121,2,108,0,16609,'body',0,0,39,4616,1482636972,1,4617),(1,2,109,0,20793,'title',0,1230,0,0,1482637147,1,2087),(1,2,109,0,20794,'title',0,2103,1,2087,1482637147,1,1230),(1,2,109,0,20795,'title',0,2104,2,1230,1482637147,1,2103),(1,2,109,0,20796,'title',0,1577,3,2103,1482637147,1,2104),(121,2,109,0,20797,'body',0,4021,4,2104,1482637147,1,1577),(121,2,109,0,20798,'body',0,992,5,1577,1482637147,1,4021),(121,2,109,0,20799,'body',0,2140,6,4021,1482637147,1,992),(121,2,109,0,20800,'body',0,6112,7,992,1482637147,1,2140),(121,2,109,0,20801,'body',0,6113,8,2140,1482637147,1,6112),(121,2,109,0,20802,'body',0,1555,9,6112,1482637147,1,6113),(121,2,109,0,20803,'body',0,6114,10,6113,1482637147,1,1555),(121,2,109,0,20804,'body',0,1553,11,1555,1482637147,1,6114),(121,2,109,0,20805,'body',0,6115,12,6114,1482637147,1,1553),(121,2,109,0,20806,'body',0,6116,13,1553,1482637147,1,6115),(121,2,109,0,20807,'body',0,6117,14,6115,1482637147,1,6116),(121,2,109,0,20808,'body',0,1553,15,6116,1482637147,1,6117),(121,2,109,0,20809,'body',0,6118,16,6117,1482637147,1,1553),(121,2,109,0,20810,'body',0,6119,17,1553,1482637147,1,6118),(121,2,109,0,20811,'body',0,1527,18,6118,1482637147,1,6119),(121,2,109,0,20812,'body',0,6120,19,6119,1482637147,1,1527),(121,2,109,0,20813,'body',0,6121,20,1527,1482637147,1,6120),(121,2,109,0,20814,'body',0,1125,21,6120,1482637147,1,6121),(121,2,109,0,20815,'body',0,6122,22,6121,1482637147,1,1125),(121,2,109,0,20816,'body',0,1801,23,1125,1482637147,1,6122),(121,2,109,0,20817,'body',0,6123,24,6122,1482637147,1,1801),(121,2,109,0,20818,'body',0,1527,25,1801,1482637147,1,6123),(121,2,109,0,20819,'body',0,6124,26,6123,1482637147,1,1527),(121,2,109,0,20820,'body',0,6121,27,1527,1482637147,1,6124),(121,2,109,0,20821,'body',0,6125,28,6124,1482637147,1,6121),(121,2,109,0,20822,'body',0,2032,29,6121,1482637147,1,6125),(121,2,109,0,20823,'body',0,2044,30,6125,1482637147,1,2032),(121,2,109,0,20824,'body',0,6126,31,2032,1482637147,1,2044),(121,2,109,0,20825,'body',0,2086,32,2044,1482637147,1,6126),(121,2,109,0,20826,'body',0,2087,33,6126,1482637147,1,2086),(121,2,109,0,20827,'body',0,6127,34,2086,1482637147,1,2087),(121,2,109,0,20828,'body',0,6128,35,2087,1482637147,1,6127),(121,2,109,0,20829,'body',0,6129,36,6127,1482637147,1,6128),(121,2,109,0,20830,'body',0,995,37,6128,1482637147,1,6129),(121,2,109,0,20831,'body',0,6112,38,6129,1482637147,1,995),(121,2,109,0,20832,'body',0,6130,39,995,1482637147,1,6112),(121,2,109,0,20833,'body',0,6131,40,6112,1482637147,1,6130),(121,2,109,0,20834,'body',0,1527,41,6130,1482637147,1,6131),(121,2,109,0,20835,'body',0,6132,42,6131,1482637147,1,1527),(121,2,109,0,20836,'body',0,6133,43,1527,1482637147,1,6132),(121,2,109,0,20837,'body',0,6125,44,6132,1482637147,1,6133),(121,2,109,0,20838,'body',0,2032,45,6133,1482637147,1,6125),(121,2,109,0,20839,'body',0,2044,46,6125,1482637147,1,2032),(121,2,109,0,20840,'body',0,6134,47,2032,1482637147,1,2044),(121,2,109,0,20841,'body',0,6135,48,2044,1482637147,1,6134),(121,2,109,0,20842,'body',0,6136,49,6134,1482637147,1,6135),(121,2,109,0,20843,'body',0,6137,50,6135,1482637147,1,6136),(121,2,109,0,20844,'body',0,6138,51,6136,1482637147,1,6137),(121,2,109,0,20845,'body',0,6139,52,6137,1482637147,1,6138),(121,2,109,0,20846,'body',0,6140,53,6138,1482637147,1,6139),(121,2,109,0,20847,'body',0,6141,54,6139,1482637147,1,6140),(121,2,109,0,20848,'body',0,814,55,6140,1482637147,1,6141),(121,2,109,0,20849,'body',0,6142,56,6141,1482637147,1,814),(121,2,109,0,20850,'body',0,6143,57,814,1482637147,1,6142),(121,2,109,0,20851,'body',0,1795,58,6142,1482637147,1,6143),(121,2,109,0,20852,'body',0,6144,59,6143,1482637147,1,1795),(121,2,109,0,20853,'body',0,6145,60,1795,1482637147,1,6144),(121,2,109,0,20854,'body',0,6146,61,6144,1482637147,1,6145),(121,2,109,0,20855,'body',0,6147,62,6145,1482637147,1,6146),(121,2,109,0,20856,'body',0,6148,63,6146,1482637147,1,6147),(121,2,109,0,20857,'body',0,6133,64,6147,1482637147,1,6148),(121,2,109,0,20858,'body',0,6125,65,6148,1482637147,1,6133),(121,2,109,0,20859,'body',0,2032,66,6133,1482637147,1,6125),(121,2,109,0,20860,'body',0,2044,67,6125,1482637147,1,2032),(121,2,109,0,20861,'body',0,6149,68,2032,1482637147,1,2044),(121,2,109,0,20862,'body',0,6150,69,2044,1482637147,1,6149),(121,2,109,0,20863,'body',0,6151,70,6149,1482637147,1,6150),(121,2,109,0,20864,'body',0,2182,71,6150,1482637147,1,6151),(121,2,109,0,20865,'body',0,6152,72,6151,1482637147,1,2182),(121,2,109,0,20866,'body',0,6130,73,2182,1482637147,1,6152),(121,2,109,0,20867,'body',0,6131,74,6152,1482637147,1,6130),(121,2,109,0,20868,'body',0,1527,75,6130,1482637147,1,6131),(121,2,109,0,20869,'body',0,6132,76,6131,1482637147,1,1527),(121,2,109,0,20870,'body',0,6153,77,1527,1482637147,1,6132),(121,2,109,0,20871,'body',0,6123,78,6132,1482637147,1,6153),(121,2,109,0,20872,'body',0,1527,79,6153,1482637147,1,6123),(121,2,109,0,20873,'body',0,6154,80,6123,1482637147,1,1527),(121,2,109,0,20874,'body',0,6155,81,1527,1482637147,1,6154),(121,2,109,0,20875,'body',0,2101,82,6154,1482637147,1,6155),(121,2,109,0,20876,'body',0,6156,83,6155,1482637147,1,2101),(121,2,109,0,20877,'body',0,1542,84,2101,1482637147,1,6156),(121,2,109,0,20878,'body',0,6157,85,6156,1482637147,1,1542),(121,2,109,0,20879,'body',0,6139,86,1542,1482637147,1,6157),(121,2,109,0,20880,'body',0,6158,87,6157,1482637147,1,6139),(121,2,109,0,20881,'body',0,6159,88,6139,1482637147,1,6158),(121,2,109,0,20882,'body',0,6160,89,6158,1482637147,1,6159),(121,2,109,0,20883,'body',0,814,90,6159,1482637147,1,6160),(121,2,109,0,20884,'body',0,6161,91,6160,1482637147,1,814),(121,2,109,0,20885,'body',0,1527,92,814,1482637147,1,6161),(121,2,109,0,20886,'body',0,6162,93,6161,1482637147,1,1527),(121,2,109,0,20887,'body',0,1515,94,1527,1482637147,1,6162),(121,2,109,0,20888,'body',0,6124,95,6162,1482637147,1,1515),(121,2,109,0,20889,'body',0,6163,96,1515,1482637147,1,6124),(121,2,109,0,20890,'body',0,6164,97,6124,1482637147,1,6163),(121,2,109,0,20891,'body',0,6165,98,6163,1482637147,1,6164),(121,2,109,0,20892,'body',0,6166,99,6164,1482637147,1,6165),(121,2,109,0,20893,'body',0,6167,100,6165,1482637147,1,6166),(121,2,109,0,20894,'body',0,6168,101,6166,1482637147,1,6167),(121,2,109,0,20895,'body',0,1042,102,6167,1482637147,1,6168),(121,2,109,0,20896,'body',0,6169,103,6168,1482637147,1,1042),(121,2,109,0,20897,'body',0,2182,104,1042,1482637147,1,6169),(121,2,109,0,20898,'body',0,6170,105,6169,1482637147,1,2182),(121,2,109,0,20899,'body',0,6171,106,2182,1482637147,1,6170),(121,2,109,0,20900,'body',0,6172,107,6170,1482637147,1,6171),(121,2,109,0,20901,'body',0,6115,108,6171,1482637147,1,6172),(121,2,109,0,20902,'body',0,6173,109,6172,1482637147,1,6115),(121,2,109,0,20903,'body',0,1531,110,6115,1482637147,1,6173),(121,2,109,0,20904,'body',0,814,111,6173,1482637147,1,1531),(121,2,109,0,20905,'body',0,6174,112,1531,1482637147,1,814),(121,2,109,0,20906,'body',0,6175,113,814,1482637147,1,6174),(121,2,109,0,20907,'body',0,6176,114,6174,1482637147,1,6175),(121,2,109,0,20908,'body',0,1527,115,6175,1482637147,1,6176),(121,2,109,0,20909,'body',0,6177,116,6176,1482637147,1,1527),(121,2,109,0,20910,'body',0,6178,117,1527,1482637147,1,6177),(121,2,109,0,20911,'body',0,814,118,6177,1482637147,1,6178),(121,2,109,0,20912,'body',0,6179,119,6178,1482637147,1,814),(121,2,109,0,20913,'body',0,1527,120,814,1482637147,1,6179),(121,2,109,0,20914,'body',0,2086,121,6179,1482637147,1,1527),(121,2,109,0,20915,'body',0,2087,122,1527,1482637147,1,2086),(121,2,109,0,20916,'body',0,6180,123,2086,1482637147,1,2087),(121,2,109,0,20917,'body',0,6181,124,2087,1482637147,1,6180),(121,2,109,0,20918,'body',0,6170,125,6180,1482637147,1,6181),(121,2,109,0,20919,'body',0,6163,126,6181,1482637147,1,6170),(121,2,109,0,20920,'body',0,1553,127,6170,1482637147,1,6163),(121,2,109,0,20921,'body',0,6115,128,6163,1482637147,1,1553),(121,2,109,0,20922,'body',0,1573,129,1553,1482637147,1,6115),(121,2,109,0,20923,'body',0,6120,130,6115,1482637147,1,1573),(121,2,109,0,20924,'body',0,6118,131,1573,1482637147,1,6120),(121,2,109,0,20925,'body',0,6182,132,6120,1482637147,1,6118),(121,2,109,0,20926,'body',0,6183,133,6118,1482637147,1,6182),(121,2,109,0,20927,'body',0,6184,134,6182,1482637147,1,6183),(121,2,109,0,20928,'body',0,6185,135,6183,1482637147,1,6184),(121,2,109,0,20929,'body',0,6186,136,6184,1482637147,1,6185),(121,2,109,0,20930,'body',0,6187,137,6185,1482637147,1,6186),(121,2,109,0,20931,'body',0,992,138,6186,1482637147,1,6187),(121,2,109,0,20932,'body',0,6120,139,6187,1482637147,1,992),(121,2,109,0,20933,'body',0,6188,140,992,1482637147,1,6120),(121,2,109,0,20934,'body',0,6120,141,6120,1482637147,1,6188),(121,2,109,0,20935,'body',0,6132,142,6188,1482637147,1,6120),(121,2,109,0,20936,'body',0,6189,143,6120,1482637147,1,6132),(121,2,109,0,20937,'body',0,6170,144,6132,1482637147,1,6189),(121,2,109,0,20938,'body',0,6115,145,6189,1482637147,1,6170),(121,2,109,0,20939,'body',0,1573,146,6170,1482637147,1,6115),(121,2,109,0,20940,'body',0,6190,147,6115,1482637147,1,1573),(121,2,109,0,20941,'body',0,1977,148,1573,1482637147,1,6190),(121,2,109,0,20942,'body',0,6191,149,6190,1482637147,1,1977),(121,2,109,0,20943,'body',0,1977,150,1977,1482637147,1,6191),(121,2,109,0,20944,'body',0,6183,151,6191,1482637147,1,1977),(121,2,109,0,20945,'body',0,6184,152,1977,1482637147,1,6183),(121,2,109,0,20946,'body',0,6123,153,6183,1482637147,1,6184),(121,2,109,0,20947,'body',0,6186,154,6184,1482637147,1,6123),(121,2,109,0,20948,'body',0,6192,155,6123,1482637147,1,6186),(121,2,109,0,20949,'body',0,6193,156,6186,1482637147,1,6192),(121,2,109,0,20950,'body',0,6194,157,6192,1482637147,1,6193),(121,2,109,0,20951,'body',0,6195,158,6193,1482637147,1,6194),(121,2,109,0,20952,'body',0,1527,159,6194,1482637147,1,6195),(121,2,109,0,20953,'body',0,6196,160,6195,1482637147,1,1527),(121,2,109,0,20954,'body',0,6132,161,1527,1482637147,1,6196),(121,2,109,0,20955,'body',0,6123,162,6196,1482637147,1,6132),(121,2,109,0,20956,'body',0,1527,163,6132,1482637147,1,6123),(121,2,109,0,20957,'body',0,6197,164,6123,1482637147,1,1527),(121,2,109,0,20958,'body',0,6198,165,1527,1482637147,1,6197),(121,2,109,0,20959,'body',0,6199,166,6197,1482637147,1,6198),(121,2,109,0,20960,'body',0,6186,167,6198,1482637147,1,6199),(121,2,109,0,20961,'body',0,6200,168,6199,1482637147,1,6186),(121,2,109,0,20962,'body',0,6201,169,6186,1482637147,1,6200),(121,2,109,0,20963,'body',0,3515,170,6200,1482637147,1,6201),(121,2,109,0,20964,'body',0,6202,171,6201,1482637147,1,3515),(121,2,109,0,20965,'body',0,6133,172,3515,1482637147,1,6202),(121,2,109,0,20966,'body',0,6203,173,6202,1482637147,1,6133),(121,2,109,0,20967,'body',0,3518,174,6133,1482637147,1,6203),(121,2,109,0,20968,'body',0,6139,175,6203,1482637147,1,3518),(121,2,109,0,20969,'body',0,6158,176,3518,1482637147,1,6139),(121,2,109,0,20970,'body',0,6159,177,6139,1482637147,1,6158),(121,2,109,0,20971,'body',0,6160,178,6158,1482637147,1,6159),(121,2,109,0,20972,'body',0,6204,179,6159,1482637147,1,6160),(121,2,109,0,20973,'body',0,1125,180,6160,1482637147,1,6204),(121,2,109,0,20974,'body',0,6205,181,6204,1482637147,1,1125),(121,2,109,0,20975,'body',0,1553,182,1125,1482637147,1,6205),(121,2,109,0,20976,'body',0,6206,183,6205,1482637147,1,1553),(121,2,109,0,20977,'body',0,1125,184,1553,1482637147,1,6206),(121,2,109,0,20978,'body',0,6207,185,6206,1482637147,1,1125),(121,2,109,0,20979,'body',0,6189,186,1125,1482637147,1,6207),(121,2,109,0,20980,'body',0,6208,187,6207,1482637147,1,6189),(121,2,109,0,20981,'body',0,6163,188,6189,1482637147,1,6208),(121,2,109,0,20982,'body',0,1527,189,6208,1482637147,1,6163),(121,2,109,0,20983,'body',0,6120,190,6163,1482637147,1,1527),(121,2,109,0,20984,'body',0,6132,191,1527,1482637147,1,6120),(121,2,109,0,20985,'body',0,6183,192,6120,1482637147,1,6132),(121,2,109,0,20986,'body',0,6184,193,6132,1482637147,1,6183),(121,2,109,0,20987,'body',0,6123,194,6183,1482637147,1,6184),(121,2,109,0,20988,'body',0,6186,195,6184,1482637147,1,6123),(121,2,109,0,20989,'body',0,6187,196,6123,1482637147,1,6186),(121,2,109,0,20990,'body',0,992,197,6186,1482637147,1,6187),(121,2,109,0,20991,'body',0,6209,198,6187,1482637147,1,992),(121,2,109,0,20992,'body',0,994,199,992,1482637147,1,6209),(121,2,109,0,20993,'body',0,6210,200,6209,1482637147,1,994),(121,2,109,0,20994,'body',0,6211,201,994,1482637147,1,6210),(121,2,109,0,20995,'body',0,6212,202,6210,1482637147,1,6211),(121,2,109,0,20996,'body',0,6192,203,6211,1482637147,1,6212),(121,2,109,0,20997,'body',0,6163,204,6212,1482637147,1,6192),(121,2,109,0,20998,'body',0,1527,205,6192,1482637147,1,6163),(121,2,109,0,20999,'body',0,6213,206,6163,1482637147,1,1527),(121,2,109,0,21000,'body',0,6214,207,1527,1482637147,1,6213),(121,2,109,0,21001,'body',0,6215,208,6213,1482637147,1,6214),(121,2,109,0,21002,'body',0,6216,209,6214,1482637147,1,6215),(121,2,109,0,21003,'body',0,6176,210,6215,1482637147,1,6216),(121,2,109,0,21004,'body',0,1527,211,6216,1482637147,1,6176),(121,2,109,0,21005,'body',0,6186,212,6176,1482637147,1,1527),(121,2,109,0,21006,'body',0,6217,213,1527,1482637147,1,6186),(121,2,109,0,21007,'body',0,1553,214,6186,1482637147,1,6217),(121,2,109,0,21008,'body',0,6218,215,6217,1482637147,1,1553),(121,2,109,0,21009,'body',0,6219,216,1553,1482637147,1,6218),(121,2,109,0,21010,'body',0,1174,217,6218,1482637147,1,6219),(121,2,109,0,21011,'body',0,6220,218,6219,1482637147,1,1174),(121,2,109,0,21012,'body',0,6221,219,1174,1482637147,1,6220),(121,2,109,0,21013,'body',0,6222,220,6220,1482637147,1,6221),(121,2,109,0,21014,'body',0,1125,221,6221,1482637147,1,6222),(121,2,109,0,21015,'body',0,6125,222,6222,1482637147,1,1125),(121,2,109,0,21016,'body',0,6223,223,1125,1482637147,1,6125),(121,2,109,0,21017,'body',0,6123,224,6125,1482637147,1,6223),(121,2,109,0,21018,'body',0,1527,225,6223,1482637147,1,6123),(121,2,109,0,21019,'body',0,6124,226,6123,1482637147,1,1527),(121,2,109,0,21020,'body',0,6121,227,1527,1482637147,1,6124),(121,2,109,0,21021,'body',0,6224,228,6124,1482637147,1,6121),(121,2,109,0,21022,'body',0,6225,229,6121,1482637147,1,6224),(121,2,109,0,21023,'body',0,6121,230,6224,1482637147,1,6225),(121,2,109,0,21024,'body',0,6133,231,6225,1482637147,1,6121),(121,2,109,0,21025,'body',0,6226,232,6121,1482637147,1,6133),(121,2,109,0,21026,'body',0,1544,233,6133,1482637147,1,6226),(121,2,109,0,21027,'body',0,6227,234,6226,1482637147,1,1544),(121,2,109,0,21028,'body',0,6120,235,1544,1482637147,1,6227),(121,2,109,0,21029,'body',0,6228,236,6227,1482637147,1,6120),(121,2,109,0,21030,'body',0,6146,237,6120,1482637147,1,6228),(121,2,109,0,21031,'body',0,6147,238,6228,1482637147,1,6146),(121,2,109,0,21032,'body',0,6229,239,6146,1482637147,1,6147),(121,2,109,0,21033,'body',0,6115,240,6147,1482637147,1,6229),(121,2,109,0,21034,'body',0,6116,241,6229,1482637147,1,6115),(121,2,109,0,21035,'body',0,1515,242,6115,1482637147,1,6116),(121,2,109,0,21036,'body',0,6230,243,6116,1482637147,1,1515),(121,2,109,0,21037,'body',0,6118,244,1515,1482637147,1,6230),(121,2,109,0,21038,'body',0,6117,245,6230,1482637147,1,6118),(121,2,109,0,21039,'body',0,1977,246,6118,1482637147,1,6117),(121,2,109,0,21040,'body',0,1527,247,6117,1482637147,1,1977),(121,2,109,0,21041,'body',0,6122,248,1977,1482637147,1,1527),(121,2,109,0,21042,'body',0,1801,249,1527,1482637147,1,6122),(121,2,109,0,21043,'body',0,1801,250,6122,1482637147,1,1801),(121,2,109,0,21044,'body',0,6231,251,1801,1482637147,1,1801),(121,2,109,0,21045,'body',0,6232,252,1801,1482637147,1,6231),(121,2,109,0,21046,'body',0,1527,253,6231,1482637147,1,6232),(121,2,109,0,21047,'body',0,6122,254,6232,1482637147,1,1527),(121,2,109,0,21048,'body',0,6233,255,1527,1482637147,1,6122),(121,2,109,0,21049,'body',0,6234,256,6122,1482637147,1,6233),(121,2,109,0,21050,'body',0,1515,257,6233,1482637147,1,6234),(121,2,109,0,21051,'body',0,6235,258,6234,1482637147,1,1515),(121,2,109,0,21052,'body',0,6236,259,1515,1482637147,1,6235),(121,2,109,0,21053,'body',0,1527,260,6235,1482637147,1,6236),(121,2,109,0,21054,'body',0,6122,261,6236,1482637147,1,1527),(121,2,109,0,21055,'body',0,6237,262,1527,1482637147,1,6122),(121,2,109,0,21056,'body',0,1573,263,6122,1482637147,1,6237),(121,2,109,0,21057,'body',0,6231,264,6237,1482637147,1,1573),(121,2,109,0,21058,'body',0,6238,265,1573,1482637147,1,6231),(121,2,109,0,21059,'body',0,1125,266,6231,1482637147,1,6238),(121,2,109,0,21060,'body',0,6239,267,6238,1482637147,1,1125),(121,2,109,0,21061,'body',0,6240,268,1125,1482637147,1,6239),(121,2,109,0,21062,'body',0,6241,269,6239,1482637147,1,6240),(121,2,109,0,21063,'body',0,6220,270,6240,1482637147,1,6241),(121,2,109,0,21064,'body',0,6242,271,6241,1482637147,1,6220),(121,2,109,0,21065,'body',0,6222,272,6220,1482637147,1,6242),(121,2,109,0,21066,'body',0,1125,273,6242,1482637147,1,6222),(121,2,109,0,21067,'body',0,6243,274,6222,1482637147,1,1125),(121,2,109,0,21068,'body',0,2044,275,1125,1482637147,1,6243),(121,2,109,0,21069,'body',0,6244,276,6243,1482637147,1,2044),(121,2,109,0,21070,'body',0,1527,277,2044,1482637147,1,6244),(121,2,109,0,21071,'body',0,6132,278,6244,1482637147,1,1527),(121,2,109,0,21072,'body',0,6224,279,1527,1482637147,1,6132),(121,2,109,0,21073,'body',0,6132,280,6132,1482637147,1,6224),(121,2,109,0,21074,'body',0,1527,281,6224,1482637147,1,6132),(121,2,109,0,21075,'body',0,6245,282,6132,1482637147,1,1527),(121,2,109,0,21076,'body',0,6240,283,1527,1482637147,1,6245),(121,2,109,0,21077,'body',0,6241,284,6245,1482637147,1,6240),(121,2,109,0,21078,'body',0,6220,285,6240,1482637147,1,6241),(121,2,109,0,21079,'body',0,6144,286,6241,1482637147,1,6220),(121,2,109,0,21080,'body',0,6222,287,6220,1482637147,1,6144),(121,2,109,0,21081,'body',0,1125,288,6144,1482637147,1,6222),(121,2,109,0,21082,'body',0,6243,289,6222,1482637147,1,1125),(121,2,109,0,21083,'body',0,2044,290,1125,1482637147,1,6243),(121,2,109,0,21084,'body',0,6244,291,6243,1482637147,1,2044),(121,2,109,0,21085,'body',0,1527,292,2044,1482637147,1,6244),(121,2,109,0,21086,'body',0,6132,293,6244,1482637147,1,1527),(121,2,109,0,21087,'body',0,6224,294,1527,1482637147,1,6132),(121,2,109,0,21088,'body',0,6246,295,6132,1482637147,1,6224),(121,2,109,0,21089,'body',0,1125,296,6224,1482637147,1,6246),(121,2,109,0,21090,'body',0,6247,297,6246,1482637147,1,1125),(121,2,109,0,21091,'body',0,1553,298,1125,1482637147,1,6247),(121,2,109,0,21092,'body',0,6120,299,6247,1482637147,1,1553),(121,2,109,0,21093,'body',0,6248,300,1553,1482637147,1,6120),(121,2,109,0,21094,'body',0,6241,301,6120,1482637147,1,6248),(121,2,109,0,21095,'body',0,6220,302,6248,1482637147,1,6241),(121,2,109,0,21096,'body',0,6152,303,6241,1482637147,1,6220),(121,2,109,0,21097,'body',0,6222,304,6220,1482637147,1,6152),(121,2,109,0,21098,'body',0,1125,305,6152,1482637147,1,6222),(121,2,109,0,21099,'body',0,6243,306,6222,1482637147,1,1125),(121,2,109,0,21100,'body',0,2044,307,1125,1482637147,1,6243),(121,2,109,0,21101,'body',0,6244,308,6243,1482637147,1,2044),(121,2,109,0,21102,'body',0,1527,309,2044,1482637147,1,6244),(121,2,109,0,21103,'body',0,6132,310,6244,1482637147,1,1527),(121,2,109,0,21104,'body',0,6224,311,1527,1482637147,1,6132),(121,2,109,0,21105,'body',0,6249,312,6132,1482637147,1,6224),(121,2,109,0,21106,'body',0,6250,313,6224,1482637147,1,6249),(121,2,109,0,21107,'body',0,1125,314,6249,1482637147,1,6250),(121,2,109,0,21108,'body',0,6132,315,6250,1482637147,1,1125),(121,2,109,0,21109,'body',0,1527,316,1125,1482637147,1,6132),(121,2,109,0,21110,'body',0,6251,317,6132,1482637147,1,1527),(121,2,109,0,21111,'body',0,6252,318,1527,1482637147,1,6251),(121,2,109,0,21112,'body',0,6152,319,6251,1482637147,1,6252),(121,2,109,0,21113,'body',0,6229,320,6252,1482637147,1,6152),(121,2,109,0,21114,'body',0,6222,321,6152,1482637147,1,6229),(121,2,109,0,21115,'body',0,1125,322,6229,1482637147,1,6222),(121,2,109,0,21116,'body',0,6153,323,6222,1482637147,1,1125),(121,2,109,0,21117,'body',0,6198,324,1125,1482637147,1,6153),(121,2,109,0,21118,'body',0,6253,325,6153,1482637147,1,6198),(121,2,109,0,21119,'body',0,2044,326,6198,1482637147,1,6253),(121,2,109,0,21120,'body',0,6254,327,6253,1482637147,1,2044),(121,2,109,0,21121,'body',0,6172,328,2044,1482637147,1,6254),(121,2,109,0,21122,'body',0,6255,329,6254,1482637147,1,6172),(121,2,109,0,21123,'body',0,6256,330,6172,1482637147,1,6255),(121,2,109,0,21124,'body',0,1527,331,6255,1482637147,1,6256),(121,2,109,0,21125,'body',0,6120,332,6256,1482637147,1,1527),(121,2,109,0,21126,'body',0,6132,333,1527,1482637147,1,6120),(121,2,109,0,21127,'body',0,6257,334,6120,1482637147,1,6132),(121,2,109,0,21128,'body',0,6184,335,6132,1482637147,1,6257),(121,2,109,0,21129,'body',0,6123,336,6257,1482637147,1,6184),(121,2,109,0,21130,'body',0,6186,337,6184,1482637147,1,6123),(121,2,109,0,21131,'body',0,6258,338,6123,1482637147,1,6186),(121,2,109,0,21132,'body',0,6172,339,6186,1482637147,1,6258),(121,2,109,0,21133,'body',0,6255,340,6258,1482637147,1,6172),(121,2,109,0,21134,'body',0,6259,341,6172,1482637147,1,6255),(121,2,109,0,21135,'body',0,6260,342,6255,1482637147,1,6259),(121,2,109,0,21136,'body',0,1527,343,6259,1482637147,1,6260),(121,2,109,0,21137,'body',0,6120,344,6260,1482637147,1,1527),(121,2,109,0,21138,'body',0,6182,345,1527,1482637147,1,6120),(121,2,109,0,21139,'body',0,1125,346,6120,1482637147,1,6182),(121,2,109,0,21140,'body',0,6261,347,6182,1482637147,1,1125),(121,2,109,0,21141,'body',0,1553,348,1125,1482637147,1,6261),(121,2,109,0,21142,'body',0,6262,349,6261,1482637147,1,1553),(121,2,109,0,21143,'body',0,6257,350,1553,1482637147,1,6262),(121,2,109,0,21144,'body',0,6184,351,6262,1482637147,1,6257),(121,2,109,0,21145,'body',0,6123,352,6257,1482637147,1,6184),(121,2,109,0,21146,'body',0,6186,353,6184,1482637147,1,6123),(121,2,109,0,21147,'body',0,1894,354,6123,1482637147,1,6186),(121,2,109,0,21148,'body',0,6254,355,6186,1482637147,1,1894),(121,2,109,0,21149,'body',0,6263,356,1894,1482637147,1,6254),(121,2,109,0,21150,'body',0,6222,357,6254,1482637147,1,6263),(121,2,109,0,21151,'body',0,1527,358,6263,1482637147,1,6222),(121,2,109,0,21152,'body',0,814,359,6222,1482637147,1,1527),(121,2,109,0,21153,'body',0,6196,360,1527,1482637147,1,814),(121,2,109,0,21154,'body',0,1553,361,814,1482637147,1,6196),(121,2,109,0,21155,'body',0,6120,362,6196,1482637147,1,1553),(121,2,109,0,21156,'body',0,6264,363,1553,1482637147,1,6120),(121,2,109,0,21157,'body',0,6132,364,6120,1482637147,1,6264),(121,2,109,0,21158,'body',0,6182,365,6264,1482637147,1,6132),(121,2,109,0,21159,'body',0,1553,366,6132,1482637147,1,6182),(121,2,109,0,21160,'body',0,6122,367,6182,1482637147,1,1553),(121,2,109,0,21161,'body',0,1801,368,1553,1482637147,1,6122),(121,2,109,0,21162,'body',0,1977,369,6122,1482637147,1,1801),(121,2,109,0,21163,'body',0,6257,370,1801,1482637147,1,1977),(121,2,109,0,21164,'body',0,6184,371,1977,1482637147,1,6257),(121,2,109,0,21165,'body',0,6123,372,6257,1482637147,1,6184),(121,2,109,0,21166,'body',0,6186,373,6184,1482637147,1,6123),(121,2,109,0,21167,'body',0,1894,374,6123,1482637147,1,6186),(121,2,109,0,21168,'body',0,6170,375,6186,1482637147,1,1894),(121,2,109,0,21169,'body',0,6265,376,1894,1482637147,1,6170),(121,2,109,0,21170,'body',0,6222,377,6170,1482637147,1,6265),(121,2,109,0,21171,'body',0,1527,378,6265,1482637147,1,6222),(121,2,109,0,21172,'body',0,6120,379,6222,1482637147,1,1527),(121,2,109,0,21173,'body',0,6266,380,1527,1482637147,1,6120),(121,2,109,0,21174,'body',0,1531,381,6120,1482637147,1,6266),(121,2,109,0,21175,'body',0,6267,382,6266,1482637147,1,1531),(121,2,109,0,21176,'body',0,6268,383,1531,1482637147,1,6267),(121,2,109,0,21177,'body',0,6186,384,6267,1482637147,1,6268),(121,2,109,0,21178,'body',0,6181,385,6268,1482637147,1,6186),(121,2,109,0,21179,'body',0,6170,386,6186,1482637147,1,6181),(121,2,109,0,21180,'body',0,6265,387,6181,1482637147,1,6170),(121,2,109,0,21181,'body',0,6222,388,6170,1482637147,1,6265),(121,2,109,0,21182,'body',0,1527,389,6265,1482637147,1,6222),(121,2,109,0,21183,'body',0,6261,390,6222,1482637147,1,1527),(121,2,109,0,21184,'body',0,6269,391,1527,1482637147,1,6261),(121,2,109,0,21185,'body',0,6270,392,6261,1482637147,1,6269),(121,2,109,0,21186,'body',0,6271,393,6269,1482637147,1,6270),(121,2,109,0,21187,'body',0,6272,394,6270,1482637147,1,6271),(121,2,109,0,21188,'body',0,6186,395,6271,1482637147,1,6272),(121,2,109,0,21189,'body',0,6189,396,6272,1482637147,1,6186),(121,2,109,0,21190,'body',0,6273,397,6186,1482637147,1,6189),(121,2,109,0,21191,'body',0,6274,398,6189,1482637147,1,6273),(121,2,109,0,21192,'body',0,1553,399,6273,1482637147,1,6274),(121,2,109,0,21193,'body',0,6275,400,6274,1482637147,1,1553),(121,2,109,0,21194,'body',0,6276,401,1553,1482637147,1,6275),(121,2,109,0,21195,'body',0,1531,402,6275,1482637147,1,6276),(121,2,109,0,21196,'body',0,6267,403,6276,1482637147,1,1531),(121,2,109,0,21197,'body',0,6271,404,1531,1482637147,1,6267),(121,2,109,0,21198,'body',0,6272,405,6267,1482637147,1,6271),(121,2,109,0,21199,'body',0,6186,406,6271,1482637147,1,6272),(121,2,109,0,21200,'body',0,6277,407,6272,1482637147,1,6186),(121,2,109,0,21201,'body',0,6278,408,6186,1482637147,1,6277),(121,2,109,0,21202,'body',0,6228,409,6277,1482637147,1,6278),(121,2,109,0,21203,'body',0,6279,410,6278,1482637147,1,6228),(121,2,109,0,21204,'body',0,1527,411,6228,1482637147,1,6279),(121,2,109,0,21205,'body',0,6132,412,6279,1482637147,1,1527),(121,2,109,0,21206,'body',0,6172,413,1527,1482637147,1,6132),(121,2,109,0,21207,'body',0,6280,414,6132,1482637147,1,6172),(121,2,109,0,21208,'body',0,6281,415,6172,1482637147,1,6280),(121,2,109,0,21209,'body',0,6282,416,6280,1482637147,1,6281),(121,2,109,0,21210,'body',0,6251,417,6281,1482637147,1,6282),(121,2,109,0,21211,'body',0,1553,418,6282,1482637147,1,6251),(121,2,109,0,21212,'body',0,6283,419,6251,1482637147,1,1553),(121,2,109,0,21213,'body',0,1527,420,1553,1482637147,1,6283),(121,2,109,0,21214,'body',0,6284,421,6283,1482637147,1,1527),(121,2,109,0,21215,'body',0,6285,422,1527,1482637147,1,6284),(121,2,109,0,21216,'body',0,1527,423,6284,1482637147,1,6285),(121,2,109,0,21217,'body',0,814,424,6285,1482637147,1,1527),(121,2,109,0,21218,'body',0,6286,425,1527,1482637147,1,814),(121,2,109,0,21219,'body',0,6287,426,814,1482637147,1,6286),(121,2,109,0,21220,'body',0,1527,427,6286,1482637147,1,6287),(121,2,109,0,21221,'body',0,6132,428,6287,1482637147,1,1527),(121,2,109,0,21222,'body',0,6288,429,1527,1482637147,1,6132),(121,2,109,0,21223,'body',0,6289,430,6132,1482637147,1,6288),(121,2,109,0,21224,'body',0,6242,431,6288,1482637147,1,6289),(121,2,109,0,21225,'body',0,6290,432,6289,1482637147,1,6242),(121,2,109,0,21226,'body',0,6291,433,6242,1482637147,1,6290),(121,2,109,0,21227,'body',0,1553,434,6290,1482637147,1,6291),(121,2,109,0,21228,'body',0,6292,435,6291,1482637147,1,1553),(121,2,109,0,21229,'body',0,6293,436,1553,1482637147,1,6292),(121,2,109,0,21230,'body',0,6285,437,6292,1482637147,1,6293),(121,2,109,0,21231,'body',0,1527,438,6293,1482637147,1,6285),(121,2,109,0,21232,'body',0,6294,439,6285,1482637147,1,1527),(121,2,109,0,21233,'body',0,6115,440,1527,1482637147,1,6294),(121,2,109,0,21234,'body',0,952,441,6294,1482637147,1,6115),(121,2,109,0,21235,'body',0,6295,442,6115,1482637147,1,952),(121,2,109,0,21236,'body',0,6296,443,952,1482637147,1,6295),(121,2,109,0,21237,'body',0,6242,444,6295,1482637147,1,6296),(121,2,109,0,21238,'body',0,6297,445,6296,1482637147,1,6242),(121,2,109,0,21239,'body',0,1842,446,6242,1482637147,1,6297),(121,2,109,0,21240,'body',0,6298,447,6297,1482637147,1,1842),(121,2,109,0,21241,'body',0,1553,448,1842,1482637147,1,6298),(121,2,109,0,21242,'body',0,6292,449,6298,1482637147,1,1553),(121,2,109,0,21243,'body',0,6293,450,1553,1482637147,1,6292),(121,2,109,0,21244,'body',0,1546,451,6292,1482637147,1,6293),(121,2,109,0,21245,'body',0,6299,452,6293,1482637147,1,1546),(121,2,109,0,21246,'body',0,1527,453,1546,1482637147,1,6299),(121,2,109,0,21247,'body',0,6300,454,6299,1482637147,1,1527),(121,2,109,0,21248,'body',0,6301,455,1527,1482637147,1,6300),(121,2,109,0,21249,'body',0,6115,456,6300,1482637147,1,6301),(121,2,109,0,21250,'body',0,1553,457,6301,1482637147,1,6115),(121,2,109,0,21251,'body',0,6302,458,6115,1482637147,1,1553),(121,2,109,0,21252,'body',0,6116,459,1553,1482637147,1,6302),(121,2,109,0,21253,'body',0,6303,460,6302,1482637147,1,6116),(121,2,109,0,21254,'body',0,6304,461,6116,1482637147,1,6303),(121,2,109,0,21255,'body',0,6285,462,6303,1482637147,1,6304),(121,2,109,0,21256,'body',0,6305,463,6304,1482637147,1,6285),(121,2,109,0,21257,'body',0,6296,464,6285,1482637147,1,6305),(121,2,109,0,21258,'body',0,6242,465,6305,1482637147,1,6296),(121,2,109,0,21259,'body',0,6300,466,6296,1482637147,1,6242),(121,2,109,0,21260,'body',0,1542,467,6242,1482637147,1,6300),(121,2,109,0,21261,'body',0,6306,468,6300,1482637147,1,1542),(121,2,109,0,21262,'body',0,6307,469,1542,1482637147,1,6306),(121,2,109,0,21263,'body',0,6308,470,6306,1482637147,1,6307),(121,2,109,0,21264,'body',0,6309,471,6307,1482637147,1,6308),(121,2,109,0,21265,'body',0,6310,472,6308,1482637147,1,6309),(121,2,109,0,21266,'body',0,6242,473,6309,1482637147,1,6310),(121,2,109,0,21267,'body',0,6311,474,6310,1482637147,1,6242),(121,2,109,0,21268,'body',0,6312,475,6242,1482637147,1,6311),(121,2,109,0,21269,'body',0,6242,476,6311,1482637147,1,6312),(121,2,109,0,21270,'body',0,6245,477,6312,1482637147,1,6242),(121,2,109,0,21271,'body',0,6240,478,6242,1482637147,1,6245),(121,2,109,0,21272,'body',0,1553,479,6245,1482637147,1,6240),(121,2,109,0,21273,'body',0,6313,480,6240,1482637147,1,1553),(121,2,109,0,21274,'body',0,1527,481,1553,1482637147,1,6313),(121,2,109,0,21275,'body',0,6314,482,6313,1482637147,1,1527),(121,2,109,0,21276,'body',0,6315,483,1527,1482637147,1,6314),(121,2,109,0,21277,'body',0,6316,484,6314,1482637147,1,6315),(121,2,109,0,21278,'body',0,6317,485,6315,1482637147,1,6316),(121,2,109,0,21279,'body',0,6242,486,6316,1482637147,1,6317),(121,2,109,0,21280,'body',0,6177,487,6317,1482637147,1,6242),(121,2,109,0,21281,'body',0,6318,488,6242,1482637147,1,6177),(121,2,109,0,21282,'body',0,6242,489,6177,1482637147,1,6318),(121,2,109,0,21283,'body',0,6182,490,6318,1482637147,1,6242),(121,2,109,0,21284,'body',0,1542,491,6242,1482637147,1,6182),(121,2,109,0,21285,'body',0,6319,492,6182,1482637147,1,1542),(121,2,109,0,21286,'body',0,6320,493,1542,1482637147,1,6319),(121,2,109,0,21287,'body',0,1125,494,6319,1482637147,1,6320),(121,2,109,0,21288,'body',0,814,495,6320,1482637147,1,1125),(121,2,109,0,21289,'body',0,6321,496,1125,1482637147,1,814),(121,2,109,0,21290,'body',0,6227,497,814,1482637147,1,6321),(121,2,109,0,21291,'body',0,6322,498,6321,1482637147,1,6227),(121,2,109,0,21292,'body',0,6323,499,6227,1482637147,1,6322),(121,2,109,0,21293,'body',0,6324,500,6322,1482637147,1,6323),(121,2,109,0,21294,'body',0,6252,501,6323,1482637147,1,6324),(121,2,109,0,21295,'body',0,6242,502,6324,1482637147,1,6252),(121,2,109,0,21296,'body',0,6210,503,6252,1482637147,1,6242),(121,2,109,0,21297,'body',0,6211,504,6242,1482637147,1,6210),(121,2,109,0,21298,'body',0,1553,505,6210,1482637147,1,6211),(121,2,109,0,21299,'body',0,6325,506,6211,1482637147,1,1553),(121,2,109,0,21300,'body',0,6326,507,1553,1482637147,1,6325),(121,2,109,0,21301,'body',0,6327,508,6325,1482637147,1,6326),(121,2,109,0,21302,'body',0,1527,509,6326,1482637147,1,6327),(121,2,109,0,21303,'body',0,814,510,6327,1482637147,1,1527),(121,2,109,0,21304,'body',0,6328,511,1527,1482637147,1,814),(121,2,109,0,21305,'body',0,6329,512,814,1482637147,1,6328),(121,2,109,0,21306,'body',0,6287,513,6328,1482637147,1,6329),(121,2,109,0,21307,'body',0,816,514,6329,1482637147,1,6287),(121,2,109,0,21308,'body',0,6132,515,6287,1482637147,1,816),(121,2,109,0,21309,'body',0,1553,516,816,1482637147,1,6132),(121,2,109,0,21310,'body',0,814,517,6132,1482637147,1,1553),(121,2,109,0,21311,'body',0,6330,518,1553,1482637147,1,814),(121,2,109,0,21312,'body',0,6329,519,814,1482637147,1,6330),(121,2,109,0,21313,'body',0,6118,520,6330,1482637147,1,6329),(121,2,109,0,21314,'body',0,6287,521,6329,1482637147,1,6118),(121,2,109,0,21315,'body',0,6331,522,6118,1482637147,1,6287),(121,2,109,0,21316,'body',0,6176,523,6287,1482637147,1,6331),(121,2,109,0,21317,'body',0,6332,524,6331,1482637147,1,6176),(121,2,109,0,21318,'body',0,1903,525,6176,1482637147,1,6332),(121,2,109,0,21319,'body',0,6140,526,6332,1482637147,1,1903),(121,2,109,0,21320,'body',0,6333,527,1903,1482637147,1,6140),(121,2,109,0,21321,'body',0,6334,528,6140,1482637147,1,6333),(121,2,109,0,21322,'body',0,814,529,6333,1482637147,1,6334),(121,2,109,0,21323,'body',0,6335,530,6334,1482637147,1,814),(121,2,109,0,21324,'body',0,1573,531,814,1482637147,1,6335),(121,2,109,0,21325,'body',0,6336,532,6335,1482637147,1,1573),(121,2,109,0,21326,'body',0,6251,533,1573,1482637147,1,6336),(121,2,109,0,21327,'body',0,6337,534,6336,1482637147,1,6251),(121,2,109,0,21328,'body',0,1553,535,6251,1482637147,1,6337),(121,2,109,0,21329,'body',0,6298,536,6337,1482637147,1,1553),(121,2,109,0,21330,'body',0,1125,537,1553,1482637147,1,6298),(121,2,109,0,21331,'body',0,6198,538,6298,1482637147,1,1125),(121,2,109,0,21332,'body',0,6338,539,1125,1482637147,1,6198),(121,2,109,0,21333,'body',0,6339,540,6198,1482637147,1,6338),(121,2,109,0,21334,'body',0,1527,541,6338,1482637147,1,6339),(121,2,109,0,21335,'body',0,6340,542,6339,1482637147,1,1527),(121,2,109,0,21336,'body',0,6341,543,1527,1482637147,1,6340),(121,2,109,0,21337,'body',0,6342,544,6340,1482637147,1,6341),(121,2,109,0,21338,'body',0,6343,545,6341,1482637147,1,6342),(121,2,109,0,21339,'body',0,1903,546,6342,1482637147,1,6343),(121,2,109,0,21340,'body',0,6344,547,6343,1482637147,1,1903),(121,2,109,0,21341,'body',0,1553,548,1903,1482637147,1,6344),(121,2,109,0,21342,'body',0,6235,549,6344,1482637147,1,1553),(121,2,109,0,21343,'body',0,6345,550,1553,1482637147,1,6235),(121,2,109,0,21344,'body',0,1747,551,6235,1482637147,1,6345),(121,2,109,0,21345,'body',0,2382,552,6345,1482637147,1,1747),(121,2,109,0,21346,'body',0,1125,553,1747,1482637147,1,2382),(121,2,109,0,21347,'body',0,1126,554,2382,1482637147,1,1125),(121,2,109,0,21348,'body',0,2383,555,1125,1482637147,1,1126),(121,2,109,0,21349,'body',0,1886,556,1126,1482637147,1,2383),(121,2,109,0,21350,'body',0,6346,557,2383,1482637147,1,1886),(121,2,109,0,21351,'body',0,2385,558,1886,1482637147,1,6346),(121,2,109,0,21352,'body',0,6347,559,6346,1482637147,1,2385),(121,2,109,0,21353,'body',0,6296,560,2385,1482637147,1,6347),(121,2,109,0,21354,'body',0,1903,561,6347,1482637147,1,6296),(121,2,109,0,21355,'body',0,6348,562,6296,1482637147,1,1903),(121,2,109,0,21356,'body',0,6349,563,1903,1482637147,1,6348),(121,2,109,0,21357,'body',0,6350,564,6348,1482637147,1,6349),(121,2,109,0,21358,'body',0,1125,565,6349,1482637147,1,6350),(121,2,109,0,21359,'body',0,1121,566,6350,1482637147,1,1125),(121,2,109,0,21360,'body',0,2390,567,1125,1482637147,1,1121),(121,2,109,0,21361,'body',0,6168,568,1121,1482637147,1,2390),(121,2,109,0,21362,'body',0,6351,569,2390,1482637147,1,6168),(121,2,109,0,21363,'body',0,6352,570,6168,1482637147,1,6351),(121,2,109,0,21364,'body',0,6228,571,6351,1482637147,1,6352),(121,2,109,0,21365,'body',0,6353,572,6352,1482637147,1,6228),(121,2,109,0,21366,'body',0,1527,573,6228,1482637147,1,6353),(121,2,109,0,21367,'body',0,6307,574,6353,1482637147,1,1527),(121,2,109,0,21368,'body',0,6337,575,1527,1482637147,1,6307),(121,2,109,0,21369,'body',0,6354,576,6307,1482637147,1,6337),(121,2,109,0,21370,'body',0,6312,577,6337,1482637147,1,6354),(121,2,109,0,21371,'body',0,1903,578,6354,1482637147,1,6312),(121,2,109,0,21372,'body',0,6355,579,6312,1482637147,1,1903),(121,2,109,0,21373,'body',0,1553,580,1903,1482637147,1,6355),(121,2,109,0,21374,'body',0,6356,581,6355,1482637147,1,1553),(121,2,109,0,21375,'body',0,1527,582,1553,1482637147,1,6356),(121,2,109,0,21376,'body',0,6307,583,6356,1482637147,1,1527),(121,2,109,0,21377,'body',0,6314,584,1527,1482637147,1,6307),(121,2,109,0,21378,'body',0,6357,585,6307,1482637147,1,6314),(121,2,109,0,21379,'body',0,6308,586,6314,1482637147,1,6357),(121,2,109,0,21380,'body',0,6285,587,6357,1482637147,1,6308),(121,2,109,0,21381,'body',0,1573,588,6308,1482637147,1,6285),(121,2,109,0,21382,'body',0,6120,589,6285,1482637147,1,1573),(121,2,109,0,21383,'body',0,6308,590,1573,1482637147,1,6120),(121,2,109,0,21384,'body',0,6358,591,6120,1482637147,1,6308),(121,2,109,0,21385,'body',0,6359,592,6308,1482637147,1,6358),(121,2,109,0,21386,'body',0,1903,593,6358,1482637147,1,6359),(121,2,109,0,21387,'body',0,6348,594,6359,1482637147,1,1903),(121,2,109,0,21388,'body',0,6349,595,1903,1482637147,1,6348),(121,2,109,0,21389,'body',0,814,596,6348,1482637147,1,6349),(121,2,109,0,21390,'body',0,6357,597,6349,1482637147,1,814),(121,2,109,0,21391,'body',0,1527,598,814,1482637147,1,6357),(121,2,109,0,21392,'body',0,6162,599,6357,1482637147,1,1527),(121,2,109,0,21393,'body',0,1553,600,1527,1482637147,1,6162),(121,2,109,0,21394,'body',0,6360,601,6162,1482637147,1,1553),(121,2,109,0,21395,'body',0,6361,602,1553,1482637147,1,6360),(121,2,109,0,21396,'body',0,6161,603,6360,1482637147,1,6361),(121,2,109,0,21397,'body',0,1553,604,6361,1482637147,1,6161),(121,2,109,0,21398,'body',0,6362,605,6161,1482637147,1,1553),(121,2,109,0,21399,'body',0,6363,606,1553,1482637147,1,6362),(121,2,109,0,21400,'body',0,6364,607,6362,1482637147,1,6363),(121,2,109,0,21401,'body',0,6228,608,6363,1482637147,1,6364),(121,2,109,0,21402,'body',0,6285,609,6364,1482637147,1,6228),(121,2,109,0,21403,'body',0,6365,610,6228,1482637147,1,6285),(121,2,109,0,21404,'body',0,6366,611,6285,1482637147,1,6365),(121,2,109,0,21405,'body',0,1903,612,6365,1482637147,1,6366),(121,2,109,0,21406,'body',0,6117,613,6366,1482637147,1,1903),(121,2,109,0,21407,'body',0,6246,614,1903,1482637147,1,6117),(121,2,109,0,21408,'body',0,1527,615,6117,1482637147,1,6246),(121,2,109,0,21409,'body',0,6168,616,6246,1482637147,1,1527),(121,2,109,0,21410,'body',0,6169,617,1527,1482637147,1,6168),(121,2,109,0,21411,'body',0,1553,618,6168,1482637147,1,6169),(121,2,109,0,21412,'body',0,1532,619,6169,1482637147,1,1553),(121,2,109,0,21413,'body',0,6367,620,1553,1482637147,1,1532),(121,2,109,0,21414,'body',0,6368,621,1532,1482637147,1,6367),(121,2,109,0,21415,'body',0,6369,622,6367,1482637147,1,6368),(121,2,109,0,21416,'body',0,1218,623,6368,1482637147,1,6369),(121,2,109,0,21417,'body',0,6344,624,6369,1482637147,1,1218),(121,2,109,0,21418,'body',0,6370,625,1218,1482637147,1,6344),(121,2,109,0,21419,'body',0,2385,626,6344,1482637147,1,6370),(121,2,109,0,21420,'body',0,1218,627,6370,1482637147,1,2385),(121,2,109,0,21421,'body',0,6371,628,2385,1482637147,1,1218),(121,2,109,0,21422,'body',0,6372,629,1218,1482637147,1,6371),(121,2,109,0,21423,'body',0,6366,630,6371,1482637147,1,6372),(121,2,109,0,21424,'body',0,1903,631,6372,1482637147,1,6366),(121,2,109,0,21425,'body',0,6348,632,6366,1482637147,1,1903),(121,2,109,0,21426,'body',0,6349,633,1903,1482637147,1,6348),(121,2,109,0,21427,'body',0,1189,634,6348,1482637147,1,6349),(121,2,109,0,21428,'body',0,6373,635,6349,1482637147,1,1189),(121,2,109,0,21429,'body',0,6374,636,1189,1482637147,1,6373),(121,2,109,0,21430,'body',0,1123,637,6373,1482637147,1,6374),(121,2,109,0,21431,'body',0,6369,638,6374,1482637147,1,1123),(121,2,109,0,21432,'body',0,1218,639,1123,1482637147,1,6369),(121,2,109,0,21433,'body',0,6344,640,6369,1482637147,1,1218),(121,2,109,0,21434,'body',0,2382,641,1218,1482637147,1,6344),(121,2,109,0,21435,'body',0,1912,642,6344,1482637147,1,2382),(121,2,109,0,21436,'body',0,1748,643,2382,1482637147,1,1912),(121,2,109,0,21437,'body',0,1123,644,1912,1482637147,1,1748),(121,2,109,0,21438,'body',0,6375,645,1748,1482637147,1,1123),(121,2,109,0,21439,'body',0,1125,646,1123,1482637147,1,6375),(121,2,109,0,21440,'body',0,1126,647,6375,1482637147,1,1125),(121,2,109,0,21441,'body',0,6376,648,1125,1482637147,1,1126),(121,2,109,0,21442,'body',0,2417,649,1126,1482637147,1,6376),(121,2,109,0,21443,'body',0,1120,650,6376,1482637147,1,2417),(121,2,109,0,21444,'body',0,6377,651,2417,1482637147,1,1120),(121,2,109,0,21445,'body',0,2044,652,1120,1482637147,1,6377),(121,2,109,0,21446,'body',0,6252,653,6377,1482637147,1,2044),(121,2,109,0,21447,'body',0,6147,654,2044,1482637147,1,6252),(121,2,109,0,21448,'body',0,6348,655,6252,1482637147,1,6147),(121,2,109,0,21449,'body',0,6349,656,6147,1482637147,1,6348),(121,2,109,0,21450,'body',0,6182,657,6348,1482637147,1,6349),(121,2,109,0,21451,'body',0,1542,658,6349,1482637147,1,6182),(121,2,109,0,21452,'body',0,6378,659,6182,1482637147,1,1542),(121,2,109,0,21453,'body',0,6164,660,1542,1482637147,1,6378),(121,2,109,0,21454,'body',0,6308,661,6378,1482637147,1,6164),(121,2,109,0,21455,'body',0,1553,662,6164,1482637147,1,6308),(121,2,109,0,21456,'body',0,6379,663,6308,1482637147,1,1553),(121,2,109,0,21457,'body',0,6380,664,1553,1482637147,1,6379),(121,2,109,0,21458,'body',0,1801,665,6379,1482637147,1,6380),(121,2,109,0,21459,'body',0,6120,666,6380,1482637147,1,1801),(121,2,109,0,21460,'body',0,6381,667,1801,1482637147,1,6120),(121,2,109,0,21461,'body',0,6285,668,6120,1482637147,1,6381),(121,2,109,0,21462,'body',0,1527,669,6381,1482637147,1,6285),(121,2,109,0,21463,'body',0,6294,670,6285,1482637147,1,1527),(121,2,109,0,21464,'body',0,6115,671,1527,1482637147,1,6294),(121,2,109,0,21465,'body',0,952,672,6294,1482637147,1,6115),(121,2,109,0,21466,'body',0,6295,673,6115,1482637147,1,952),(121,2,109,0,21467,'body',0,6296,674,952,1482637147,1,6295),(121,2,109,0,21468,'body',0,6112,675,6295,1482637147,1,6296),(121,2,109,0,21469,'body',0,6382,676,6296,1482637147,1,6112),(121,2,109,0,21470,'body',0,6240,677,6112,1482637147,1,6382),(121,2,109,0,21471,'body',0,1553,678,6382,1482637147,1,6240),(121,2,109,0,21472,'body',0,6383,679,6240,1482637147,1,1553),(121,2,109,0,21473,'body',0,3701,680,1553,1482637147,1,6383),(121,2,109,0,21474,'body',0,6384,681,6383,1482637147,1,3701),(121,2,109,0,21475,'body',0,2390,682,3701,1482637147,1,6384),(121,2,109,0,21476,'body',0,1125,683,6384,1482637147,1,2390),(121,2,109,0,21477,'body',0,1126,684,2390,1482637147,1,1125),(121,2,109,0,21478,'body',0,1817,685,1125,1482637147,1,1126),(121,2,109,0,21479,'body',0,1818,686,1126,1482637147,1,1817),(121,2,109,0,21480,'body',0,6385,687,1817,1482637147,1,1818),(121,2,109,0,21481,'body',0,6386,688,1818,1482637147,1,6385),(121,2,109,0,21482,'body',0,6112,689,6385,1482637147,1,6386),(121,2,109,0,21483,'body',0,6140,690,6386,1482637147,1,6112),(121,2,109,0,21484,'body',0,6333,691,6112,1482637147,1,6140),(121,2,109,0,21485,'body',0,1527,692,6140,1482637147,1,6333),(121,2,109,0,21486,'body',0,814,693,6333,1482637147,1,1527),(121,2,109,0,21487,'body',0,6142,694,1527,1482637147,1,814),(121,2,109,0,21488,'body',0,6244,695,814,1482637147,1,6142),(121,2,109,0,21489,'body',0,6387,696,6142,1482637147,1,6244),(121,2,109,0,21490,'body',0,1125,697,6244,1482637147,1,6387),(121,2,109,0,21491,'body',0,6388,698,6387,1482637147,1,1125),(121,2,109,0,21492,'body',0,6123,699,1125,1482637147,1,6388),(121,2,109,0,21493,'body',0,1527,700,6388,1482637147,1,6123),(121,2,109,0,21494,'body',0,6298,701,6123,1482637147,1,1527),(121,2,109,0,21495,'body',0,6388,702,1527,1482637147,1,6298),(121,2,109,0,21496,'body',0,6366,703,6298,1482637147,1,6388),(121,2,109,0,21497,'body',0,6112,704,6388,1482637147,1,6366),(121,2,109,0,21498,'body',0,6348,705,6366,1482637147,1,6112),(121,2,109,0,21499,'body',0,6349,706,6112,1482637147,1,6348),(121,2,109,0,21500,'body',0,6389,707,6348,1482637147,1,6349),(121,2,109,0,21501,'body',0,1230,708,6349,1482637147,1,6389),(121,2,109,0,21502,'body',0,6390,709,6389,1482637147,1,1230),(121,2,109,0,21503,'body',0,6391,710,1230,1482637147,1,6390),(121,2,109,0,21504,'body',0,6392,711,6390,1482637147,1,6391),(121,2,109,0,21505,'body',0,6236,712,6391,1482637147,1,6392),(121,2,109,0,21506,'body',0,1527,713,6392,1482637147,1,6236),(121,2,109,0,21507,'body',0,6165,714,6236,1482637147,1,1527),(121,2,109,0,21508,'body',0,6166,715,1527,1482637147,1,6165),(121,2,109,0,21509,'body',0,1515,716,6165,1482637147,1,6166),(121,2,109,0,21510,'body',0,6393,717,6166,1482637147,1,1515),(121,2,109,0,21511,'body',0,1573,718,1515,1482637147,1,6393),(121,2,109,0,21512,'body',0,814,719,6393,1482637147,1,1573),(121,2,109,0,21513,'body',0,6394,720,1573,1482637147,1,814),(121,2,109,0,21514,'body',0,1553,721,814,1482637147,1,6394),(121,2,109,0,21515,'body',0,1801,722,6394,1482637147,1,1553),(121,2,109,0,21516,'body',0,6395,723,1553,1482637147,1,1801),(121,2,109,0,21517,'body',0,1544,724,1801,1482637147,1,6395),(121,2,109,0,21518,'body',0,1557,725,6395,1482637147,1,1544),(121,2,109,0,21519,'body',0,6396,726,1544,1482637147,1,1557),(121,2,109,0,21520,'body',0,1524,727,1557,1482637147,1,6396),(121,2,109,0,21521,'body',0,6397,728,6396,1482637147,1,1524),(121,2,109,0,21522,'body',0,6398,729,1524,1482637147,1,6397),(121,2,109,0,21523,'body',0,6399,730,6397,1482637147,1,6398),(121,2,109,0,21524,'body',0,6400,731,6398,1482637147,1,6399),(121,2,109,0,21525,'body',0,6401,732,6399,1482637147,1,6400),(121,2,109,0,21526,'body',0,6133,733,6400,1482637147,1,6401),(121,2,109,0,21527,'body',0,1549,734,6401,1482637147,1,6133),(121,2,109,0,21528,'body',0,1544,735,6133,1482637147,1,1549),(121,2,109,0,21529,'body',0,6402,736,1549,1482637147,1,1544),(121,2,109,0,21530,'body',0,6178,737,1544,1482637147,1,6402),(121,2,109,0,21531,'body',0,6403,738,6402,1482637147,1,6178),(121,2,109,0,21532,'body',0,1524,739,6178,1482637147,1,6403),(121,2,109,0,21533,'body',0,6176,740,6403,1482637147,1,1524),(121,2,109,0,21534,'body',0,1527,741,1524,1482637147,1,6176),(121,2,109,0,21535,'body',0,6404,742,6176,1482637147,1,1527),(121,2,109,0,21536,'body',0,1553,743,1527,1482637147,1,6404),(121,2,109,0,21537,'body',0,6405,744,6404,1482637147,1,1553),(121,2,109,0,21538,'body',0,1511,745,1553,1482637147,1,6405),(121,2,109,0,21539,'body',0,2042,746,6405,1482637147,1,1511),(121,2,109,0,21540,'body',0,6392,747,1511,1482637147,1,2042),(121,2,109,0,21541,'body',0,6406,748,2042,1482637147,1,6392),(121,2,109,0,21542,'body',0,6204,749,6392,1482637147,1,6406),(121,2,109,0,21543,'body',0,1553,750,6406,1482637147,1,6204),(121,2,109,0,21544,'body',0,6245,751,6204,1482637147,1,1553),(121,2,109,0,21545,'body',0,6240,752,1553,1482637147,1,6245),(121,2,109,0,21546,'body',0,6402,753,6245,1482637147,1,6240),(121,2,109,0,21547,'body',0,6403,754,6240,1482637147,1,6402),(121,2,109,0,21548,'body',0,6407,755,6402,1482637147,1,6403),(121,2,109,0,21549,'body',0,6408,756,6403,1482637147,1,6407),(121,2,109,0,21550,'body',0,6186,757,6407,1482637147,1,6408),(121,2,109,0,21551,'body',0,6392,758,6408,1482637147,1,6186),(121,2,109,0,21552,'body',0,6140,759,6186,1482637147,1,6392),(121,2,109,0,21553,'body',0,6333,760,6392,1482637147,1,6140),(121,2,109,0,21554,'body',0,1527,761,6140,1482637147,1,6333),(121,2,109,0,21555,'body',0,6142,762,6333,1482637147,1,1527),(121,2,109,0,21556,'body',0,1549,763,1527,1482637147,1,6142),(121,2,109,0,21557,'body',0,6403,764,6142,1482637147,1,1549),(121,2,109,0,21558,'body',0,6407,765,1549,1482637147,1,6403),(121,2,109,0,21559,'body',0,6409,766,6403,1482637147,1,6407),(121,2,109,0,21560,'body',0,6221,767,6407,1482637147,1,6409),(121,2,109,0,21561,'body',0,1125,768,6409,1482637147,1,6221),(121,2,109,0,21562,'body',0,2044,769,6221,1482637147,1,1125),(121,2,109,0,21563,'body',0,6410,770,1125,1482637147,1,2044),(121,2,109,0,21564,'body',0,985,771,2044,1482637147,1,6410),(121,2,109,0,21565,'body',0,6411,772,6410,1482637147,1,985),(121,2,109,0,21566,'body',0,1123,773,985,1482637147,1,6411),(121,2,109,0,21567,'body',0,2110,774,6411,1482637147,1,1123),(121,2,109,0,21568,'body',0,6412,775,1123,1482637147,1,2110),(121,2,109,0,21569,'body',0,1125,776,2110,1482637147,1,6412),(121,2,109,0,21570,'body',0,1817,777,6412,1482637147,1,1125),(121,2,109,0,21571,'body',0,2390,778,1125,1482637147,1,1817),(121,2,109,0,21572,'body',0,3730,779,1817,1482637147,1,2390),(121,2,109,0,21573,'body',0,1123,780,2390,1482637147,1,3730),(121,2,109,0,21574,'body',0,6413,781,3730,1482637147,1,1123),(121,2,109,0,21575,'body',0,1145,782,1123,1482637147,1,6413),(121,2,109,0,21576,'body',0,1126,783,6413,1482637147,1,1145),(121,2,109,0,21577,'body',0,6414,784,1145,1482637147,1,1126),(121,2,109,0,21578,'body',0,985,785,1126,1482637147,1,6414),(121,2,109,0,21579,'body',0,1121,786,6414,1482637147,1,985),(121,2,109,0,21580,'body',0,6415,787,985,1482637147,1,1121),(121,2,109,0,21581,'body',0,1169,788,1121,1482637147,1,6415),(121,2,109,0,21582,'body',0,6416,789,6415,1482637147,1,1169),(121,2,109,0,21583,'body',0,6417,790,1169,1482637147,1,6416),(121,2,109,0,21584,'body',0,1911,791,6416,1482637147,1,6417),(121,2,109,0,21585,'body',0,6418,792,6417,1482637147,1,1911),(121,2,109,0,21586,'body',0,6419,793,1911,1482637147,1,6418),(121,2,109,0,21587,'body',0,6420,794,6418,1482637147,1,6419),(121,2,109,0,21588,'body',0,992,795,6419,1482637147,1,6420),(121,2,109,0,21589,'body',0,6421,796,6420,1482637147,1,992),(121,2,109,0,21590,'body',0,2042,797,992,1482637147,1,6421),(121,2,109,0,21591,'body',0,992,798,6421,1482637147,1,2042),(121,2,109,0,21592,'body',0,6422,799,2042,1482637147,1,992),(121,2,109,0,21593,'body',0,6423,800,992,1482637147,1,6422),(121,2,109,0,21594,'body',0,6147,801,6422,1482637147,1,6423),(121,2,109,0,21595,'body',0,6410,802,6423,1482637147,1,6147),(121,2,109,0,21596,'body',0,1121,803,6147,1482637147,1,6410),(121,2,109,0,21597,'body',0,1209,804,6410,1482637147,1,1121),(121,2,109,0,21598,'body',0,1169,805,1121,1482637147,1,1209),(121,2,109,0,21599,'body',0,2110,806,1209,1482637147,1,1169),(121,2,109,0,21600,'body',0,6424,807,1169,1482637147,1,2110),(121,2,109,0,21601,'body',0,1125,808,2110,1482637147,1,6424),(121,2,109,0,21602,'body',0,1817,809,6424,1482637147,1,1125),(121,2,109,0,21603,'body',0,2390,810,1125,1482637147,1,1817),(121,2,109,0,21604,'body',0,3730,811,1817,1482637147,1,2390),(121,2,109,0,21605,'body',0,1123,812,2390,1482637147,1,3730),(121,2,109,0,21606,'body',0,6413,813,3730,1482637147,1,1123),(121,2,109,0,21607,'body',0,1145,814,1123,1482637147,1,6413),(121,2,109,0,21608,'body',0,1126,815,6413,1482637147,1,1145),(121,2,109,0,21609,'body',0,6414,816,1145,1482637147,1,1126),(121,2,109,0,21610,'body',0,985,817,1126,1482637147,1,6414),(121,2,109,0,21611,'body',0,1121,818,6414,1482637147,1,985),(121,2,109,0,21612,'body',0,6415,819,985,1482637147,1,1121),(121,2,109,0,21613,'body',0,1169,820,1121,1482637147,1,6415),(121,2,109,0,21614,'body',0,6416,821,6415,1482637147,1,1169),(121,2,109,0,21615,'body',0,6417,822,1169,1482637147,1,6416),(121,2,109,0,21616,'body',0,1911,823,6416,1482637147,1,6417),(121,2,109,0,21617,'body',0,6418,824,6417,1482637147,1,1911),(121,2,109,0,21618,'body',0,6419,825,1911,1482637147,1,6418),(121,2,109,0,21619,'body',0,6420,826,6418,1482637147,1,6419),(121,2,109,0,21620,'body',0,994,827,6419,1482637147,1,6420),(121,2,109,0,21621,'body',0,6421,828,6420,1482637147,1,994),(121,2,109,0,21622,'body',0,2042,829,994,1482637147,1,6421),(121,2,109,0,21623,'body',0,994,830,6421,1482637147,1,2042),(121,2,109,0,21624,'body',0,6129,831,2042,1482637147,1,994),(121,2,109,0,21625,'body',0,6423,832,994,1482637147,1,6129),(121,2,109,0,21626,'body',0,6147,833,6129,1482637147,1,6423),(121,2,109,0,21627,'body',0,6410,834,6423,1482637147,1,6147),(121,2,109,0,21628,'body',0,985,835,6147,1482637147,1,6410),(121,2,109,0,21629,'body',0,1828,836,6410,1482637147,1,985),(121,2,109,0,21630,'body',0,6425,837,985,1482637147,1,1828),(121,2,109,0,21631,'body',0,1123,838,1828,1482637147,1,6425),(121,2,109,0,21632,'body',0,1828,839,6425,1482637147,1,1123),(121,2,109,0,21633,'body',0,1987,840,1123,1482637147,1,1828),(121,2,109,0,21634,'body',0,3730,841,1828,1482637147,1,1987),(121,2,109,0,21635,'body',0,1123,842,1987,1482637147,1,3730),(121,2,109,0,21636,'body',0,6413,843,3730,1482637147,1,1123),(121,2,109,0,21637,'body',0,1145,844,1123,1482637147,1,6413),(121,2,109,0,21638,'body',0,1126,845,6413,1482637147,1,1145),(121,2,109,0,21639,'body',0,6414,846,1145,1482637147,1,1126),(121,2,109,0,21640,'body',0,985,847,1126,1482637147,1,6414),(121,2,109,0,21641,'body',0,1121,848,6414,1482637147,1,985),(121,2,109,0,21642,'body',0,6415,849,985,1482637147,1,1121),(121,2,109,0,21643,'body',0,1169,850,1121,1482637147,1,6415),(121,2,109,0,21644,'body',0,6416,851,6415,1482637147,1,1169),(121,2,109,0,21645,'body',0,6417,852,1169,1482637147,1,6416),(121,2,109,0,21646,'body',0,1911,853,6416,1482637147,1,6417),(121,2,109,0,21647,'body',0,6418,854,6417,1482637147,1,1911),(121,2,109,0,21648,'body',0,6419,855,1911,1482637147,1,6418),(121,2,109,0,21649,'body',0,6421,856,6418,1482637147,1,6419),(121,2,109,0,21650,'body',0,2042,857,6419,1482637147,1,6421),(121,2,109,0,21651,'body',0,6426,858,6421,1482637147,1,2042),(121,2,109,0,21652,'body',0,6427,859,2042,1482637147,1,6426),(121,2,109,0,21653,'body',0,6147,860,6426,1482637147,1,6427),(121,2,109,0,21654,'body',0,6410,861,6427,1482637147,1,6147),(121,2,109,0,21655,'body',0,6210,862,6147,1482637147,1,6410),(121,2,109,0,21656,'body',0,6211,863,6410,1482637147,1,6210),(121,2,109,0,21657,'body',0,1553,864,6210,1482637147,1,6211),(121,2,109,0,21658,'body',0,6325,865,6211,1482637147,1,1553),(121,2,109,0,21659,'body',0,6138,866,1553,1482637147,1,6325),(121,2,109,0,21660,'body',0,1125,867,6325,1482637147,1,6138),(121,2,109,0,21661,'body',0,6428,868,6138,1482637147,1,1125),(121,2,109,0,21662,'body',0,1126,869,1125,1482637147,1,6428),(121,2,109,0,21663,'body',0,6429,870,6428,1482637147,1,1126),(121,2,109,0,21664,'body',0,6430,871,1126,1482637147,1,6429),(121,2,109,0,21665,'body',0,6431,872,6429,1482637147,1,6430),(121,2,109,0,21666,'body',0,1169,873,6430,1482637147,1,6431),(121,2,109,0,21667,'body',0,6432,874,6431,1482637147,1,1169),(121,2,109,0,21668,'body',0,6433,875,1169,1482637147,1,6432),(121,2,109,0,21669,'body',0,1123,876,6432,1482637147,1,6433),(121,2,109,0,21670,'body',0,6434,877,6433,1482637147,1,1123),(121,2,109,0,21671,'body',0,6435,878,1123,1482637147,1,6434),(121,2,109,0,21672,'body',0,6323,879,6434,1482637147,1,6435),(121,2,109,0,21673,'body',0,2478,880,6435,1482637147,1,6323),(121,2,109,0,21674,'body',0,1126,881,6323,1482637147,1,2478),(121,2,109,0,21675,'body',0,6436,882,2478,1482637147,1,1126),(121,2,109,0,21676,'body',0,6280,883,1126,1482637147,1,6436),(121,2,109,0,21677,'body',0,6437,884,6436,1482637147,1,6280),(121,2,109,0,21678,'body',0,6438,885,6280,1482637147,1,6437),(121,2,109,0,21679,'body',0,1850,886,6437,1482637147,1,6438),(121,2,109,0,21680,'body',0,6439,887,6438,1482637147,1,1850),(121,2,109,0,21681,'body',0,6440,888,1850,1482637147,1,6439),(121,2,109,0,21682,'body',0,6441,889,6439,1482637147,1,6440),(121,2,109,0,21683,'body',0,6442,890,6440,1482637147,1,6441),(121,2,109,0,21684,'body',0,6443,891,6441,1482637147,1,6442),(121,2,109,0,21685,'body',0,995,892,6442,1482637147,1,6443),(121,2,109,0,21686,'body',0,6444,893,6443,1482637147,1,995),(121,2,109,0,21687,'body',0,6445,894,995,1482637147,1,6444),(121,2,109,0,21688,'body',0,6146,895,6444,1482637147,1,6445),(121,2,109,0,21689,'body',0,6446,896,6445,1482637147,1,6146),(121,2,109,0,21690,'body',0,6147,897,6146,1482637147,1,6446),(121,2,109,0,21691,'body',0,6410,898,6446,1482637147,1,6147),(121,2,109,0,21692,'body',0,6344,899,6147,1482637147,1,6410),(121,2,109,0,21693,'body',0,1553,900,6410,1482637147,1,6344),(121,2,109,0,21694,'body',0,6235,901,6344,1482637147,1,1553),(121,2,109,0,21695,'body',0,6345,902,1553,1482637147,1,6235),(121,2,109,0,21696,'body',0,1521,903,6235,1482637147,1,6345),(121,2,109,0,21697,'body',0,1522,904,6345,1482637147,1,1521),(121,2,109,0,21698,'body',0,6138,905,1521,1482637147,1,1522),(121,2,109,0,21699,'body',0,1125,906,1522,1482637147,1,6138),(121,2,109,0,21700,'body',0,6447,907,6138,1482637147,1,1125),(121,2,109,0,21701,'body',0,6440,908,1125,1482637147,1,6447),(121,2,109,0,21702,'body',0,6448,909,6447,1482637147,1,6440),(121,2,109,0,21703,'body',0,6251,910,6440,1482637147,1,6448),(121,2,109,0,21704,'body',0,1553,911,6448,1482637147,1,6251),(121,2,109,0,21705,'body',0,6337,912,6251,1482637147,1,1553),(121,2,109,0,21706,'body',0,6221,913,1553,1482637147,1,6337),(121,2,109,0,21707,'body',0,0,914,6337,1482637147,1,6221),(1,2,113,0,21708,'title',0,986,0,0,1482638992,1,985),(1,2,113,0,21709,'title',0,1828,1,985,1482638992,1,986),(121,2,113,0,21710,'body',0,1042,2,986,1482638992,1,1828),(121,2,113,0,21711,'body',0,1043,3,1828,1482638992,1,1042),(121,2,113,0,21712,'body',0,2043,4,1042,1482638992,1,1043),(121,2,113,0,21713,'body',0,1120,5,1043,1482638992,1,2043),(121,2,113,0,21714,'body',0,1816,6,2043,1482638992,1,1120),(121,2,113,0,21715,'body',0,2571,7,1120,1482638992,1,1816),(121,2,113,0,21716,'body',0,1123,8,1816,1482638992,1,2571),(121,2,113,0,21717,'body',0,1747,9,2571,1482638992,1,1123),(121,2,113,0,21718,'body',0,2572,10,1123,1482638992,1,1747),(121,2,113,0,21719,'body',0,2573,11,1747,1482638992,1,2572),(121,2,113,0,21720,'body',0,2574,12,2572,1482638992,1,2573),(121,2,113,0,21721,'body',0,1166,13,2573,1482638992,1,2574),(121,2,113,0,21722,'body',0,3912,14,2574,1482638992,1,1166),(121,2,113,0,21723,'body',0,1218,15,1166,1482638992,1,3912),(121,2,113,0,21724,'body',0,6449,16,3912,1482638992,1,1218),(121,2,113,0,21725,'body',0,6450,17,1218,1482638992,1,6449),(121,2,113,0,21726,'body',0,6451,18,6449,1482638992,1,6450),(121,2,113,0,21727,'body',0,1126,19,6450,1482638992,1,6451),(121,2,113,0,21728,'body',0,6452,20,6451,1482638992,1,1126),(121,2,113,0,21729,'body',0,2044,21,1126,1482638992,1,6452),(121,2,113,0,21730,'body',0,6453,22,6452,1482638992,1,2044),(121,2,113,0,21731,'body',0,1218,23,2044,1482638992,1,6453),(121,2,113,0,21732,'body',0,6454,24,6453,1482638992,1,1218),(121,2,113,0,21733,'body',0,1512,25,1218,1482638992,1,6454),(121,2,113,0,21734,'body',0,6455,26,6454,1482638992,1,1512),(121,2,113,0,21735,'body',0,1123,27,1512,1482638992,1,6455),(121,2,113,0,21736,'body',0,2942,28,6455,1482638992,1,1123),(121,2,113,0,21737,'body',0,1125,29,1123,1482638992,1,2942),(121,2,113,0,21738,'body',0,2030,30,2942,1482638992,1,1125),(121,2,113,0,21739,'body',0,1166,31,1125,1482638992,1,2030),(121,2,113,0,21740,'body',0,1126,32,2030,1482638992,1,1166),(121,2,113,0,21741,'body',0,1042,33,1166,1482638992,1,1126),(121,2,113,0,21742,'body',0,1043,34,1126,1482638992,1,1042),(121,2,113,0,21743,'body',0,2032,35,1042,1482638992,1,1043),(121,2,113,0,21744,'body',0,1125,36,1043,1482638992,1,2032),(121,2,113,0,21745,'body',0,2041,37,2032,1482638992,1,1125),(121,2,113,0,21746,'body',0,1828,38,1125,1482638992,1,2041),(121,2,113,0,21747,'body',0,997,39,2041,1482638992,1,1828),(121,2,113,0,21748,'body',0,1126,40,1828,1482638992,1,997),(121,2,113,0,21749,'body',0,1817,41,997,1482638992,1,1126),(121,2,113,0,21750,'body',0,1748,42,1126,1482638992,1,1817),(121,2,113,0,21751,'body',0,1749,43,1817,1482638992,1,1748),(121,2,113,0,21752,'body',0,1515,44,1748,1482638992,1,1749),(121,2,113,0,21753,'body',0,1801,45,1749,1482638992,1,1515),(121,2,113,0,21754,'body',0,6456,46,1515,1482638992,1,1801),(121,2,113,0,21755,'body',0,6457,47,1801,1482638992,1,6456),(121,2,113,0,21756,'body',0,6458,48,6456,1482638992,1,6457),(121,2,113,0,21757,'body',0,1147,49,6457,1482638992,1,6458),(121,2,113,0,21758,'body',0,1194,50,6458,1482638992,1,1147),(121,2,113,0,21759,'body',0,1126,51,1147,1482638992,1,1194),(121,2,113,0,21760,'body',0,2575,52,1194,1482638992,1,1126),(121,2,113,0,21761,'body',0,1169,53,1126,1482638992,1,2575),(121,2,113,0,21762,'body',0,2577,54,2575,1482638992,1,1169),(121,2,113,0,21763,'body',0,1747,55,1169,1482638992,1,2577),(121,2,113,0,21764,'body',0,2572,56,2577,1482638992,1,1747),(121,2,113,0,21765,'body',0,1218,57,1747,1482638992,1,2572),(121,2,113,0,21766,'body',0,2383,58,2572,1482638992,1,1218),(121,2,113,0,21767,'body',0,2578,59,1218,1482638992,1,2383),(121,2,113,0,21768,'body',0,1145,60,2383,1482638992,1,2578),(121,2,113,0,21769,'body',0,2579,61,2578,1482638992,1,1145),(121,2,113,0,21770,'body',0,4040,62,1145,1482638992,1,2579),(121,2,113,0,21771,'body',0,1805,63,2579,1482638992,1,4040),(121,2,113,0,21772,'body',0,1125,64,4040,1482638992,1,1805),(121,2,113,0,21773,'body',0,2030,65,1805,1482638992,1,1125),(121,2,113,0,21774,'body',0,1166,66,1125,1482638992,1,2030),(121,2,113,0,21775,'body',0,2383,67,2030,1482638992,1,1166),(121,2,113,0,21776,'body',0,2581,68,1166,1482638992,1,2383),(121,2,113,0,21777,'body',0,2587,69,2383,1482638992,1,2581),(121,2,113,0,21778,'body',0,4046,70,2581,1482638992,1,2587),(121,2,113,0,21779,'body',0,1200,71,2587,1482638992,1,4046),(121,2,113,0,21780,'body',0,2589,72,4046,1482638992,1,1200),(121,2,113,0,21781,'body',0,1772,73,1200,1482638992,1,2589),(121,2,113,0,21782,'body',0,4047,74,2589,1482638992,1,1772),(121,2,113,0,21783,'body',0,2591,75,1772,1482638992,1,4047),(121,2,113,0,21784,'body',0,4048,76,4047,1482638992,1,2591),(121,2,113,0,21785,'body',0,1828,77,2591,1482638992,1,4048),(121,2,113,0,21786,'body',0,1042,78,4048,1482638992,1,1828),(121,2,113,0,21787,'body',0,1043,79,1828,1482638992,1,1042),(121,2,113,0,21788,'body',0,2043,80,1042,1482638992,1,1043),(121,2,113,0,21789,'body',0,1828,81,1043,1482638992,1,2043),(121,2,113,0,21790,'body',0,4049,82,2043,1482638992,1,1828),(121,2,113,0,21791,'body',0,1125,83,1828,1482638992,1,4049),(121,2,113,0,21792,'body',0,4050,84,4049,1482638992,1,1125),(121,2,113,0,21793,'body',0,4051,85,1125,1482638992,1,4050),(121,2,113,0,21794,'body',0,1116,86,4050,1482638992,1,4051),(121,2,113,0,21795,'body',0,2596,87,4051,1482638992,1,1116),(121,2,113,0,21796,'body',0,2597,88,1116,1482638992,1,2596),(121,2,113,0,21797,'body',0,2598,89,2596,1482638992,1,2597),(121,2,113,0,21798,'body',0,1143,90,2597,1482638992,1,2598),(121,2,113,0,21799,'body',0,1828,91,2598,1482638992,1,1143),(121,2,113,0,21800,'body',0,2599,92,1143,1482638992,1,1828),(121,2,113,0,21801,'body',0,1747,93,1828,1482638992,1,2599),(121,2,113,0,21802,'body',0,2572,94,2599,1482638992,1,1747),(121,2,113,0,21803,'body',0,1145,95,1747,1482638992,1,2572),(121,2,113,0,21804,'body',0,4052,96,2572,1482638992,1,1145),(121,2,113,0,21805,'body',0,0,97,1145,1482638992,1,4052),(1,2,110,0,21806,'title',0,1135,0,0,1482638406,1,6459),(121,2,110,0,21807,'body',0,1126,1,6459,1482638406,1,1135),(121,2,110,0,21808,'body',0,6460,2,1135,1482638406,1,1126),(121,2,110,0,21809,'body',0,6461,3,1126,1482638406,1,6460),(121,2,110,0,21810,'body',0,1230,4,6460,1482638406,1,6461),(121,2,110,0,21811,'body',0,1042,5,6461,1482638406,1,1230),(121,2,110,0,21812,'body',0,1043,6,1230,1482638406,1,1042),(121,2,110,0,21813,'body',0,2570,7,1042,1482638406,1,1043),(121,2,110,0,21814,'body',0,1120,8,1043,1482638406,1,2570),(121,2,110,0,21815,'body',0,1816,9,2570,1482638406,1,1120),(121,2,110,0,21816,'body',0,2571,10,1120,1482638406,1,1816),(121,2,110,0,21817,'body',0,1123,11,1816,1482638406,1,2571),(121,2,110,0,21818,'body',0,1747,12,2571,1482638406,1,1123),(121,2,110,0,21819,'body',0,2572,13,1123,1482638406,1,1747),(121,2,110,0,21820,'body',0,2573,14,1747,1482638406,1,2572),(121,2,110,0,21821,'body',0,2574,15,2572,1482638406,1,2573),(121,2,110,0,21822,'body',0,1115,16,2573,1482638406,1,2574),(121,2,110,0,21823,'body',0,1121,17,2574,1482638406,1,1115),(121,2,110,0,21824,'body',0,2575,18,1115,1482638406,1,1121),(121,2,110,0,21825,'body',0,1169,19,1121,1482638406,1,2575),(121,2,110,0,21826,'body',0,2577,20,2575,1482638406,1,1169),(121,2,110,0,21827,'body',0,1747,21,1169,1482638406,1,2577),(121,2,110,0,21828,'body',0,2572,22,2577,1482638406,1,1747),(121,2,110,0,21829,'body',0,1218,23,1747,1482638406,1,2572),(121,2,110,0,21830,'body',0,2383,24,2572,1482638406,1,1218),(121,2,110,0,21831,'body',0,2578,25,1218,1482638406,1,2383),(121,2,110,0,21832,'body',0,1145,26,2383,1482638406,1,2578),(121,2,110,0,21833,'body',0,2579,27,2578,1482638406,1,1145),(121,2,110,0,21834,'body',0,4040,28,1145,1482638406,1,2579),(121,2,110,0,21835,'body',0,1805,29,2579,1482638406,1,4040),(121,2,110,0,21836,'body',0,1125,30,4040,1482638406,1,1805),(121,2,110,0,21837,'body',0,2030,31,1805,1482638406,1,1125),(121,2,110,0,21838,'body',0,1166,32,1125,1482638406,1,2030),(121,2,110,0,21839,'body',0,2383,33,2030,1482638406,1,1166),(121,2,110,0,21840,'body',0,2581,34,1166,1482638406,1,2383),(121,2,110,0,21841,'body',0,1827,35,2383,1482638406,1,2581),(121,2,110,0,21842,'body',0,1215,36,2581,1482638406,1,1827),(121,2,110,0,21843,'body',0,6462,37,1827,1482638406,1,1215),(121,2,110,0,21844,'body',0,1126,38,1215,1482638406,1,6462),(121,2,110,0,21845,'body',0,6463,39,6462,1482638406,1,1126),(121,2,110,0,21846,'body',0,6464,40,1126,1482638406,1,6463),(121,2,110,0,21847,'body',0,6465,41,6463,1482638406,1,6464),(121,2,110,0,21848,'body',0,1123,42,6464,1482638406,1,6465),(121,2,110,0,21849,'body',0,6466,43,6465,1482638406,1,1123),(121,2,110,0,21850,'body',0,2587,44,1123,1482638406,1,6466),(121,2,110,0,21851,'body',0,4046,45,6466,1482638406,1,2587),(121,2,110,0,21852,'body',0,1200,46,2587,1482638406,1,4046),(121,2,110,0,21853,'body',0,2589,47,4046,1482638406,1,1200),(121,2,110,0,21854,'body',0,1772,48,1200,1482638406,1,2589),(121,2,110,0,21855,'body',0,4047,49,2589,1482638406,1,1772),(121,2,110,0,21856,'body',0,0,50,1772,1482638406,1,4047),(1,2,112,0,21857,'title',0,1828,0,0,1482638662,1,6467),(121,2,112,0,21858,'body',0,1042,1,6467,1482638662,1,1828),(121,2,112,0,21859,'body',0,1043,2,1828,1482638662,1,1042),(121,2,112,0,21860,'body',0,2043,3,1042,1482638662,1,1043),(121,2,112,0,21861,'body',0,4048,4,1043,1482638662,1,2043),(121,2,112,0,21862,'body',0,1828,5,2043,1482638662,1,4048),(121,2,112,0,21863,'body',0,4049,6,4048,1482638662,1,1828),(121,2,112,0,21864,'body',0,1125,7,1828,1482638662,1,4049),(121,2,112,0,21865,'body',0,4050,8,4049,1482638662,1,1125),(121,2,112,0,21866,'body',0,4051,9,1125,1482638662,1,4050),(121,2,112,0,21867,'body',0,1116,10,4050,1482638662,1,4051),(121,2,112,0,21868,'body',0,2596,11,4051,1482638662,1,1116),(121,2,112,0,21869,'body',0,2597,12,1116,1482638662,1,2596),(121,2,112,0,21870,'body',0,2598,13,2596,1482638662,1,2597),(121,2,112,0,21871,'body',0,1143,14,2597,1482638662,1,2598),(121,2,112,0,21872,'body',0,1828,15,2598,1482638662,1,1143),(121,2,112,0,21873,'body',0,2599,16,1143,1482638662,1,1828),(121,2,112,0,21874,'body',0,1747,17,1828,1482638662,1,2599),(121,2,112,0,21875,'body',0,2572,18,2599,1482638662,1,1747),(121,2,112,0,21876,'body',0,1145,19,1747,1482638662,1,2572),(121,2,112,0,21877,'body',0,4052,20,2572,1482638662,1,1145),(121,2,112,0,21878,'body',0,0,21,1145,1482638662,1,4052),(1,2,114,0,22307,'title',0,1121,0,0,1482639073,1,2820),(121,2,114,0,22308,'body',0,1042,1,2820,1482639073,1,1121),(121,2,114,0,22309,'body',0,1043,2,1121,1482639073,1,1042),(121,2,114,0,22310,'body',0,2032,3,1042,1482639073,1,1043),(121,2,114,0,22311,'body',0,1115,4,1043,1482639073,1,2032),(121,2,114,0,22312,'body',0,1135,5,2032,1482639073,1,1115),(121,2,114,0,22313,'body',0,1218,6,1115,1482639073,1,1135),(121,2,114,0,22314,'body',0,6639,7,1135,1482639073,1,1218),(121,2,114,0,22315,'body',0,6640,8,1218,1482639073,1,6639),(121,2,114,0,22316,'body',0,1125,9,6639,1482639073,1,6640),(121,2,114,0,22317,'body',0,2041,10,6640,1482639073,1,1125),(121,2,114,0,22318,'body',0,6641,11,1125,1482639073,1,2041),(121,2,114,0,22319,'body',0,2417,12,2041,1482639073,1,6641),(121,2,114,0,22320,'body',0,1121,13,6641,1482639073,1,2417),(121,2,114,0,22321,'body',0,1194,14,2417,1482639073,1,1121),(121,2,114,0,22322,'body',0,1166,15,1121,1482639073,1,1194),(121,2,114,0,22323,'body',0,1126,16,1194,1482639073,1,1166),(121,2,114,0,22324,'body',0,6642,17,1166,1482639073,1,1126),(121,2,114,0,22325,'body',0,6643,18,1126,1482639073,1,6642),(121,2,114,0,22326,'body',0,1827,19,6642,1482639073,1,6643),(121,2,114,0,22327,'body',0,1167,20,6643,1482639073,1,1827),(121,2,114,0,22328,'body',0,2825,21,1827,1482639073,1,1167),(121,2,114,0,22329,'body',0,1126,22,1167,1482639073,1,2825),(121,2,114,0,22330,'body',0,1817,23,2825,1482639073,1,1126),(121,2,114,0,22331,'body',0,1748,24,1126,1482639073,1,1817),(121,2,114,0,22332,'body',0,6644,25,1817,1482639073,1,1748),(121,2,114,0,22333,'body',0,1771,26,1748,1482639073,1,6644),(121,2,114,0,22334,'body',0,6645,27,6644,1482639073,1,1771),(121,2,114,0,22335,'body',0,1865,28,1771,1482639073,1,6645),(121,2,114,0,22336,'body',0,1126,29,6645,1482639073,1,1865),(121,2,114,0,22337,'body',0,6646,30,1865,1482639073,1,1126),(121,2,114,0,22338,'body',0,1230,31,1126,1482639073,1,6646),(121,2,114,0,22339,'body',0,6647,32,6646,1482639073,1,1230),(121,2,114,0,22340,'body',0,6648,33,1230,1482639073,1,6647),(121,2,114,0,22341,'body',0,1911,34,6647,1482639073,1,6648),(121,2,114,0,22342,'body',0,1042,35,6648,1482639073,1,1911),(121,2,114,0,22343,'body',0,1043,36,1911,1482639073,1,1042),(121,2,114,0,22344,'body',0,6649,37,1042,1482639073,1,1043),(121,2,114,0,22345,'body',0,1126,38,1043,1482639073,1,6649),(121,2,114,0,22346,'body',0,6650,39,6649,1482639073,1,1126),(121,2,114,0,22347,'body',0,6651,40,1126,1482639073,1,6650),(121,2,114,0,22348,'body',0,1121,41,6650,1482639073,1,6651),(121,2,114,0,22349,'body',0,2032,42,6651,1482639073,1,1121),(121,2,114,0,22350,'body',0,1125,43,1121,1482639073,1,2032),(121,2,114,0,22351,'body',0,2041,44,2032,1482639073,1,1125),(121,2,114,0,22352,'body',0,6652,45,1125,1482639073,1,2041),(121,2,114,0,22353,'body',0,1194,46,2041,1482639073,1,6652),(121,2,114,0,22354,'body',0,1856,47,6652,1482639073,1,1194),(121,2,114,0,22355,'body',0,6653,48,1194,1482639073,1,1856),(121,2,114,0,22356,'body',0,6654,49,1856,1482639073,1,6653),(121,2,114,0,22357,'body',0,1121,50,6653,1482639073,1,6654),(121,2,114,0,22358,'body',0,6643,51,6654,1482639073,1,1121),(121,2,114,0,22359,'body',0,1169,52,1121,1482639073,1,6643),(121,2,114,0,22360,'body',0,6655,53,6643,1482639073,1,1169),(121,2,114,0,22361,'body',0,6656,54,1169,1482639073,1,6655),(121,2,114,0,22362,'body',0,6657,55,6655,1482639073,1,6656),(121,2,114,0,22363,'body',0,1123,56,6656,1482639073,1,6657),(121,2,114,0,22364,'body',0,6658,57,6657,1482639073,1,1123),(121,2,114,0,22365,'body',0,1121,58,1123,1482639073,1,6658),(121,2,114,0,22366,'body',0,6659,59,6658,1482639073,1,1121),(121,2,114,0,22367,'body',0,1123,60,1121,1482639073,1,6659),(121,2,114,0,22368,'body',0,6660,61,6659,1482639073,1,1123),(121,2,114,0,22369,'body',0,1169,62,1123,1482639073,1,6660),(121,2,114,0,22370,'body',0,1817,63,6660,1482639073,1,1169),(121,2,114,0,22371,'body',0,1123,64,1169,1482639073,1,1817),(121,2,114,0,22372,'body',0,6661,65,1817,1482639073,1,1123),(121,2,114,0,22373,'body',0,6662,66,1123,1482639073,1,6661),(121,2,114,0,22374,'body',0,1998,67,6661,1482639073,1,6662),(121,2,114,0,22375,'body',0,6663,68,6662,1482639073,1,1998),(121,2,114,0,22376,'body',0,1169,69,1998,1482639073,1,6663),(121,2,114,0,22377,'body',0,1817,70,6663,1482639073,1,1169),(121,2,114,0,22378,'body',0,6664,71,1169,1482639073,1,1817),(121,2,114,0,22379,'body',0,1123,72,1817,1482639073,1,6664),(121,2,114,0,22380,'body',0,6665,73,6664,1482639073,1,1123),(121,2,114,0,22381,'body',0,1123,74,1123,1482639073,1,6665),(121,2,114,0,22382,'body',0,6666,75,6665,1482639073,1,1123),(121,2,114,0,22383,'body',0,6667,76,1123,1482639073,1,6666),(121,2,114,0,22384,'body',0,1143,77,6666,1482639073,1,6667),(121,2,114,0,22385,'body',0,1140,78,6667,1482639073,1,1143),(121,2,114,0,22386,'body',0,6668,79,1143,1482639073,1,1140),(121,2,114,0,22387,'body',0,1145,80,1140,1482639073,1,6668),(121,2,114,0,22388,'body',0,6669,81,6668,1482639073,1,1145),(121,2,114,0,22389,'body',0,6670,82,1145,1482639073,1,6669),(121,2,114,0,22390,'body',0,2849,83,6669,1482639073,1,6670),(121,2,114,0,22391,'body',0,6671,84,6670,1482639073,1,2849),(121,2,114,0,22392,'body',0,1218,85,2849,1482639073,1,6671),(121,2,114,0,22393,'body',0,2851,86,6671,1482639073,1,1218),(121,2,114,0,22394,'body',0,6672,87,1218,1482639073,1,2851),(121,2,114,0,22395,'body',0,1123,88,2851,1482639073,1,6672),(121,2,114,0,22396,'body',0,6673,89,6672,1482639073,1,1123),(121,2,114,0,22397,'body',0,6674,90,1123,1482639073,1,6673),(121,2,114,0,22398,'body',0,6675,91,6673,1482639073,1,6674),(121,2,114,0,22399,'body',0,6676,92,6674,1482639073,1,6675),(121,2,114,0,22400,'body',0,1126,93,6675,1482639073,1,6676),(121,2,114,0,22401,'body',0,6677,94,6676,1482639073,1,1126),(121,2,114,0,22402,'body',0,1126,95,1126,1482639073,1,6677),(121,2,114,0,22403,'body',0,1817,96,6677,1482639073,1,1126),(121,2,114,0,22404,'body',0,6678,97,1126,1482639073,1,1817),(121,2,114,0,22405,'body',0,1123,98,1817,1482639073,1,6678),(121,2,114,0,22406,'body',0,2859,99,6678,1482639073,1,1123),(121,2,114,0,22407,'body',0,6679,100,1123,1482639073,1,2859),(121,2,114,0,22408,'body',0,6680,101,2859,1482639073,1,6679),(121,2,114,0,22409,'body',0,6681,102,6679,1482639073,1,6680),(121,2,114,0,22410,'body',0,1827,103,6680,1482639073,1,6681),(121,2,114,0,22411,'body',0,1121,104,6681,1482639073,1,1827),(121,2,114,0,22412,'body',0,2863,105,1827,1482639073,1,1121),(121,2,114,0,22413,'body',0,1126,106,1121,1482639073,1,2863),(121,2,114,0,22414,'body',0,1817,107,2863,1482639073,1,1126),(121,2,114,0,22415,'body',0,6682,108,1126,1482639073,1,1817),(121,2,114,0,22416,'body',0,6662,109,1817,1482639073,1,6682),(121,2,114,0,22417,'body',0,1123,110,6682,1482639073,1,6662),(121,2,114,0,22418,'body',0,2607,111,6662,1482639073,1,1123),(121,2,114,0,22419,'body',0,1169,112,1123,1482639073,1,2607),(121,2,114,0,22420,'body',0,1817,113,2607,1482639073,1,1169),(121,2,114,0,22421,'body',0,6683,114,1169,1482639073,1,1817),(121,2,114,0,22422,'body',0,6684,115,1817,1482639073,1,6683),(121,2,114,0,22423,'body',0,1230,116,6683,1482639073,1,6684),(121,2,114,0,22424,'body',0,6685,117,6684,1482639073,1,1230),(121,2,114,0,22425,'body',0,1123,118,1230,1482639073,1,6685),(121,2,114,0,22426,'body',0,6686,119,6685,1482639073,1,1123),(121,2,114,0,22427,'body',0,6687,120,1123,1482639073,1,6686),(121,2,114,0,22428,'body',0,6688,121,6686,1482639073,1,6687),(121,2,114,0,22429,'body',0,1126,122,6687,1482639073,1,6688),(121,2,114,0,22430,'body',0,6689,123,6688,1482639073,1,1126),(121,2,114,0,22431,'body',0,2872,124,1126,1482639073,1,6689),(121,2,114,0,22432,'body',0,6690,125,6689,1482639073,1,2872),(121,2,114,0,22433,'body',0,6691,126,2872,1482639073,1,6690),(121,2,114,0,22434,'body',0,6692,127,6690,1482639073,1,6691),(121,2,114,0,22435,'body',0,1126,128,6691,1482639073,1,6692),(121,2,114,0,22436,'body',0,1817,129,6692,1482639073,1,1126),(121,2,114,0,22437,'body',0,6693,130,1126,1482639073,1,1817),(121,2,114,0,22438,'body',0,1912,131,1817,1482639073,1,6693),(121,2,114,0,22439,'body',0,1215,132,6693,1482639073,1,1912),(121,2,114,0,22440,'body',0,1817,133,1912,1482639073,1,1215),(121,2,114,0,22441,'body',0,6694,134,1215,1482639073,1,1817),(121,2,114,0,22442,'body',0,1231,135,1817,1482639073,1,6694),(121,2,114,0,22443,'body',0,6695,136,6694,1482639073,1,1231),(121,2,114,0,22444,'body',0,1126,137,1231,1482639073,1,6695),(121,2,114,0,22445,'body',0,1042,138,6695,1482639073,1,1126),(121,2,114,0,22446,'body',0,1043,139,1126,1482639073,1,1042),(121,2,114,0,22447,'body',0,2032,140,1042,1482639073,1,1043),(121,2,114,0,22448,'body',0,1125,141,1043,1482639073,1,2032),(121,2,114,0,22449,'body',0,2042,142,2032,1482639073,1,1125),(121,2,114,0,22450,'body',0,6696,143,1125,1482639073,1,2042),(121,2,114,0,22451,'body',0,1126,144,2042,1482639073,1,6696),(121,2,114,0,22452,'body',0,6697,145,6696,1482639073,1,1126),(121,2,114,0,22453,'body',0,1123,146,1126,1482639073,1,6697),(121,2,114,0,22454,'body',0,6698,147,6697,1482639073,1,1123),(121,2,114,0,22455,'body',0,1813,148,1123,1482639073,1,6698),(121,2,114,0,22456,'body',0,6699,149,6698,1482639073,1,1813),(121,2,114,0,22457,'body',0,2385,150,1813,1482639073,1,6699),(121,2,114,0,22458,'body',0,6700,151,6699,1482639073,1,2385),(121,2,114,0,22459,'body',0,6701,152,2385,1482639073,1,6700),(121,2,114,0,22460,'body',0,6702,153,6700,1482639073,1,6701),(121,2,114,0,22461,'body',0,2043,154,6701,1482639073,1,6702),(121,2,114,0,22462,'body',0,1126,155,6702,1482639073,1,2043),(121,2,114,0,22463,'body',0,1817,156,2043,1482639073,1,1126),(121,2,114,0,22464,'body',0,6703,157,1126,1482639073,1,1817),(121,2,114,0,22465,'body',0,6702,158,1817,1482639073,1,6703),(121,2,114,0,22466,'body',0,6704,159,6703,1482639073,1,6702),(121,2,114,0,22467,'body',0,6705,160,6702,1482639073,1,6704),(121,2,114,0,22468,'body',0,6706,161,6704,1482639073,1,6705),(121,2,114,0,22469,'body',0,6702,162,6705,1482639073,1,6706),(121,2,114,0,22470,'body',0,2043,163,6706,1482639073,1,6702),(121,2,114,0,22471,'body',0,1120,164,6702,1482639073,1,2043),(121,2,114,0,22472,'body',0,6707,165,2043,1482639073,1,1120),(121,2,114,0,22473,'body',0,1123,166,1120,1482639073,1,6707),(121,2,114,0,22474,'body',0,6708,167,6707,1482639073,1,1123),(121,2,114,0,22475,'body',0,6709,168,1123,1482639073,1,6708),(121,2,114,0,22476,'body',0,1042,169,6708,1482639073,1,6709),(121,2,114,0,22477,'body',0,1043,170,6709,1482639073,1,1042),(121,2,114,0,22478,'body',0,6710,171,1042,1482639073,1,1043),(121,2,114,0,22479,'body',0,6711,172,1043,1482639073,1,6710),(121,2,114,0,22480,'body',0,6712,173,6710,1482639073,1,6711),(121,2,114,0,22481,'body',0,1042,174,6711,1482639073,1,6712),(121,2,114,0,22482,'body',0,1043,175,6712,1482639073,1,1042),(121,2,114,0,22483,'body',0,6713,176,1042,1482639073,1,1043),(121,2,114,0,22484,'body',0,1123,177,1043,1482639073,1,6713),(121,2,114,0,22485,'body',0,6714,178,6713,1482639073,1,1123),(121,2,114,0,22486,'body',0,6715,179,1123,1482639073,1,6714),(121,2,114,0,22487,'body',0,1126,180,6714,1482639073,1,6715),(121,2,114,0,22488,'body',0,1042,181,6715,1482639073,1,1126),(121,2,114,0,22489,'body',0,1043,182,1126,1482639073,1,1042),(121,2,114,0,22490,'body',0,1125,183,1042,1482639073,1,1043),(121,2,114,0,22491,'body',0,2898,184,1043,1482639073,1,1125),(121,2,114,0,22492,'body',0,2899,185,1125,1482639073,1,2898),(121,2,114,0,22493,'body',0,2900,186,2898,1482639073,1,2899),(121,2,114,0,22494,'body',0,6716,187,2899,1482639073,1,2900),(121,2,114,0,22495,'body',0,1123,188,2900,1482639073,1,6716),(121,2,114,0,22496,'body',0,6717,189,6716,1482639073,1,1123),(121,2,114,0,22497,'body',0,6718,190,1123,1482639073,1,6717),(121,2,114,0,22498,'body',0,2047,191,6717,1482639073,1,6718),(121,2,114,0,22499,'body',0,6643,192,6718,1482639073,1,2047),(121,2,114,0,22500,'body',0,1169,193,2047,1482639073,1,6643),(121,2,114,0,22501,'body',0,6719,194,6643,1482639073,1,1169),(121,2,114,0,22502,'body',0,1123,195,1169,1482639073,1,6719),(121,2,114,0,22503,'body',0,6720,196,6719,1482639073,1,1123),(121,2,114,0,22504,'body',0,1126,197,1123,1482639073,1,6720),(121,2,114,0,22505,'body',0,6721,198,6720,1482639073,1,1126),(121,2,114,0,22506,'body',0,1121,199,1126,1482639073,1,6721),(121,2,114,0,22507,'body',0,1042,200,6721,1482639073,1,1121),(121,2,114,0,22508,'body',0,1043,201,1121,1482639073,1,1042),(121,2,114,0,22509,'body',0,2032,202,1042,1482639073,1,1043),(121,2,114,0,22510,'body',0,6652,203,1043,1482639073,1,2032),(121,2,114,0,22511,'body',0,1155,204,2032,1482639073,1,6652),(121,2,114,0,22512,'body',0,2907,205,6652,1482639073,1,1155),(121,2,114,0,22513,'body',0,6722,206,1155,1482639073,1,2907),(121,2,114,0,22514,'body',0,1231,207,2907,1482639073,1,6722),(121,2,114,0,22515,'body',0,6723,208,6722,1482639073,1,1231),(121,2,114,0,22516,'body',0,1123,209,1231,1482639073,1,6723),(121,2,114,0,22517,'body',0,6724,210,6723,1482639073,1,1123),(121,2,114,0,22518,'body',0,6718,211,1123,1482639073,1,6724),(121,2,114,0,22519,'body',0,1123,212,6724,1482639073,1,6718),(121,2,114,0,22520,'body',0,6725,213,6718,1482639073,1,1123),(121,2,114,0,22521,'body',0,1145,214,1123,1482639073,1,6725),(121,2,114,0,22522,'body',0,2912,215,6725,1482639073,1,1145),(121,2,114,0,22523,'body',0,6726,216,1145,1482639073,1,2912),(121,2,114,0,22524,'body',0,1121,217,2912,1482639073,1,6726),(121,2,114,0,22525,'body',0,1817,218,6726,1482639073,1,1121),(121,2,114,0,22526,'body',0,6727,219,1121,1482639073,1,1817),(121,2,114,0,22527,'body',0,1125,220,1817,1482639073,1,6727),(121,2,114,0,22528,'body',0,6728,221,6727,1482639073,1,1125),(121,2,114,0,22529,'body',0,6729,222,1125,1482639073,1,6728),(121,2,114,0,22530,'body',0,1123,223,6728,1482639073,1,6729),(121,2,114,0,22531,'body',0,6730,224,6729,1482639073,1,1123),(121,2,114,0,22532,'body',0,1155,225,1123,1482639073,1,6730),(121,2,114,0,22533,'body',0,1227,226,6730,1482639073,1,1155),(121,2,114,0,22534,'body',0,1147,227,1155,1482639073,1,1227),(121,2,114,0,22535,'body',0,1135,228,1227,1482639073,1,1147),(121,2,114,0,22536,'body',0,6731,229,1147,1482639073,1,1135),(121,2,114,0,22537,'body',0,1169,230,1135,1482639073,1,6731),(121,2,114,0,22538,'body',0,6718,231,6731,1482639073,1,1169),(121,2,114,0,22539,'body',0,1121,232,1169,1482639073,1,6718),(121,2,114,0,22540,'body',0,2919,233,6718,1482639073,1,1121),(121,2,114,0,22541,'body',0,6732,234,1121,1482639073,1,2919),(121,2,114,0,22542,'body',0,1123,235,2919,1482639073,1,6732),(121,2,114,0,22543,'body',0,6733,236,6732,1482639073,1,1123),(121,2,114,0,22544,'body',0,1126,237,1123,1482639073,1,6733),(121,2,114,0,22545,'body',0,1042,238,6733,1482639073,1,1126),(121,2,114,0,22546,'body',0,1043,239,1126,1482639073,1,1042),(121,2,114,0,22547,'body',0,2032,240,1042,1482639073,1,1043),(121,2,114,0,22548,'body',0,6670,241,1043,1482639073,1,2032),(121,2,114,0,22549,'body',0,2032,242,2032,1482639073,1,6670),(121,2,114,0,22550,'body',0,1126,243,6670,1482639073,1,2032),(121,2,114,0,22551,'body',0,6734,244,2032,1482639073,1,1126),(121,2,114,0,22552,'body',0,6735,245,1126,1482639073,1,6734),(121,2,114,0,22553,'body',0,1042,246,6734,1482639073,1,6735),(121,2,114,0,22554,'body',0,6736,247,6735,1482639073,1,1042),(121,2,114,0,22555,'body',0,6737,248,1042,1482639073,1,6736),(121,2,114,0,22556,'body',0,2926,249,6736,1482639073,1,6737),(121,2,114,0,22557,'body',0,6738,250,6737,1482639073,1,2926),(121,2,114,0,22558,'body',0,6739,251,2926,1482639073,1,6738),(121,2,114,0,22559,'body',0,2926,252,6738,1482639073,1,6739),(121,2,114,0,22560,'body',0,6740,253,6739,1482639073,1,2926),(121,2,114,0,22561,'body',0,6741,254,2926,1482639073,1,6740),(121,2,114,0,22562,'body',0,1121,255,6740,1482639073,1,6741),(121,2,114,0,22563,'body',0,1042,256,6741,1482639073,1,1121),(121,2,114,0,22564,'body',0,1043,257,1121,1482639073,1,1042),(121,2,114,0,22565,'body',0,2032,258,1042,1482639073,1,1043),(121,2,114,0,22566,'body',0,1166,259,1043,1482639073,1,2032),(121,2,114,0,22567,'body',0,1817,260,2032,1482639073,1,1166),(121,2,114,0,22568,'body',0,6725,261,1166,1482639073,1,1817),(121,2,114,0,22569,'body',0,1123,262,1817,1482639073,1,6725),(121,2,114,0,22570,'body',0,6742,263,6725,1482639073,1,1123),(121,2,114,0,22571,'body',0,6743,264,1123,1482639073,1,6742),(121,2,114,0,22572,'body',0,6744,265,6742,1482639073,1,6743),(121,2,114,0,22573,'body',0,6745,266,6743,1482639073,1,6744),(121,2,114,0,22574,'body',0,6746,267,6744,1482639073,1,6745),(121,2,114,0,22575,'body',0,6747,268,6745,1482639073,1,6746),(121,2,114,0,22576,'body',0,1123,269,6746,1482639073,1,6747),(121,2,114,0,22577,'body',0,6748,270,6747,1482639073,1,1123),(121,2,114,0,22578,'body',0,1126,271,1123,1482639073,1,6748),(121,2,114,0,22579,'body',0,2032,272,6748,1482639073,1,1126),(121,2,114,0,22580,'body',0,6749,273,1126,1482639073,1,2032),(121,2,114,0,22581,'body',0,6750,274,2032,1482639073,1,6749),(121,2,114,0,22582,'body',0,6751,275,6749,1482639073,1,6750),(121,2,114,0,22583,'body',0,6748,276,6750,1482639073,1,6751),(121,2,114,0,22584,'body',0,1123,277,6751,1482639073,1,6748),(121,2,114,0,22585,'body',0,6747,278,6748,1482639073,1,1123),(121,2,114,0,22586,'body',0,1120,279,1123,1482639073,1,6747),(121,2,114,0,22587,'body',0,1121,280,6747,1482639073,1,1120),(121,2,114,0,22588,'body',0,1042,281,1120,1482639073,1,1121),(121,2,114,0,22589,'body',0,1043,282,1121,1482639073,1,1042),(121,2,114,0,22590,'body',0,6752,283,1042,1482639073,1,1043),(121,2,114,0,22591,'body',0,1123,284,1043,1482639073,1,6752),(121,2,114,0,22592,'body',0,2907,285,6752,1482639073,1,1123),(121,2,114,0,22593,'body',0,6722,286,1123,1482639073,1,2907),(121,2,114,0,22594,'body',0,6753,287,2907,1482639073,1,6722),(121,2,114,0,22595,'body',0,1121,288,6722,1482639073,1,6753),(121,2,114,0,22596,'body',0,2032,289,6753,1482639073,1,1121),(121,2,114,0,22597,'body',0,2942,290,1121,1482639073,1,2032),(121,2,114,0,22598,'body',0,6754,291,2032,1482639073,1,2942),(121,2,114,0,22599,'body',0,6755,292,2942,1482639073,1,6754),(121,2,114,0,22600,'body',0,1801,293,6754,1482639073,1,6755),(121,2,114,0,22601,'body',0,1145,294,6755,1482639073,1,1801),(121,2,114,0,22602,'body',0,2912,295,1801,1482639073,1,1145),(121,2,114,0,22603,'body',0,6726,296,1145,1482639073,1,2912),(121,2,114,0,22604,'body',0,2096,297,2912,1482639073,1,6726),(121,2,114,0,22605,'body',0,1123,298,6726,1482639073,1,2096),(121,2,114,0,22606,'body',0,6756,299,2096,1482639073,1,1123),(121,2,114,0,22607,'body',0,6757,300,1123,1482639073,1,6756),(121,2,114,0,22608,'body',0,1126,301,6756,1482639073,1,6757),(121,2,114,0,22609,'body',0,6758,302,6757,1482639073,1,1126),(121,2,114,0,22610,'body',0,2096,303,1126,1482639073,1,6758),(121,2,114,0,22611,'body',0,1123,304,6758,1482639073,1,2096),(121,2,114,0,22612,'body',0,6759,305,2096,1482639073,1,1123),(121,2,114,0,22613,'body',0,1811,306,1123,1482639073,1,6759),(121,2,114,0,22614,'body',0,6760,307,6759,1482639073,1,1811),(121,2,114,0,22615,'body',0,6761,308,1811,1482639073,1,6760),(121,2,114,0,22616,'body',0,6760,309,6760,1482639073,1,6761),(121,2,114,0,22617,'body',0,6762,310,6761,1482639073,1,6760),(121,2,114,0,22618,'body',0,6760,311,6760,1482639073,1,6762),(121,2,114,0,22619,'body',0,6763,312,6762,1482639073,1,6760),(121,2,114,0,22620,'body',0,6760,313,6760,1482639073,1,6763),(121,2,114,0,22621,'body',0,6764,314,6763,1482639073,1,6760),(121,2,114,0,22622,'body',0,6760,315,6760,1482639073,1,6764),(121,2,114,0,22623,'body',0,6765,316,6764,1482639073,1,6760),(121,2,114,0,22624,'body',0,6766,317,6760,1482639073,1,6765),(121,2,114,0,22625,'body',0,6760,318,6765,1482639073,1,6766),(121,2,114,0,22626,'body',0,6767,319,6766,1482639073,1,6760),(121,2,114,0,22627,'body',0,6760,320,6760,1482639073,1,6767),(121,2,114,0,22628,'body',0,1811,321,6767,1482639073,1,6760),(121,2,114,0,22629,'body',0,6768,322,6760,1482639073,1,1811),(121,2,114,0,22630,'body',0,6769,323,1811,1482639073,1,6768),(121,2,114,0,22631,'body',0,1123,324,6768,1482639073,1,6769),(121,2,114,0,22632,'body',0,6770,325,6769,1482639073,1,1123),(121,2,114,0,22633,'body',0,2390,326,1123,1482639073,1,6770),(121,2,114,0,22634,'body',0,1123,327,6770,1482639073,1,2390),(121,2,114,0,22635,'body',0,1747,328,2390,1482639073,1,1123),(121,2,114,0,22636,'body',0,6771,329,1123,1482639073,1,1747),(121,2,114,0,22637,'body',0,2382,330,1747,1482639073,1,6771),(121,2,114,0,22638,'body',0,1747,331,6771,1482639073,1,2382),(121,2,114,0,22639,'body',0,1748,332,2382,1482639073,1,1747),(121,2,114,0,22640,'body',0,1747,333,1747,1482639073,1,1748),(121,2,114,0,22641,'body',0,1816,334,1748,1482639073,1,1747),(121,2,114,0,22642,'body',0,6772,335,1747,1482639073,1,1816),(121,2,114,0,22643,'body',0,6773,336,1816,1482639073,1,6772),(121,2,114,0,22644,'body',0,2572,337,6772,1482639073,1,6773),(121,2,114,0,22645,'body',0,6774,338,6773,1482639073,1,2572),(121,2,114,0,22646,'body',0,1123,339,2572,1482639073,1,6774),(121,2,114,0,22647,'body',0,6775,340,6774,1482639073,1,1123),(121,2,114,0,22648,'body',0,6776,341,1123,1482639073,1,6775),(121,2,114,0,22649,'body',0,6766,342,6775,1482639073,1,6776),(121,2,114,0,22650,'body',0,6770,343,6776,1482639073,1,6766),(121,2,114,0,22651,'body',0,2863,344,6766,1482639073,1,6770),(121,2,114,0,22652,'body',0,1123,345,6770,1482639073,1,2863),(121,2,114,0,22653,'body',0,6777,346,2863,1482639073,1,1123),(121,2,114,0,22654,'body',0,6767,347,1123,1482639073,1,6777),(121,2,114,0,22655,'body',0,2572,348,6777,1482639073,1,6767),(121,2,114,0,22656,'body',0,6778,349,6767,1482639073,1,2572),(121,2,114,0,22657,'body',0,6779,350,2572,1482639073,1,6778),(121,2,114,0,22658,'body',0,2968,351,6778,1482639073,1,6779),(121,2,114,0,22659,'body',0,1806,352,6779,1482639073,1,2968),(121,2,114,0,22660,'body',0,1886,353,2968,1482639073,1,1806),(121,2,114,0,22661,'body',0,1123,354,1806,1482639073,1,1886),(121,2,114,0,22662,'body',0,6780,355,1886,1482639073,1,1123),(121,2,114,0,22663,'body',0,1199,356,1123,1482639073,1,6780),(121,2,114,0,22664,'body',0,6781,357,6780,1482639073,1,1199),(121,2,114,0,22665,'body',0,1123,358,1199,1482639073,1,6781),(121,2,114,0,22666,'body',0,6782,359,6781,1482639073,1,1123),(121,2,114,0,22667,'body',0,1169,360,1123,1482639073,1,6782),(121,2,114,0,22668,'body',0,6783,361,6782,1482639073,1,1169),(121,2,114,0,22669,'body',0,1199,362,1169,1482639073,1,6783),(121,2,114,0,22670,'body',0,1132,363,6783,1482639073,1,1199),(121,2,114,0,22671,'body',0,6784,364,1199,1482639073,1,1132),(121,2,114,0,22672,'body',0,2587,365,1132,1482639073,1,6784),(121,2,114,0,22673,'body',0,1998,366,6784,1482639073,1,2587),(121,2,114,0,22674,'body',0,985,367,2587,1482639073,1,1998),(121,2,114,0,22675,'body',0,6751,368,1998,1482639073,1,985),(121,2,114,0,22676,'body',0,6785,369,985,1482639073,1,6751),(121,2,114,0,22677,'body',0,6786,370,6751,1482639073,1,6785),(121,2,114,0,22678,'body',0,6787,371,6785,1482639073,1,6786),(121,2,114,0,22679,'body',0,1121,372,6786,1482639073,1,6787),(121,2,114,0,22680,'body',0,1042,373,6787,1482639073,1,1121),(121,2,114,0,22681,'body',0,1043,374,1121,1482639073,1,1042),(121,2,114,0,22682,'body',0,2032,375,1042,1482639073,1,1043),(121,2,114,0,22683,'body',0,1781,376,1043,1482639073,1,2032),(121,2,114,0,22684,'body',0,6788,377,2032,1482639073,1,1781),(121,2,114,0,22685,'body',0,6789,378,1781,1482639073,1,6788),(121,2,114,0,22686,'body',0,1233,379,6788,1482639073,1,6789),(121,2,114,0,22687,'body',0,6790,380,6789,1482639073,1,1233),(121,2,114,0,22688,'body',0,2980,381,1233,1482639073,1,6790),(121,2,114,0,22689,'body',0,6791,382,6790,1482639073,1,2980),(121,2,114,0,22690,'body',0,6769,383,2980,1482639073,1,6791),(121,2,114,0,22691,'body',0,1123,384,6791,1482639073,1,6769),(121,2,114,0,22692,'body',0,6792,385,6769,1482639073,1,1123),(121,2,114,0,22693,'body',0,6793,386,1123,1482639073,1,6792),(121,2,114,0,22694,'body',0,6794,387,6792,1482639073,1,6793),(121,2,114,0,22695,'body',0,1123,388,6793,1482639073,1,6794),(121,2,114,0,22696,'body',0,1233,389,6794,1482639073,1,1123),(121,2,114,0,22697,'body',0,6795,390,1123,1482639073,1,1233),(121,2,114,0,22698,'body',0,6796,391,1233,1482639073,1,6795),(121,2,114,0,22699,'body',0,6721,392,6795,1482639073,1,6796),(121,2,114,0,22700,'body',0,2987,393,6796,1482639073,1,6721),(121,2,114,0,22701,'body',0,6797,394,6721,1482639073,1,2987),(121,2,114,0,22702,'body',0,1123,395,2987,1482639073,1,6797),(121,2,114,0,22703,'body',0,6795,396,6797,1482639073,1,1123),(121,2,114,0,22704,'body',0,6798,397,1123,1482639073,1,6795),(121,2,114,0,22705,'body',0,1166,398,6795,1482639073,1,6798),(121,2,114,0,22706,'body',0,1199,399,6798,1482639073,1,1166),(121,2,114,0,22707,'body',0,1132,400,1166,1482639073,1,1199),(121,2,114,0,22708,'body',0,6799,401,1199,1482639073,1,1132),(121,2,114,0,22709,'body',0,6800,402,1132,1482639073,1,6799),(121,2,114,0,22710,'body',0,1166,403,6799,1482639073,1,6800),(121,2,114,0,22711,'body',0,2992,404,6800,1482639073,1,1166),(121,2,114,0,22712,'body',0,6801,405,1166,1482639073,1,2992),(121,2,114,0,22713,'body',0,1123,406,2992,1482639073,1,6801),(121,2,114,0,22714,'body',0,6744,407,6801,1482639073,1,1123),(121,2,114,0,22715,'body',0,6802,408,1123,1482639073,1,6744),(121,2,114,0,22716,'body',0,1125,409,6744,1482639073,1,6802),(121,2,114,0,22717,'body',0,6803,410,6802,1482639073,1,1125),(121,2,114,0,22718,'body',0,1123,411,1125,1482639073,1,6803),(121,2,114,0,22719,'body',0,6804,412,6803,1482639073,1,1123),(121,2,114,0,22720,'body',0,6805,413,1123,1482639073,1,6804),(121,2,114,0,22721,'body',0,2591,414,6804,1482639073,1,6805),(121,2,114,0,22722,'body',0,2942,415,6805,1482639073,1,2591),(121,2,114,0,22723,'body',0,1121,416,2591,1482639073,1,2942),(121,2,114,0,22724,'body',0,2032,417,2942,1482639073,1,1121),(121,2,114,0,22725,'body',0,1155,418,1121,1482639073,1,2032),(121,2,114,0,22726,'body',0,6806,419,2032,1482639073,1,1155),(121,2,114,0,22727,'body',0,1123,420,1155,1482639073,1,6806),(121,2,114,0,22728,'body',0,6807,421,6806,1482639073,1,1123),(121,2,114,0,22729,'body',0,6808,422,1123,1482639073,1,6807),(121,2,114,0,22730,'body',0,1120,423,6807,1482639073,1,6808),(121,2,114,0,22731,'body',0,6809,424,6808,1482639073,1,1120),(121,2,114,0,22732,'body',0,6721,425,1120,1482639073,1,6809),(121,2,114,0,22733,'body',0,1801,426,6809,1482639073,1,6721),(121,2,114,0,22734,'body',0,0,427,6721,1482639073,1,1801),(1,2,155,0,22772,'title',0,1787,0,0,1483635812,1,6819),(121,2,155,0,22773,'body',0,6820,1,6819,1483635812,1,1787),(121,2,155,0,22774,'body',0,986,2,1787,1483635812,1,6820),(121,2,155,0,22775,'body',0,2912,3,6820,1483635812,1,986),(121,2,155,0,22776,'body',0,3914,4,986,1483635812,1,2912),(121,2,155,0,22777,'body',0,1145,5,2912,1483635812,1,3914),(121,2,155,0,22778,'body',0,3273,6,3914,1483635812,1,1145),(121,2,155,0,22779,'body',0,1187,7,1145,1483635812,1,3273),(121,2,155,0,22780,'body',0,1828,8,3273,1483635812,1,1187),(121,2,155,0,22781,'body',0,997,9,1187,1483635812,1,1828),(121,2,155,0,22782,'body',0,1126,10,1828,1483635812,1,997),(121,2,155,0,22783,'body',0,1817,11,997,1483635812,1,1126),(121,2,155,0,22784,'body',0,1748,12,1126,1483635812,1,1817),(121,2,155,0,22785,'body',0,1749,13,1817,1483635812,1,1748),(121,2,155,0,22786,'body',0,1515,14,1748,1483635812,1,1749),(121,2,155,0,22787,'body',0,1801,15,1749,1483635812,1,1515),(121,2,155,0,22788,'body',0,1167,16,1515,1483635812,1,1801),(121,2,155,0,22789,'body',0,1042,17,1801,1483635812,1,1167),(121,2,155,0,22790,'body',0,1043,18,1167,1483635812,1,1042),(121,2,155,0,22791,'body',0,2043,19,1042,1483635812,1,1043),(121,2,155,0,22792,'body',0,1218,20,1043,1483635812,1,2043),(121,2,155,0,22793,'body',0,6821,21,2043,1483635812,1,1218),(121,2,155,0,22794,'body',0,6822,22,1218,1483635812,1,6821),(121,2,155,0,22795,'body',0,1191,23,6821,1483635812,1,6822),(121,2,155,0,22796,'body',0,1771,24,6822,1483635812,1,1191),(121,2,155,0,22797,'body',0,3273,25,1191,1483635812,1,1771),(121,2,155,0,22798,'body',0,1194,26,1771,1483635812,1,3273),(121,2,155,0,22799,'body',0,1120,27,3273,1483635812,1,1194),(121,2,155,0,22800,'body',0,1828,28,1194,1483635812,1,1120),(121,2,155,0,22801,'body',0,997,29,1120,1483635812,1,1828),(121,2,155,0,22802,'body',0,4572,30,1828,1483635812,1,997),(121,2,155,0,22803,'body',0,6823,31,997,1483635812,1,4572),(121,2,155,0,22804,'body',0,0,32,4572,1483635812,1,6823),(187,17,156,0,22871,'title',0,1787,0,0,1483636155,1,6819),(188,17,156,0,22872,'description',0,6820,1,6819,1483636155,1,1787),(188,17,156,0,22873,'description',0,986,2,1787,1483636155,1,6820),(188,17,156,0,22874,'description',0,2912,3,6820,1483636155,1,986),(188,17,156,0,22875,'description',0,3914,4,986,1483636155,1,2912),(188,17,156,0,22876,'description',0,1145,5,2912,1483636155,1,3914),(188,17,156,0,22877,'description',0,3273,6,3914,1483636155,1,1145),(188,17,156,0,22878,'description',0,1187,7,1145,1483636155,1,3273),(188,17,156,0,22879,'description',0,1828,8,3273,1483636155,1,1187),(188,17,156,0,22880,'description',0,997,9,1187,1483636155,1,1828),(188,17,156,0,22881,'description',0,1126,10,1828,1483636155,1,997),(188,17,156,0,22882,'description',0,1817,11,997,1483636155,1,1126),(188,17,156,0,22883,'description',0,1748,12,1126,1483636155,1,1817),(188,17,156,0,22884,'description',0,1749,13,1817,1483636155,1,1748),(188,17,156,0,22885,'description',0,1515,14,1748,1483636155,1,1749),(188,17,156,0,22886,'description',0,1801,15,1749,1483636155,1,1515),(188,17,156,0,22887,'description',0,1167,16,1515,1483636155,1,1801),(188,17,156,0,22888,'description',0,1042,17,1801,1483636155,1,1167),(188,17,156,0,22889,'description',0,1043,18,1167,1483636155,1,1042),(188,17,156,0,22890,'description',0,2043,19,1042,1483636155,1,1043),(188,17,156,0,22891,'description',0,1218,20,1043,1483636155,1,2043),(188,17,156,0,22892,'description',0,6821,21,2043,1483636155,1,1218),(188,17,156,0,22893,'description',0,6824,22,1218,1483636155,1,6821),(188,17,156,0,22894,'description',0,1805,23,6821,1483636155,1,6824),(188,17,156,0,22895,'description',0,2102,24,6824,1483636155,1,1805),(188,17,156,0,22896,'description',0,1771,25,1805,1483636155,1,2102),(188,17,156,0,22897,'description',0,3273,26,2102,1483636155,1,1771),(188,17,156,0,22898,'description',0,1194,27,1771,1483636155,1,3273),(188,17,156,0,22899,'description',0,1120,28,3273,1483636155,1,1194),(188,17,156,0,22900,'description',0,1828,29,1194,1483636155,1,1120),(188,17,156,0,22901,'description',0,997,30,1120,1483636155,1,1828),(188,17,156,0,22902,'description',0,4572,31,1828,1483636155,1,997),(188,17,156,0,22903,'description',0,6823,32,997,1483636155,1,4572),(188,17,156,0,22904,'description',0,0,33,4572,1483636155,1,6823),(187,17,76,0,22905,'title',0,1182,0,0,1481073301,1,6825),(187,17,76,0,22906,'title',0,6825,1,6825,1481073301,1,1182),(188,17,76,0,22907,'description',0,1182,2,1182,1481073301,1,6825),(188,17,76,0,22908,'description',0,6826,3,6825,1481073301,1,1182),(187,17,76,0,22909,'title',0,3701,4,1182,1481073301,1,6826),(187,17,76,0,22910,'title',0,1125,5,6826,1481073301,1,3701),(188,17,76,0,22911,'description',0,2030,6,3701,1481073301,1,1125),(188,17,76,0,22912,'description',0,1166,7,1125,1481073301,1,2030),(188,17,76,0,22913,'description',0,1126,8,2030,1481073301,1,1166),(188,17,76,0,22914,'description',0,6827,9,1166,1481073301,1,1126),(188,17,76,0,22915,'description',0,6828,10,1126,1481073301,1,6827),(188,17,76,0,22916,'description',0,6453,11,6827,1481073301,1,6828),(188,17,76,0,22917,'description',0,4002,12,6828,1481073301,1,6453),(188,17,76,0,22918,'description',0,3771,13,6453,1481073301,1,4002),(188,17,76,0,22919,'description',0,6829,14,4002,1481073301,1,3771),(188,17,76,0,22920,'description',0,1512,15,3771,1481073301,1,6829),(188,17,76,0,22921,'description',0,1116,16,6829,1481073301,1,1512),(188,17,76,0,22922,'description',0,3701,17,1512,1481073301,1,1116),(188,17,76,0,22923,'description',0,985,18,1116,1481073301,1,3701),(188,17,76,0,22924,'description',0,6826,19,3701,1481073301,1,985),(188,17,76,0,22925,'description',0,1125,20,985,1481073301,1,6826),(188,17,76,0,22926,'description',0,1215,21,6826,1481073301,1,1125),(188,17,76,0,22927,'description',0,6830,22,1125,1481073301,1,1215),(188,17,76,0,22928,'description',0,1126,23,1215,1481073301,1,6830),(188,17,76,0,22929,'description',0,1042,24,6830,1481073301,1,1126),(188,17,76,0,22930,'description',0,1043,25,1126,1481073301,1,1042),(188,17,76,0,22931,'description',0,2043,26,1042,1481073301,1,1043),(188,17,76,0,22932,'description',0,6831,27,1043,1481073301,1,2043),(188,17,76,0,22933,'description',0,1787,28,2043,1481073301,1,6831),(188,17,76,0,22934,'description',0,6832,29,6831,1481073301,1,1787),(188,17,76,0,22935,'description',0,986,30,1787,1481073301,1,6832),(188,17,76,0,22936,'description',0,1801,31,6832,1481073301,1,986),(188,17,76,0,22937,'description',0,1779,32,986,1481073301,1,1801),(188,17,76,0,22938,'description',0,6833,33,1801,1481073301,1,1779),(188,17,76,0,22939,'description',0,1224,34,1779,1481073301,1,6833),(188,17,76,0,22940,'description',0,6834,35,6833,1481073301,1,1224),(188,17,76,0,22941,'description',0,1960,36,1224,1481073301,1,6834),(188,17,76,0,22942,'description',0,1215,37,6834,1481073301,1,1960),(188,17,76,0,22943,'description',0,6835,38,1960,1481073301,1,1215),(188,17,76,0,22944,'description',0,6836,39,1215,1481073301,1,6835),(188,17,76,0,22945,'description',0,1123,40,6835,1481073301,1,6836),(188,17,76,0,22946,'description',0,1960,41,6836,1481073301,1,1123),(188,17,76,0,22947,'description',0,1126,42,1123,1481073301,1,1960),(188,17,76,0,22948,'description',0,6827,43,1960,1481073301,1,1126),(188,17,76,0,22949,'description',0,6828,44,1126,1481073301,1,6827),(188,17,76,0,22950,'description',0,1120,45,6827,1481073301,1,6828),(188,17,76,0,22951,'description',0,1121,46,6828,1481073301,1,1120),(188,17,76,0,22952,'description',0,6837,47,1120,1481073301,1,1121),(188,17,76,0,22953,'description',0,6838,48,1121,1481073301,1,6837),(188,17,76,0,22954,'description',0,1230,49,6837,1481073301,1,6838),(188,17,76,0,22955,'description',0,6839,50,6838,1481073301,1,1230),(188,17,76,0,22956,'description',0,0,51,1230,1481073301,1,6839),(116,5,160,0,22981,'name',0,0,0,0,1483670369,3,6854);
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
) ENGINE=InnoDB AUTO_INCREMENT=6910 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,1,'setup'),(814,5,'the'),(816,5,'for'),(927,2,'ez.no'),(930,3,'users'),(951,1,'main'),(952,6,'group'),(953,2,'anonymous'),(954,3,'user'),(955,2,'nospam'),(956,1,'guest'),(957,1,'accounts'),(958,2,'administrator'),(959,1,'editors'),(960,1,'admin'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(967,1,'sitestyle_identifier'),(974,1,'applications'),(985,9,'uber'),(986,5,'uns'),(991,2,'folder'),(992,9,'1'),(994,9,'2'),(995,5,'3'),(997,4,'studium'),(1004,1,'forschungreisen'),(1042,18,'al'),(1043,14,'mustafa'),(1113,1,'lorem'),(1114,1,'ipsum'),(1115,8,'ist'),(1116,7,'ein'),(1119,1,'text'),(1120,15,'fur'),(1121,14,'die'),(1123,15,'und'),(1125,16,'in'),(1126,18,'der'),(1132,4,'als'),(1135,4,'eine'),(1140,3,'diese'),(1143,7,'um'),(1145,16,'zu'),(1147,5,'es'),(1149,2,'nicht'),(1150,1,'nur'),(1151,4,'5'),(1155,6,'auch'),(1166,9,'mit'),(1167,7,'dem'),(1169,14,'von'),(1174,4,'so'),(1176,1,'desktop'),(1182,2,'blog'),(1183,1,'post'),(1184,1,'lang'),(1185,1,'erwiesener'),(1186,1,'fakt'),(1187,6,'dass'),(1188,1,'leser'),(1189,7,'vom'),(1190,1,'abgelenkt'),(1191,7,'wird'),(1192,1,'wenn'),(1193,1,'er'),(1194,8,'sich'),(1195,1,'layout'),(1196,1,'ansieht'),(1197,1,'punkt'),(1198,1,'nutzen'),(1199,2,'mehr'),(1200,7,'oder'),(1201,1,'weniger'),(1202,1,'normale'),(1203,1,'anordnung'),(1204,1,'buchstaben'),(1205,1,'darstellt'),(1206,1,'somit'),(1207,5,'nach'),(1208,1,'lesbarer'),(1209,6,'sprache'),(1210,1,'aussieht'),(1211,1,'viele'),(1212,1,'publisher'),(1213,1,'webeditoren'),(1214,1,'mittlerweile'),(1215,7,'den'),(1216,1,'standardtext'),(1217,1,'suche'),(1218,16,'im'),(1219,2,'internet'),(1220,1,'macht'),(1221,2,'webseiten'),(1222,1,'sichtbar'),(1223,1,'wo'),(1224,2,'noch'),(1225,1,'immer'),(1226,1,'vorkommen'),(1227,2,'gibt'),(1228,1,'mehrere'),(1229,1,'versionen'),(1230,14,'des'),(1231,2,'einige'),(1232,1,'zufallig'),(1233,2,'andere'),(1234,1,'bewusst'),(1235,1,'beeinflusst'),(1236,1,'witz'),(1237,1,'eigenen'),(1238,1,'geschmacks'),(1309,1,'qom2'),(1511,4,'qom'),(1512,3,'2016'),(1515,10,'a'),(1521,4,'will'),(1522,4,'be'),(1524,4,'by'),(1527,4,'of'),(1531,4,'at'),(1532,4,'its'),(1536,3,'more'),(1542,4,'as'),(1544,4,'to'),(1546,4,'making'),(1549,4,'english'),(1553,4,'and'),(1554,1,'web'),(1555,4,'now'),(1557,4,'their'),(1570,3,'years'),(1573,4,'on'),(1577,4,'large'),(1589,1,'veranstaltungen'),(1747,14,'islamische'),(1748,12,'theologie'),(1749,7,'b'),(1752,3,'zum'),(1757,1,'folgenden'),(1767,2,'z'),(1771,6,'sie'),(1772,5,'deutsche'),(1775,2,'haben'),(1776,3,'nachweis'),(1779,3,'dieser'),(1781,4,'bis'),(1787,6,'wir'),(1788,2,'ihre'),(1789,2,'bewerbung'),(1795,5,'01'),(1797,3,'marz'),(1799,3,'inhalte'),(1801,14,'an'),(1804,2,'angeboten'),(1805,9,'werden'),(1806,2,'arabische'),(1810,2,'geschichte'),(1811,2,'komparative'),(1813,2,'jurisprudenz'),(1814,5,'ethik'),(1816,6,'kultur'),(1817,11,'islamischen'),(1818,5,'welt'),(1825,3,'informationen'),(1827,6,'auf'),(1828,14,'das'),(1842,5,'art'),(1850,7,'ca'),(1854,2,'sieben'),(1856,2,'zwei'),(1858,5,'einer'),(1865,5,'einen'),(1868,1,'damit'),(1869,1,'wissenschaftliche'),(1874,1,'erreichen'),(1876,2,'forschung'),(1886,5,'literatur'),(1894,4,'2003'),(1903,4,'2012'),(1911,5,'muhammad'),(1912,5,'zwischen'),(1918,1,'wurden'),(1929,2,'vor'),(1950,1,'steht'),(1960,2,'bei'),(1977,4,'interpretation'),(1980,1,'fragen'),(1987,4,'jenseits'),(1996,1,'eigene'),(1998,3,'sowie'),(2007,1,'daher'),(2010,3,'aktuellen'),(2030,5,'kooperation'),(2031,2,'studiengang'),(2032,9,'universitat'),(2036,3,'http'),(2039,3,'ac'),(2040,3,'ir'),(2041,5,'qum'),(2042,8,'iran'),(2043,13,'institut'),(2044,10,'berlin'),(2047,4,'zur'),(2085,4,'dozenten'),(2086,5,'prof'),(2087,6,'dr'),(2090,1,'alle'),(2096,2,'fiqh'),(2099,1,'reza'),(2101,4,'was'),(2102,3,'kann'),(2103,6,'mahdi'),(2104,7,'esfahani'),(2109,3,'arabisch'),(2110,5,'i'),(2122,3,'name'),(2129,3,'tel'),(2132,4,'e'),(2133,4,'mail'),(2138,4,'de'),(2140,4,'7'),(2182,4,'10'),(2253,3,'www'),(2382,4,'mystik'),(2383,5,'deutschsprachigen'),(2385,4,'akademie'),(2390,5,'philosophie'),(2417,4,'hochschule'),(2478,4,'schriften'),(2554,1,'email'),(2570,2,'instituts'),(2571,4,'humanwissenschaften'),(2572,8,'studien'),(2573,4,'gemeinnutzige'),(2574,4,'gmbh'),(2575,3,'forderung'),(2577,2,'akademisch'),(2578,2,'raum'),(2579,3,'diesem'),(2581,3,'wissenschaftlern'),(2587,3,'bucher'),(2589,4,'ins'),(2591,4,'ferner'),(2596,2,'wissenschaftliches'),(2597,2,'magazin'),(2598,3,'rund'),(2599,3,'thema'),(2602,3,'eines'),(2607,2,'ubersetzungen'),(2608,2,'akademischen'),(2609,2,'niveau'),(2619,3,'hin'),(2820,2,'partneruniversitat'),(2825,3,'bereich'),(2849,2,'folgende'),(2851,3,'programm'),(2859,3,'ihrer'),(2863,2,'verbreitung'),(2872,2,'durch'),(2898,3,'teheran'),(2899,3,'maschhad'),(2900,3,'isfahan'),(2907,2,'ausserhalb'),(2912,5,'ihnen'),(2919,2,'unter'),(2926,3,'schule'),(2942,2,'bietet'),(2968,3,'persisch'),(2980,3,'reisen'),(2987,2,'geniessen'),(2992,3,'verschiedenen'),(3195,1,'impressum'),(3196,1,'angaben'),(3197,3,'gemass'),(3198,1,'tmg'),(3199,1,'hardenbergstrasse'),(3200,2,'8'),(3201,2,'10623'),(3202,1,'vertreten'),(3203,1,'vorsitzenden'),(3204,2,'kontakt'),(3205,1,'030'),(3206,1,'407'),(3207,1,'410'),(3208,1,'71'),(3209,2,'info'),(3210,2,'almustafa'),(3211,1,'registergericht'),(3212,1,'amtsgericht'),(3213,1,'charlottenburg'),(3214,1,'registernummer'),(3215,1,'hrb'),(3216,1,'177538'),(3217,1,'verantwortlich'),(3218,1,'inhalt'),(3219,1,'55'),(3220,1,'abs'),(3221,1,'rstv'),(3222,1,'haftungsausschluss'),(3223,1,'disclaimer'),(3224,1,'haftung'),(3225,1,'dienstanbieter'),(3226,3,'sind'),(3227,3,'diesen'),(3228,1,'seiten'),(3229,1,'allgemeinen'),(3230,1,'gesetzen'),(3231,1,'diensteanbieter'),(3232,1,'jedoch'),(3233,1,'verpflichtet'),(3234,1,'ubermittelte'),(3235,1,'gespeicherte'),(3236,1,'fremde'),(3237,1,'uberwachen'),(3238,1,'umstanden'),(3239,1,'forschen'),(3240,1,'rechtswidrige'),(3241,1,'tatigkeit'),(3242,1,'hinweisen'),(3243,1,'verpflichtungen'),(3244,1,'entfernung'),(3245,1,'sperrung'),(3246,1,'nutzung'),(3247,1,'bleiben'),(3248,1,'hiervon'),(3249,1,'unberuhrt'),(3250,1,'diesbezugliche'),(3251,1,'erst'),(3252,1,'ab'),(3253,1,'zeitpunkt'),(3254,1,'kenntnis'),(3255,1,'konkreten'),(3256,1,'rechtsverletzung'),(3257,1,'moglich'),(3258,1,'bekanntwerden'),(3259,1,'entsprechenden'),(3260,1,'rechtsverletzungen'),(3261,1,'umgehend'),(3262,1,'entfernen'),(3263,1,'links'),(3264,1,'unser'),(3265,1,'angebot'),(3266,1,'enthalt'),(3267,1,'externen'),(3268,1,'dritter'),(3269,1,'deren'),(3270,1,'keinen'),(3271,1,'einfluss'),(3272,1,'deshalb'),(3273,6,'konnen'),(3274,1,'fremden'),(3275,1,'keine'),(3276,1,'gewahr'),(3277,1,'ubernehmen'),(3278,1,'verlinkten'),(3279,1,'stets'),(3280,1,'jeweilige'),(3281,1,'anbieter'),(3282,1,'betreiber'),(3283,1,'verlinkung'),(3284,1,'mogliche'),(3285,1,'rechtsverstosse'),(3286,1,'uberpruft'),(3287,1,'waren'),(3288,1,'erkennbar'),(3289,1,'permanente'),(3290,1,'inhaltliche'),(3291,1,'kontrolle'),(3292,1,'ohne'),(3293,1,'konkrete'),(3294,1,'anhaltspunkte'),(3295,1,'zumutbar'),(3296,1,'derartige'),(3297,1,'urheberrecht'),(3298,1,'seitenbetreiber'),(3299,1,'erstellten'),(3300,1,'werke'),(3301,1,'unterliegen'),(3302,1,'deutschen'),(3303,1,'vervielfaltigung'),(3304,1,'bearbeitung'),(3305,1,'jede'),(3306,1,'verwertung'),(3307,1,'grenzen'),(3308,1,'urheberrechtes'),(3309,1,'bedurfen'),(3310,1,'schriftlichen'),(3311,1,'zustimmung'),(3312,1,'jeweiligen'),(3313,1,'autors'),(3314,1,'bzw'),(3315,1,'erstellers'),(3316,1,'downloads'),(3317,1,'kopien'),(3318,1,'seite'),(3319,1,'privaten'),(3320,1,'kommerziellen'),(3321,1,'gebrauch'),(3322,1,'gestattet'),(3323,1,'soweit'),(3324,1,'erstellt'),(3325,1,'urheberrechte'),(3326,1,'beachtet'),(3327,1,'insbesondere'),(3328,1,'solche'),(3329,1,'gekennzeichnet'),(3330,1,'sollten'),(3331,1,'trotzdem'),(3332,1,'urheberrechtsverletzung'),(3333,1,'aufmerksam'),(3334,2,'bitten'),(3335,1,'hinweis'),(3336,1,'datenschutzerklarung'),(3337,1,'datenschutz'),(3338,1,'unserer'),(3339,1,'webseite'),(3340,1,'regel'),(3341,1,'angabe'),(3342,1,'personenbezogener'),(3343,1,'daten'),(3344,1,'unseren'),(3345,1,'personenbezogene'),(3346,1,'beispielsweise'),(3347,1,'anschrift'),(3348,1,'adressen'),(3349,1,'erhoben'),(3350,1,'erfolgt'),(3351,1,'dies'),(3352,1,'freiwilliger'),(3353,1,'basis'),(3354,1,'ausdruckliche'),(3355,1,'dritte'),(3356,1,'weitergegeben'),(3357,1,'weisen'),(3358,1,'darauf'),(3359,1,'datenubertragung'),(3360,1,'kommunikation'),(3361,1,'per'),(3362,1,'sicherheitslucken'),(3363,1,'aufweisen'),(3364,1,'luckenloser'),(3365,1,'schutz'),(3366,1,'zugriff'),(3367,3,'rahmen'),(3368,1,'impressumspflicht'),(3369,1,'veroffentlichten'),(3370,1,'kontaktdaten'),(3371,1,'ubersendung'),(3372,1,'ausdrucklich'),(3373,1,'angeforderter'),(3374,1,'werbung'),(3375,1,'informationsmaterialien'),(3376,1,'hiermit'),(3377,1,'widersprochen'),(3378,1,'behalten'),(3379,1,'rechtliche'),(3380,1,'schritte'),(3381,1,'falle'),(3382,1,'unverlangten'),(3383,1,'zusendung'),(3384,1,'werbeinformationen'),(3385,2,'etwa'),(3386,1,'spam'),(3387,1,'mails'),(3388,1,'offenen'),(3389,1,'sprechstunde'),(3390,1,'erhalten'),(3391,1,'gerne'),(3392,1,'beantworten'),(3393,1,'bewerbungs'),(3394,1,'zulassungsverfahren'),(3395,1,'ort'),(3396,2,'adresse'),(3397,1,'hardenbergstr'),(3398,1,'sprechzeiten'),(3399,1,'dienstag'),(3400,1,'12'),(3401,1,'14'),(3402,1,'uhr'),(3403,1,'donnerstag'),(3404,1,'16'),(3405,1,'18'),(3515,2,'17'),(3518,2,'00'),(3701,3,'workshop'),(3730,4,'ubersetzung'),(3771,2,'19'),(3910,2,'forschungsreise'),(3911,3,'2017'),(3912,3,'sitz'),(3913,2,'freut'),(3914,4,'mitteilen'),(3915,2,'durfen'),(3916,2,'forschungsaufenthalt'),(3917,2,'ausschreibung'),(3918,2,'aussteht'),(3919,2,'ziel'),(3920,2,'reise'),(3921,2,'interessierten'),(3922,2,'studierenden'),(3923,2,'abiturienten'),(3924,2,'gelegenheit'),(3925,2,'bieten'),(3926,2,'diverse'),(3927,2,'seminare'),(3928,2,'besuchen'),(3929,2,'dabei'),(3930,2,'umfangreiche'),(3931,2,'grundkenntnisse'),(3932,2,'themengebieten'),(3933,2,'erlangen'),(3934,2,'jeweils'),(3935,2,'anwesenden'),(3936,2,'gaste'),(3937,2,'entsprechen'),(3938,2,'unterrichtseinheiten'),(3939,2,'vornehmlich'),(3940,2,'englischsprachig'),(3941,2,'ausnahmefallen'),(3942,2,'aber'),(3943,2,'stattfinden'),(3944,2,'neben'),(3945,2,'lehrveranstaltungen'),(3946,2,'kulturelles'),(3947,2,'organisiert'),(3948,2,'voraussichtlich'),(3949,2,'beinhaltet'),(3950,2,'gesamtaufenthaltsdauer'),(3951,2,'betragt'),(3952,2,'monat'),(3953,2,'ubernimmt'),(3954,2,'zeitraum'),(3955,2,'ubernachtungs'),(3956,2,'verpflegungskosten'),(3957,2,'kosten'),(3958,2,'ruckflug'),(3959,2,'reisekosten'),(3960,2,'reisenden'),(3961,2,'selbst'),(3962,2,'tragen'),(3963,2,'teilnehmerzahl'),(3964,2,'25'),(3965,2,'personen'),(3966,2,'begrenzt'),(3967,2,'auswahlverfahrens'),(3968,2,'bewerbern'),(3969,2,'qualifikation'),(3970,2,'vorzug'),(3971,2,'gewahrt'),(3972,2,'voraussetzung'),(3973,2,'abiturzeugnisses'),(3974,3,'deutschland'),(3975,2,'anerkannten'),(3976,2,'immatrikulation'),(4000,1,'anmeldefrist'),(4001,1,'endet'),(4002,2,'am'),(4003,1,'dezember'),(4004,1,'interessenten'),(4005,1,'bewerbungen'),(4006,1,'senden'),(4007,1,'unterlagen'),(4008,1,'beizufugen'),(4009,1,'reisepasskopie'),(4010,1,'gultig'),(4011,1,'mindestens'),(4012,1,'monate'),(4013,1,'reisebeginn'),(4014,1,'formular'),(4015,1,'siehe'),(4016,1,'anhang'),(4017,1,'passbild'),(4018,1,'kopie'),(4019,1,'abiturzeugnis'),(4020,1,'immatrikulationsbescheinigung'),(4021,2,'lebenslauf'),(4040,2,'zweck'),(4046,2,'verfasst'),(4047,2,'ubersetzt'),(4048,2,'verfolgt'),(4049,2,'vorhaben'),(4050,2,'kontinuierlichen'),(4051,2,'perioden'),(4052,2,'publizieren'),(4053,1,'publikationen'),(4054,1,'hauptanliegen'),(4055,1,'deutschsprachiger'),(4056,1,'kontext'),(4057,1,'reihe'),(4058,1,'ausland'),(4059,1,'anderem'),(4060,1,'fachpublikationen'),(4061,1,'ermoglichen'),(4497,1,'zulassung'),(4498,1,'bachelorstudiengang'),(4499,1,'mussen'),(4500,1,'bewerber'),(4501,1,'innen'),(4502,1,'voraussetzungen'),(4503,1,'nachweisen'),(4504,1,'fachgebundene'),(4505,1,'allgemeine'),(4506,1,'hochschulreife'),(4507,1,'fachhochschulreife'),(4508,1,'gesetzlich'),(4509,1,'festgelegte'),(4510,1,'studienberechtigung'),(4511,1,'11'),(4512,1,'berlhg'),(4513,1,'sofern'),(4514,1,'staatsangehorigkeit'),(4515,1,'hochschulzugangsberechtigung'),(4516,1,'deutschkenntnissen'),(4517,1,'vorgeschrieben'),(4518,1,'muss'),(4519,1,'ende'),(4520,1,'bewerbungsfrist'),(4521,1,'vorliegen'),(4522,1,'bewerbungszeitraum'),(4523,1,'sommersemester'),(4524,1,'januar'),(4525,1,'auswahl'),(4526,1,'modulen'),(4527,1,'theolgie'),(4528,1,'koranwissenschaften'),(4529,1,'koranexegese'),(4530,1,'hadithwissenschaften'),(4531,1,'systematische'),(4532,1,'erkenntnislehre'),(4533,1,'zweite'),(4534,1,'fremdsprache'),(4535,1,'wahlpflichtmodule'),(4536,1,'berufsorientierte'),(4537,1,'module'),(4538,1,'weitere'),(4539,1,'klicken'),(4540,1,'bild'),(4541,1,'broschure'),(4542,1,'studieninformationen'),(4543,1,'studienaufbau'),(4544,1,'bachelorstudium'),(4545,1,'240'),(4546,1,'cp'),(4547,1,'umfasst'),(4548,1,'semester'),(4549,1,'auslandsaufenthalte'),(4550,1,'bachelorarbeit'),(4551,1,'abgeschlossen'),(4552,1,'erfolgreichen'),(4553,1,'abschluss'),(4554,1,'besteht'),(4555,1,'moglichkeit'),(4556,1,'masterstudiengang'),(4557,1,'aufzunehmen'),(4558,1,'laufbahn'),(4559,1,'einzuschlagen'),(4560,1,'berufliche'),(4561,1,'spezialisierung'),(4562,1,'berufsperspektiven'),(4563,1,'lehre'),(4564,1,'moscheegemeinden'),(4565,1,'seelsorge'),(4566,1,'verbandstatigkeiten'),(4567,1,'integrations'),(4568,1,'migrationsarbeit'),(4569,1,'kulturmanagement'),(4570,1,'beratungstatigkeiten'),(4571,1,'modulhandbuch'),(4572,3,'hier'),(4573,1,'anfang'),(4574,1,'februar'),(4575,1,'heruntergeladen'),(4589,1,'handelt'),(4590,1,'bevollmachtigter'),(4591,1,'laufe'),(4592,1,'studiums'),(4593,1,'auszuhandigenden'),(4594,1,'zeugnisse'),(4595,1,'stammen'),(4596,1,'da'),(4597,1,'abschlusse'),(4598,1,'anerkennung'),(4599,1,'insofern'),(4600,1,'unserem'),(4601,1,'akkreditiert'),(4602,1,'max'),(4603,1,'mustermann'),(4604,1,'mix'),(4605,1,'musterfrau'),(4606,1,'pd'),(4607,1,'hamid'),(4608,1,'yousefi'),(4609,1,'interkulturelle'),(4610,1,'tim'),(4611,1,'leibner'),(4612,1,'ii'),(4613,1,'iii'),(4614,1,'iv'),(4615,1,'hassan'),(4616,1,'sadeghi'),(4617,1,'koranrezitation'),(6112,1,'2014'),(6113,1,'until'),(6114,1,'habilitation'),(6115,1,'research'),(6116,1,'project'),(6117,1,'mystical'),(6118,1,'philosophical'),(6119,1,'fundaments'),(6120,1,'islamic'),(6121,1,'ethics'),(6122,1,'qur'),(6123,1,'institute'),(6124,1,'comparative'),(6125,1,'freie'),(6126,1,'supervisor'),(6127,1,'michael'),(6128,1,'bongardt'),(6129,1,'27'),(6130,1,'ph'),(6131,1,'d'),(6132,1,'philosophy'),(6133,1,'from'),(6134,1,'magna'),(6135,1,'cum'),(6136,1,'laude'),(6137,1,'not'),(6138,1,'published'),(6139,1,'title'),(6140,1,'meaningfully'),(6141,1,'speakingof'),(6142,1,'unlimitedness'),(6143,1,'07'),(6144,1,'2010'),(6145,1,'30'),(6146,1,'6'),(6147,1,'2013'),(6148,1,'scholarship'),(6149,1,'elsa'),(6150,1,'neumann'),(6151,1,'stipendium'),(6152,1,'2009'),(6153,1,'iranian'),(6154,1,'philosophy1'),(6155,1,'dissertation'),(6156,1,'described'),(6157,1,'excellent'),(6158,1,'how'),(6159,1,'we'),(6160,1,'understand'),(6161,1,'names'),(6162,1,'god'),(6163,1,'study'),(6164,1,'between'),(6165,1,'pseudo'),(6166,1,'dionysius'),(6167,1,'areopagiteand'),(6168,1,'ibn'),(6169,1,'arabi'),(6170,1,'2006'),(6171,1,'04'),(6172,1,'2008'),(6173,1,'stay'),(6174,1,'albert'),(6175,1,'ludwig'),(6176,1,'university'),(6177,1,'freiburg'),(6178,1,'under'),(6179,1,'supervision'),(6180,1,'figal'),(6181,1,'1995'),(6182,1,'mysticism'),(6183,1,'djelveh'),(6184,1,'noor'),(6185,1,'institute2'),(6186,1,'tehran'),(6187,1,'focus'),(6188,1,'mysticism2'),(6189,1,'1993'),(6190,1,'quran'),(6191,1,'focusmystical'),(6192,1,'2001'),(6193,1,'2004'),(6194,1,'master'),(6195,1,'student'),(6196,1,'western'),(6197,1,'humanitiesand'),(6198,1,'cultural'),(6199,1,'studies3'),(6200,1,'average'),(6201,1,'rate'),(6202,1,'81'),(6203,1,'20'),(6204,1,'being'),(6205,1,'parmenides'),(6206,1,'logos'),(6207,1,'heraclitus'),(6208,1,'2002'),(6209,1,'avicenna'),(6210,1,'mulla'),(6211,1,'sadra'),(6212,1,'1992'),(6213,1,'industrial'),(6214,1,'engineering'),(6215,1,'technical'),(6216,1,'amirkabir'),(6217,1,'work'),(6218,1,'teachng'),(6219,1,'experiences'),(6220,1,'se'),(6221,1,'2015'),(6222,1,'teaching'),(6223,1,'universitatberlin'),(6224,1,'topic'),(6225,1,'nicomachean'),(6226,1,'aristotle'),(6227,1,'modern'),(6228,1,'world'),(6229,1,'today'),(6230,1,'short'),(6231,1,'etymological'),(6232,1,'dictionary'),(6233,1,'anic'),(6234,1,'rootsand'),(6235,1,'new'),(6236,1,'translation'),(6237,1,'anbased'),(6238,1,'investigations'),(6239,1,'german'),(6240,1,'language'),(6241,1,'wi'),(6242,1,'2011'),(6243,1,'fu'),(6244,1,'faculty'),(6245,1,'religious'),(6246,1,'anthropology'),(6247,1,'latin'),(6248,1,'context'),(6249,1,'original'),(6250,1,'questions'),(6251,1,'religion'),(6252,1,'oct'),(6253,1,'center'),(6254,1,'2007'),(6255,1,'researcher'),(6256,1,'textbook'),(6257,1,'djelve'),(6258,1,'2005'),(6259,1,'interpretive'),(6260,1,'manual'),(6261,1,'persian'),(6262,1,'arabic'),(6263,1,'lecturer'),(6264,1,'logic'),(6265,1,'teacher'),(6266,1,'studies'),(6267,1,'high'),(6268,1,'schoollevel'),(6269,1,'literature'),(6270,1,'athigh'),(6271,1,'school'),(6272,1,'level'),(6273,1,'2000'),(6274,1,'education'),(6275,1,'training'),(6276,1,'consultant'),(6277,1,'conferences'),(6278,1,'presentations'),(6279,1,'day'),(6280,1,'bretten'),(6281,1,'baden'),(6282,1,'wurttemberg'),(6283,1,'dialogue'),(6284,1,'cultures'),(6285,1,'conference'),(6286,1,'austrian'),(6287,1,'society'),(6288,1,'vienna'),(6289,1,'june'),(6290,1,'thinkingabout'),(6291,1,'boundaries'),(6292,1,'self'),(6293,1,'knowledge'),(6294,1,'heidegger'),(6295,1,'messkirch'),(6296,1,'may'),(6297,1,'nature'),(6298,1,'technology'),(6299,1,'sense'),(6300,1,'pain'),(6301,1,'interdisciplinary'),(6302,1,'publications'),(6303,1,'second'),(6304,1,'global'),(6305,1,'warsaw'),(6306,1,'existential'),(6307,1,'political'),(6308,1,'theology'),(6309,1,'symposium'),(6310,1,'agenda'),(6311,1,'geneve'),(6312,1,'july'),(6313,1,'transformation'),(6314,1,'power'),(6315,1,'brucken'),(6316,1,'schlagen'),(6317,1,'milestone'),(6318,1,'jul'),(6319,1,'bridge'),(6320,1,'cicero'),(6321,1,'early'),(6322,1,'period'),(6323,1,'melanchthon'),(6324,1,'academy'),(6325,1,'stoicism'),(6326,1,'joint'),(6327,1,'meeting'),(6328,1,'south'),(6329,1,'carolina'),(6330,1,'north'),(6331,1,'elon'),(6332,1,'feb'),(6333,1,'speaking'),(6334,1,'about'),(6335,1,'gods'),(6336,1,'cratylus'),(6337,1,'science'),(6338,1,'contexts'),(6339,1,'dynamics'),(6340,1,'change'),(6341,1,'trondheim'),(6342,1,'norway'),(6343,1,'mar'),(6344,1,'islam'),(6345,1,'sciences'),(6346,1,'katholische'),(6347,1,'schwerte'),(6348,1,'invited'),(6349,1,'speaker'),(6350,1,'einfuhrung'),(6351,1,'arabis'),(6352,1,'xxii'),(6353,1,'congress'),(6354,1,'madrid'),(6355,1,'toahid'),(6356,1,'reshaping'),(6357,1,'mercy'),(6358,1,'munster'),(6359,1,'aug'),(6360,1,'his'),(6361,1,'other'),(6362,1,'attributes'),(6363,1,'rometaphysics'),(6364,1,'fifth'),(6365,1,'rome'),(6366,1,'nov'),(6367,1,'metaphysical'),(6368,1,'consequences'),(6369,1,'gewaltlosigkeit'),(6370,1,'evangelische'),(6371,1,'rheinland'),(6372,1,'bonn'),(6373,1,'walten'),(6374,1,'gewalt'),(6375,1,'lebenserfahrung'),(6376,1,'katholischen'),(6377,1,'sozialwesen'),(6378,1,'bound'),(6379,1,'everyday'),(6380,1,'life'),(6381,1,'example'),(6382,1,'destiny'),(6383,1,'freedom'),(6384,1,'zeitgenossische'),(6385,1,'bern'),(6386,1,'sep'),(6387,1,'speech'),(6388,1,'karlsruhe'),(6389,1,'phanomenologie'),(6390,1,'traumes'),(6391,1,'veroffentlichungen'),(6392,1,'book'),(6393,1,'commentary'),(6394,1,'texts'),(6395,1,'introduction'),(6396,1,'influence'),(6397,1,'paul'),(6398,1,'rorem'),(6399,1,'oxford'),(6400,1,'univ'),(6401,1,'press'),(6402,1,'farsi'),(6403,1,'publication'),(6404,1,'religions'),(6405,1,'denominations'),(6406,1,'human'),(6407,1,'date'),(6408,1,'summer2015in'),(6409,1,'fall'),(6410,1,'paper'),(6411,1,'ḥaqiqi'),(6412,1,'tibari'),(6413,1,'kommentar'),(6414,1,'abhandlung'),(6415,1,'vollkommenheit'),(6416,1,'allamah'),(6417,1,'sayyid'),(6418,1,'husain'),(6419,1,'tabatabai'),(6420,1,'teil'),(6421,1,'spektrum'),(6422,1,'26'),(6423,1,'jahrgang'),(6424,1,'tibar'),(6425,1,'diesseits'),(6426,1,'nr'),(6427,1,'4'),(6428,1,'ciceroin'),(6429,1,'fruhen'),(6430,1,'neuzeit'),(6431,1,'herausgegeben'),(6432,1,'gunter'),(6433,1,'frank'),(6434,1,'anne'),(6435,1,'eusterschulte'),(6436,1,'stadt'),(6437,1,'msb'),(6438,1,'13'),(6439,1,'480'),(6440,1,'s'),(6441,1,'gb'),(6442,1,'isbn'),(6443,1,'978'),(6444,1,'7728'),(6445,1,'2601'),(6446,1,'august'),(6447,1,'ashgate'),(6448,1,'series'),(6449,1,'herzen'),(6450,1,'berlins'),(6451,1,'gegenuber'),(6452,1,'tu'),(6453,2,'wurde'),(6454,1,'juni'),(6455,1,'gegrundet'),(6456,1,'daruber'),(6457,1,'hinaus'),(6458,1,'widmet'),(6459,1,'forschungsprojekte'),(6460,1,'primaren'),(6461,1,'ambitionen'),(6462,1,'gebieten'),(6463,1,'arabistik'),(6464,1,'iranistik'),(6465,1,'islamwissenschaften'),(6466,1,'orientalistik'),(6467,1,'institutszeitschrift'),(6639,1,'jahr'),(6640,1,'1979'),(6641,1,'gegrundete'),(6642,1,'internationalen'),(6643,1,'ausbildung'),(6644,1,'befasst'),(6645,1,'tragt'),(6646,1,'beinamen'),(6647,1,'heiligen'),(6648,1,'propheten'),(6649,1,'welcher'),(6650,1,'auserwahlte'),(6651,1,'bedeutet'),(6652,1,'hat'),(6653,1,'hauptziele'),(6654,1,'gesetzt'),(6655,1,'gross'),(6656,1,'gelehrten'),(6657,1,'lehrern'),(6658,1,'forschern'),(6659,1,'darlegung'),(6660,1,'vertiefung'),(6661,1,'koranischen'),(6662,1,'ansichten'),(6663,1,'entwicklung'),(6664,1,'theorien'),(6665,1,'gottlicher'),(6666,1,'menschlicher'),(6667,1,'erkenntnisse'),(6668,1,'ziele'),(6669,1,'verwirklichen'),(6670,1,'stehen'),(6671,1,'punkte'),(6672,1,'erziehung'),(6673,1,'aneignung'),(6674,1,'moralischer'),(6675,1,'werte'),(6676,1,'beachtung'),(6677,1,'tradition'),(6678,1,'institutionen'),(6679,1,'alten'),(6680,1,'verfahrensweise'),(6681,1,'aufmerksamkeit'),(6682,1,'wissenschaften'),(6683,1,'quellen'),(6684,1,'einnahme'),(6685,1,'wissenschaftlichen'),(6686,1,'padagogischen'),(6687,1,'untersuchungsstiles'),(6688,1,'sicherung'),(6689,1,'menschenwurde'),(6690,1,'respektvollen'),(6691,1,'umgang'),(6692,1,'achtung'),(6693,1,'einheit'),(6694,1,'rechtsschulen'),(6695,1,'tochterinstitute'),(6696,1,'zentrum'),(6697,1,'sprach'),(6698,1,'islamausbildung'),(6699,1,'oberschule'),(6700,1,'imam'),(6701,1,'khomenei'),(6702,1,'aufbaustudium'),(6703,1,'rechtschulen'),(6704,1,'bint'),(6705,1,'ul'),(6706,1,'huda'),(6707,1,'kurzstudien'),(6708,1,'studienmoglichkeiten'),(6709,1,'offene'),(6710,1,'fernstudium'),(6711,1,'internationales'),(6712,1,'forschungscenter'),(6713,1,'linguistik'),(6714,1,'kulturcenter'),(6715,1,'filialen'),(6716,1,'qeschm'),(6717,1,'gorgan'),(6718,1,'zentren'),(6719,1,'kindern'),(6720,1,'ehepartnern'),(6721,1,'studenten'),(6722,1,'irans'),(6723,1,'untergeordnete'),(6724,1,'kooperierende'),(6725,1,'instituten'),(6726,1,'gehoren'),(6727,1,'akademien'),(6728,1,'london'),(6729,1,'indonesien'),(6730,1,'ghana'),(6731,1,'gruppe'),(6732,1,'aufsicht'),(6733,1,'betreuung'),(6734,1,'ahlulbayt'),(6735,1,'hawza'),(6736,1,'athar'),(6737,1,'sabtayn'),(6738,1,'martyrer'),(6739,1,'sadr'),(6740,1,'ebenso'),(6741,1,'arbeitet'),(6742,1,'schulen'),(6743,1,'aus'),(6744,1,'anderen'),(6745,1,'lander'),(6746,1,'zusammen'),(6747,1,'professoren'),(6748,1,'mitglieder'),(6749,1,'derzeit'),(6750,1,'arbeiten'),(6751,1,'500'),(6752,1,'innerhalb'),(6753,1,'studienschwerpunkte'),(6754,1,'150'),(6755,1,'fachgebiete'),(6756,1,'uṣul'),(6757,1,'grundlagen'),(6758,1,'rechtswissenshaft'),(6759,1,'maaref'),(6760,1,'rechtswissenschaft'),(6761,1,'gottesdienstliche'),(6762,1,'politische'),(6763,1,'wirtschaftliche'),(6764,1,'richterliche'),(6765,1,'familienrechtswissenschaft'),(6766,1,'padagogische'),(6767,1,'gesellschaftliche'),(6768,1,'exegese'),(6769,1,'koran'),(6770,1,'wissenschaft'),(6771,1,'erkenntnis'),(6772,1,'islamgeschichte'),(6773,1,'schiitische'),(6774,1,'religionen'),(6775,1,'maḏahib'),(6776,1,'wirtschaft'),(6777,1,'beziehung'),(6778,1,'politikwissenschaft'),(6779,1,'jura'),(6780,1,'vieles'),(6781,1,'aufzeichnung'),(6782,1,'veroffentlichung'),(6783,1,'unterrichtsbuchern'),(6784,1,'1000'),(6785,1,'ausarbeitete'),(6786,1,'skripte'),(6787,1,'konnte'),(6788,1,'heute'),(6789,1,'veroffentlichen'),(6790,1,'aktivitaten'),(6791,1,'gottesdienst'),(6792,1,'sportwettbewerbe'),(6793,1,'tuba'),(6794,1,'festspiele'),(6795,1,'kulturelle'),(6796,1,'programme'),(6797,1,'nationale'),(6798,1,'kommissionen'),(6799,1,'100'),(6800,1,'arbeitsgruppen'),(6801,1,'dienstleistungen'),(6802,1,'programmen'),(6803,1,'journalistischen'),(6804,1,'medialen'),(6805,1,'bereichen'),(6806,1,'kunstlerische'),(6807,1,'technische'),(6808,1,'fahigkeitsausbildung'),(6809,1,'interessierte'),(6819,2,'studiumbeginn'),(6820,2,'freuen'),(6821,2,'april'),(6822,1,'beginnen'),(6823,2,'bewerben'),(6824,1,'begonnen'),(6825,1,'first'),(6826,1,'fotografie'),(6827,1,'muslimischen'),(6828,1,'medienakademie'),(6829,1,'november'),(6830,1,'raumlichkeiten'),(6831,1,'abgehalten'),(6832,1,'bedanken'),(6833,1,'stelle'),(6834,1,'einmal'),(6835,1,'zahlreichen'),(6836,1,'teilnehmern'),(6837,1,'erfolgreiche'),(6838,1,'durchfuhrung'),(6839,1,'workshops'),(6854,1,'test');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1482636915,30,1,0,1482636915,'8e2b80e6b9d7b755768d0834eaa2b2b2','http://en.miu.ac.ir/'),(1482637147,31,1,0,1482637147,'fde471d1fc688864bddb95b0a03a2cb5','http://irip.ir/'),(1482637147,32,1,0,1482637147,'4c4186952ec6d9f365bc0d91afeb104a','http://jelveh.org/'),(1482637147,33,1,0,1482637147,'dd5b6f8803b046f046fa9f7b1a615a52','http://www.ihcs.ac.ir2/'),(1482637147,34,1,0,1482637147,'a141d632e4d94cb1152f0aad3b74da46','http://sis-de.com/?p=91'),(1482637147,35,1,0,1482637147,'fccbb28bd133480bae5996dccb5f892d','http://sis-de.com/?p=211'),(1482637147,36,1,0,1482637147,'2e11ce69d4800a7005d87bb560b96e7c','http://sis-de.com/?p=179'),(1482637147,37,1,0,1482637147,'4f78ab3568b04f17f45feb5d72cd1315','http://sis-de.com/?p=59'),(1482639161,38,1,0,1482639161,'67f35238792c14299642415ecc81c3b3','http://www.almustafa.de/'),(1483453290,39,1,0,1483453290,'cfccf5f5fa56318b575ab2f9f65f29f5','mailto:info@almustafa.de'),(1483453639,40,1,0,1483453639,'ed9f0e7cc5ef486af531e14a683ae44a','mailto:anmeldung@muslimische-medienakademie.de'),(1483460617,41,1,0,1483460617,'42ecb8462713cb927346bebe7f3f279c','http://en.miu.ac.ir'),(1483635810,42,1,0,1483635810,'0036209dd1483f1cf6816621e42bd33a','http://almustafa.amirkoklan.com/application');
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
INSERT INTO `ezurl_object_link` VALUES (455,1,30),(466,1,31),(466,1,32),(466,1,33),(466,1,34),(466,1,35),(466,1,36),(466,1,37),(490,1,38),(490,2,38),(490,2,38),(466,2,31),(466,2,32),(466,2,33),(466,2,34),(466,2,35),(466,2,36),(466,2,37),(466,2,31),(466,2,32),(466,2,33),(466,2,34),(466,2,35),(466,2,36),(466,2,37),(373,5,39),(373,6,39),(373,6,39),(275,6,40),(455,2,30),(455,2,41),(455,3,41),(455,3,41),(466,3,31),(466,3,32),(466,3,33),(466,3,34),(466,3,35),(466,3,36),(466,3,37),(466,3,34),(466,3,35),(466,3,36),(466,3,37),(466,4,34),(466,4,35),(466,4,36),(466,4,37),(373,7,39),(373,8,39),(373,9,39),(373,10,39),(826,1,42),(826,2,42),(826,2,42),(826,3,42),(826,3,42),(275,7,40);
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
INSERT INTO `ezurlalias_ml` VALUES ('eznode:67','eznode',1,97,0,0,5,51,0,'Folder-1','00c96df9cd9d010ff263477f20621bca'),('eznode:77','eznode',0,61,0,1,5,61,0,'Veranstaltungen','071fae8a900e0092e887f3d604a49bbd'),('eznode:65','eznode',1,49,0,1,5,49,0,'Ueber-uns','32d11cc18ca4520fc6b900b928c2f0e1'),('eznode:77','eznode',1,96,0,0,5,61,0,'Vernstellungen','402cf2026c1252bf549651d94e28a984'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('eznode:121','eznode',0,144,0,1,5,144,0,'Applications2','4b1a0d2ade5a88594b274718d42d53f8'),('eznode:71','eznode',0,104,0,0,5,55,0,'Forschungsprojekte','4e130d846b14057345eb89a1c3648c04'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:71','eznode',0,55,0,1,5,55,0,'Forschung','91b6aeca692d95bb712fe78fe3039255'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:107','eznode',0,110,0,1,4,110,0,'Impressum','c3be4d4b41c11a55dd69ae16a96b51c6'),('eznode:2','eznode',1,1,0,1,5,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:71','eznode',1,103,0,0,5,55,0,'Folder-2','dddcdf376c1131c3b095c3b12f2bfb6b'),('eznode:67','eznode',0,51,0,1,5,51,0,'Studium','e0432b98442d77d2a6436ba4e6c28ba9'),('eznode:79','eznode',0,64,0,1,5,64,0,'Forschungreisen','e09cd6a92aa493e7e38982555d74dc1a'),('eznode:108','eznode',0,112,0,1,4,112,0,'Kontakt','fa84f07b07663634f3a7a260447a24c3'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:124','eznode',0,151,0,0,4,150,4,'Shayan-Arkian','31c42b984ba4e9d79f54557a046b29fc'),('eznode:123','eznode',0,148,0,0,4,147,4,'Al-Mustafa-Institut','412872260eaecd78be8deb7e775b7641'),('eznode:137','eznode',0,168,0,1,4,168,4,'Hassan-Khalife','414fab575dedb6a9a628116176d49d37'),('eznode:126','eznode',0,157,0,1,4,157,4,'Oliver-Malik','c8b678f353f08e18eb097628e54f0126'),('eznode:56','eznode',0,40,0,1,3,40,4,'Amir-Test-Amir-Test','cf0de445238ec5084251469ac3342c70'),('eznode:128','eznode',0,159,0,1,4,159,4,'Ali-Taouil','fee19e564f548b97106b46e4086a2794'),('eznode:15','eznode',1,91,0,0,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,8,0,1,3,8,5,'Amir-Koklan','90c93d9d0307a665c281e060c7d55368'),('eznode:124','eznode',0,150,0,1,4,150,6,'Shayan-Arkian','31c42b984ba4e9d79f54557a046b29fc'),('eznode:123','eznode',0,147,0,1,4,147,6,'Al-Mustafa-Institut','412872260eaecd78be8deb7e775b7641'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:95','eznode',0,94,0,1,3,94,18,'Qom2','2f52bc118434a43b3db33d6f0c7c5196'),('eznode:109','eznode',0,113,0,1,3,113,18,'Esfahani','39fe5bae431759f7dcd7a160cff04c3f'),('eznode:105','eznode',1,108,0,1,4,108,49,'Ueber-uns','32d11cc18ca4520fc6b900b928c2f0e1'),('eznode:106','eznode',1,109,0,1,4,109,49,'Partneruniversitaet','b3b0443ad62e30a5d71dcf0901951366'),('eznode:101','eznode',1,155,0,0,4,102,51,'Dr.-des.-Mahdi-Esfahani-Unterrubrik-von-Dozenten','85b52832d9e51712688c3dba0fbfc1a5'),('eznode:97','eznode',1,98,0,1,4,98,51,'Islamische-Theologie-B.A.','b32f7e266bad98d9ff12d169932fc119'),('eznode:99','eznode',1,100,0,1,4,100,51,'Kooperation','bb5cd971ae73f59ec4aeba9aa859266c'),('eznode:101','eznode',1,102,0,1,4,102,51,'Dr.-des.-Mahdi-Esfahani','e34ac5f21f36d4244a8a21fd264e1e92'),('eznode:98','eznode',1,99,0,1,4,99,51,'Modulhandbuch','efb00683e7bcb30e55076f05b11bab07'),('eznode:100','eznode',1,101,0,1,4,101,51,'Dozenten','f5d90366e24b0615c6156b3b272f94d1'),('eznode:103','eznode',1,106,0,1,4,106,55,'Publikationen','0d226eaf51801b8b141ff74fda9a2ae5'),('eznode:104','eznode',1,107,0,1,4,107,55,'Institutszeitschrift','2b03e9dea752ba8c702918ba3409316b'),('eznode:102','eznode',1,105,0,1,4,105,55,'Forschungsprojekte','4e130d846b14057345eb89a1c3648c04'),('eznode:78','eznode',0,67,0,0,5,62,61,'location_78','3fe12025b1fc810eac19c08424121c81'),('eznode:131','eznode',1,162,0,1,5,162,61,'Studiumbeginn','5f77db746297c0f6d95e56c7103c8494'),('eznode:78','eznode',1,62,0,1,5,62,61,'Fotografie-Workshop','8ec564b86bcd319cc1c2cf36d5cb0f9c'),('eznode:78','eznode',1,62,0,1,3,62,61,'First-Blog','aa9f805dafafcd4f26acd081bedf15af'),('eznode:93','eznode',1,92,0,1,5,92,61,'Forschungsreise-Maerz-2017','b311b37ba7d21d2ac2ff06b8f8f392e8'),('eznode:93','eznode',1,153,0,0,5,92,61,'Lorem-Ipsum-ist-ein-einfacher-Demo','b5f4307dbbbc9475698304145495a432'),('eznode:82','eznode',0,68,0,1,5,68,64,'Forschungsreise-Maerz-2017','b311b37ba7d21d2ac2ff06b8f8f392e8'),('eznode:82','eznode',1,152,0,0,5,68,64,'Qom-2016','e34aa6ed5001b7e5c787bb31ff331079'),('eznode:125','eznode',1,156,0,0,4,154,101,'Dr.-des.-Mahdi-Esfahani-Unterrubrik-von-Dozenten','85b52832d9e51712688c3dba0fbfc1a5'),('eznode:125','eznode',1,154,0,1,4,154,101,'Dr.-des.-Mahdi-Esfahani','e34ac5f21f36d4244a8a21fd264e1e92');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171);
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
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'amirkoklan@gmail.com','admin','e8610778ccafcc584b8cf5cefd990e08',2),(54,'amir@test.de','amir.test','d738f23739286b45b542c0518b6be838',2),(149,'info@almustafa.de','Al-Mustafa Institut','38cf1df48bed38f9e8bca2eba1bde1bb',2),(150,'shayan.arkian@irananders.de','Shayan','692536ca8b372f302e0ea019d9873e0e',2),(151,'olmalik@gmx.de','jamilabdallah','1946eaf94a1ecf77527c39409b19525c',2),(153,'ali.taouil68@yahoo.de','alitaouil','cfbfe0b016e4feb0734289f43cde192e',2),(162,'hassan-khalife@hotmail.com','Khalife','166e8b984c24ab8f572977b350f9c5ec',2);
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
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14),(1,0,54),(1,0,149),(1,0,150),(1,0,151),(1,0,153),(1,0,162);
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

-- Dump completed on 2017-01-09  1:24:50
