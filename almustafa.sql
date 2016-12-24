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
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1);
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
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,2,1481048844,14,'a3d405b81be900468eb153d774f4f0d2','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,3,1082454989,14,'c15b600eb9198b1924063b5a68758232',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1480380009,14,13,'application',2,0,2,1482084640,14,'5bbf5190e1e47c1bb05d51f6a98adf33','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Application\";}',2,0,'',0),(1,'<title>',1480551193,14,14,'event',2,1,2,1482517052,14,'8b414d609e96ba561a2463bb17a7ef56','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Event\";}',2,0,'',0),(1,'<first_name> <last_name>',1480551381,14,15,'attendee',2,0,2,1482536937,14,'612d38f4afcd632193e0a157eb5a90ef','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Attendee\";}',2,0,'',0),(1,'<name>',1480551543,14,16,'blog',2,1,2,1481073123,14,'2d9f3d0b6c2e6b57cd5864b815cbe5dc','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Blog\";}',2,0,'',0),(1,'<title>',1480551600,14,17,'blog_post',2,0,2,1481335889,14,'b0e4e5af9ed5e162520c9a5654cd65e0','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Blog Post\";}',2,0,'',0),(1,'<title>',1480877045,14,18,'home',2,1,2,1482464128,14,'f57a2f16dc09e0713817861099024d5b','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Home\";}',2,0,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',1,'title',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring',4,'name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',119,'short_description',0,0,1,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}',0),(1,'',2,0,0,0,0,10,0,0,0,'','','','','','ezrichtext',120,'intro',0,1,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Intro\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,20,0,0,0,'','','','','','ezrichtext',121,'body',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',2,0,0,0,0,0,0,0,0,'','','','','','ezboolean',123,'enable_comments',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:15:\"Enable comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,255,0,0,0,'','','','','','ezstring',152,'short_title',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezauthor',153,'author',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',154,'image',0,0,1,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',155,'short_name',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}',0),(1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',156,'description',0,0,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',181,'first_name',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',182,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',184,'first_name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Vorname\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',185,'last_name',0,1,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',186,'name',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',187,'title',0,0,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',188,'description',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',189,'title',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',190,'description',0,0,0,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',191,'show_menu',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',16,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',192,'show_menu',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Show in Menu\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',193,'publication_date',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',194,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',17,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',195,'listing_image',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezbinaryfile',196,'cv',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:2:\"CV\";}',0),(1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',197,'last_name',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Nachname\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',198,'image1',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 1\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',199,'image2',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 2\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',200,'image3',0,0,0,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 3\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',201,'image4',0,0,0,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 4\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',202,'image5',0,0,0,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:7:\"Image 5\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',203,'image_bottom',0,0,0,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Bottom Image\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',204,'title_bottom',0,0,1,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:12:\"Title Bottom\";}',0),(1,'content',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',205,'text_bottom',0,0,0,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Text bottom\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',206,'listing_image',0,0,0,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eztext',207,'intro',0,0,0,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezdate',208,'publication_date',0,0,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Publication Date\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<adjustment><year value=\"0\"/><month value=\"1\"/><day value=\"0\"/><hour value=\"0\"/><minute value=\"0\"/><second value=\"0\"/></adjustment>\n','ezdatetime',209,'deadline',0,0,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Deadline\";}',0),(1,'content',14,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',210,'description',0,0,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,400,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',211,'father_name',0,0,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:18:\"Vorname des Vaters\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Männlich\"/><option id=\"1\" name=\"Weiblich\"/></options></ezselection>\n','ezselection',212,'gender',0,1,1,5,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Geschlecht\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',213,'degree',0,0,1,6,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Akademischer Grad\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',214,'specification',0,0,1,7,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:32:\"Wissenschaftliche Spezifizierung\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',215,'job',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Berufstätigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',217,'confession',0,0,1,10,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Konfession\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',218,'nationality',0,0,1,11,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:20:\"Staatsangehörigkeit\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',219,'experience',0,0,1,12,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:35:\"Erfahrungen im  kulturellen Bereich\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',220,'language',0,0,1,13,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:16:\"Sprachkenntnisse\";}',0),(1,'content',15,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',221,'residence_iran',0,0,1,14,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:30:\"Aufenthaltserfahrungen im Iran\";}',0);
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
INSERT INTO `ezcontentclass_name` VALUES (1,0,2,'eng-GB','Folder'),(2,0,3,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,3,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(12,0,3,'eng-GB','File'),(13,0,2,'eng-GB','Application'),(14,0,2,'eng-GB','Event'),(15,0,2,'eng-GB','Attendee'),(16,0,2,'eng-GB','Blog'),(17,0,2,'eng-GB','Blog Post'),(18,0,2,'eng-GB','Home');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,7,14,2,3,1482105153,'Amir Koklan',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(1,3,52,2,7,1480383909,'Applications',14,1480381021,'42995b7943df92a7861b014da631cdac',7,1),(4,1,54,2,3,1480382570,'Amir Test Amir Test',14,1480382570,'0e290e8ddd593c956ce978e920688f08',2,1),(13,1,57,2,3,1480384631,'Test Baby',14,1480384631,'60582787ef297d50c1667ebedc1ff75e',7,2),(13,1,60,4,4,1480385803,'My title',54,1480385803,'cc341c5b311c18122b1ed5ff6106138c',7,2),(13,1,61,2,2,1480469135,'amir test',14,1480469135,'75df0fe071d746357e2ee9075ca8ca5d',7,2),(18,7,62,2,7,1482467026,'Al-Mustafa',14,1480877231,'fb9c2840ba06ed881d0f6c72be51517c',1,1),(1,1,63,4,5,1480886445,'Über uns',14,1480886445,'cb42c6d41024ba0dd623dc35854e184e',1,1),(1,1,64,4,5,1480886510,'Esfehani',14,1480886510,'417c52d39a0bfd8891f4814d3b74b2dd',1,1),(1,2,65,4,5,1481048891,'Folder 1',14,1480901813,'61b7594e99cb23db57ef56c11c3de084',1,1),(1,3,66,4,5,1481058749,'Folder 1.2',14,1480901943,'0400e628037b65c7994d280e68cf9df7',1,1),(1,2,67,4,5,1481058738,'folder 1.1',14,1480901959,'db3e7f272e40061157de316ffa1894bb',1,1),(1,1,68,4,5,1480901995,'Folder 1.3',14,1480901995,'797b567663824a700ab94b42d83c5c4e',1,1),(1,2,69,4,5,1481058722,'Folder 2',14,1480902015,'76db0e8d7ba793509c928fc2f34257d8',1,1),(1,2,70,4,5,1482449656,'Folder 2.1',14,1480902029,'559d33e9d55658ed43a837921abbbeb6',1,1),(1,1,71,4,5,1480906110,'Studium',14,1480906110,'b29f23d78ba6a1c08172a94e319dc585',1,1),(1,1,72,4,5,1480965238,'Folder 1.2.1',14,1480965238,'abd61bd2c4fa53ec923b708cae79ce3f',1,1),(1,1,73,4,5,1480965292,'Folder 1.2.2',14,1480965292,'c9cb7a685aa7d846209546eb5782eb8b',1,1),(1,1,74,4,5,1480978804,'Folder 3',14,1480978804,'1d7615de4d6f805c530f978307965a17',1,1),(16,3,75,4,5,1482540280,'Veranstaltungen',14,1480987917,'ac532cf14bfd97ad0a7ce203df7a373e',1,1),(17,4,76,4,7,1482469213,'First Blog',14,1481073301,'002610dba64998387f0b932633c3c2d5',1,1),(16,1,77,4,5,1481239640,'Forschungreisen',14,1481239640,'d95ec8497384a566d659e880b153fc48',1,1),(17,1,78,4,5,1481239894,'',14,1481239894,'81cdd8880ff399aaab2a4b5768175360',1,2),(17,1,79,4,5,1481240728,'',14,1481240728,'17a2f4ed219eab70c6a63043cce06b89',1,2),(14,8,80,4,5,1482518590,'Qom 2016',14,1481337197,'6b926032c7c2b1bbf03523da6a531afd',1,1),(15,2,92,4,4,1482069359,'Amir Koklan',14,1482068255,'7d6c42027841ccb62b9c4b0a423718c8',1,2),(15,1,93,4,4,1482070096,'Ali Al-Hakim',54,1482070096,'a462451959b9c84939865b6440224059',1,2),(15,1,94,4,4,1482070515,'Ali Al Hakim',54,1482070515,'2c3c7631b7d9c2d6ac688742c74325d5',1,2),(13,1,95,4,4,1482077582,'My title',14,1482077582,'be78338d8e5b9a180b2297f842d4dcef',7,2),(13,1,96,4,4,1482084592,'',14,1482084592,'ca45144a12c3e0bbdeaf1b857e66da45',7,2),(13,1,97,4,4,1482084724,'Hasan Jafar',14,1482084724,'f20f6837a3214ca10d1913e593455cc9',7,2),(13,1,98,4,4,1482085025,'Hasan Jafar',14,1482085025,'0de74616e56ff71cf39f9a93cf1fbe11',7,2),(13,1,99,4,4,1482085108,'amir hasan',14,1482085108,'8960638efcef70260caeab9e5f1db6e6',7,2),(13,1,100,4,4,1482085351,'Hasan Ali',14,1482085351,'3b90fdddaf4bd98281a08843cacded88',7,2),(17,2,101,4,5,1482469064,'Lorem Ipsum ist ein einfacher Demo',14,1482467232,'5e5309153f03b3c4c85858f0f33c43b7',1,1),(17,1,102,4,5,1482509239,'Blog Post 3',14,1482509239,'646fe62915471b7c80fc4615a44f8e52',1,1),(5,1,103,2,3,1482517381,'Qom2',14,1482517381,'db48b64037838563cc252b8f6958271f',3,1),(15,1,104,4,4,1482539311,'Amir Koklan',14,1482539311,'d9b0991c51e94db39b5c124a79af8327',1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,8,14,NULL,NULL,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',5),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',6),(0,8,14,NULL,NULL,'Amir','ezstring',28,'eng-GB',3,0,'amir',7),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(0,9,14,NULL,NULL,'User','ezstring',29,'eng-GB',3,0,'user',4),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',5),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',6),(0,9,14,NULL,NULL,'Koklan','ezstring',29,'eng-GB',3,0,'koklan',7),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',4),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',5),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',6),(0,12,14,NULL,NULL,NULL,'ezuser',30,'eng-GB',3,0,'',7),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',105,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',126,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',145,'eng-GB',3,0,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',150,'eng-GB',3,0,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',155,'eng-GB',3,0,'',1),(0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',3),(0,179,14,NULL,NULL,'','eztext',178,'eng-GB',3,0,'',4),(0,179,14,NULL,NULL,NULL,'eztext',178,'eng-GB',3,0,'',5),(0,179,14,NULL,NULL,NULL,'eztext',178,'eng-GB',3,0,'',6),(0,179,14,NULL,NULL,NULL,'eztext',178,'eng-GB',3,0,'',7),(0,180,10,0,0,'','ezimage',179,'eng-GB',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',3),(0,180,14,NULL,NULL,NULL,'ezimage',180,'eng-GB',3,0,'',4),(0,180,14,NULL,NULL,NULL,'ezimage',180,'eng-GB',3,0,'',5),(0,180,14,NULL,NULL,NULL,'ezimage',180,'eng-GB',3,0,'',6),(0,180,14,NULL,NULL,NULL,'ezimage',180,'eng-GB',3,0,'',7),(0,4,52,NULL,NULL,'Applications','ezstring',181,'eng-GB',3,0,'applications',1),(0,4,52,NULL,NULL,'Applications','ezstring',181,'eng-GB',3,0,'applications',2),(0,4,52,NULL,NULL,'Applications','ezstring',181,'eng-GB',3,0,'applications',3),(0,155,52,NULL,NULL,NULL,'ezstring',182,'eng-GB',3,0,'',1),(0,155,52,NULL,NULL,NULL,'ezstring',182,'eng-GB',3,0,'',2),(0,155,52,NULL,NULL,NULL,'ezstring',182,'eng-GB',3,0,'',3),(0,119,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',183,'eng-GB',3,0,'',1),(0,119,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',183,'eng-GB',3,0,'',2),(0,119,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',183,'eng-GB',3,0,'',3),(0,156,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',184,'eng-GB',3,0,'',1),(0,156,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',184,'eng-GB',3,0,'',2),(0,156,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',184,'eng-GB',3,0,'',3),(0,8,54,NULL,NULL,'Amir Test','ezstring',186,'eng-GB',3,0,'amir test',1),(0,9,54,NULL,NULL,'Amir Test','ezstring',187,'eng-GB',3,0,'amir test',1),(0,12,54,NULL,NULL,NULL,'ezuser',188,'eng-GB',3,0,'',1),(0,179,54,NULL,NULL,NULL,'eztext',189,'eng-GB',3,0,'',1),(0,180,54,NULL,NULL,NULL,'ezimage',190,'eng-GB',3,0,'',1),(0,4,52,NULL,NULL,'Bewerbungen','ezstring',192,'ger-DE',4,0,'bewerbungen',3),(0,155,52,NULL,NULL,NULL,'ezstring',193,'ger-DE',4,0,'',3),(0,119,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',194,'ger-DE',4,0,'',3),(0,156,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',195,'ger-DE',4,0,'',3),(0,181,57,NULL,NULL,'Test Baby','ezstring',197,'eng-GB',3,0,'test baby',1),(0,181,60,NULL,NULL,'My title','ezstring',200,'ger-DE',4,0,'my title',1),(0,181,61,NULL,NULL,'amir test','ezstring',201,'eng-GB',2,0,'amir test',1),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',2),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',3),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',4),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',5),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',6),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',202,'eng-GB',3,0,'al-mustafa',7),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',2),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',3),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',4),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',5),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',6),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',203,'eng-GB',3,0,'',7),(0,4,63,NULL,NULL,'Über uns','ezstring',204,'ger-DE',5,0,'über uns',1),(0,155,63,NULL,NULL,'Über uns','ezstring',205,'ger-DE',5,0,'über uns',1),(0,119,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hi There</para></section>\n','ezrichtext',206,'ger-DE',5,0,'',1),(0,156,63,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hello!</para></section>\n','ezrichtext',207,'ger-DE',5,0,'',1),(0,4,64,NULL,NULL,'Esfehani','ezstring',208,'ger-DE',5,0,'esfehani',1),(0,155,64,NULL,NULL,'Esfehani','ezstring',209,'ger-DE',5,0,'esfehani',1),(0,119,64,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Esfehani</para></section>\n','ezrichtext',210,'ger-DE',5,0,'',1),(0,156,64,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Esfehani</para></section>\n','ezrichtext',211,'ger-DE',5,0,'',1),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',1),(0,4,65,NULL,NULL,'Folder 1','ezstring',212,'ger-DE',5,0,'folder 1',2),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',1),(0,155,65,NULL,NULL,NULL,'ezstring',213,'ger-DE',5,0,'',2),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',1),(0,119,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',214,'ger-DE',5,0,'',2),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',1),(0,156,65,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',215,'ger-DE',5,0,'',2),(0,4,66,NULL,NULL,'Folder 1.2','ezstring',216,'ger-DE',5,0,'folder 1.2',1),(0,4,66,NULL,NULL,'Folder 1.2','ezstring',216,'ger-DE',5,0,'folder 1.2',2),(0,4,66,NULL,NULL,'Folder 1.2','ezstring',216,'ger-DE',5,0,'folder 1.2',3),(0,155,66,NULL,NULL,NULL,'ezstring',217,'ger-DE',5,0,'',1),(0,155,66,NULL,NULL,'Folder 1.2','ezstring',217,'ger-DE',5,0,'folder 1.2',2),(0,155,66,NULL,NULL,'Folder 1.2','ezstring',217,'ger-DE',5,0,'folder 1.2',3),(0,119,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',218,'ger-DE',5,0,'',1),(0,119,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',218,'ger-DE',5,0,'',2),(0,119,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',218,'ger-DE',5,0,'',3),(0,156,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',219,'ger-DE',5,0,'',1),(0,156,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',219,'ger-DE',5,0,'',2),(0,156,66,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',219,'ger-DE',5,0,'',3),(0,4,67,NULL,NULL,'Folder 1.1','ezstring',220,'ger-DE',5,0,'folder 1.1',1),(0,4,67,NULL,NULL,'Folder 1.1','ezstring',220,'ger-DE',5,0,'folder 1.1',2),(0,155,67,NULL,NULL,'folder 1.1','ezstring',221,'ger-DE',5,0,'folder 1.1',1),(0,155,67,NULL,NULL,'folder 1.1','ezstring',221,'ger-DE',5,0,'folder 1.1',2),(0,119,67,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',222,'ger-DE',5,0,'',1),(0,119,67,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',222,'ger-DE',5,0,'',2),(0,156,67,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',223,'ger-DE',5,0,'',1),(0,156,67,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',223,'ger-DE',5,0,'',2),(0,4,68,NULL,NULL,'Folder 1.3','ezstring',224,'ger-DE',5,0,'folder 1.3',1),(0,155,68,NULL,NULL,'Folder 1.3','ezstring',225,'ger-DE',5,0,'folder 1.3',1),(0,119,68,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',226,'ger-DE',5,0,'',1),(0,156,68,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',227,'ger-DE',5,0,'',1),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',1),(0,4,69,NULL,NULL,'Folder 2','ezstring',228,'ger-DE',5,0,'folder 2',2),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',1),(0,155,69,NULL,NULL,'Folder 2','ezstring',229,'ger-DE',5,0,'folder 2',2),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',1),(0,119,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',230,'ger-DE',5,0,'',2),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',1),(0,156,69,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',231,'ger-DE',5,0,'',2),(0,4,70,NULL,NULL,'Folder 2.1','ezstring',232,'ger-DE',5,0,'folder 2.1',1),(0,4,70,NULL,NULL,'Folder 2.1','ezstring',232,'ger-DE',5,0,'folder 2.1',2),(0,155,70,NULL,NULL,'Folder 2.1','ezstring',233,'ger-DE',5,0,'folder 2.1',1),(0,155,70,NULL,NULL,'Folder 2.1','ezstring',233,'ger-DE',5,0,'folder 2.1',2),(0,119,70,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',234,'ger-DE',5,0,'',1),(0,119,70,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',234,'ger-DE',5,0,'',2),(0,156,70,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',235,'ger-DE',5,0,'',1),(0,156,70,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',235,'ger-DE',5,0,'',2),(0,4,71,NULL,NULL,'Studuim','ezstring',236,'ger-DE',5,0,'studuim',1),(0,155,71,NULL,NULL,'Studium','ezstring',237,'ger-DE',5,0,'studium',1),(0,119,71,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',238,'ger-DE',5,0,'',1),(0,156,71,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',239,'ger-DE',5,0,'',1),(0,4,72,NULL,NULL,'Folder 1.2.1','ezstring',240,'ger-DE',5,0,'folder 1.2.1',1),(0,155,72,NULL,NULL,NULL,'ezstring',241,'ger-DE',5,0,'',1),(0,119,72,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',242,'ger-DE',5,0,'',1),(0,156,72,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',243,'ger-DE',5,0,'',1),(0,4,73,NULL,NULL,'Folder 1.2.2','ezstring',244,'ger-DE',5,0,'folder 1.2.2',1),(0,155,73,NULL,NULL,NULL,'ezstring',245,'ger-DE',5,0,'',1),(0,119,73,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',246,'ger-DE',5,0,'',1),(0,156,73,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',247,'ger-DE',5,0,'',1),(0,4,74,NULL,NULL,'Folder 3','ezstring',248,'ger-DE',5,0,'folder 3',1),(0,155,74,NULL,NULL,NULL,'ezstring',249,'ger-DE',5,0,'',1),(0,119,74,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',250,'ger-DE',5,0,'',1),(0,156,74,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',251,'ger-DE',5,0,'',1),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',1),(0,186,75,NULL,NULL,'Vernstellungen','ezstring',252,'ger-DE',5,0,'vernstellungen',2),(0,186,75,NULL,NULL,'Veranstaltungen','ezstring',252,'ger-DE',5,0,'veranstaltungen',3),(0,191,41,NULL,0,NULL,'ezboolean',254,'eng-GB',3,0,'',1),(0,191,45,NULL,0,NULL,'ezboolean',255,'eng-GB',3,0,'',1),(0,191,49,NULL,0,NULL,'ezboolean',256,'eng-GB',3,0,'',1),(0,191,50,NULL,0,NULL,'ezboolean',257,'eng-GB',3,0,'',1),(0,191,51,NULL,0,NULL,'ezboolean',258,'eng-GB',3,0,'',1),(0,191,52,NULL,0,NULL,'ezboolean',259,'eng-GB',3,0,'',1),(0,191,52,NULL,0,NULL,'ezboolean',259,'eng-GB',3,0,'',2),(0,191,52,NULL,0,NULL,'ezboolean',259,'eng-GB',3,0,'',3),(0,191,52,NULL,0,NULL,'ezboolean',260,'ger-DE',4,0,'',3),(0,191,63,NULL,0,NULL,'ezboolean',261,'ger-DE',5,0,'',1),(0,191,64,NULL,0,NULL,'ezboolean',262,'ger-DE',5,0,'',1),(0,191,65,NULL,0,NULL,'ezboolean',263,'ger-DE',5,0,'',1),(0,191,65,NULL,1,NULL,'ezboolean',263,'ger-DE',5,1,'',2),(0,191,66,NULL,0,NULL,'ezboolean',264,'ger-DE',5,0,'',1),(0,191,66,NULL,0,NULL,'ezboolean',264,'ger-DE',5,0,'',2),(0,191,66,NULL,1,NULL,'ezboolean',264,'ger-DE',5,1,'',3),(0,191,67,NULL,0,NULL,'ezboolean',265,'ger-DE',5,0,'',1),(0,191,67,NULL,1,NULL,'ezboolean',265,'ger-DE',5,1,'',2),(0,191,68,NULL,0,NULL,'ezboolean',266,'ger-DE',5,0,'',1),(0,191,69,NULL,0,NULL,'ezboolean',267,'ger-DE',5,0,'',1),(0,191,69,NULL,1,NULL,'ezboolean',267,'ger-DE',5,1,'',2),(0,191,70,NULL,0,NULL,'ezboolean',268,'ger-DE',5,0,'',1),(0,191,70,NULL,1,NULL,'ezboolean',268,'ger-DE',5,1,'',2),(0,191,71,NULL,0,NULL,'ezboolean',269,'ger-DE',5,0,'',1),(0,191,72,NULL,0,NULL,'ezboolean',270,'ger-DE',5,0,'',1),(0,191,73,NULL,0,NULL,'ezboolean',271,'ger-DE',5,0,'',1),(0,191,74,NULL,0,NULL,'ezboolean',272,'ger-DE',5,0,'',1),(0,192,75,NULL,0,NULL,'ezboolean',273,'ger-DE',5,0,'',1),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',2),(0,192,75,NULL,1,NULL,'ezboolean',273,'ger-DE',5,1,'',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',1),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',2),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',274,'ger-DE',5,0,'first blog',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',1),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',2),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',275,'ger-DE',5,0,'',4),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',1),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',2),(0,193,76,NULL,NULL,NULL,'ezdate',276,'ger-DE',5,0,'',3),(0,193,76,NULL,1480546800,NULL,'ezdate',276,'ger-DE',5,1480546800,'',4),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',1),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',2),(0,194,76,NULL,NULL,NULL,'eztext',277,'ger-DE',5,0,'',3),(0,194,76,NULL,NULL,'If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.If you take either of these approaches, make sure to disable heights on mobile since the columns are all stacked it won\'t matter if they\'re the same height of not.','eztext',277,'ger-DE',5,0,'',4),(0,195,76,NULL,NULL,NULL,'ezimage',278,'ger-DE',5,0,'',1),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481074441\">\n  <original attribute_id=\"278\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',2),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"278\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"278\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',278,'ger-DE',5,0,'',4),(0,186,77,NULL,NULL,'Forschungreisen','ezstring',279,'ger-DE',5,0,'forschungreisen',1),(0,192,77,NULL,1,NULL,'ezboolean',280,'ger-DE',5,1,'',1),(0,187,78,NULL,NULL,'Test Blog','ezstring',281,'ger-DE',5,0,'test blog',1),(0,188,78,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Test Blog</para></section>\n','ezrichtext',282,'ger-DE',5,0,'',1),(0,193,78,NULL,1481065200,NULL,'ezdate',283,'ger-DE',5,1481065200,'',1),(0,194,78,NULL,NULL,'Test Blog!','eztext',284,'ger-DE',5,0,'',1),(0,195,78,NULL,NULL,NULL,'ezimage',285,'ger-DE',5,0,'',1),(0,187,79,NULL,NULL,'Test Forschungreise','ezstring',286,'ger-DE',5,0,'test forschungreise',1),(0,188,79,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Test Forschungreise</para></section>\n','ezrichtext',287,'ger-DE',5,0,'',1),(0,193,79,NULL,1481065200,NULL,'ezdate',288,'ger-DE',5,1481065200,'',1),(0,194,79,NULL,NULL,'Test','eztext',289,'ger-DE',5,0,'',1),(0,195,79,NULL,NULL,NULL,'ezimage',290,'ger-DE',5,0,'',1),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',3),(0,187,76,NULL,NULL,'First Blog','ezstring',291,'eng-GB',2,0,'first blog',4),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',3),(0,188,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>First Blog</para></section>\n','ezrichtext',292,'eng-GB',2,0,'',4),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',3),(0,193,76,NULL,NULL,NULL,'ezdate',293,'eng-GB',2,0,'',4),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',3),(0,194,76,NULL,NULL,NULL,'eztext',294,'eng-GB',2,0,'',4),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1481335792\">\n  <original attribute_id=\"295\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',3),(0,195,76,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"424812_10150703957360281_981201054_n.jpg\"\n    suffix=\"jpg\" basename=\"424812_10150703957360281_981201054_n\" dirpath=\"var/site/storage/images/8/7/2/0/278-2-ger-DE\" url=\"var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg\"\n    original_filename=\"424812_10150703957360281_981201054_n.jpg\" mime_type=\"image/jpeg\" width=\"720\"\n    height=\"960\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469212\">\n  <original attribute_id=\"295\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"960\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>','ezimage',295,'eng-GB',2,0,'',4),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',3),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',4),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',5),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',6),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',7),(0,182,80,NULL,NULL,'Qom 2016','ezstring',296,'ger-DE',5,0,'qom 2016',8),(0,184,92,NULL,NULL,'Amir','ezstring',330,'ger-DE',4,0,'amir',1),(0,184,92,NULL,NULL,'Amir','ezstring',330,'ger-DE',4,0,'amir',2),(0,185,92,NULL,NULL,'Koklan','ezstring',331,'ger-DE',4,0,'koklan',1),(0,185,92,NULL,NULL,'Koklan','ezstring',331,'ger-DE',4,0,'koklan',2),(0,196,92,NULL,NULL,NULL,'ezbinaryfile',332,'ger-DE',4,0,'',1),(0,196,92,NULL,NULL,NULL,'ezbinaryfile',332,'ger-DE',4,0,'',2),(0,184,93,NULL,NULL,'Ali','ezstring',333,'ger-DE',4,0,'ali',1),(0,185,93,NULL,NULL,'Al-Hakim','ezstring',334,'ger-DE',4,0,'al-hakim',1),(0,196,93,NULL,NULL,NULL,'ezbinaryfile',335,'ger-DE',4,0,'',1),(0,184,94,NULL,NULL,'Ali','ezstring',336,'ger-DE',4,0,'ali',1),(0,185,94,NULL,NULL,'Al Hakim','ezstring',337,'ger-DE',4,0,'al hakim',1),(0,196,94,NULL,NULL,NULL,'ezbinaryfile',338,'ger-DE',4,0,'',1),(0,181,95,NULL,NULL,'My title','ezstring',339,'ger-DE',4,0,'my title',1),(0,197,57,NULL,NULL,NULL,'ezstring',340,'eng-GB',3,0,'',1),(0,197,60,NULL,NULL,NULL,'ezstring',341,'ger-DE',4,0,'',1),(0,197,61,NULL,NULL,NULL,'ezstring',342,'eng-GB',2,0,'',1),(0,197,95,NULL,NULL,NULL,'ezstring',343,'ger-DE',4,0,'',1),(0,181,96,NULL,NULL,'Amir','ezstring',344,'ger-DE',4,0,'amir',1),(0,197,96,NULL,NULL,'Koklan','ezstring',345,'ger-DE',4,0,'koklan',1),(0,181,97,NULL,NULL,'Hasan','ezstring',346,'ger-DE',4,0,'hasan',1),(0,197,97,NULL,NULL,'Jafar','ezstring',347,'ger-DE',4,0,'jafar',1),(0,181,98,NULL,NULL,'Hasan','ezstring',348,'ger-DE',4,0,'hasan',1),(0,197,98,NULL,NULL,'Jafar','ezstring',349,'ger-DE',4,0,'jafar',1),(0,181,99,NULL,NULL,'amir','ezstring',350,'ger-DE',4,0,'amir',1),(0,197,99,NULL,NULL,'hasan','ezstring',351,'ger-DE',4,0,'hasan',1),(0,181,100,NULL,NULL,'Hasan','ezstring',352,'ger-DE',4,0,'hasan',1),(0,197,100,NULL,NULL,'Ali','ezstring',353,'ger-DE',4,0,'ali',1),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482451858\">\n  <original attribute_id=\"354\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',2),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"354\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',3),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"354\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',4),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"354\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',5),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"354\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',6),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"354\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',354,'eng-GB',3,0,'',7),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482451858\">\n  <original attribute_id=\"355\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',2),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"355\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',3),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"355\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',4),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"355\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',5),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"355\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',6),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"355\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',355,'eng-GB',3,0,'',7),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482451858\">\n  <original attribute_id=\"356\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',2),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"356\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',3),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"356\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',4),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"356\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',5),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"356\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',6),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"356\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',356,'eng-GB',3,0,'',7),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',2),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',3),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',4),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',5),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',6),(0,201,62,NULL,NULL,NULL,'ezimage',357,'eng-GB',3,0,'',7),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',2),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',3),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',4),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',5),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',6),(0,202,62,NULL,NULL,NULL,'ezimage',358,'eng-GB',3,0,'',7),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',359,'ger-DE',4,0,'al-mustafa',3),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',359,'ger-DE',4,0,'al-mustafa',4),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',359,'ger-DE',4,0,'al-mustafa',5),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',359,'ger-DE',4,0,'al-mustafa',6),(0,189,62,NULL,NULL,'Al-Mustafa','ezstring',359,'ger-DE',4,0,'al-mustafa',7),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',360,'ger-DE',4,0,'',3),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',360,'ger-DE',4,0,'',4),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',360,'ger-DE',4,0,'',5),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',360,'ger-DE',4,0,'',6),(0,190,62,NULL,NULL,'Welcome to eZ Platform\n\nCongratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.\n\nNeed some guidance?\n\nCheck out the following resources:\n\nUser Manual for eZ Platform (and eZ Studio)\n\nTechnical doc for eZ Platform (and eZ Publish Platform new stack)\n\neZ Platform developer tutorial\n\nComparison guide between eZ Platform and eZ Publish Platform\n\nContribute to the project?\n\nJoin the community:\n\nGithub repositories open to the public\n\nRegister to the community on share.ez.no, the community site, to access forums, tutorials and blogs\n\nJoin the conversation on the eZ Community Slack\n\nGood luck!','eztext',360,'ger-DE',4,0,'',7),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"361\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',361,'ger-DE',4,0,'',3),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"361\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',361,'ger-DE',4,0,'',4),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"361\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',361,'ger-DE',4,0,'',5),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"361\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',361,'ger-DE',4,0,'',6),(0,198,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/4/5/3/0/354-2-eng-GB\" url=\"var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"361\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',361,'ger-DE',4,0,'',7),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"362\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',362,'ger-DE',4,0,'',3),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"362\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',362,'ger-DE',4,0,'',4),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"362\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',362,'ger-DE',4,0,'',5),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"362\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',362,'ger-DE',4,0,'',6),(0,199,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/5/5/3/0/355-2-eng-GB\" url=\"var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"362\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',362,'ger-DE',4,0,'',7),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482452464\">\n  <original attribute_id=\"363\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',363,'ger-DE',4,0,'',3),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"363\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',363,'ger-DE',4,0,'',4),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"363\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',363,'ger-DE',4,0,'',5),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"363\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',363,'ger-DE',4,0,'',6),(0,200,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni3.jpg\"\n    suffix=\"jpg\" basename=\"uni3\" dirpath=\"var/site/storage/images/6/5/3/0/356-2-eng-GB\" url=\"var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg\"\n    original_filename=\"uni3.jpg\" mime_type=\"image/jpeg\" width=\"8179\"\n    height=\"2626\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"363\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"2626\" Width=\"8179\" IsColor=\"1\"/>\n</ezimage>','ezimage',363,'ger-DE',4,0,'',7),(0,201,62,NULL,NULL,NULL,'ezimage',364,'ger-DE',4,0,'',3),(0,201,62,NULL,NULL,NULL,'ezimage',364,'ger-DE',4,0,'',4),(0,201,62,NULL,NULL,NULL,'ezimage',364,'ger-DE',4,0,'',5),(0,201,62,NULL,NULL,NULL,'ezimage',364,'ger-DE',4,0,'',6),(0,201,62,NULL,NULL,NULL,'ezimage',364,'ger-DE',4,0,'',7),(0,202,62,NULL,NULL,NULL,'ezimage',365,'ger-DE',4,0,'',3),(0,202,62,NULL,NULL,NULL,'ezimage',365,'ger-DE',4,0,'',4),(0,202,62,NULL,NULL,NULL,'ezimage',365,'ger-DE',4,0,'',5),(0,202,62,NULL,NULL,NULL,'ezimage',365,'ger-DE',4,0,'',6),(0,202,62,NULL,NULL,NULL,'ezimage',365,'ger-DE',4,0,'',7),(0,203,62,NULL,NULL,NULL,'ezimage',366,'eng-GB',3,0,'',2),(0,203,62,NULL,NULL,NULL,'ezimage',366,'eng-GB',3,0,'',3),(0,203,62,NULL,NULL,NULL,'ezimage',366,'eng-GB',3,0,'',4),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/6/6/3/0/366-5-eng-GB\" url=\"var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"366\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',366,'eng-GB',3,0,'',5),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/6/6/3/0/366-5-eng-GB\" url=\"var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"366\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',366,'eng-GB',3,0,'',6),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/6/6/3/0/366-5-eng-GB\" url=\"var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"366\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',366,'eng-GB',3,0,'',7),(0,203,62,NULL,NULL,NULL,'ezimage',367,'ger-DE',4,0,'',3),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/7/6/3/0/367-4-ger-DE\" url=\"var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482464232\">\n  <original attribute_id=\"367\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',367,'ger-DE',4,0,'',4),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/7/6/3/0/367-4-ger-DE\" url=\"var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482465847\">\n  <original attribute_id=\"367\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',367,'ger-DE',4,0,'',5),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/7/6/3/0/367-4-ger-DE\" url=\"var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467000\">\n  <original attribute_id=\"367\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',367,'ger-DE',4,0,'',6),(0,203,62,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni1.jpg\"\n    suffix=\"jpg\" basename=\"uni1\" dirpath=\"var/site/storage/images/7/6/3/0/367-4-ger-DE\" url=\"var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg\"\n    original_filename=\"uni1.jpg\" mime_type=\"image/jpeg\" width=\"1600\"\n    height=\"550\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467026\">\n  <original attribute_id=\"367\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"550\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',367,'ger-DE',4,0,'',7),(0,204,62,NULL,NULL,NULL,'ezstring',368,'eng-GB',3,0,'',2),(0,204,62,NULL,NULL,NULL,'ezstring',368,'eng-GB',3,0,'',3),(0,204,62,NULL,NULL,NULL,'ezstring',368,'eng-GB',3,0,'',4),(0,204,62,NULL,NULL,'Überschrift','ezstring',368,'eng-GB',3,0,'überschrift',5),(0,204,62,NULL,NULL,'Überschrift','ezstring',368,'eng-GB',3,0,'überschrift',6),(0,204,62,NULL,NULL,'Überschrift','ezstring',368,'eng-GB',3,0,'überschrift',7),(0,204,62,NULL,NULL,NULL,'ezstring',369,'ger-DE',4,0,'',3),(0,204,62,NULL,NULL,'Überschrift','ezstring',369,'ger-DE',4,0,'überschrift',4),(0,204,62,NULL,NULL,'Überschrift','ezstring',369,'ger-DE',4,0,'überschrift',5),(0,204,62,NULL,NULL,'Überschrift','ezstring',369,'ger-DE',4,0,'überschrift',6),(0,204,62,NULL,NULL,'Überschrift','ezstring',369,'ger-DE',4,0,'überschrift',7),(0,205,62,NULL,NULL,NULL,'eztext',370,'eng-GB',3,0,'',2),(0,205,62,NULL,NULL,NULL,'eztext',370,'eng-GB',3,0,'',3),(0,205,62,NULL,NULL,NULL,'eztext',370,'eng-GB',3,0,'',4),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.','eztext',370,'eng-GB',3,0,'',5),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\nLorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',370,'eng-GB',3,0,'',6),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\nLorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',370,'eng-GB',3,0,'',7),(0,205,62,NULL,NULL,NULL,'eztext',371,'ger-DE',4,0,'',3),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.','eztext',371,'ger-DE',4,0,'',4),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.','eztext',371,'ger-DE',4,0,'',5),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.','eztext',371,'ger-DE',4,0,'',6),(0,205,62,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\nLorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',371,'ger-DE',4,0,'',7),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',1),(0,187,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo','ezstring',372,'ger-DE',5,0,'lorem ipsum ist ein einfacher demo',2),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',1),(0,188,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para><para>Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.</para></section>\n','ezrichtext',373,'ger-DE',5,0,'',2),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',1),(0,193,101,NULL,1482447600,NULL,'ezdate',374,'ger-DE',5,1482447600,'',2),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',1),(0,194,101,NULL,NULL,'Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n','eztext',375,'ger-DE',5,0,'',2),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"uni2.jpg\"\n    suffix=\"jpg\" basename=\"uni2\" dirpath=\"var/site/storage/images/6/7/3/0/376-1-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg\"\n    original_filename=\"uni2.jpg\" mime_type=\"image/jpeg\" width=\"7354\"\n    height=\"1504\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482467232\">\n  <original attribute_id=\"376\" attribute_version=\"1\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1504\" Width=\"7354\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',1),(0,195,101,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Screen Shot 2016-10-18 at 19.38.46.png\"\n    suffix=\"png\" basename=\"Screen Shot 2016-10-18 at 19.38.46\" dirpath=\"var/site/storage/images/6/7/3/0/376-2-ger-DE\" url=\"var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png\"\n    original_filename=\"Screen Shot 2016-10-18 at 19.38.46.png\" mime_type=\"image/png\" width=\"3314\"\n    height=\"1844\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482469064\">\n  <original attribute_id=\"376\" attribute_version=\"2\" attribute_language=\"ger-DE\"/>\n  <information Height=\"1844\" Width=\"3314\" IsColor=\"1\"/>\n</ezimage>','ezimage',376,'ger-DE',5,0,'',2),(0,187,102,NULL,NULL,'Blog Post 3','ezstring',377,'ger-DE',5,0,'blog post 3',1),(0,188,102,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks)</para></section>\n','ezrichtext',378,'ger-DE',5,0,'',1),(0,193,102,NULL,1482447600,NULL,'ezdate',379,'ger-DE',5,1482447600,'',1),(0,194,102,NULL,NULL,'Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks) Es ist ein lang erwiesener Fakt, dass ein Leser vom Text abgelenkt wird, wenn er sich ein Layout ansieht. Der Punkt, Lorem Ipsum zu nutzen, ist, dass es mehr oder weniger die normale Anordnung von Buchstaben darstellt und somit nach lesbarer Sprache aussieht. Viele Desktop Publisher und Webeditoren nutzen mittlerweile Lorem Ipsum als den Standardtext, auch die Suche im Internet nach \"lorem ipsum\" macht viele Webseiten sichtbar, wo diese noch immer vorkommen. Mittlerweile gibt es mehrere Versionen des Lorem Ipsum, einige zufällig, andere bewusst (beeinflusst von Witz und des eigenen Geschmacks)','eztext',380,'ger-DE',5,0,'',1),(0,195,102,NULL,NULL,NULL,'ezimage',381,'ger-DE',5,0,'',1),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482516265\">\n  <original attribute_id=\"382\" attribute_version=\"3\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',3),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517091\">\n  <original attribute_id=\"382\" attribute_version=\"4\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',4),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517478\">\n  <original attribute_id=\"382\" attribute_version=\"5\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',5),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518220\">\n  <original attribute_id=\"382\" attribute_version=\"6\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',6),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518440\">\n  <original attribute_id=\"382\" attribute_version=\"7\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',7),(0,206,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"qom.jpg\"\n    suffix=\"jpg\" basename=\"qom\" dirpath=\"var/site/storage/images/2/8/3/0/382-2-ger-DE\" url=\"var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg\"\n    original_filename=\"qom.jpg\" mime_type=\"image/jpeg\" width=\"1024\"\n    height=\"683\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482518590\">\n  <original attribute_id=\"382\" attribute_version=\"8\" attribute_language=\"ger-DE\"/>\n  <information Height=\"683\" Width=\"1024\" IsColor=\"1\"/>\n</ezimage>','ezimage',382,'ger-DE',5,0,'',8),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',3),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',4),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',5),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',6),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',7),(0,207,80,NULL,NULL,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','eztext',383,'ger-DE',5,0,'',8),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',3),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',4),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',5),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',6),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',7),(0,208,80,NULL,1482447600,NULL,'ezdate',384,'ger-DE',5,1482447600,'',8),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',3),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',4),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',5),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',6),(0,209,80,NULL,1422036080,NULL,'ezdatetime',385,'ger-DE',5,1422036080,'',7),(0,209,80,NULL,1485194480,NULL,'ezdatetime',385,'ger-DE',5,1485194480,'',8),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',386,'ger-DE',5,0,'',3),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para></section>\n','ezrichtext',386,'ger-DE',5,0,'',4),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',5),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',6),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',7),(0,210,80,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para ezxhtml:textalign=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</para><ezembed xlink:href=\"ezcontent://103\" view=\"embed\" ezxhtml:class=\"ez-embed-type-image\" ezxhtml:align=\"center\"><ezconfig><ezvalue key=\"size\">large</ezvalue></ezconfig></ezembed></section>\n','ezrichtext',386,'ger-DE',5,0,'',8),(0,116,103,NULL,NULL,'Qom2','ezstring',387,'eng-GB',3,0,'qom2',1),(0,117,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',388,'eng-GB',3,0,'',1),(0,118,103,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Qom1.jpg\"\n    suffix=\"jpg\" basename=\"Qom1\" dirpath=\"var/site/storage/images/9/8/3/0/389-1-eng-GB\" url=\"var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg\"\n    original_filename=\"Qom1.jpg\" mime_type=\"image/jpeg\" width=\"1438\"\n    height=\"900\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1482517381\">\n  <original attribute_id=\"389\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"900\" Width=\"1438\" IsColor=\"1\"/>\n</ezimage>','ezimage',389,'eng-GB',3,0,'',1),(0,211,92,NULL,NULL,NULL,'ezstring',390,'ger-DE',4,0,'',1),(0,211,92,NULL,NULL,NULL,'ezstring',390,'ger-DE',4,0,'',2),(0,212,92,NULL,NULL,'','ezselection',391,'ger-DE',4,0,'',1),(0,212,92,NULL,NULL,'','ezselection',391,'ger-DE',4,0,'',2),(0,211,93,NULL,NULL,NULL,'ezstring',392,'ger-DE',4,0,'',1),(0,212,93,NULL,NULL,'','ezselection',393,'ger-DE',4,0,'',1),(0,211,94,NULL,NULL,NULL,'ezstring',394,'ger-DE',4,0,'',1),(0,212,94,NULL,NULL,'','ezselection',395,'ger-DE',4,0,'',1),(0,213,92,NULL,NULL,NULL,'ezstring',396,'ger-DE',4,0,'',1),(0,213,92,NULL,NULL,NULL,'ezstring',396,'ger-DE',4,0,'',2),(0,214,92,NULL,NULL,NULL,'ezstring',397,'ger-DE',4,0,'',1),(0,214,92,NULL,NULL,NULL,'ezstring',397,'ger-DE',4,0,'',2),(0,215,92,NULL,NULL,NULL,'ezstring',398,'ger-DE',4,0,'',1),(0,215,92,NULL,NULL,NULL,'ezstring',398,'ger-DE',4,0,'',2),(0,217,92,NULL,NULL,NULL,'ezstring',400,'ger-DE',4,0,'',1),(0,217,92,NULL,NULL,NULL,'ezstring',400,'ger-DE',4,0,'',2),(0,218,92,NULL,NULL,NULL,'ezstring',401,'ger-DE',4,0,'',1),(0,218,92,NULL,NULL,NULL,'ezstring',401,'ger-DE',4,0,'',2),(0,219,92,NULL,NULL,NULL,'ezstring',402,'ger-DE',4,0,'',1),(0,219,92,NULL,NULL,NULL,'ezstring',402,'ger-DE',4,0,'',2),(0,220,92,NULL,NULL,NULL,'ezstring',403,'ger-DE',4,0,'',1),(0,220,92,NULL,NULL,NULL,'ezstring',403,'ger-DE',4,0,'',2),(0,221,92,NULL,NULL,NULL,'ezstring',404,'ger-DE',4,0,'',1),(0,221,92,NULL,NULL,NULL,'ezstring',404,'ger-DE',4,0,'',2),(0,213,93,NULL,NULL,NULL,'ezstring',405,'ger-DE',4,0,'',1),(0,214,93,NULL,NULL,NULL,'ezstring',406,'ger-DE',4,0,'',1),(0,215,93,NULL,NULL,NULL,'ezstring',407,'ger-DE',4,0,'',1),(0,217,93,NULL,NULL,NULL,'ezstring',409,'ger-DE',4,0,'',1),(0,218,93,NULL,NULL,NULL,'ezstring',410,'ger-DE',4,0,'',1),(0,219,93,NULL,NULL,NULL,'ezstring',411,'ger-DE',4,0,'',1),(0,220,93,NULL,NULL,NULL,'ezstring',412,'ger-DE',4,0,'',1),(0,221,93,NULL,NULL,NULL,'ezstring',413,'ger-DE',4,0,'',1),(0,213,94,NULL,NULL,NULL,'ezstring',414,'ger-DE',4,0,'',1),(0,214,94,NULL,NULL,NULL,'ezstring',415,'ger-DE',4,0,'',1),(0,215,94,NULL,NULL,NULL,'ezstring',416,'ger-DE',4,0,'',1),(0,217,94,NULL,NULL,NULL,'ezstring',418,'ger-DE',4,0,'',1),(0,218,94,NULL,NULL,NULL,'ezstring',419,'ger-DE',4,0,'',1),(0,219,94,NULL,NULL,NULL,'ezstring',420,'ger-DE',4,0,'',1),(0,220,94,NULL,NULL,NULL,'ezstring',421,'ger-DE',4,0,'',1),(0,221,94,NULL,NULL,NULL,'ezstring',422,'ger-DE',4,0,'',1),(0,184,104,NULL,NULL,'Amir','ezstring',423,'ger-DE',4,0,'amir',1),(0,185,104,NULL,NULL,'Koklan','ezstring',424,'ger-DE',4,0,'koklan',1),(0,196,104,NULL,NULL,NULL,'ezbinaryfile',425,'ger-DE',4,0,'',1),(0,211,104,NULL,NULL,'Mohammad','ezstring',426,'ger-DE',4,0,'mohammad',1),(0,212,104,NULL,NULL,'0','ezselection',427,'ger-DE',4,0,'0',1),(0,213,104,NULL,NULL,'Master','ezstring',428,'ger-DE',4,0,'master',1),(0,214,104,NULL,NULL,'IT','ezstring',429,'ger-DE',4,0,'it',1),(0,215,104,NULL,NULL,'Software Developer','ezstring',430,'ger-DE',4,0,'software developer',1),(0,217,104,NULL,NULL,'Confession','ezstring',431,'ger-DE',4,0,'confession',1),(0,218,104,NULL,NULL,'Iranian','ezstring',432,'ger-DE',4,0,'iranian',1),(0,219,104,NULL,NULL,'keine','ezstring',433,'ger-DE',4,0,'keine',1),(0,220,104,NULL,NULL,'Perfekt','ezstring',434,'ger-DE',4,0,'perfekt',1),(0,221,104,NULL,NULL,'Ja','ezstring',435,'ger-DE',4,0,'ja',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (0,80,5,1,2,103),(0,80,6,2,2,103),(0,80,7,3,2,103),(0,80,8,4,2,103);
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
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',4,14,2,'Administrator User','eng-GB'),('eng-GB',5,14,2,'Amir Koklan','eng-GB'),('eng-GB',6,14,2,'Amir Koklan','eng-GB'),('eng-GB',7,14,2,'Amir Koklan','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,52,2,'Applications','eng-GB'),('eng-GB',2,52,2,'Applications','eng-GB'),('eng-GB',3,52,2,'Applications','eng-GB'),('ger-DE',3,52,4,'Bewerbungen','ger-DE'),('eng-GB',1,54,2,'Amir Test Amir Test','eng-GB'),('eng-GB',1,57,2,'Test Baby','eng-GB'),('ger-DE',1,60,4,'My title','ger-DE'),('eng-GB',1,61,2,'amir test','eng-GB'),('eng-GB',2,62,2,'Al-Mustafa','eng-GB'),('eng-GB',3,62,2,'Al-Mustafa','eng-GB'),('ger-DE',3,62,4,'Al-Mustafa','ger-DE'),('eng-GB',4,62,2,'Al-Mustafa','eng-GB'),('ger-DE',4,62,4,'Al-Mustafa','ger-DE'),('eng-GB',5,62,2,'Al-Mustafa','eng-GB'),('ger-DE',5,62,4,'Al-Mustafa','ger-DE'),('eng-GB',6,62,2,'Al-Mustafa','eng-GB'),('ger-DE',6,62,4,'Al-Mustafa','ger-DE'),('eng-GB',7,62,2,'Al-Mustafa','eng-GB'),('ger-DE',7,62,4,'Al-Mustafa','ger-DE'),('ger-DE',1,63,4,'Über uns','ger-DE'),('ger-DE',1,64,4,'Esfehani','ger-DE'),('ger-DE',1,65,4,'Folder 1','ger-DE'),('ger-DE',2,65,4,'Folder 1','ger-DE'),('ger-DE',1,66,4,'Folder 1.2','ger-DE'),('ger-DE',2,66,4,'Folder 1.2','ger-DE'),('ger-DE',3,66,4,'Folder 1.2','ger-DE'),('ger-DE',1,67,4,'folder 1.1','ger-DE'),('ger-DE',2,67,4,'folder 1.1','ger-DE'),('ger-DE',1,68,4,'Folder 1.3','ger-DE'),('ger-DE',1,69,4,'Folder 2','ger-DE'),('ger-DE',2,69,4,'Folder 2','ger-DE'),('ger-DE',1,70,4,'Folder 2.1','ger-DE'),('ger-DE',2,70,4,'Folder 2.1','ger-DE'),('ger-DE',1,71,4,'Studium','ger-DE'),('ger-DE',1,72,4,'Folder 1.2.1','ger-DE'),('ger-DE',1,73,4,'Folder 1.2.2','ger-DE'),('ger-DE',1,74,4,'Folder 3','ger-DE'),('ger-DE',1,75,4,'Vernstellungen','ger-DE'),('ger-DE',2,75,4,'Vernstellungen','ger-DE'),('ger-DE',3,75,4,'Veranstaltungen','ger-DE'),('ger-DE',1,76,4,'First Blog','ger-DE'),('ger-DE',2,76,4,'','ger-DE'),('eng-GB',3,76,2,'First Blog','eng-GB'),('ger-DE',3,76,4,'First Blog','ger-DE'),('eng-GB',4,76,2,'First Blog','eng-GB'),('ger-DE',4,76,4,'First Blog','ger-DE'),('ger-DE',1,77,4,'Forschungreisen','ger-DE'),('ger-DE',1,78,4,'','ger-DE'),('ger-DE',1,79,4,'','ger-DE'),('ger-DE',3,80,4,'Qom 2016','ger-DE'),('ger-DE',4,80,4,'Qom 2016','ger-DE'),('ger-DE',5,80,4,'Qom 2016','ger-DE'),('ger-DE',6,80,4,'Qom 2016','ger-DE'),('ger-DE',7,80,4,'Qom 2016','ger-DE'),('ger-DE',8,80,4,'Qom 2016','ger-DE'),('ger-DE',1,92,4,'Amir Koklan','ger-DE'),('ger-DE',2,92,4,'Amir Koklan','ger-DE'),('ger-DE',1,93,4,'Ali Al-Hakim','ger-DE'),('ger-DE',1,94,4,'Ali Al Hakim','ger-DE'),('ger-DE',1,95,4,'My title','ger-DE'),('ger-DE',1,96,4,'','ger-DE'),('ger-DE',1,97,4,'Hasan Jafar','ger-DE'),('ger-DE',1,98,4,'Hasan Jafar','ger-DE'),('ger-DE',1,99,4,'amir hasan','ger-DE'),('ger-DE',1,100,4,'Hasan Ali','ger-DE'),('ger-DE',1,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',2,101,4,'Lorem Ipsum ist ein einfacher Demo','ger-DE'),('ger-DE',1,102,4,'Blog Post 3','ger-DE'),('eng-GB',1,103,2,'Qom2','eng-GB'),('ger-DE',1,104,4,'Amir Koklan','ger-DE');
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
INSERT INTO `ezcontentobject_trash` VALUES (57,1,3,0,0,59,1480384631,59,54,'node_2/applications/test_baby','/1/2/54/59/',0,'c541974ef0bf80c02848d1c0f2df0e4f',1,1),(60,1,3,0,0,62,1480385803,62,54,'node_2/applications/my_title','/1/2/54/62/',0,'d98d23225f188f4c2ef03b2cbb018c9f',9,1),(61,1,3,0,0,63,1480469135,63,54,'node_2/applications/amir_test','/1/2/54/63/',0,'24d25867cce8d10e2598a238c2b05d3f',9,1),(78,1,3,0,0,80,1481239894,80,77,'node_2/vernstellungen/location_80','/1/2/77/80/',0,'782256aec842a62b03836f142c1723b4',1,1),(79,1,3,0,0,81,1481240728,81,79,'node_2/forschungreisen/location_81','/1/2/79/81/',0,'5018445a3d960e7ca6ffac5c97a1a779',1,1),(92,2,3,0,0,84,1482068255,84,65,'node_2/ueber_uns//amir_koklan','/1/2/65/84/',0,'05c4ce53ce353c50168f3c3a4ed186d9',9,1),(93,1,4,0,0,85,1482070096,85,82,'node_2/forschungreisen/qom_2016/ali_al_hakim','/1/2/79/82/85/',0,'f52855db8a1662c13ee012f45330f0df',9,1),(94,1,4,0,0,86,1482070515,86,82,'node_2/forschungreisen/qom_2016/ali_al_hakim','/1/2/79/82/86/',0,'baa8255645b19d4326b20eedd2ff0ef4',9,1),(95,1,3,0,0,87,1482077582,87,54,'node_2/applications/my_title','/1/2/54/87/',0,'0bdfad3dd34406a9e50526b1c7f724b2',9,1),(96,1,3,0,0,88,1482084592,88,54,'node_2/applications/location_88','/1/2/54/88/',0,'50331f818a9b74af0bcc55a35133633b',9,1),(97,1,3,0,0,89,1482084724,89,54,'node_2/applications/hasan_jafar','/1/2/54/89/',0,'2d709e97b93e065243eac541f2cb3ded',9,1),(98,1,3,0,0,90,1482085025,90,54,'node_2/applications/hasan_jafar','/1/2/54/90/',0,'447cba779e24eaacc4d65ad030dde9b4',9,1),(99,1,3,0,0,91,1482085108,91,54,'node_2/applications/amir_hasan','/1/2/54/91/',0,'3fb1eb2fbf1848f404d890042a8bad20',9,1),(100,1,3,0,0,92,1482085351,92,54,'node_2/applications/hasan_ali','/1/2/54/92/',0,'c3b5fbcde3f89ace8394949738f3d9d8',9,1),(104,1,4,0,0,96,1482539311,96,82,'node_2/forschungreisen/qom_2016/amir_koklan','/1/2/79/82/96/',0,'e9ed1d9d76ef5bb65f0e7d0be79bbd3b',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1482540691,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(62,1,7,1,0,0,2,1482540691,2,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1301062024,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1301062024,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,7,3,0,0,15,1301062024,15,13,'users/administrator_users/amir_koklan','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1448833726,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,3,2,0,0,54,1482088543,54,2,'node_2/applications','/1/2/54/',0,'7d65780390a240b94176fa62fd3e78e4',1,1),(54,1,1,3,0,0,56,1480382570,56,12,'users/guest_accounts/amir_test_amir_test','/1/5/12/56/',0,'b28f4b892ed6ded2fa24982a9e43ea06',9,1),(63,1,1,2,0,0,65,1482069859,65,2,'node_2/ueber_uns','/1/2/65/',0,'a0fc4d24042ce9b35626dc936e458fe1',1,1),(64,1,1,3,0,0,66,1480886510,66,65,'node_2/ueber_uns/esfehani','/1/2/65/66/',0,'06dcac24342445ecc0d0f41ad51427d8',1,1),(65,1,2,2,0,0,67,1480901813,67,2,'node_2/folder_1','/1/2/67/',0,'ffd1dbcea3da4147158d4f21e7cedf90',1,1),(66,1,3,3,0,0,68,1480901943,68,67,'node_2/folder_1/folder_1_2','/1/2/67/68/',0,'a1f4e01c66c58471f1f52080b52cc8f1',1,1),(67,1,2,3,0,0,69,1480901959,69,67,'node_2/folder_1/folder_1_1','/1/2/67/69/',0,'371d5b483e545ec53ed8cfa65de6c0ba',1,1),(68,1,1,3,0,0,70,1480901995,70,67,'node_2/folder_1/folder_1_3','/1/2/67/70/',0,'8f445fb0d64dd60f126ae0381a74e0fe',1,1),(69,1,2,2,0,0,71,1480902015,71,2,'node_2/folder_2','/1/2/71/',0,'6ce9a9fa90830fafe01c4544e61f7be9',1,1),(70,1,2,3,0,0,72,1480902029,72,71,'node_2/folder_2/folder_2_1','/1/2/71/72/',0,'fbc80353ed6569b517c77322313fa661',1,1),(71,1,1,3,0,0,73,1480906110,73,65,'node_2/ueber_uns/studium','/1/2/65/73/',0,'c1d3eb06b5c676f8f233b07e1e99b7f3',1,1),(72,1,1,4,0,0,74,1480965238,74,68,'node_2/folder_1/folder_1_2/folder_1_2_1','/1/2/67/68/74/',0,'131279c6b221af1ae30df59185750711',1,1),(73,1,1,4,0,0,75,1480965292,75,68,'node_2/folder_1/folder_1_2/folder_1_2_2','/1/2/67/68/75/',0,'f5edc5ba2e6892c780757be12cb78e30',1,1),(74,1,1,2,0,0,76,1480978804,76,2,'node_2/folder_3','/1/2/76/',0,'b12c38bb337fab0eba0c46d4af6cff97',1,1),(75,1,3,2,0,0,77,1482084681,77,2,'node_2/veranstaltungen','/1/2/77/',0,'8de9380c5e9ec89bbd371648b129633a',1,1),(76,1,4,3,0,0,78,1481073301,78,77,'node_2/vernstellungen/first_blog','/1/2/77/78/',0,'e14d8bdda6a0aafcd8139bf40b5f5eba',1,1),(77,1,1,2,0,0,79,1482540691,79,2,'node_2/forschungreisen','/1/2/79/',0,'f624b3f093a1a87604726cca1256c658',1,1),(80,1,8,3,0,0,82,1482540691,82,79,'node_2/forschungreisen/qom_2016','/1/2/79/82/',0,'d56cc7c2d056a7258de31222d1d40841',1,1),(101,1,2,3,0,0,93,1482467232,93,77,'node_2/vernstellungen/lorem_ipsum_ist_ein_einfacher_demo','/1/2/77/93/',0,'dd282d50f782efba25af15d87d2a7b6d',1,1),(102,1,1,3,0,0,94,1482509239,94,77,'node_2/vernstellungen/blog_post_3','/1/2/77/94/',0,'add1ac841a29bbad27fab2512f72423b',1,1),(103,1,1,3,0,0,95,1482517381,95,51,'media/images/qom2','/1/43/51/95/',0,'577b5067a6274ce3e0cdbc2811ecda5e',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(14,1301061783,14,499,2,3,1482105019,3,0,3,0),(52,1480381021,14,507,2,3,1480383383,3,0,1,0),(54,1480382570,14,509,2,3,1480382570,1,0,1,0),(52,1480383383,14,511,2,3,1480383909,3,0,2,0),(52,1480383909,14,512,4,7,1480383909,1,0,3,0),(57,1480384631,14,514,2,3,1480384631,1,0,1,0),(60,1480385803,54,517,4,4,1480385803,1,0,1,0),(61,1480469135,14,518,2,2,1480469135,1,0,1,0),(63,1480886444,14,520,4,5,1480886445,1,0,1,0),(64,1480886510,14,521,4,5,1480886510,1,0,1,0),(65,1480901813,14,522,4,5,1481048891,3,0,1,0),(66,1480901943,14,523,4,5,1480901978,3,0,1,0),(67,1480901959,14,524,4,5,1481058738,3,0,1,0),(66,1480901978,14,525,4,5,1481058749,3,0,2,0),(68,1480901995,14,526,4,5,1480901995,1,0,1,0),(69,1480902014,14,527,4,5,1481058722,3,0,1,0),(70,1480902029,14,528,4,5,1482449656,3,0,1,0),(71,1480906110,14,529,4,5,1480906110,1,0,1,0),(72,1480965238,14,530,4,5,1480965238,1,0,1,0),(73,1480965292,14,531,4,5,1480965292,1,0,1,0),(74,1480978804,14,532,4,5,1480978804,1,0,1,0),(75,1480987916,14,533,4,5,1481071731,3,0,1,0),(65,1481048891,14,534,4,5,1481048891,1,0,2,0),(69,1481058722,14,535,4,5,1481058722,1,0,2,0),(67,1481058738,14,536,4,5,1481058738,1,0,2,0),(66,1481058749,14,537,4,5,1481058749,1,0,3,0),(75,1481071731,14,538,4,5,1482540280,3,0,2,0),(76,1481073301,14,539,4,5,1481074441,3,0,1,0),(76,1481074440,14,540,4,5,1481335792,3,0,2,0),(77,1481239640,14,541,4,5,1481239640,1,0,1,0),(78,1481239894,14,542,4,5,1481239894,1,0,1,0),(79,1481240728,14,543,4,5,1481240728,1,0,1,0),(76,1481335792,14,544,2,7,1482469213,3,0,3,0),(92,1482068255,14,557,4,4,1482069359,3,0,1,0),(92,1482069359,14,558,4,4,1482069359,1,0,2,0),(93,1482070096,54,559,4,4,1482070096,1,0,1,0),(94,1482070515,54,560,4,4,1482070515,1,0,1,0),(95,1482077582,14,561,4,4,1482077582,1,0,1,0),(96,1482084592,14,562,4,4,1482084592,1,0,1,0),(97,1482084724,14,563,4,4,1482084724,1,0,1,0),(98,1482085025,14,564,4,4,1482085025,1,0,1,0),(99,1482085108,14,565,4,4,1482085108,1,0,1,0),(100,1482085351,14,566,4,4,1482085351,1,0,1,0),(14,1482105019,14,567,2,3,1482105019,0,0,4,0),(14,1482105019,14,568,2,3,1482105153,3,0,5,0),(14,1482105153,14,569,2,3,1482105153,0,0,6,0),(14,1482105153,14,570,2,3,1482105153,1,0,7,0),(70,1482449656,14,571,4,5,1482449656,1,0,2,0),(62,1482451857,14,572,2,3,1482452464,3,0,2,0),(62,1482452464,14,573,4,7,1482464232,3,0,3,0),(62,1482464232,14,574,4,7,1482465847,3,0,4,0),(62,1482465847,14,576,2,7,1482467001,3,0,5,0),(62,1482467000,14,577,2,7,1482467026,3,0,6,0),(62,1482467026,14,578,4,7,1482467026,1,0,7,0),(101,1482467232,14,579,4,5,1482469064,3,0,1,0),(101,1482469063,14,580,4,5,1482469064,1,0,2,0),(76,1482469212,14,581,4,7,1482469213,1,0,4,0),(102,1482509239,14,582,4,5,1482509239,1,0,1,0),(80,1482516265,14,584,4,5,1482517091,3,0,3,0),(80,1482517091,14,585,4,5,1482517479,3,0,4,0),(103,1482517381,14,586,2,3,1482517381,1,0,1,0),(80,1482517478,14,587,4,5,1482518221,3,0,5,0),(80,1482518220,14,588,4,5,1482518440,3,0,6,0),(80,1482518440,14,589,4,5,1482518590,3,0,7,0),(80,1482518590,14,590,4,5,1482518590,1,0,8,0),(104,1482539311,14,591,4,4,1482539311,1,0,1,0),(75,1482540280,14,592,4,5,1482540280,1,0,3,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',1),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',2),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',3),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',4),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',5),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',6),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',7),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',8),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',9),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',10),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',11),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',12),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',13),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',14),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',15),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',16),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',17),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',18),(367,'var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg',19),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',20),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',21),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',22),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',23),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',24),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',25),(367,'var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg',26),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',27),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',28),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',29),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',30),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',31),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',32),(367,'var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg',33),(366,'var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg',34),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',35),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',36),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',37),(366,'var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg',38),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',39),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',40),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',41),(367,'var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg',42),(354,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',43),(355,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',44),(356,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',45),(366,'var/site/storage/images/6/6/3/0/366-5-eng-GB/uni1.jpg',46),(361,'var/site/storage/images/4/5/3/0/354-2-eng-GB/uni1.jpg',47),(362,'var/site/storage/images/5/5/3/0/355-2-eng-GB/uni2.jpg',48),(363,'var/site/storage/images/6/5/3/0/356-2-eng-GB/uni3.jpg',49),(367,'var/site/storage/images/7/6/3/0/367-4-ger-DE/uni1.jpg',50),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',51),(376,'var/site/storage/images/6/7/3/0/376-1-ger-DE/uni2.jpg',52),(376,'var/site/storage/images/6/7/3/0/376-2-ger-DE/Screen Shot 2016-10-18 at 19.38.46.png',53),(295,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',54),(278,'var/site/storage/images/8/7/2/0/278-2-ger-DE/424812_10150703957360281_981201054_n.jpg',55),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',56),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',57),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',58),(389,'var/site/storage/images/9/8/3/0/389-1-eng-GB/Qom1.jpg',59),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',60),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',61),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',62),(382,'var/site/storage/images/2/8/3/0/382-2-ger-DE/qom.jpg',63);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(52,1,0,40,1,2,2,'7d65780390a240b94176fa62fd3e78e4','0',1,1,0,0),(53,1,0,41,1,2,54,'73d566928297c09a06fa76f1e4425b2e','0',9,1,0,0),(54,1,0,42,1,2,12,'b28f4b892ed6ded2fa24982a9e43ea06','0',9,1,0,0),(55,1,0,43,1,2,54,'4101e831147e95c12889b00347518ffc','0',9,1,0,0),(56,1,0,44,1,2,54,'c711c325ae01c7fc481e8a9089674cfc','0',9,1,0,0),(57,1,0,45,1,2,54,'c541974ef0bf80c02848d1c0f2df0e4f','0',1,1,0,0),(58,1,0,46,1,2,54,'5e445974400cae3c948502b3503a64f5','0',9,1,0,0),(59,1,0,47,1,2,54,'a5d5e94b8d1d91c43ac1a024c284d89f','0',9,1,0,0),(60,1,0,48,1,2,54,'d98d23225f188f4c2ef03b2cbb018c9f','0',9,1,0,0),(61,1,0,49,1,2,54,'24d25867cce8d10e2598a238c2b05d3f','0',9,1,0,0),(63,1,0,51,1,2,2,'a0fc4d24042ce9b35626dc936e458fe1','0',1,1,0,0),(64,1,0,52,1,2,65,'06dcac24342445ecc0d0f41ad51427d8','0',1,1,0,0),(65,1,0,53,1,2,2,'ffd1dbcea3da4147158d4f21e7cedf90','0',1,1,0,0),(66,1,0,54,1,2,67,'a1f4e01c66c58471f1f52080b52cc8f1','0',1,1,0,0),(67,1,0,55,1,2,67,'371d5b483e545ec53ed8cfa65de6c0ba','0',1,1,0,0),(68,1,0,56,1,2,67,'8f445fb0d64dd60f126ae0381a74e0fe','0',1,1,0,0),(69,1,0,57,1,2,2,'6ce9a9fa90830fafe01c4544e61f7be9','0',1,1,0,0),(70,1,0,58,1,2,71,'fbc80353ed6569b517c77322313fa661','0',1,1,0,0),(71,1,0,59,1,2,65,'c1d3eb06b5c676f8f233b07e1e99b7f3','0',1,1,0,0),(72,1,0,60,1,2,68,'131279c6b221af1ae30df59185750711','0',1,1,0,0),(73,1,0,61,1,2,68,'f5edc5ba2e6892c780757be12cb78e30','0',1,1,0,0),(74,1,0,62,1,2,2,'b12c38bb337fab0eba0c46d4af6cff97','0',1,1,0,0),(75,1,0,63,1,2,2,'8de9380c5e9ec89bbd371648b129633a','0',1,1,0,0),(76,1,0,64,1,2,77,'e14d8bdda6a0aafcd8139bf40b5f5eba','0',1,1,0,0),(77,1,0,65,1,2,2,'f624b3f093a1a87604726cca1256c658','0',1,1,0,0),(78,1,0,66,1,2,77,'782256aec842a62b03836f142c1723b4','0',1,1,0,0),(79,1,0,67,1,2,79,'5018445a3d960e7ca6ffac5c97a1a779','0',1,1,0,0),(82,1,0,70,1,2,82,'b644bdbb02fe081515256ef9d2aee220','0',9,1,0,0),(83,1,0,71,1,2,82,'2baca779a7fa0417357afed11b38b73e','0',9,1,0,0),(84,1,0,72,1,2,82,'3493c6108407956c019ae59d6ab8ade0','0',9,1,0,0),(85,1,0,73,1,2,82,'c38ae8df1e7f6676bf524036b6cbe595','0',9,1,0,0),(86,1,0,74,1,2,82,'f3b2dd62e7396a601c5ae34bf630667d','0',9,1,0,0),(87,1,0,75,1,2,82,'c5c6bedaedd3ece0078c836fd1a0fd9f','0',9,1,0,0),(88,1,0,76,1,2,82,'ca2a2c0229f16c67c083b80220ba32a9','0',9,1,0,0),(89,1,0,77,1,2,82,'ca04292ca25a987949c8f29c92a76518','0',9,1,0,0),(90,1,0,78,1,2,82,'927ea39610695ca163c68938f17af11c','0',9,1,0,0),(91,1,0,79,1,2,82,'d34526a9b5f03567fcd52b460918d2af','0',9,1,0,0),(92,1,0,80,1,5,65,'05c4ce53ce353c50168f3c3a4ed186d9','0',9,1,0,0),(93,1,0,81,1,2,82,'f52855db8a1662c13ee012f45330f0df','0',9,1,0,0),(94,1,0,82,1,2,82,'baa8255645b19d4326b20eedd2ff0ef4','0',9,1,0,0),(95,1,0,83,1,2,54,'0bdfad3dd34406a9e50526b1c7f724b2','0',9,1,0,0),(96,1,0,84,1,2,54,'50331f818a9b74af0bcc55a35133633b','0',9,1,0,0),(97,1,0,85,1,2,54,'2d709e97b93e065243eac541f2cb3ded','0',9,1,0,0),(98,1,0,86,1,2,54,'447cba779e24eaacc4d65ad030dde9b4','0',9,1,0,0),(99,1,0,87,1,2,54,'3fb1eb2fbf1848f404d890042a8bad20','0',9,1,0,0),(100,1,0,88,1,2,54,'c3b5fbcde3f89ace8394949738f3d9d8','0',9,1,0,0),(101,1,0,89,1,2,77,'dd282d50f782efba25af15d87d2a7b6d','0',1,1,0,0),(102,1,0,90,1,2,77,'add1ac841a29bbad27fab2512f72423b','0',1,1,0,0),(103,1,0,91,1,2,51,'577b5067a6274ce3e0cdbc2811ecda5e','0',1,1,0,0),(104,1,0,92,1,2,82,'e9ed1d9d76ef5bb65f0e7d0be79bbd3b','0',9,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=7604 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,11,0,4671,'name',0,957,0,0,1033920746,2,956),(6,3,11,0,4672,'name',0,0,1,956,1033920746,2,957),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(8,4,14,0,4676,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,4677,'last_name',0,960,1,958,1033920830,2,954),(12,4,14,0,4678,'user_account',0,955,2,954,1033920830,2,960),(12,4,14,0,4679,'user_account',0,927,3,960,1033920830,2,955),(12,4,14,0,4680,'user_account',0,0,4,955,1033920830,2,927),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,52,0,4706,'name',0,975,0,0,1480381021,7,974),(4,1,52,0,4707,'name',0,0,1,974,1480381021,7,975),(4,1,63,0,4722,'name',0,986,0,0,1480886445,1,985),(4,1,63,0,4723,'name',0,985,1,985,1480886445,1,986),(155,1,63,0,4724,'short_name',0,986,2,986,1480886445,1,985),(155,1,63,0,4725,'short_name',0,987,3,985,1480886445,1,986),(119,1,63,0,4726,'short_description',0,988,4,986,1480886445,1,987),(119,1,63,0,4727,'short_description',0,989,5,987,1480886445,1,988),(156,1,63,0,4728,'description',0,0,6,988,1480886445,1,989),(4,1,64,0,4729,'name',0,990,0,0,1480886510,1,990),(155,1,64,0,4730,'short_name',0,990,1,990,1480886510,1,990),(119,1,64,0,4731,'short_description',0,990,2,990,1480886510,1,990),(156,1,64,0,4732,'description',0,0,3,990,1480886510,1,990),(4,1,68,0,4750,'name',0,992,0,0,1480901995,1,991),(4,1,68,0,4751,'name',0,995,1,991,1480901995,1,992),(4,1,68,0,4752,'name',0,991,2,992,1480901995,1,995),(155,1,68,0,4753,'short_name',0,992,3,995,1480901995,1,991),(155,1,68,0,4754,'short_name',0,995,4,991,1480901995,1,992),(155,1,68,0,4755,'short_name',0,0,5,992,1480901995,1,995),(4,1,71,0,4766,'name',0,997,0,0,1480906110,1,996),(155,1,71,0,4767,'short_name',0,0,1,996,1480906110,1,997),(4,1,72,0,4768,'name',0,992,0,0,1480965238,1,991),(4,1,72,0,4769,'name',0,994,1,991,1480965238,1,992),(4,1,72,0,4770,'name',0,992,2,992,1480965238,1,994),(4,1,72,0,4771,'name',0,0,3,994,1480965238,1,992),(4,1,73,0,4772,'name',0,992,0,0,1480965292,1,991),(4,1,73,0,4773,'name',0,994,1,991,1480965292,1,992),(4,1,73,0,4774,'name',0,994,2,992,1480965292,1,994),(4,1,73,0,4775,'name',0,0,3,994,1480965292,1,994),(4,1,74,0,4776,'name',0,995,0,0,1480978804,1,991),(4,1,74,0,4777,'name',0,0,1,991,1480978804,1,995),(4,1,65,0,4779,'name',0,992,0,0,1480901813,1,991),(4,1,65,0,4780,'name',0,0,1,991,1480901813,1,992),(4,1,69,0,4781,'name',0,994,0,0,1480902015,1,991),(4,1,69,0,4782,'name',0,991,1,991,1480902015,1,994),(155,1,69,0,4783,'short_name',0,994,2,994,1480902015,1,991),(155,1,69,0,4784,'short_name',0,0,3,991,1480902015,1,994),(4,1,67,0,4785,'name',0,992,0,0,1480901959,1,991),(4,1,67,0,4786,'name',0,992,1,991,1480901959,1,992),(4,1,67,0,4787,'name',0,991,2,992,1480901959,1,992),(155,1,67,0,4788,'short_name',0,992,3,992,1480901959,1,991),(155,1,67,0,4789,'short_name',0,992,4,991,1480901959,1,992),(155,1,67,0,4790,'short_name',0,0,5,992,1480901959,1,992),(4,1,66,0,4791,'name',0,992,0,0,1480901943,1,991),(4,1,66,0,4792,'name',0,994,1,991,1480901943,1,992),(4,1,66,0,4793,'name',0,991,2,992,1480901943,1,994),(155,1,66,0,4794,'short_name',0,992,3,994,1480901943,1,991),(155,1,66,0,4795,'short_name',0,994,4,991,1480901943,1,992),(155,1,66,0,4796,'short_name',0,0,5,992,1480901943,1,994),(186,16,77,0,4806,'name',0,0,0,0,1481239640,1,1004),(4,1,70,0,4849,'name',0,994,0,0,1480902029,1,991),(4,1,70,0,4850,'name',0,992,1,991,1480902029,1,994),(4,1,70,0,4851,'name',0,991,2,994,1480902029,1,992),(155,1,70,0,4852,'short_name',0,994,3,992,1480902029,1,991),(155,1,70,0,4853,'short_name',0,992,4,991,1480902029,1,994),(155,1,70,0,4854,'short_name',0,0,5,994,1480902029,1,992),(189,18,62,0,4878,'title',0,1043,0,0,1480877231,1,1042),(189,18,62,0,4879,'title',0,1044,1,1042,1480877231,1,1043),(204,18,62,0,4880,'title_bottom',0,1042,2,1043,1480877231,1,1044),(189,18,62,0,4881,'title',0,1043,3,1044,1480877231,1,1042),(189,18,62,0,4882,'title',0,1044,4,1042,1480877231,1,1043),(204,18,62,0,4883,'title_bottom',0,0,5,1043,1480877231,1,1044),(187,17,101,0,5154,'title',0,1114,0,0,1482467232,1,1113),(187,17,101,0,5155,'title',0,1115,1,1113,1482467232,1,1114),(187,17,101,0,5156,'title',0,1116,2,1114,1482467232,1,1115),(187,17,101,0,5157,'title',0,1117,3,1115,1482467232,1,1116),(187,17,101,0,5158,'title',0,1118,4,1116,1482467232,1,1117),(187,17,101,0,5159,'title',0,1113,5,1117,1482467232,1,1118),(188,17,101,0,5160,'description',0,1114,6,1118,1482467232,1,1113),(188,17,101,0,5161,'description',0,1115,7,1113,1482467232,1,1114),(188,17,101,0,5162,'description',0,1116,8,1114,1482467232,1,1115),(188,17,101,0,5163,'description',0,1117,9,1115,1482467232,1,1116),(188,17,101,0,5164,'description',0,1118,10,1116,1482467232,1,1117),(188,17,101,0,5165,'description',0,1119,11,1117,1482467232,1,1118),(188,17,101,0,5166,'description',0,1120,12,1118,1482467232,1,1119),(188,17,101,0,5167,'description',0,1121,13,1119,1482467232,1,1120),(188,17,101,0,5168,'description',0,1122,14,1120,1482467232,1,1121),(188,17,101,0,5169,'description',0,1123,15,1121,1482467232,1,1122),(188,17,101,0,5170,'description',0,1124,16,1122,1482467232,1,1123),(188,17,101,0,5171,'description',0,1113,17,1123,1482467232,1,1124),(188,17,101,0,5172,'description',0,1114,18,1124,1482467232,1,1113),(188,17,101,0,5173,'description',0,1115,19,1113,1482467232,1,1114),(188,17,101,0,5174,'description',0,1125,20,1114,1482467232,1,1115),(188,17,101,0,5175,'description',0,1126,21,1115,1482467232,1,1125),(188,17,101,0,5176,'description',0,1127,22,1125,1482467232,1,1126),(188,17,101,0,5177,'description',0,1128,23,1126,1482467232,1,1127),(188,17,101,0,5178,'description',0,1126,24,1127,1482467232,1,1128),(188,17,101,0,5179,'description',0,1129,25,1128,1482467232,1,1126),(188,17,101,0,5180,'description',0,1118,26,1126,1482467232,1,1129),(188,17,101,0,5181,'description',0,1119,27,1129,1482467232,1,1118),(188,17,101,0,5182,'description',0,1130,28,1118,1482467232,1,1119),(188,17,101,0,5183,'description',0,1131,29,1119,1482467232,1,1130),(188,17,101,0,5184,'description',0,1132,30,1130,1482467232,1,1131),(188,17,101,0,5185,'description',0,1116,31,1131,1482467232,1,1132),(188,17,101,0,5186,'description',0,1133,32,1132,1482467232,1,1116),(188,17,101,0,5187,'description',0,1134,33,1116,1482467232,1,1133),(188,17,101,0,5188,'description',0,1135,34,1133,1482467232,1,1134),(188,17,101,0,5189,'description',0,1136,35,1134,1482467232,1,1135),(188,17,101,0,5190,'description',0,1137,36,1135,1482467232,1,1136),(188,17,101,0,5191,'description',0,1138,37,1136,1482467232,1,1137),(188,17,101,0,5192,'description',0,1139,38,1137,1482467232,1,1138),(188,17,101,0,5193,'description',0,1123,39,1138,1482467232,1,1139),(188,17,101,0,5194,'description',0,1140,40,1139,1482467232,1,1123),(188,17,101,0,5195,'description',0,1141,41,1123,1482467232,1,1140),(188,17,101,0,5196,'description',0,1142,42,1140,1482467232,1,1141),(188,17,101,0,5197,'description',0,1143,43,1141,1482467232,1,1142),(188,17,101,0,5198,'description',0,1116,44,1142,1482467232,1,1143),(188,17,101,0,5199,'description',0,1144,45,1143,1482467232,1,1116),(188,17,101,0,5200,'description',0,1145,46,1116,1482467232,1,1144),(188,17,101,0,5201,'description',0,1146,47,1144,1482467232,1,1145),(188,17,101,0,5202,'description',0,1147,48,1145,1482467232,1,1146),(188,17,101,0,5203,'description',0,1148,49,1146,1482467232,1,1147),(188,17,101,0,5204,'description',0,1149,50,1147,1482467232,1,1148),(188,17,101,0,5205,'description',0,1150,51,1148,1482467232,1,1149),(188,17,101,0,5206,'description',0,1151,52,1149,1482467232,1,1150),(188,17,101,0,5207,'description',0,1152,53,1150,1482467232,1,1151),(188,17,101,0,5208,'description',0,1153,54,1151,1482467232,1,1152),(188,17,101,0,5209,'description',0,1154,55,1152,1482467232,1,1153),(188,17,101,0,5210,'description',0,1155,56,1153,1482467232,1,1154),(188,17,101,0,5211,'description',0,1125,57,1154,1482467232,1,1155),(188,17,101,0,5212,'description',0,1156,58,1155,1482467232,1,1125),(188,17,101,0,5213,'description',0,1125,59,1125,1482467232,1,1156),(188,17,101,0,5214,'description',0,1121,60,1156,1482467232,1,1125),(188,17,101,0,5215,'description',0,1157,61,1125,1482467232,1,1121),(188,17,101,0,5216,'description',0,1158,62,1121,1482467232,1,1157),(188,17,101,0,5217,'description',0,1159,63,1157,1482467232,1,1158),(188,17,101,0,5218,'description',0,1160,64,1158,1482467232,1,1159),(188,17,101,0,5219,'description',0,1161,65,1159,1482467232,1,1160),(188,17,101,0,5220,'description',0,1162,66,1160,1482467232,1,1161),(188,17,101,0,5221,'description',0,1163,67,1161,1482467232,1,1162),(188,17,101,0,5222,'description',0,1164,68,1162,1482467232,1,1163),(188,17,101,0,5223,'description',0,1147,69,1163,1482467232,1,1164),(188,17,101,0,5224,'description',0,1165,70,1164,1482467232,1,1147),(188,17,101,0,5225,'description',0,1166,71,1147,1482467232,1,1165),(188,17,101,0,5226,'description',0,1167,72,1165,1482467232,1,1166),(188,17,101,0,5227,'description',0,1168,73,1166,1482467232,1,1167),(188,17,101,0,5228,'description',0,1169,74,1167,1482467232,1,1168),(188,17,101,0,5229,'description',0,1170,75,1168,1482467232,1,1169),(188,17,101,0,5230,'description',0,1171,76,1169,1482467232,1,1170),(188,17,101,0,5231,'description',0,1172,77,1170,1482467232,1,1171),(188,17,101,0,5232,'description',0,1169,78,1171,1482467232,1,1172),(188,17,101,0,5233,'description',0,1113,79,1172,1482467232,1,1169),(188,17,101,0,5234,'description',0,1114,80,1169,1482467232,1,1113),(188,17,101,0,5235,'description',0,1173,81,1113,1482467232,1,1114),(188,17,101,0,5236,'description',0,1174,82,1114,1482467232,1,1173),(188,17,101,0,5237,'description',0,1175,83,1173,1482467232,1,1174),(188,17,101,0,5238,'description',0,1176,84,1174,1482467232,1,1175),(188,17,101,0,5239,'description',0,1177,85,1175,1482467232,1,1176),(188,17,101,0,5240,'description',0,1175,86,1176,1482467232,1,1177),(188,17,101,0,5241,'description',0,1178,87,1177,1482467232,1,1175),(188,17,101,0,5242,'description',0,1179,88,1175,1482467232,1,1178),(188,17,101,0,5243,'description',0,1180,89,1178,1482467232,1,1179),(188,17,101,0,5244,'description',0,1166,90,1179,1482467232,1,1180),(188,17,101,0,5245,'description',0,1113,91,1180,1482467232,1,1166),(188,17,101,0,5246,'description',0,1114,92,1166,1482467232,1,1113),(188,17,101,0,5247,'description',0,1113,93,1113,1482467232,1,1114),(188,17,101,0,5248,'description',0,1114,94,1114,1482467232,1,1113),(188,17,101,0,5249,'description',0,1115,95,1113,1482467232,1,1114),(188,17,101,0,5250,'description',0,1116,96,1114,1482467232,1,1115),(188,17,101,0,5251,'description',0,1117,97,1115,1482467232,1,1116),(188,17,101,0,5252,'description',0,1118,98,1116,1482467232,1,1117),(188,17,101,0,5253,'description',0,1119,99,1117,1482467232,1,1118),(188,17,101,0,5254,'description',0,1120,100,1118,1482467232,1,1119),(188,17,101,0,5255,'description',0,1121,101,1119,1482467232,1,1120),(188,17,101,0,5256,'description',0,1122,102,1120,1482467232,1,1121),(188,17,101,0,5257,'description',0,1123,103,1121,1482467232,1,1122),(188,17,101,0,5258,'description',0,1124,104,1122,1482467232,1,1123),(188,17,101,0,5259,'description',0,1113,105,1123,1482467232,1,1124),(188,17,101,0,5260,'description',0,1114,106,1124,1482467232,1,1113),(188,17,101,0,5261,'description',0,1115,107,1113,1482467232,1,1114),(188,17,101,0,5262,'description',0,1125,108,1114,1482467232,1,1115),(188,17,101,0,5263,'description',0,1126,109,1115,1482467232,1,1125),(188,17,101,0,5264,'description',0,1127,110,1125,1482467232,1,1126),(188,17,101,0,5265,'description',0,1128,111,1126,1482467232,1,1127),(188,17,101,0,5266,'description',0,1126,112,1127,1482467232,1,1128),(188,17,101,0,5267,'description',0,1129,113,1128,1482467232,1,1126),(188,17,101,0,5268,'description',0,1118,114,1126,1482467232,1,1129),(188,17,101,0,5269,'description',0,1119,115,1129,1482467232,1,1118),(188,17,101,0,5270,'description',0,1130,116,1118,1482467232,1,1119),(188,17,101,0,5271,'description',0,1131,117,1119,1482467232,1,1130),(188,17,101,0,5272,'description',0,1132,118,1130,1482467232,1,1131),(188,17,101,0,5273,'description',0,1116,119,1131,1482467232,1,1132),(188,17,101,0,5274,'description',0,1133,120,1132,1482467232,1,1116),(188,17,101,0,5275,'description',0,1134,121,1116,1482467232,1,1133),(188,17,101,0,5276,'description',0,1135,122,1133,1482467232,1,1134),(188,17,101,0,5277,'description',0,1136,123,1134,1482467232,1,1135),(188,17,101,0,5278,'description',0,1137,124,1135,1482467232,1,1136),(188,17,101,0,5279,'description',0,1138,125,1136,1482467232,1,1137),(188,17,101,0,5280,'description',0,1139,126,1137,1482467232,1,1138),(188,17,101,0,5281,'description',0,1123,127,1138,1482467232,1,1139),(188,17,101,0,5282,'description',0,1140,128,1139,1482467232,1,1123),(188,17,101,0,5283,'description',0,1141,129,1123,1482467232,1,1140),(188,17,101,0,5284,'description',0,1142,130,1140,1482467232,1,1141),(188,17,101,0,5285,'description',0,1143,131,1141,1482467232,1,1142),(188,17,101,0,5286,'description',0,1116,132,1142,1482467232,1,1143),(188,17,101,0,5287,'description',0,1144,133,1143,1482467232,1,1116),(188,17,101,0,5288,'description',0,1145,134,1116,1482467232,1,1144),(188,17,101,0,5289,'description',0,1146,135,1144,1482467232,1,1145),(188,17,101,0,5290,'description',0,1147,136,1145,1482467232,1,1146),(188,17,101,0,5291,'description',0,1148,137,1146,1482467232,1,1147),(188,17,101,0,5292,'description',0,1149,138,1147,1482467232,1,1148),(188,17,101,0,5293,'description',0,1150,139,1148,1482467232,1,1149),(188,17,101,0,5294,'description',0,1151,140,1149,1482467232,1,1150),(188,17,101,0,5295,'description',0,1152,141,1150,1482467232,1,1151),(188,17,101,0,5296,'description',0,1153,142,1151,1482467232,1,1152),(188,17,101,0,5297,'description',0,1154,143,1152,1482467232,1,1153),(188,17,101,0,5298,'description',0,1155,144,1153,1482467232,1,1154),(188,17,101,0,5299,'description',0,1125,145,1154,1482467232,1,1155),(188,17,101,0,5300,'description',0,1156,146,1155,1482467232,1,1125),(188,17,101,0,5301,'description',0,1125,147,1125,1482467232,1,1156),(188,17,101,0,5302,'description',0,1121,148,1156,1482467232,1,1125),(188,17,101,0,5303,'description',0,1157,149,1125,1482467232,1,1121),(188,17,101,0,5304,'description',0,1158,150,1121,1482467232,1,1157),(188,17,101,0,5305,'description',0,1159,151,1157,1482467232,1,1158),(188,17,101,0,5306,'description',0,1160,152,1158,1482467232,1,1159),(188,17,101,0,5307,'description',0,1161,153,1159,1482467232,1,1160),(188,17,101,0,5308,'description',0,1162,154,1160,1482467232,1,1161),(188,17,101,0,5309,'description',0,1163,155,1161,1482467232,1,1162),(188,17,101,0,5310,'description',0,1164,156,1162,1482467232,1,1163),(188,17,101,0,5311,'description',0,1147,157,1163,1482467232,1,1164),(188,17,101,0,5312,'description',0,1165,158,1164,1482467232,1,1147),(188,17,101,0,5313,'description',0,1166,159,1147,1482467232,1,1165),(188,17,101,0,5314,'description',0,1167,160,1165,1482467232,1,1166),(188,17,101,0,5315,'description',0,1168,161,1166,1482467232,1,1167),(188,17,101,0,5316,'description',0,1169,162,1167,1482467232,1,1168),(188,17,101,0,5317,'description',0,1170,163,1168,1482467232,1,1169),(188,17,101,0,5318,'description',0,1171,164,1169,1482467232,1,1170),(188,17,101,0,5319,'description',0,1172,165,1170,1482467232,1,1171),(188,17,101,0,5320,'description',0,1169,166,1171,1482467232,1,1172),(188,17,101,0,5321,'description',0,1113,167,1172,1482467232,1,1169),(188,17,101,0,5322,'description',0,1114,168,1169,1482467232,1,1113),(188,17,101,0,5323,'description',0,1173,169,1113,1482467232,1,1114),(188,17,101,0,5324,'description',0,1174,170,1114,1482467232,1,1173),(188,17,101,0,5325,'description',0,1175,171,1173,1482467232,1,1174),(188,17,101,0,5326,'description',0,1176,172,1174,1482467232,1,1175),(188,17,101,0,5327,'description',0,1177,173,1175,1482467232,1,1176),(188,17,101,0,5328,'description',0,1175,174,1176,1482467232,1,1177),(188,17,101,0,5329,'description',0,1178,175,1177,1482467232,1,1175),(188,17,101,0,5330,'description',0,1179,176,1175,1482467232,1,1178),(188,17,101,0,5331,'description',0,1180,177,1178,1482467232,1,1179),(188,17,101,0,5332,'description',0,1166,178,1179,1482467232,1,1180),(188,17,101,0,5333,'description',0,1113,179,1180,1482467232,1,1166),(188,17,101,0,5334,'description',0,1114,180,1166,1482467232,1,1113),(188,17,101,0,5335,'description',0,1113,181,1113,1482467232,1,1114),(188,17,101,0,5336,'description',0,1114,182,1114,1482467232,1,1113),(188,17,101,0,5337,'description',0,1115,183,1113,1482467232,1,1114),(188,17,101,0,5338,'description',0,1116,184,1114,1482467232,1,1115),(188,17,101,0,5339,'description',0,1117,185,1115,1482467232,1,1116),(188,17,101,0,5340,'description',0,1118,186,1116,1482467232,1,1117),(188,17,101,0,5341,'description',0,1119,187,1117,1482467232,1,1118),(188,17,101,0,5342,'description',0,1120,188,1118,1482467232,1,1119),(188,17,101,0,5343,'description',0,1121,189,1119,1482467232,1,1120),(188,17,101,0,5344,'description',0,1122,190,1120,1482467232,1,1121),(188,17,101,0,5345,'description',0,1123,191,1121,1482467232,1,1122),(188,17,101,0,5346,'description',0,1124,192,1122,1482467232,1,1123),(188,17,101,0,5347,'description',0,1113,193,1123,1482467232,1,1124),(188,17,101,0,5348,'description',0,1114,194,1124,1482467232,1,1113),(188,17,101,0,5349,'description',0,1115,195,1113,1482467232,1,1114),(188,17,101,0,5350,'description',0,1125,196,1114,1482467232,1,1115),(188,17,101,0,5351,'description',0,1126,197,1115,1482467232,1,1125),(188,17,101,0,5352,'description',0,1127,198,1125,1482467232,1,1126),(188,17,101,0,5353,'description',0,1128,199,1126,1482467232,1,1127),(188,17,101,0,5354,'description',0,1126,200,1127,1482467232,1,1128),(188,17,101,0,5355,'description',0,1129,201,1128,1482467232,1,1126),(188,17,101,0,5356,'description',0,1118,202,1126,1482467232,1,1129),(188,17,101,0,5357,'description',0,1119,203,1129,1482467232,1,1118),(188,17,101,0,5358,'description',0,1130,204,1118,1482467232,1,1119),(188,17,101,0,5359,'description',0,1131,205,1119,1482467232,1,1130),(188,17,101,0,5360,'description',0,1132,206,1130,1482467232,1,1131),(188,17,101,0,5361,'description',0,1116,207,1131,1482467232,1,1132),(188,17,101,0,5362,'description',0,1133,208,1132,1482467232,1,1116),(188,17,101,0,5363,'description',0,1134,209,1116,1482467232,1,1133),(188,17,101,0,5364,'description',0,1135,210,1133,1482467232,1,1134),(188,17,101,0,5365,'description',0,1136,211,1134,1482467232,1,1135),(188,17,101,0,5366,'description',0,1137,212,1135,1482467232,1,1136),(188,17,101,0,5367,'description',0,1138,213,1136,1482467232,1,1137),(188,17,101,0,5368,'description',0,1139,214,1137,1482467232,1,1138),(188,17,101,0,5369,'description',0,1123,215,1138,1482467232,1,1139),(188,17,101,0,5370,'description',0,1140,216,1139,1482467232,1,1123),(188,17,101,0,5371,'description',0,1141,217,1123,1482467232,1,1140),(188,17,101,0,5372,'description',0,1142,218,1140,1482467232,1,1141),(188,17,101,0,5373,'description',0,1143,219,1141,1482467232,1,1142),(188,17,101,0,5374,'description',0,1116,220,1142,1482467232,1,1143),(188,17,101,0,5375,'description',0,1144,221,1143,1482467232,1,1116),(188,17,101,0,5376,'description',0,1145,222,1116,1482467232,1,1144),(188,17,101,0,5377,'description',0,1146,223,1144,1482467232,1,1145),(188,17,101,0,5378,'description',0,1147,224,1145,1482467232,1,1146),(188,17,101,0,5379,'description',0,1148,225,1146,1482467232,1,1147),(188,17,101,0,5380,'description',0,1149,226,1147,1482467232,1,1148),(188,17,101,0,5381,'description',0,1150,227,1148,1482467232,1,1149),(188,17,101,0,5382,'description',0,1151,228,1149,1482467232,1,1150),(188,17,101,0,5383,'description',0,1152,229,1150,1482467232,1,1151),(188,17,101,0,5384,'description',0,1153,230,1151,1482467232,1,1152),(188,17,101,0,5385,'description',0,1154,231,1152,1482467232,1,1153),(188,17,101,0,5386,'description',0,1155,232,1153,1482467232,1,1154),(188,17,101,0,5387,'description',0,1125,233,1154,1482467232,1,1155),(188,17,101,0,5388,'description',0,1156,234,1155,1482467232,1,1125),(188,17,101,0,5389,'description',0,1125,235,1125,1482467232,1,1156),(188,17,101,0,5390,'description',0,1121,236,1156,1482467232,1,1125),(188,17,101,0,5391,'description',0,1157,237,1125,1482467232,1,1121),(188,17,101,0,5392,'description',0,1158,238,1121,1482467232,1,1157),(188,17,101,0,5393,'description',0,1159,239,1157,1482467232,1,1158),(188,17,101,0,5394,'description',0,1160,240,1158,1482467232,1,1159),(188,17,101,0,5395,'description',0,1161,241,1159,1482467232,1,1160),(188,17,101,0,5396,'description',0,1162,242,1160,1482467232,1,1161),(188,17,101,0,5397,'description',0,1163,243,1161,1482467232,1,1162),(188,17,101,0,5398,'description',0,1164,244,1162,1482467232,1,1163),(188,17,101,0,5399,'description',0,1147,245,1163,1482467232,1,1164),(188,17,101,0,5400,'description',0,1165,246,1164,1482467232,1,1147),(188,17,101,0,5401,'description',0,1166,247,1147,1482467232,1,1165),(188,17,101,0,5402,'description',0,1167,248,1165,1482467232,1,1166),(188,17,101,0,5403,'description',0,1168,249,1166,1482467232,1,1167),(188,17,101,0,5404,'description',0,1169,250,1167,1482467232,1,1168),(188,17,101,0,5405,'description',0,1170,251,1168,1482467232,1,1169),(188,17,101,0,5406,'description',0,1171,252,1169,1482467232,1,1170),(188,17,101,0,5407,'description',0,1172,253,1170,1482467232,1,1171),(188,17,101,0,5408,'description',0,1169,254,1171,1482467232,1,1172),(188,17,101,0,5409,'description',0,1113,255,1172,1482467232,1,1169),(188,17,101,0,5410,'description',0,1114,256,1169,1482467232,1,1113),(188,17,101,0,5411,'description',0,1173,257,1113,1482467232,1,1114),(188,17,101,0,5412,'description',0,1174,258,1114,1482467232,1,1173),(188,17,101,0,5413,'description',0,1175,259,1173,1482467232,1,1174),(188,17,101,0,5414,'description',0,1176,260,1174,1482467232,1,1175),(188,17,101,0,5415,'description',0,1177,261,1175,1482467232,1,1176),(188,17,101,0,5416,'description',0,1175,262,1176,1482467232,1,1177),(188,17,101,0,5417,'description',0,1178,263,1177,1482467232,1,1175),(188,17,101,0,5418,'description',0,1179,264,1175,1482467232,1,1178),(188,17,101,0,5419,'description',0,1180,265,1178,1482467232,1,1179),(188,17,101,0,5420,'description',0,1166,266,1179,1482467232,1,1180),(188,17,101,0,5421,'description',0,1113,267,1180,1482467232,1,1166),(188,17,101,0,5422,'description',0,1114,268,1166,1482467232,1,1113),(188,17,101,0,5423,'description',0,0,269,1113,1482467232,1,1114),(187,17,76,0,5424,'title',0,1182,0,0,1481073301,1,1181),(187,17,76,0,5425,'title',0,1181,1,1181,1481073301,1,1182),(188,17,76,0,5426,'description',0,1182,2,1182,1481073301,1,1181),(188,17,76,0,5427,'description',0,1181,3,1181,1481073301,1,1182),(187,17,76,0,5428,'title',0,1182,4,1182,1481073301,1,1181),(187,17,76,0,5429,'title',0,1181,5,1181,1481073301,1,1182),(188,17,76,0,5430,'description',0,1182,6,1182,1481073301,1,1181),(188,17,76,0,5431,'description',0,0,7,1181,1481073301,1,1182),(187,17,102,0,5432,'title',0,1183,0,0,1482509239,1,1182),(187,17,102,0,5433,'title',0,995,1,1182,1482509239,1,1183),(187,17,102,0,5434,'title',0,1147,2,1183,1482509239,1,995),(188,17,102,0,5435,'description',0,1115,3,995,1482509239,1,1147),(188,17,102,0,5436,'description',0,1116,4,1147,1482509239,1,1115),(188,17,102,0,5437,'description',0,1184,5,1115,1482509239,1,1116),(188,17,102,0,5438,'description',0,1185,6,1116,1482509239,1,1184),(188,17,102,0,5439,'description',0,1186,7,1184,1482509239,1,1185),(188,17,102,0,5440,'description',0,1187,8,1185,1482509239,1,1186),(188,17,102,0,5441,'description',0,1116,9,1186,1482509239,1,1187),(188,17,102,0,5442,'description',0,1188,10,1187,1482509239,1,1116),(188,17,102,0,5443,'description',0,1189,11,1116,1482509239,1,1188),(188,17,102,0,5444,'description',0,1119,12,1188,1482509239,1,1189),(188,17,102,0,5445,'description',0,1190,13,1189,1482509239,1,1119),(188,17,102,0,5446,'description',0,1191,14,1119,1482509239,1,1190),(188,17,102,0,5447,'description',0,1192,15,1190,1482509239,1,1191),(188,17,102,0,5448,'description',0,1193,16,1191,1482509239,1,1192),(188,17,102,0,5449,'description',0,1194,17,1192,1482509239,1,1193),(188,17,102,0,5450,'description',0,1116,18,1193,1482509239,1,1194),(188,17,102,0,5451,'description',0,1195,19,1194,1482509239,1,1116),(188,17,102,0,5452,'description',0,1196,20,1116,1482509239,1,1195),(188,17,102,0,5453,'description',0,1126,21,1195,1482509239,1,1196),(188,17,102,0,5454,'description',0,1197,22,1196,1482509239,1,1126),(188,17,102,0,5455,'description',0,1113,23,1126,1482509239,1,1197),(188,17,102,0,5456,'description',0,1114,24,1197,1482509239,1,1113),(188,17,102,0,5457,'description',0,1145,25,1113,1482509239,1,1114),(188,17,102,0,5458,'description',0,1198,26,1114,1482509239,1,1145),(188,17,102,0,5459,'description',0,1115,27,1145,1482509239,1,1198),(188,17,102,0,5460,'description',0,1187,28,1198,1482509239,1,1115),(188,17,102,0,5461,'description',0,1147,29,1115,1482509239,1,1187),(188,17,102,0,5462,'description',0,1199,30,1187,1482509239,1,1147),(188,17,102,0,5463,'description',0,1200,31,1147,1482509239,1,1199),(188,17,102,0,5464,'description',0,1201,32,1199,1482509239,1,1200),(188,17,102,0,5465,'description',0,1121,33,1200,1482509239,1,1201),(188,17,102,0,5466,'description',0,1202,34,1201,1482509239,1,1121),(188,17,102,0,5467,'description',0,1203,35,1121,1482509239,1,1202),(188,17,102,0,5468,'description',0,1169,36,1202,1482509239,1,1203),(188,17,102,0,5469,'description',0,1204,37,1203,1482509239,1,1169),(188,17,102,0,5470,'description',0,1205,38,1169,1482509239,1,1204),(188,17,102,0,5471,'description',0,1123,39,1204,1482509239,1,1205),(188,17,102,0,5472,'description',0,1206,40,1205,1482509239,1,1123),(188,17,102,0,5473,'description',0,1207,41,1123,1482509239,1,1206),(188,17,102,0,5474,'description',0,1208,42,1206,1482509239,1,1207),(188,17,102,0,5475,'description',0,1209,43,1207,1482509239,1,1208),(188,17,102,0,5476,'description',0,1210,44,1208,1482509239,1,1209),(188,17,102,0,5477,'description',0,1211,45,1209,1482509239,1,1210),(188,17,102,0,5478,'description',0,1176,46,1210,1482509239,1,1211),(188,17,102,0,5479,'description',0,1212,47,1211,1482509239,1,1176),(188,17,102,0,5480,'description',0,1123,48,1176,1482509239,1,1212),(188,17,102,0,5481,'description',0,1213,49,1212,1482509239,1,1123),(188,17,102,0,5482,'description',0,1198,50,1123,1482509239,1,1213),(188,17,102,0,5483,'description',0,1214,51,1213,1482509239,1,1198),(188,17,102,0,5484,'description',0,1113,52,1198,1482509239,1,1214),(188,17,102,0,5485,'description',0,1114,53,1214,1482509239,1,1113),(188,17,102,0,5486,'description',0,1132,54,1113,1482509239,1,1114),(188,17,102,0,5487,'description',0,1215,55,1114,1482509239,1,1132),(188,17,102,0,5488,'description',0,1216,56,1132,1482509239,1,1215),(188,17,102,0,5489,'description',0,1155,57,1215,1482509239,1,1216),(188,17,102,0,5490,'description',0,1121,58,1216,1482509239,1,1155),(188,17,102,0,5491,'description',0,1217,59,1155,1482509239,1,1121),(188,17,102,0,5492,'description',0,1218,60,1121,1482509239,1,1217),(188,17,102,0,5493,'description',0,1219,61,1217,1482509239,1,1218),(188,17,102,0,5494,'description',0,1207,62,1218,1482509239,1,1219),(188,17,102,0,5495,'description',0,1113,63,1219,1482509239,1,1207),(188,17,102,0,5496,'description',0,1114,64,1207,1482509239,1,1113),(188,17,102,0,5497,'description',0,1220,65,1113,1482509239,1,1114),(188,17,102,0,5498,'description',0,1211,66,1114,1482509239,1,1220),(188,17,102,0,5499,'description',0,1221,67,1220,1482509239,1,1211),(188,17,102,0,5500,'description',0,1222,68,1211,1482509239,1,1221),(188,17,102,0,5501,'description',0,1223,69,1221,1482509239,1,1222),(188,17,102,0,5502,'description',0,1140,70,1222,1482509239,1,1223),(188,17,102,0,5503,'description',0,1224,71,1223,1482509239,1,1140),(188,17,102,0,5504,'description',0,1225,72,1140,1482509239,1,1224),(188,17,102,0,5505,'description',0,1226,73,1224,1482509239,1,1225),(188,17,102,0,5506,'description',0,1214,74,1225,1482509239,1,1226),(188,17,102,0,5507,'description',0,1227,75,1226,1482509239,1,1214),(188,17,102,0,5508,'description',0,1147,76,1214,1482509239,1,1227),(188,17,102,0,5509,'description',0,1228,77,1227,1482509239,1,1147),(188,17,102,0,5510,'description',0,1229,78,1147,1482509239,1,1228),(188,17,102,0,5511,'description',0,1230,79,1228,1482509239,1,1229),(188,17,102,0,5512,'description',0,1113,80,1229,1482509239,1,1230),(188,17,102,0,5513,'description',0,1114,81,1230,1482509239,1,1113),(188,17,102,0,5514,'description',0,1231,82,1113,1482509239,1,1114),(188,17,102,0,5515,'description',0,1232,83,1114,1482509239,1,1231),(188,17,102,0,5516,'description',0,1233,84,1231,1482509239,1,1232),(188,17,102,0,5517,'description',0,1234,85,1232,1482509239,1,1233),(188,17,102,0,5518,'description',0,1235,86,1233,1482509239,1,1234),(188,17,102,0,5519,'description',0,1169,87,1234,1482509239,1,1235),(188,17,102,0,5520,'description',0,1236,88,1235,1482509239,1,1169),(188,17,102,0,5521,'description',0,1123,89,1169,1482509239,1,1236),(188,17,102,0,5522,'description',0,1230,90,1236,1482509239,1,1123),(188,17,102,0,5523,'description',0,1237,91,1123,1482509239,1,1230),(188,17,102,0,5524,'description',0,1238,92,1230,1482509239,1,1237),(188,17,102,0,5525,'description',0,1147,93,1237,1482509239,1,1238),(188,17,102,0,5526,'description',0,1115,94,1238,1482509239,1,1147),(188,17,102,0,5527,'description',0,1116,95,1147,1482509239,1,1115),(188,17,102,0,5528,'description',0,1184,96,1115,1482509239,1,1116),(188,17,102,0,5529,'description',0,1185,97,1116,1482509239,1,1184),(188,17,102,0,5530,'description',0,1186,98,1184,1482509239,1,1185),(188,17,102,0,5531,'description',0,1187,99,1185,1482509239,1,1186),(188,17,102,0,5532,'description',0,1116,100,1186,1482509239,1,1187),(188,17,102,0,5533,'description',0,1188,101,1187,1482509239,1,1116),(188,17,102,0,5534,'description',0,1189,102,1116,1482509239,1,1188),(188,17,102,0,5535,'description',0,1119,103,1188,1482509239,1,1189),(188,17,102,0,5536,'description',0,1190,104,1189,1482509239,1,1119),(188,17,102,0,5537,'description',0,1191,105,1119,1482509239,1,1190),(188,17,102,0,5538,'description',0,1192,106,1190,1482509239,1,1191),(188,17,102,0,5539,'description',0,1193,107,1191,1482509239,1,1192),(188,17,102,0,5540,'description',0,1194,108,1192,1482509239,1,1193),(188,17,102,0,5541,'description',0,1116,109,1193,1482509239,1,1194),(188,17,102,0,5542,'description',0,1195,110,1194,1482509239,1,1116),(188,17,102,0,5543,'description',0,1196,111,1116,1482509239,1,1195),(188,17,102,0,5544,'description',0,1126,112,1195,1482509239,1,1196),(188,17,102,0,5545,'description',0,1197,113,1196,1482509239,1,1126),(188,17,102,0,5546,'description',0,1113,114,1126,1482509239,1,1197),(188,17,102,0,5547,'description',0,1114,115,1197,1482509239,1,1113),(188,17,102,0,5548,'description',0,1145,116,1113,1482509239,1,1114),(188,17,102,0,5549,'description',0,1198,117,1114,1482509239,1,1145),(188,17,102,0,5550,'description',0,1115,118,1145,1482509239,1,1198),(188,17,102,0,5551,'description',0,1187,119,1198,1482509239,1,1115),(188,17,102,0,5552,'description',0,1147,120,1115,1482509239,1,1187),(188,17,102,0,5553,'description',0,1199,121,1187,1482509239,1,1147),(188,17,102,0,5554,'description',0,1200,122,1147,1482509239,1,1199),(188,17,102,0,5555,'description',0,1201,123,1199,1482509239,1,1200),(188,17,102,0,5556,'description',0,1121,124,1200,1482509239,1,1201),(188,17,102,0,5557,'description',0,1202,125,1201,1482509239,1,1121),(188,17,102,0,5558,'description',0,1203,126,1121,1482509239,1,1202),(188,17,102,0,5559,'description',0,1169,127,1202,1482509239,1,1203),(188,17,102,0,5560,'description',0,1204,128,1203,1482509239,1,1169),(188,17,102,0,5561,'description',0,1205,129,1169,1482509239,1,1204),(188,17,102,0,5562,'description',0,1123,130,1204,1482509239,1,1205),(188,17,102,0,5563,'description',0,1206,131,1205,1482509239,1,1123),(188,17,102,0,5564,'description',0,1207,132,1123,1482509239,1,1206),(188,17,102,0,5565,'description',0,1208,133,1206,1482509239,1,1207),(188,17,102,0,5566,'description',0,1209,134,1207,1482509239,1,1208),(188,17,102,0,5567,'description',0,1210,135,1208,1482509239,1,1209),(188,17,102,0,5568,'description',0,1211,136,1209,1482509239,1,1210),(188,17,102,0,5569,'description',0,1176,137,1210,1482509239,1,1211),(188,17,102,0,5570,'description',0,1212,138,1211,1482509239,1,1176),(188,17,102,0,5571,'description',0,1123,139,1176,1482509239,1,1212),(188,17,102,0,5572,'description',0,1213,140,1212,1482509239,1,1123),(188,17,102,0,5573,'description',0,1198,141,1123,1482509239,1,1213),(188,17,102,0,5574,'description',0,1214,142,1213,1482509239,1,1198),(188,17,102,0,5575,'description',0,1113,143,1198,1482509239,1,1214),(188,17,102,0,5576,'description',0,1114,144,1214,1482509239,1,1113),(188,17,102,0,5577,'description',0,1132,145,1113,1482509239,1,1114),(188,17,102,0,5578,'description',0,1215,146,1114,1482509239,1,1132),(188,17,102,0,5579,'description',0,1216,147,1132,1482509239,1,1215),(188,17,102,0,5580,'description',0,1155,148,1215,1482509239,1,1216),(188,17,102,0,5581,'description',0,1121,149,1216,1482509239,1,1155),(188,17,102,0,5582,'description',0,1217,150,1155,1482509239,1,1121),(188,17,102,0,5583,'description',0,1218,151,1121,1482509239,1,1217),(188,17,102,0,5584,'description',0,1219,152,1217,1482509239,1,1218),(188,17,102,0,5585,'description',0,1207,153,1218,1482509239,1,1219),(188,17,102,0,5586,'description',0,1113,154,1219,1482509239,1,1207),(188,17,102,0,5587,'description',0,1114,155,1207,1482509239,1,1113),(188,17,102,0,5588,'description',0,1220,156,1113,1482509239,1,1114),(188,17,102,0,5589,'description',0,1211,157,1114,1482509239,1,1220),(188,17,102,0,5590,'description',0,1221,158,1220,1482509239,1,1211),(188,17,102,0,5591,'description',0,1222,159,1211,1482509239,1,1221),(188,17,102,0,5592,'description',0,1223,160,1221,1482509239,1,1222),(188,17,102,0,5593,'description',0,1140,161,1222,1482509239,1,1223),(188,17,102,0,5594,'description',0,1224,162,1223,1482509239,1,1140),(188,17,102,0,5595,'description',0,1225,163,1140,1482509239,1,1224),(188,17,102,0,5596,'description',0,1226,164,1224,1482509239,1,1225),(188,17,102,0,5597,'description',0,1214,165,1225,1482509239,1,1226),(188,17,102,0,5598,'description',0,1227,166,1226,1482509239,1,1214),(188,17,102,0,5599,'description',0,1147,167,1214,1482509239,1,1227),(188,17,102,0,5600,'description',0,1228,168,1227,1482509239,1,1147),(188,17,102,0,5601,'description',0,1229,169,1147,1482509239,1,1228),(188,17,102,0,5602,'description',0,1230,170,1228,1482509239,1,1229),(188,17,102,0,5603,'description',0,1113,171,1229,1482509239,1,1230),(188,17,102,0,5604,'description',0,1114,172,1230,1482509239,1,1113),(188,17,102,0,5605,'description',0,1231,173,1113,1482509239,1,1114),(188,17,102,0,5606,'description',0,1232,174,1114,1482509239,1,1231),(188,17,102,0,5607,'description',0,1233,175,1231,1482509239,1,1232),(188,17,102,0,5608,'description',0,1234,176,1232,1482509239,1,1233),(188,17,102,0,5609,'description',0,1235,177,1233,1482509239,1,1234),(188,17,102,0,5610,'description',0,1169,178,1234,1482509239,1,1235),(188,17,102,0,5611,'description',0,1236,179,1235,1482509239,1,1169),(188,17,102,0,5612,'description',0,1123,180,1169,1482509239,1,1236),(188,17,102,0,5613,'description',0,1230,181,1236,1482509239,1,1123),(188,17,102,0,5614,'description',0,1237,182,1123,1482509239,1,1230),(188,17,102,0,5615,'description',0,1238,183,1230,1482509239,1,1237),(188,17,102,0,5616,'description',0,1147,184,1237,1482509239,1,1238),(188,17,102,0,5617,'description',0,1115,185,1238,1482509239,1,1147),(188,17,102,0,5618,'description',0,1116,186,1147,1482509239,1,1115),(188,17,102,0,5619,'description',0,1184,187,1115,1482509239,1,1116),(188,17,102,0,5620,'description',0,1185,188,1116,1482509239,1,1184),(188,17,102,0,5621,'description',0,1186,189,1184,1482509239,1,1185),(188,17,102,0,5622,'description',0,1187,190,1185,1482509239,1,1186),(188,17,102,0,5623,'description',0,1116,191,1186,1482509239,1,1187),(188,17,102,0,5624,'description',0,1188,192,1187,1482509239,1,1116),(188,17,102,0,5625,'description',0,1189,193,1116,1482509239,1,1188),(188,17,102,0,5626,'description',0,1119,194,1188,1482509239,1,1189),(188,17,102,0,5627,'description',0,1190,195,1189,1482509239,1,1119),(188,17,102,0,5628,'description',0,1191,196,1119,1482509239,1,1190),(188,17,102,0,5629,'description',0,1192,197,1190,1482509239,1,1191),(188,17,102,0,5630,'description',0,1193,198,1191,1482509239,1,1192),(188,17,102,0,5631,'description',0,1194,199,1192,1482509239,1,1193),(188,17,102,0,5632,'description',0,1116,200,1193,1482509239,1,1194),(188,17,102,0,5633,'description',0,1195,201,1194,1482509239,1,1116),(188,17,102,0,5634,'description',0,1196,202,1116,1482509239,1,1195),(188,17,102,0,5635,'description',0,1126,203,1195,1482509239,1,1196),(188,17,102,0,5636,'description',0,1197,204,1196,1482509239,1,1126),(188,17,102,0,5637,'description',0,1113,205,1126,1482509239,1,1197),(188,17,102,0,5638,'description',0,1114,206,1197,1482509239,1,1113),(188,17,102,0,5639,'description',0,1145,207,1113,1482509239,1,1114),(188,17,102,0,5640,'description',0,1198,208,1114,1482509239,1,1145),(188,17,102,0,5641,'description',0,1115,209,1145,1482509239,1,1198),(188,17,102,0,5642,'description',0,1187,210,1198,1482509239,1,1115),(188,17,102,0,5643,'description',0,1147,211,1115,1482509239,1,1187),(188,17,102,0,5644,'description',0,1199,212,1187,1482509239,1,1147),(188,17,102,0,5645,'description',0,1200,213,1147,1482509239,1,1199),(188,17,102,0,5646,'description',0,1201,214,1199,1482509239,1,1200),(188,17,102,0,5647,'description',0,1121,215,1200,1482509239,1,1201),(188,17,102,0,5648,'description',0,1202,216,1201,1482509239,1,1121),(188,17,102,0,5649,'description',0,1203,217,1121,1482509239,1,1202),(188,17,102,0,5650,'description',0,1169,218,1202,1482509239,1,1203),(188,17,102,0,5651,'description',0,1204,219,1203,1482509239,1,1169),(188,17,102,0,5652,'description',0,1205,220,1169,1482509239,1,1204),(188,17,102,0,5653,'description',0,1123,221,1204,1482509239,1,1205),(188,17,102,0,5654,'description',0,1206,222,1205,1482509239,1,1123),(188,17,102,0,5655,'description',0,1207,223,1123,1482509239,1,1206),(188,17,102,0,5656,'description',0,1208,224,1206,1482509239,1,1207),(188,17,102,0,5657,'description',0,1209,225,1207,1482509239,1,1208),(188,17,102,0,5658,'description',0,1210,226,1208,1482509239,1,1209),(188,17,102,0,5659,'description',0,1211,227,1209,1482509239,1,1210),(188,17,102,0,5660,'description',0,1176,228,1210,1482509239,1,1211),(188,17,102,0,5661,'description',0,1212,229,1211,1482509239,1,1176),(188,17,102,0,5662,'description',0,1123,230,1176,1482509239,1,1212),(188,17,102,0,5663,'description',0,1213,231,1212,1482509239,1,1123),(188,17,102,0,5664,'description',0,1198,232,1123,1482509239,1,1213),(188,17,102,0,5665,'description',0,1214,233,1213,1482509239,1,1198),(188,17,102,0,5666,'description',0,1113,234,1198,1482509239,1,1214),(188,17,102,0,5667,'description',0,1114,235,1214,1482509239,1,1113),(188,17,102,0,5668,'description',0,1132,236,1113,1482509239,1,1114),(188,17,102,0,5669,'description',0,1215,237,1114,1482509239,1,1132),(188,17,102,0,5670,'description',0,1216,238,1132,1482509239,1,1215),(188,17,102,0,5671,'description',0,1155,239,1215,1482509239,1,1216),(188,17,102,0,5672,'description',0,1121,240,1216,1482509239,1,1155),(188,17,102,0,5673,'description',0,1217,241,1155,1482509239,1,1121),(188,17,102,0,5674,'description',0,1218,242,1121,1482509239,1,1217),(188,17,102,0,5675,'description',0,1219,243,1217,1482509239,1,1218),(188,17,102,0,5676,'description',0,1207,244,1218,1482509239,1,1219),(188,17,102,0,5677,'description',0,1113,245,1219,1482509239,1,1207),(188,17,102,0,5678,'description',0,1114,246,1207,1482509239,1,1113),(188,17,102,0,5679,'description',0,1220,247,1113,1482509239,1,1114),(188,17,102,0,5680,'description',0,1211,248,1114,1482509239,1,1220),(188,17,102,0,5681,'description',0,1221,249,1220,1482509239,1,1211),(188,17,102,0,5682,'description',0,1222,250,1211,1482509239,1,1221),(188,17,102,0,5683,'description',0,1223,251,1221,1482509239,1,1222),(188,17,102,0,5684,'description',0,1140,252,1222,1482509239,1,1223),(188,17,102,0,5685,'description',0,1224,253,1223,1482509239,1,1140),(188,17,102,0,5686,'description',0,1225,254,1140,1482509239,1,1224),(188,17,102,0,5687,'description',0,1226,255,1224,1482509239,1,1225),(188,17,102,0,5688,'description',0,1214,256,1225,1482509239,1,1226),(188,17,102,0,5689,'description',0,1227,257,1226,1482509239,1,1214),(188,17,102,0,5690,'description',0,1147,258,1214,1482509239,1,1227),(188,17,102,0,5691,'description',0,1228,259,1227,1482509239,1,1147),(188,17,102,0,5692,'description',0,1229,260,1147,1482509239,1,1228),(188,17,102,0,5693,'description',0,1230,261,1228,1482509239,1,1229),(188,17,102,0,5694,'description',0,1113,262,1229,1482509239,1,1230),(188,17,102,0,5695,'description',0,1114,263,1230,1482509239,1,1113),(188,17,102,0,5696,'description',0,1231,264,1113,1482509239,1,1114),(188,17,102,0,5697,'description',0,1232,265,1114,1482509239,1,1231),(188,17,102,0,5698,'description',0,1233,266,1231,1482509239,1,1232),(188,17,102,0,5699,'description',0,1234,267,1232,1482509239,1,1233),(188,17,102,0,5700,'description',0,1235,268,1233,1482509239,1,1234),(188,17,102,0,5701,'description',0,1169,269,1234,1482509239,1,1235),(188,17,102,0,5702,'description',0,1236,270,1235,1482509239,1,1169),(188,17,102,0,5703,'description',0,1123,271,1169,1482509239,1,1236),(188,17,102,0,5704,'description',0,1230,272,1236,1482509239,1,1123),(188,17,102,0,5705,'description',0,1237,273,1123,1482509239,1,1230),(188,17,102,0,5706,'description',0,1238,274,1230,1482509239,1,1237),(188,17,102,0,5707,'description',0,1147,275,1237,1482509239,1,1238),(188,17,102,0,5708,'description',0,1115,276,1238,1482509239,1,1147),(188,17,102,0,5709,'description',0,1116,277,1147,1482509239,1,1115),(188,17,102,0,5710,'description',0,1184,278,1115,1482509239,1,1116),(188,17,102,0,5711,'description',0,1185,279,1116,1482509239,1,1184),(188,17,102,0,5712,'description',0,1186,280,1184,1482509239,1,1185),(188,17,102,0,5713,'description',0,1187,281,1185,1482509239,1,1186),(188,17,102,0,5714,'description',0,1116,282,1186,1482509239,1,1187),(188,17,102,0,5715,'description',0,1188,283,1187,1482509239,1,1116),(188,17,102,0,5716,'description',0,1189,284,1116,1482509239,1,1188),(188,17,102,0,5717,'description',0,1119,285,1188,1482509239,1,1189),(188,17,102,0,5718,'description',0,1190,286,1189,1482509239,1,1119),(188,17,102,0,5719,'description',0,1191,287,1119,1482509239,1,1190),(188,17,102,0,5720,'description',0,1192,288,1190,1482509239,1,1191),(188,17,102,0,5721,'description',0,1193,289,1191,1482509239,1,1192),(188,17,102,0,5722,'description',0,1194,290,1192,1482509239,1,1193),(188,17,102,0,5723,'description',0,1116,291,1193,1482509239,1,1194),(188,17,102,0,5724,'description',0,1195,292,1194,1482509239,1,1116),(188,17,102,0,5725,'description',0,1196,293,1116,1482509239,1,1195),(188,17,102,0,5726,'description',0,1126,294,1195,1482509239,1,1196),(188,17,102,0,5727,'description',0,1197,295,1196,1482509239,1,1126),(188,17,102,0,5728,'description',0,1113,296,1126,1482509239,1,1197),(188,17,102,0,5729,'description',0,1114,297,1197,1482509239,1,1113),(188,17,102,0,5730,'description',0,1145,298,1113,1482509239,1,1114),(188,17,102,0,5731,'description',0,1198,299,1114,1482509239,1,1145),(188,17,102,0,5732,'description',0,1115,300,1145,1482509239,1,1198),(188,17,102,0,5733,'description',0,1187,301,1198,1482509239,1,1115),(188,17,102,0,5734,'description',0,1147,302,1115,1482509239,1,1187),(188,17,102,0,5735,'description',0,1199,303,1187,1482509239,1,1147),(188,17,102,0,5736,'description',0,1200,304,1147,1482509239,1,1199),(188,17,102,0,5737,'description',0,1201,305,1199,1482509239,1,1200),(188,17,102,0,5738,'description',0,1121,306,1200,1482509239,1,1201),(188,17,102,0,5739,'description',0,1202,307,1201,1482509239,1,1121),(188,17,102,0,5740,'description',0,1203,308,1121,1482509239,1,1202),(188,17,102,0,5741,'description',0,1169,309,1202,1482509239,1,1203),(188,17,102,0,5742,'description',0,1204,310,1203,1482509239,1,1169),(188,17,102,0,5743,'description',0,1205,311,1169,1482509239,1,1204),(188,17,102,0,5744,'description',0,1123,312,1204,1482509239,1,1205),(188,17,102,0,5745,'description',0,1206,313,1205,1482509239,1,1123),(188,17,102,0,5746,'description',0,1207,314,1123,1482509239,1,1206),(188,17,102,0,5747,'description',0,1208,315,1206,1482509239,1,1207),(188,17,102,0,5748,'description',0,1209,316,1207,1482509239,1,1208),(188,17,102,0,5749,'description',0,1210,317,1208,1482509239,1,1209),(188,17,102,0,5750,'description',0,1211,318,1209,1482509239,1,1210),(188,17,102,0,5751,'description',0,1176,319,1210,1482509239,1,1211),(188,17,102,0,5752,'description',0,1212,320,1211,1482509239,1,1176),(188,17,102,0,5753,'description',0,1123,321,1176,1482509239,1,1212),(188,17,102,0,5754,'description',0,1213,322,1212,1482509239,1,1123),(188,17,102,0,5755,'description',0,1198,323,1123,1482509239,1,1213),(188,17,102,0,5756,'description',0,1214,324,1213,1482509239,1,1198),(188,17,102,0,5757,'description',0,1113,325,1198,1482509239,1,1214),(188,17,102,0,5758,'description',0,1114,326,1214,1482509239,1,1113),(188,17,102,0,5759,'description',0,1132,327,1113,1482509239,1,1114),(188,17,102,0,5760,'description',0,1215,328,1114,1482509239,1,1132),(188,17,102,0,5761,'description',0,1216,329,1132,1482509239,1,1215),(188,17,102,0,5762,'description',0,1155,330,1215,1482509239,1,1216),(188,17,102,0,5763,'description',0,1121,331,1216,1482509239,1,1155),(188,17,102,0,5764,'description',0,1217,332,1155,1482509239,1,1121),(188,17,102,0,5765,'description',0,1218,333,1121,1482509239,1,1217),(188,17,102,0,5766,'description',0,1219,334,1217,1482509239,1,1218),(188,17,102,0,5767,'description',0,1207,335,1218,1482509239,1,1219),(188,17,102,0,5768,'description',0,1113,336,1219,1482509239,1,1207),(188,17,102,0,5769,'description',0,1114,337,1207,1482509239,1,1113),(188,17,102,0,5770,'description',0,1220,338,1113,1482509239,1,1114),(188,17,102,0,5771,'description',0,1211,339,1114,1482509239,1,1220),(188,17,102,0,5772,'description',0,1221,340,1220,1482509239,1,1211),(188,17,102,0,5773,'description',0,1222,341,1211,1482509239,1,1221),(188,17,102,0,5774,'description',0,1223,342,1221,1482509239,1,1222),(188,17,102,0,5775,'description',0,1140,343,1222,1482509239,1,1223),(188,17,102,0,5776,'description',0,1224,344,1223,1482509239,1,1140),(188,17,102,0,5777,'description',0,1225,345,1140,1482509239,1,1224),(188,17,102,0,5778,'description',0,1226,346,1224,1482509239,1,1225),(188,17,102,0,5779,'description',0,1214,347,1225,1482509239,1,1226),(188,17,102,0,5780,'description',0,1227,348,1226,1482509239,1,1214),(188,17,102,0,5781,'description',0,1147,349,1214,1482509239,1,1227),(188,17,102,0,5782,'description',0,1228,350,1227,1482509239,1,1147),(188,17,102,0,5783,'description',0,1229,351,1147,1482509239,1,1228),(188,17,102,0,5784,'description',0,1230,352,1228,1482509239,1,1229),(188,17,102,0,5785,'description',0,1113,353,1229,1482509239,1,1230),(188,17,102,0,5786,'description',0,1114,354,1230,1482509239,1,1113),(188,17,102,0,5787,'description',0,1231,355,1113,1482509239,1,1114),(188,17,102,0,5788,'description',0,1232,356,1114,1482509239,1,1231),(188,17,102,0,5789,'description',0,1233,357,1231,1482509239,1,1232),(188,17,102,0,5790,'description',0,1234,358,1232,1482509239,1,1233),(188,17,102,0,5791,'description',0,1235,359,1233,1482509239,1,1234),(188,17,102,0,5792,'description',0,1169,360,1234,1482509239,1,1235),(188,17,102,0,5793,'description',0,1236,361,1235,1482509239,1,1169),(188,17,102,0,5794,'description',0,1123,362,1169,1482509239,1,1236),(188,17,102,0,5795,'description',0,1230,363,1236,1482509239,1,1123),(188,17,102,0,5796,'description',0,1237,364,1123,1482509239,1,1230),(188,17,102,0,5797,'description',0,1238,365,1230,1482509239,1,1237),(188,17,102,0,5798,'description',0,1147,366,1237,1482509239,1,1238),(188,17,102,0,5799,'description',0,1115,367,1238,1482509239,1,1147),(188,17,102,0,5800,'description',0,1116,368,1147,1482509239,1,1115),(188,17,102,0,5801,'description',0,1184,369,1115,1482509239,1,1116),(188,17,102,0,5802,'description',0,1185,370,1116,1482509239,1,1184),(188,17,102,0,5803,'description',0,1186,371,1184,1482509239,1,1185),(188,17,102,0,5804,'description',0,1187,372,1185,1482509239,1,1186),(188,17,102,0,5805,'description',0,1116,373,1186,1482509239,1,1187),(188,17,102,0,5806,'description',0,1188,374,1187,1482509239,1,1116),(188,17,102,0,5807,'description',0,1189,375,1116,1482509239,1,1188),(188,17,102,0,5808,'description',0,1119,376,1188,1482509239,1,1189),(188,17,102,0,5809,'description',0,1190,377,1189,1482509239,1,1119),(188,17,102,0,5810,'description',0,1191,378,1119,1482509239,1,1190),(188,17,102,0,5811,'description',0,1192,379,1190,1482509239,1,1191),(188,17,102,0,5812,'description',0,1193,380,1191,1482509239,1,1192),(188,17,102,0,5813,'description',0,1194,381,1192,1482509239,1,1193),(188,17,102,0,5814,'description',0,1116,382,1193,1482509239,1,1194),(188,17,102,0,5815,'description',0,1195,383,1194,1482509239,1,1116),(188,17,102,0,5816,'description',0,1196,384,1116,1482509239,1,1195),(188,17,102,0,5817,'description',0,1126,385,1195,1482509239,1,1196),(188,17,102,0,5818,'description',0,1197,386,1196,1482509239,1,1126),(188,17,102,0,5819,'description',0,1113,387,1126,1482509239,1,1197),(188,17,102,0,5820,'description',0,1114,388,1197,1482509239,1,1113),(188,17,102,0,5821,'description',0,1145,389,1113,1482509239,1,1114),(188,17,102,0,5822,'description',0,1198,390,1114,1482509239,1,1145),(188,17,102,0,5823,'description',0,1115,391,1145,1482509239,1,1198),(188,17,102,0,5824,'description',0,1187,392,1198,1482509239,1,1115),(188,17,102,0,5825,'description',0,1147,393,1115,1482509239,1,1187),(188,17,102,0,5826,'description',0,1199,394,1187,1482509239,1,1147),(188,17,102,0,5827,'description',0,1200,395,1147,1482509239,1,1199),(188,17,102,0,5828,'description',0,1201,396,1199,1482509239,1,1200),(188,17,102,0,5829,'description',0,1121,397,1200,1482509239,1,1201),(188,17,102,0,5830,'description',0,1202,398,1201,1482509239,1,1121),(188,17,102,0,5831,'description',0,1203,399,1121,1482509239,1,1202),(188,17,102,0,5832,'description',0,1169,400,1202,1482509239,1,1203),(188,17,102,0,5833,'description',0,1204,401,1203,1482509239,1,1169),(188,17,102,0,5834,'description',0,1205,402,1169,1482509239,1,1204),(188,17,102,0,5835,'description',0,1123,403,1204,1482509239,1,1205),(188,17,102,0,5836,'description',0,1206,404,1205,1482509239,1,1123),(188,17,102,0,5837,'description',0,1207,405,1123,1482509239,1,1206),(188,17,102,0,5838,'description',0,1208,406,1206,1482509239,1,1207),(188,17,102,0,5839,'description',0,1209,407,1207,1482509239,1,1208),(188,17,102,0,5840,'description',0,1210,408,1208,1482509239,1,1209),(188,17,102,0,5841,'description',0,1211,409,1209,1482509239,1,1210),(188,17,102,0,5842,'description',0,1176,410,1210,1482509239,1,1211),(188,17,102,0,5843,'description',0,1212,411,1211,1482509239,1,1176),(188,17,102,0,5844,'description',0,1123,412,1176,1482509239,1,1212),(188,17,102,0,5845,'description',0,1213,413,1212,1482509239,1,1123),(188,17,102,0,5846,'description',0,1198,414,1123,1482509239,1,1213),(188,17,102,0,5847,'description',0,1214,415,1213,1482509239,1,1198),(188,17,102,0,5848,'description',0,1113,416,1198,1482509239,1,1214),(188,17,102,0,5849,'description',0,1114,417,1214,1482509239,1,1113),(188,17,102,0,5850,'description',0,1132,418,1113,1482509239,1,1114),(188,17,102,0,5851,'description',0,1215,419,1114,1482509239,1,1132),(188,17,102,0,5852,'description',0,1216,420,1132,1482509239,1,1215),(188,17,102,0,5853,'description',0,1155,421,1215,1482509239,1,1216),(188,17,102,0,5854,'description',0,1121,422,1216,1482509239,1,1155),(188,17,102,0,5855,'description',0,1217,423,1155,1482509239,1,1121),(188,17,102,0,5856,'description',0,1218,424,1121,1482509239,1,1217),(188,17,102,0,5857,'description',0,1219,425,1217,1482509239,1,1218),(188,17,102,0,5858,'description',0,1207,426,1218,1482509239,1,1219),(188,17,102,0,5859,'description',0,1113,427,1219,1482509239,1,1207),(188,17,102,0,5860,'description',0,1114,428,1207,1482509239,1,1113),(188,17,102,0,5861,'description',0,1220,429,1113,1482509239,1,1114),(188,17,102,0,5862,'description',0,1211,430,1114,1482509239,1,1220),(188,17,102,0,5863,'description',0,1221,431,1220,1482509239,1,1211),(188,17,102,0,5864,'description',0,1222,432,1211,1482509239,1,1221),(188,17,102,0,5865,'description',0,1223,433,1221,1482509239,1,1222),(188,17,102,0,5866,'description',0,1140,434,1222,1482509239,1,1223),(188,17,102,0,5867,'description',0,1224,435,1223,1482509239,1,1140),(188,17,102,0,5868,'description',0,1225,436,1140,1482509239,1,1224),(188,17,102,0,5869,'description',0,1226,437,1224,1482509239,1,1225),(188,17,102,0,5870,'description',0,1214,438,1225,1482509239,1,1226),(188,17,102,0,5871,'description',0,1227,439,1226,1482509239,1,1214),(188,17,102,0,5872,'description',0,1147,440,1214,1482509239,1,1227),(188,17,102,0,5873,'description',0,1228,441,1227,1482509239,1,1147),(188,17,102,0,5874,'description',0,1229,442,1147,1482509239,1,1228),(188,17,102,0,5875,'description',0,1230,443,1228,1482509239,1,1229),(188,17,102,0,5876,'description',0,1113,444,1229,1482509239,1,1230),(188,17,102,0,5877,'description',0,1114,445,1230,1482509239,1,1113),(188,17,102,0,5878,'description',0,1231,446,1113,1482509239,1,1114),(188,17,102,0,5879,'description',0,1232,447,1114,1482509239,1,1231),(188,17,102,0,5880,'description',0,1233,448,1231,1482509239,1,1232),(188,17,102,0,5881,'description',0,1234,449,1232,1482509239,1,1233),(188,17,102,0,5882,'description',0,1235,450,1233,1482509239,1,1234),(188,17,102,0,5883,'description',0,1169,451,1234,1482509239,1,1235),(188,17,102,0,5884,'description',0,1236,452,1235,1482509239,1,1169),(188,17,102,0,5885,'description',0,1123,453,1169,1482509239,1,1236),(188,17,102,0,5886,'description',0,1230,454,1236,1482509239,1,1123),(188,17,102,0,5887,'description',0,1237,455,1123,1482509239,1,1230),(188,17,102,0,5888,'description',0,1238,456,1230,1482509239,1,1237),(188,17,102,0,5889,'description',0,1147,457,1237,1482509239,1,1238),(188,17,102,0,5890,'description',0,1115,458,1238,1482509239,1,1147),(188,17,102,0,5891,'description',0,1116,459,1147,1482509239,1,1115),(188,17,102,0,5892,'description',0,1184,460,1115,1482509239,1,1116),(188,17,102,0,5893,'description',0,1185,461,1116,1482509239,1,1184),(188,17,102,0,5894,'description',0,1186,462,1184,1482509239,1,1185),(188,17,102,0,5895,'description',0,1187,463,1185,1482509239,1,1186),(188,17,102,0,5896,'description',0,1116,464,1186,1482509239,1,1187),(188,17,102,0,5897,'description',0,1188,465,1187,1482509239,1,1116),(188,17,102,0,5898,'description',0,1189,466,1116,1482509239,1,1188),(188,17,102,0,5899,'description',0,1119,467,1188,1482509239,1,1189),(188,17,102,0,5900,'description',0,1190,468,1189,1482509239,1,1119),(188,17,102,0,5901,'description',0,1191,469,1119,1482509239,1,1190),(188,17,102,0,5902,'description',0,1192,470,1190,1482509239,1,1191),(188,17,102,0,5903,'description',0,1193,471,1191,1482509239,1,1192),(188,17,102,0,5904,'description',0,1194,472,1192,1482509239,1,1193),(188,17,102,0,5905,'description',0,1116,473,1193,1482509239,1,1194),(188,17,102,0,5906,'description',0,1195,474,1194,1482509239,1,1116),(188,17,102,0,5907,'description',0,1196,475,1116,1482509239,1,1195),(188,17,102,0,5908,'description',0,1126,476,1195,1482509239,1,1196),(188,17,102,0,5909,'description',0,1197,477,1196,1482509239,1,1126),(188,17,102,0,5910,'description',0,1113,478,1126,1482509239,1,1197),(188,17,102,0,5911,'description',0,1114,479,1197,1482509239,1,1113),(188,17,102,0,5912,'description',0,1145,480,1113,1482509239,1,1114),(188,17,102,0,5913,'description',0,1198,481,1114,1482509239,1,1145),(188,17,102,0,5914,'description',0,1115,482,1145,1482509239,1,1198),(188,17,102,0,5915,'description',0,1187,483,1198,1482509239,1,1115),(188,17,102,0,5916,'description',0,1147,484,1115,1482509239,1,1187),(188,17,102,0,5917,'description',0,1199,485,1187,1482509239,1,1147),(188,17,102,0,5918,'description',0,1200,486,1147,1482509239,1,1199),(188,17,102,0,5919,'description',0,1201,487,1199,1482509239,1,1200),(188,17,102,0,5920,'description',0,1121,488,1200,1482509239,1,1201),(188,17,102,0,5921,'description',0,1202,489,1201,1482509239,1,1121),(188,17,102,0,5922,'description',0,1203,490,1121,1482509239,1,1202),(188,17,102,0,5923,'description',0,1169,491,1202,1482509239,1,1203),(188,17,102,0,5924,'description',0,1204,492,1203,1482509239,1,1169),(188,17,102,0,5925,'description',0,1205,493,1169,1482509239,1,1204),(188,17,102,0,5926,'description',0,1123,494,1204,1482509239,1,1205),(188,17,102,0,5927,'description',0,1206,495,1205,1482509239,1,1123),(188,17,102,0,5928,'description',0,1207,496,1123,1482509239,1,1206),(188,17,102,0,5929,'description',0,1208,497,1206,1482509239,1,1207),(188,17,102,0,5930,'description',0,1209,498,1207,1482509239,1,1208),(188,17,102,0,5931,'description',0,1210,499,1208,1482509239,1,1209),(188,17,102,0,5932,'description',0,1211,500,1209,1482509239,1,1210),(188,17,102,0,5933,'description',0,1176,501,1210,1482509239,1,1211),(188,17,102,0,5934,'description',0,1212,502,1211,1482509239,1,1176),(188,17,102,0,5935,'description',0,1123,503,1176,1482509239,1,1212),(188,17,102,0,5936,'description',0,1213,504,1212,1482509239,1,1123),(188,17,102,0,5937,'description',0,1198,505,1123,1482509239,1,1213),(188,17,102,0,5938,'description',0,1214,506,1213,1482509239,1,1198),(188,17,102,0,5939,'description',0,1113,507,1198,1482509239,1,1214),(188,17,102,0,5940,'description',0,1114,508,1214,1482509239,1,1113),(188,17,102,0,5941,'description',0,1132,509,1113,1482509239,1,1114),(188,17,102,0,5942,'description',0,1215,510,1114,1482509239,1,1132),(188,17,102,0,5943,'description',0,1216,511,1132,1482509239,1,1215),(188,17,102,0,5944,'description',0,1155,512,1215,1482509239,1,1216),(188,17,102,0,5945,'description',0,1121,513,1216,1482509239,1,1155),(188,17,102,0,5946,'description',0,1217,514,1155,1482509239,1,1121),(188,17,102,0,5947,'description',0,1218,515,1121,1482509239,1,1217),(188,17,102,0,5948,'description',0,1219,516,1217,1482509239,1,1218),(188,17,102,0,5949,'description',0,1207,517,1218,1482509239,1,1219),(188,17,102,0,5950,'description',0,1113,518,1219,1482509239,1,1207),(188,17,102,0,5951,'description',0,1114,519,1207,1482509239,1,1113),(188,17,102,0,5952,'description',0,1220,520,1113,1482509239,1,1114),(188,17,102,0,5953,'description',0,1211,521,1114,1482509239,1,1220),(188,17,102,0,5954,'description',0,1221,522,1220,1482509239,1,1211),(188,17,102,0,5955,'description',0,1222,523,1211,1482509239,1,1221),(188,17,102,0,5956,'description',0,1223,524,1221,1482509239,1,1222),(188,17,102,0,5957,'description',0,1140,525,1222,1482509239,1,1223),(188,17,102,0,5958,'description',0,1224,526,1223,1482509239,1,1140),(188,17,102,0,5959,'description',0,1225,527,1140,1482509239,1,1224),(188,17,102,0,5960,'description',0,1226,528,1224,1482509239,1,1225),(188,17,102,0,5961,'description',0,1214,529,1225,1482509239,1,1226),(188,17,102,0,5962,'description',0,1227,530,1226,1482509239,1,1214),(188,17,102,0,5963,'description',0,1147,531,1214,1482509239,1,1227),(188,17,102,0,5964,'description',0,1228,532,1227,1482509239,1,1147),(188,17,102,0,5965,'description',0,1229,533,1147,1482509239,1,1228),(188,17,102,0,5966,'description',0,1230,534,1228,1482509239,1,1229),(188,17,102,0,5967,'description',0,1113,535,1229,1482509239,1,1230),(188,17,102,0,5968,'description',0,1114,536,1230,1482509239,1,1113),(188,17,102,0,5969,'description',0,1231,537,1113,1482509239,1,1114),(188,17,102,0,5970,'description',0,1232,538,1114,1482509239,1,1231),(188,17,102,0,5971,'description',0,1233,539,1231,1482509239,1,1232),(188,17,102,0,5972,'description',0,1234,540,1232,1482509239,1,1233),(188,17,102,0,5973,'description',0,1235,541,1233,1482509239,1,1234),(188,17,102,0,5974,'description',0,1169,542,1234,1482509239,1,1235),(188,17,102,0,5975,'description',0,1236,543,1235,1482509239,1,1169),(188,17,102,0,5976,'description',0,1123,544,1169,1482509239,1,1236),(188,17,102,0,5977,'description',0,1230,545,1236,1482509239,1,1123),(188,17,102,0,5978,'description',0,1237,546,1123,1482509239,1,1230),(188,17,102,0,5979,'description',0,1238,547,1230,1482509239,1,1237),(188,17,102,0,5980,'description',0,0,548,1237,1482509239,1,1238),(116,5,103,0,6305,'name',0,0,0,0,1482517381,3,1309),(182,14,80,0,7269,'title',0,1512,0,0,1481337197,1,1511),(182,14,80,0,7270,'title',0,1513,1,1511,1481337197,1,1512),(210,14,80,0,7271,'description',0,1514,2,1512,1481337197,1,1513),(210,14,80,0,7272,'description',0,1515,3,1513,1481337197,1,1514),(210,14,80,0,7273,'description',0,1516,4,1514,1481337197,1,1515),(210,14,80,0,7274,'description',0,1517,5,1515,1481337197,1,1516),(210,14,80,0,7275,'description',0,1518,6,1516,1481337197,1,1517),(210,14,80,0,7276,'description',0,1519,7,1517,1481337197,1,1518),(210,14,80,0,7277,'description',0,1515,8,1518,1481337197,1,1519),(210,14,80,0,7278,'description',0,1520,9,1519,1481337197,1,1515),(210,14,80,0,7279,'description',0,1521,10,1515,1481337197,1,1520),(210,14,80,0,7280,'description',0,1522,11,1520,1481337197,1,1521),(210,14,80,0,7281,'description',0,1523,12,1521,1481337197,1,1522),(210,14,80,0,7282,'description',0,1524,13,1522,1481337197,1,1523),(210,14,80,0,7283,'description',0,814,14,1523,1481337197,1,1524),(210,14,80,0,7284,'description',0,1525,15,1524,1481337197,1,814),(210,14,80,0,7285,'description',0,1526,16,814,1481337197,1,1525),(210,14,80,0,7286,'description',0,1527,17,1525,1481337197,1,1526),(210,14,80,0,7287,'description',0,1515,18,1526,1481337197,1,1527),(210,14,80,0,7288,'description',0,1528,19,1527,1481337197,1,1515),(210,14,80,0,7289,'description',0,1529,20,1515,1481337197,1,1528),(210,14,80,0,7290,'description',0,1530,21,1528,1481337197,1,1529),(210,14,80,0,7291,'description',0,1531,22,1529,1481337197,1,1530),(210,14,80,0,7292,'description',0,1532,23,1530,1481337197,1,1531),(210,14,80,0,7293,'description',0,1195,24,1531,1481337197,1,1532),(210,14,80,0,7294,'description',0,814,25,1532,1481337197,1,1195),(210,14,80,0,7295,'description',0,1533,26,1195,1481337197,1,814),(210,14,80,0,7296,'description',0,1527,27,814,1481337197,1,1533),(210,14,80,0,7297,'description',0,1534,28,1533,1481337197,1,1527),(210,14,80,0,7298,'description',0,1113,29,1527,1481337197,1,1534),(210,14,80,0,7299,'description',0,1114,30,1534,1481337197,1,1113),(210,14,80,0,7300,'description',0,1514,31,1113,1481337197,1,1114),(210,14,80,0,7301,'description',0,1519,32,1114,1481337197,1,1514),(210,14,80,0,7302,'description',0,1513,33,1514,1481337197,1,1519),(210,14,80,0,7303,'description',0,1535,34,1519,1481337197,1,1513),(210,14,80,0,7304,'description',0,1515,35,1513,1481337197,1,1535),(210,14,80,0,7305,'description',0,1536,36,1535,1481337197,1,1515),(210,14,80,0,7306,'description',0,1537,37,1515,1481337197,1,1536),(210,14,80,0,7307,'description',0,1538,38,1536,1481337197,1,1537),(210,14,80,0,7308,'description',0,1539,39,1537,1481337197,1,1538),(210,14,80,0,7309,'description',0,1540,40,1538,1481337197,1,1539),(210,14,80,0,7310,'description',0,1527,41,1539,1481337197,1,1540),(210,14,80,0,7311,'description',0,1541,42,1540,1481337197,1,1527),(210,14,80,0,7312,'description',0,1542,43,1527,1481337197,1,1541),(210,14,80,0,7313,'description',0,1543,44,1541,1481337197,1,1542),(210,14,80,0,7314,'description',0,1544,45,1542,1481337197,1,1543),(210,14,80,0,7315,'description',0,1534,46,1543,1481337197,1,1544),(210,14,80,0,7316,'description',0,1526,47,1544,1481337197,1,1534),(210,14,80,0,7317,'description',0,1545,48,1534,1481337197,1,1526),(210,14,80,0,7318,'description',0,1526,49,1526,1481337197,1,1545),(210,14,80,0,7319,'description',0,1545,50,1545,1481337197,1,1526),(210,14,80,0,7320,'description',0,1546,51,1526,1481337197,1,1545),(210,14,80,0,7321,'description',0,1513,52,1545,1481337197,1,1546),(210,14,80,0,7322,'description',0,1547,53,1546,1481337197,1,1513),(210,14,80,0,7323,'description',0,1548,54,1513,1481337197,1,1547),(210,14,80,0,7324,'description',0,1525,55,1547,1481337197,1,1548),(210,14,80,0,7325,'description',0,1549,56,1548,1481337197,1,1525),(210,14,80,0,7326,'description',0,1550,57,1525,1481337197,1,1549),(210,14,80,0,7327,'description',0,1176,58,1549,1481337197,1,1550),(210,14,80,0,7328,'description',0,1551,59,1550,1481337197,1,1176),(210,14,80,0,7329,'description',0,1552,60,1176,1481337197,1,1551),(210,14,80,0,7330,'description',0,1553,61,1551,1481337197,1,1552),(210,14,80,0,7331,'description',0,1554,62,1552,1481337197,1,1553),(210,14,80,0,7332,'description',0,1528,63,1553,1481337197,1,1554),(210,14,80,0,7333,'description',0,959,64,1554,1481337197,1,1528),(210,14,80,0,7334,'description',0,1555,65,1528,1481337197,1,959),(210,14,80,0,7335,'description',0,1556,66,959,1481337197,1,1555),(210,14,80,0,7336,'description',0,1113,67,1555,1481337197,1,1556),(210,14,80,0,7337,'description',0,1114,68,1556,1481337197,1,1113),(210,14,80,0,7338,'description',0,1542,69,1113,1481337197,1,1114),(210,14,80,0,7339,'description',0,1557,70,1114,1481337197,1,1542),(210,14,80,0,7340,'description',0,1558,71,1542,1481337197,1,1557),(210,14,80,0,7341,'description',0,1559,72,1557,1481337197,1,1558),(210,14,80,0,7342,'description',0,1119,73,1558,1481337197,1,1559),(210,14,80,0,7343,'description',0,1553,74,1559,1481337197,1,1119),(210,14,80,0,7344,'description',0,1515,75,1119,1481337197,1,1553),(210,14,80,0,7345,'description',0,1560,76,1553,1481337197,1,1515),(210,14,80,0,7346,'description',0,816,77,1515,1481337197,1,1560),(210,14,80,0,7347,'description',0,1113,78,1560,1481337197,1,816),(210,14,80,0,7348,'description',0,1114,79,816,1481337197,1,1113),(210,14,80,0,7349,'description',0,1521,80,1113,1481337197,1,1114),(210,14,80,0,7350,'description',0,1561,81,1114,1481337197,1,1521),(210,14,80,0,7351,'description',0,1550,82,1521,1481337197,1,1561),(210,14,80,0,7352,'description',0,1554,83,1561,1481337197,1,1550),(210,14,80,0,7353,'description',0,1562,84,1550,1481337197,1,1554),(210,14,80,0,7354,'description',0,1563,85,1554,1481337197,1,1562),(210,14,80,0,7355,'description',0,1125,86,1562,1481337197,1,1563),(210,14,80,0,7356,'description',0,1557,87,1563,1481337197,1,1125),(210,14,80,0,7357,'description',0,1564,88,1125,1481337197,1,1557),(210,14,80,0,7358,'description',0,1565,89,1557,1481337197,1,1564),(210,14,80,0,7359,'description',0,1566,90,1564,1481337197,1,1565),(210,14,80,0,7360,'description',0,1567,91,1565,1481337197,1,1566),(210,14,80,0,7361,'description',0,1568,92,1566,1481337197,1,1567),(210,14,80,0,7362,'description',0,1569,93,1567,1481337197,1,1568),(210,14,80,0,7363,'description',0,814,94,1568,1481337197,1,1569),(210,14,80,0,7364,'description',0,1570,95,1569,1481337197,1,814),(210,14,80,0,7365,'description',0,1571,96,814,1481337197,1,1570),(210,14,80,0,7366,'description',0,1524,97,1570,1481337197,1,1571),(210,14,80,0,7367,'description',0,1572,98,1571,1481337197,1,1524),(210,14,80,0,7368,'description',0,1571,99,1524,1481337197,1,1572),(210,14,80,0,7369,'description',0,1573,100,1572,1481337197,1,1571),(210,14,80,0,7370,'description',0,1574,101,1571,1481337197,1,1573),(210,14,80,0,7371,'description',0,1575,102,1573,1481337197,1,1574),(210,14,80,0,7372,'description',0,1576,103,1574,1481337197,1,1575),(210,14,80,0,7373,'description',0,1553,104,1575,1481337197,1,1576),(210,14,80,0,7374,'description',0,814,105,1576,1481337197,1,1553),(210,14,80,0,7375,'description',0,1548,106,1553,1481337197,1,814),(210,14,80,0,7376,'description',0,1513,107,814,1481337197,1,1548),(210,14,80,0,7377,'description',0,1514,108,1548,1481337197,1,1513),(210,14,80,0,7378,'description',0,1515,109,1513,1481337197,1,1514),(210,14,80,0,7379,'description',0,1516,110,1514,1481337197,1,1515),(210,14,80,0,7380,'description',0,1517,111,1515,1481337197,1,1516),(210,14,80,0,7381,'description',0,1518,112,1516,1481337197,1,1517),(210,14,80,0,7382,'description',0,1519,113,1517,1481337197,1,1518),(210,14,80,0,7383,'description',0,1515,114,1518,1481337197,1,1519),(210,14,80,0,7384,'description',0,1520,115,1519,1481337197,1,1515),(210,14,80,0,7385,'description',0,1521,116,1515,1481337197,1,1520),(210,14,80,0,7386,'description',0,1522,117,1520,1481337197,1,1521),(210,14,80,0,7387,'description',0,1523,118,1521,1481337197,1,1522),(210,14,80,0,7388,'description',0,1524,119,1522,1481337197,1,1523),(210,14,80,0,7389,'description',0,814,120,1523,1481337197,1,1524),(210,14,80,0,7390,'description',0,1525,121,1524,1481337197,1,814),(210,14,80,0,7391,'description',0,1526,122,814,1481337197,1,1525),(210,14,80,0,7392,'description',0,1527,123,1525,1481337197,1,1526),(210,14,80,0,7393,'description',0,1515,124,1526,1481337197,1,1527),(210,14,80,0,7394,'description',0,1528,125,1527,1481337197,1,1515),(210,14,80,0,7395,'description',0,1529,126,1515,1481337197,1,1528),(210,14,80,0,7396,'description',0,1530,127,1528,1481337197,1,1529),(210,14,80,0,7397,'description',0,1531,128,1529,1481337197,1,1530),(210,14,80,0,7398,'description',0,1532,129,1530,1481337197,1,1531),(210,14,80,0,7399,'description',0,1195,130,1531,1481337197,1,1532),(210,14,80,0,7400,'description',0,814,131,1532,1481337197,1,1195),(210,14,80,0,7401,'description',0,1533,132,1195,1481337197,1,814),(210,14,80,0,7402,'description',0,1527,133,814,1481337197,1,1533),(210,14,80,0,7403,'description',0,1534,134,1533,1481337197,1,1527),(210,14,80,0,7404,'description',0,1113,135,1527,1481337197,1,1534),(210,14,80,0,7405,'description',0,1114,136,1534,1481337197,1,1113),(210,14,80,0,7406,'description',0,1514,137,1113,1481337197,1,1114),(210,14,80,0,7407,'description',0,1519,138,1114,1481337197,1,1514),(210,14,80,0,7408,'description',0,1513,139,1514,1481337197,1,1519),(210,14,80,0,7409,'description',0,1535,140,1519,1481337197,1,1513),(210,14,80,0,7410,'description',0,1515,141,1513,1481337197,1,1535),(210,14,80,0,7411,'description',0,1536,142,1535,1481337197,1,1515),(210,14,80,0,7412,'description',0,1537,143,1515,1481337197,1,1536),(210,14,80,0,7413,'description',0,1538,144,1536,1481337197,1,1537),(210,14,80,0,7414,'description',0,1539,145,1537,1481337197,1,1538),(210,14,80,0,7415,'description',0,1540,146,1538,1481337197,1,1539),(210,14,80,0,7416,'description',0,1527,147,1539,1481337197,1,1540),(210,14,80,0,7417,'description',0,1541,148,1540,1481337197,1,1527),(210,14,80,0,7418,'description',0,1542,149,1527,1481337197,1,1541),(210,14,80,0,7419,'description',0,1543,150,1541,1481337197,1,1542),(210,14,80,0,7420,'description',0,1544,151,1542,1481337197,1,1543),(210,14,80,0,7421,'description',0,1534,152,1543,1481337197,1,1544),(210,14,80,0,7422,'description',0,1526,153,1544,1481337197,1,1534),(210,14,80,0,7423,'description',0,1545,154,1534,1481337197,1,1526),(210,14,80,0,7424,'description',0,1526,155,1526,1481337197,1,1545),(210,14,80,0,7425,'description',0,1545,156,1545,1481337197,1,1526),(210,14,80,0,7426,'description',0,1546,157,1526,1481337197,1,1545),(210,14,80,0,7427,'description',0,1513,158,1545,1481337197,1,1546),(210,14,80,0,7428,'description',0,1547,159,1546,1481337197,1,1513),(210,14,80,0,7429,'description',0,1548,160,1513,1481337197,1,1547),(210,14,80,0,7430,'description',0,1525,161,1547,1481337197,1,1548),(210,14,80,0,7431,'description',0,1549,162,1548,1481337197,1,1525),(210,14,80,0,7432,'description',0,1550,163,1525,1481337197,1,1549),(210,14,80,0,7433,'description',0,1176,164,1549,1481337197,1,1550),(210,14,80,0,7434,'description',0,1551,165,1550,1481337197,1,1176),(210,14,80,0,7435,'description',0,1552,166,1176,1481337197,1,1551),(210,14,80,0,7436,'description',0,1553,167,1551,1481337197,1,1552),(210,14,80,0,7437,'description',0,1554,168,1552,1481337197,1,1553),(210,14,80,0,7438,'description',0,1528,169,1553,1481337197,1,1554),(210,14,80,0,7439,'description',0,959,170,1554,1481337197,1,1528),(210,14,80,0,7440,'description',0,1555,171,1528,1481337197,1,959),(210,14,80,0,7441,'description',0,1556,172,959,1481337197,1,1555),(210,14,80,0,7442,'description',0,1113,173,1555,1481337197,1,1556),(210,14,80,0,7443,'description',0,1114,174,1556,1481337197,1,1113),(210,14,80,0,7444,'description',0,1542,175,1113,1481337197,1,1114),(210,14,80,0,7445,'description',0,1557,176,1114,1481337197,1,1542),(210,14,80,0,7446,'description',0,1558,177,1542,1481337197,1,1557),(210,14,80,0,7447,'description',0,1559,178,1557,1481337197,1,1558),(210,14,80,0,7448,'description',0,1119,179,1558,1481337197,1,1559),(210,14,80,0,7449,'description',0,1553,180,1559,1481337197,1,1119),(210,14,80,0,7450,'description',0,1515,181,1119,1481337197,1,1553),(210,14,80,0,7451,'description',0,1560,182,1553,1481337197,1,1515),(210,14,80,0,7452,'description',0,816,183,1515,1481337197,1,1560),(210,14,80,0,7453,'description',0,1113,184,1560,1481337197,1,816),(210,14,80,0,7454,'description',0,1114,185,816,1481337197,1,1113),(210,14,80,0,7455,'description',0,1521,186,1113,1481337197,1,1114),(210,14,80,0,7456,'description',0,1561,187,1114,1481337197,1,1521),(210,14,80,0,7457,'description',0,1550,188,1521,1481337197,1,1561),(210,14,80,0,7458,'description',0,1554,189,1561,1481337197,1,1550),(210,14,80,0,7459,'description',0,1562,190,1550,1481337197,1,1554),(210,14,80,0,7460,'description',0,1563,191,1554,1481337197,1,1562),(210,14,80,0,7461,'description',0,1125,192,1562,1481337197,1,1563),(210,14,80,0,7462,'description',0,1557,193,1563,1481337197,1,1125),(210,14,80,0,7463,'description',0,1564,194,1125,1481337197,1,1557),(210,14,80,0,7464,'description',0,1565,195,1557,1481337197,1,1564),(210,14,80,0,7465,'description',0,1566,196,1564,1481337197,1,1565),(210,14,80,0,7466,'description',0,1567,197,1565,1481337197,1,1566),(210,14,80,0,7467,'description',0,1568,198,1566,1481337197,1,1567),(210,14,80,0,7468,'description',0,1569,199,1567,1481337197,1,1568),(210,14,80,0,7469,'description',0,814,200,1568,1481337197,1,1569),(210,14,80,0,7470,'description',0,1570,201,1569,1481337197,1,814),(210,14,80,0,7471,'description',0,1571,202,814,1481337197,1,1570),(210,14,80,0,7472,'description',0,1524,203,1570,1481337197,1,1571),(210,14,80,0,7473,'description',0,1572,204,1571,1481337197,1,1524),(210,14,80,0,7474,'description',0,1571,205,1524,1481337197,1,1572),(210,14,80,0,7475,'description',0,1573,206,1572,1481337197,1,1571),(210,14,80,0,7476,'description',0,1574,207,1571,1481337197,1,1573),(210,14,80,0,7477,'description',0,1575,208,1573,1481337197,1,1574),(210,14,80,0,7478,'description',0,1576,209,1574,1481337197,1,1575),(210,14,80,0,7479,'description',0,1553,210,1575,1481337197,1,1576),(210,14,80,0,7480,'description',0,814,211,1576,1481337197,1,1553),(210,14,80,0,7481,'description',0,1548,212,1553,1481337197,1,814),(210,14,80,0,7482,'description',0,1513,213,814,1481337197,1,1548),(210,14,80,0,7483,'description',0,1514,214,1548,1481337197,1,1513),(210,14,80,0,7484,'description',0,1515,215,1513,1481337197,1,1514),(210,14,80,0,7485,'description',0,1516,216,1514,1481337197,1,1515),(210,14,80,0,7486,'description',0,1517,217,1515,1481337197,1,1516),(210,14,80,0,7487,'description',0,1518,218,1516,1481337197,1,1517),(210,14,80,0,7488,'description',0,1519,219,1517,1481337197,1,1518),(210,14,80,0,7489,'description',0,1515,220,1518,1481337197,1,1519),(210,14,80,0,7490,'description',0,1520,221,1519,1481337197,1,1515),(210,14,80,0,7491,'description',0,1521,222,1515,1481337197,1,1520),(210,14,80,0,7492,'description',0,1522,223,1520,1481337197,1,1521),(210,14,80,0,7493,'description',0,1523,224,1521,1481337197,1,1522),(210,14,80,0,7494,'description',0,1524,225,1522,1481337197,1,1523),(210,14,80,0,7495,'description',0,814,226,1523,1481337197,1,1524),(210,14,80,0,7496,'description',0,1525,227,1524,1481337197,1,814),(210,14,80,0,7497,'description',0,1526,228,814,1481337197,1,1525),(210,14,80,0,7498,'description',0,1527,229,1525,1481337197,1,1526),(210,14,80,0,7499,'description',0,1515,230,1526,1481337197,1,1527),(210,14,80,0,7500,'description',0,1528,231,1527,1481337197,1,1515),(210,14,80,0,7501,'description',0,1529,232,1515,1481337197,1,1528),(210,14,80,0,7502,'description',0,1530,233,1528,1481337197,1,1529),(210,14,80,0,7503,'description',0,1531,234,1529,1481337197,1,1530),(210,14,80,0,7504,'description',0,1532,235,1530,1481337197,1,1531),(210,14,80,0,7505,'description',0,1195,236,1531,1481337197,1,1532),(210,14,80,0,7506,'description',0,814,237,1532,1481337197,1,1195),(210,14,80,0,7507,'description',0,1533,238,1195,1481337197,1,814),(210,14,80,0,7508,'description',0,1527,239,814,1481337197,1,1533),(210,14,80,0,7509,'description',0,1534,240,1533,1481337197,1,1527),(210,14,80,0,7510,'description',0,1113,241,1527,1481337197,1,1534),(210,14,80,0,7511,'description',0,1114,242,1534,1481337197,1,1113),(210,14,80,0,7512,'description',0,1514,243,1113,1481337197,1,1114),(210,14,80,0,7513,'description',0,1519,244,1114,1481337197,1,1514),(210,14,80,0,7514,'description',0,1513,245,1514,1481337197,1,1519),(210,14,80,0,7515,'description',0,1535,246,1519,1481337197,1,1513),(210,14,80,0,7516,'description',0,1515,247,1513,1481337197,1,1535),(210,14,80,0,7517,'description',0,1536,248,1535,1481337197,1,1515),(210,14,80,0,7518,'description',0,1537,249,1515,1481337197,1,1536),(210,14,80,0,7519,'description',0,1538,250,1536,1481337197,1,1537),(210,14,80,0,7520,'description',0,1539,251,1537,1481337197,1,1538),(210,14,80,0,7521,'description',0,1540,252,1538,1481337197,1,1539),(210,14,80,0,7522,'description',0,1527,253,1539,1481337197,1,1540),(210,14,80,0,7523,'description',0,1541,254,1540,1481337197,1,1527),(210,14,80,0,7524,'description',0,1542,255,1527,1481337197,1,1541),(210,14,80,0,7525,'description',0,1543,256,1541,1481337197,1,1542),(210,14,80,0,7526,'description',0,1544,257,1542,1481337197,1,1543),(210,14,80,0,7527,'description',0,1534,258,1543,1481337197,1,1544),(210,14,80,0,7528,'description',0,1526,259,1544,1481337197,1,1534),(210,14,80,0,7529,'description',0,1545,260,1534,1481337197,1,1526),(210,14,80,0,7530,'description',0,1526,261,1526,1481337197,1,1545),(210,14,80,0,7531,'description',0,1545,262,1545,1481337197,1,1526),(210,14,80,0,7532,'description',0,1546,263,1526,1481337197,1,1545),(210,14,80,0,7533,'description',0,1513,264,1545,1481337197,1,1546),(210,14,80,0,7534,'description',0,1547,265,1546,1481337197,1,1513),(210,14,80,0,7535,'description',0,1548,266,1513,1481337197,1,1547),(210,14,80,0,7536,'description',0,1525,267,1547,1481337197,1,1548),(210,14,80,0,7537,'description',0,1549,268,1548,1481337197,1,1525),(210,14,80,0,7538,'description',0,1550,269,1525,1481337197,1,1549),(210,14,80,0,7539,'description',0,1176,270,1549,1481337197,1,1550),(210,14,80,0,7540,'description',0,1551,271,1550,1481337197,1,1176),(210,14,80,0,7541,'description',0,1552,272,1176,1481337197,1,1551),(210,14,80,0,7542,'description',0,1553,273,1551,1481337197,1,1552),(210,14,80,0,7543,'description',0,1554,274,1552,1481337197,1,1553),(210,14,80,0,7544,'description',0,1528,275,1553,1481337197,1,1554),(210,14,80,0,7545,'description',0,959,276,1554,1481337197,1,1528),(210,14,80,0,7546,'description',0,1555,277,1528,1481337197,1,959),(210,14,80,0,7547,'description',0,1556,278,959,1481337197,1,1555),(210,14,80,0,7548,'description',0,1113,279,1555,1481337197,1,1556),(210,14,80,0,7549,'description',0,1114,280,1556,1481337197,1,1113),(210,14,80,0,7550,'description',0,1542,281,1113,1481337197,1,1114),(210,14,80,0,7551,'description',0,1557,282,1114,1481337197,1,1542),(210,14,80,0,7552,'description',0,1558,283,1542,1481337197,1,1557),(210,14,80,0,7553,'description',0,1559,284,1557,1481337197,1,1558),(210,14,80,0,7554,'description',0,1119,285,1558,1481337197,1,1559),(210,14,80,0,7555,'description',0,1553,286,1559,1481337197,1,1119),(210,14,80,0,7556,'description',0,1515,287,1119,1481337197,1,1553),(210,14,80,0,7557,'description',0,1560,288,1553,1481337197,1,1515),(210,14,80,0,7558,'description',0,816,289,1515,1481337197,1,1560),(210,14,80,0,7559,'description',0,1113,290,1560,1481337197,1,816),(210,14,80,0,7560,'description',0,1114,291,816,1481337197,1,1113),(210,14,80,0,7561,'description',0,1521,292,1113,1481337197,1,1114),(210,14,80,0,7562,'description',0,1561,293,1114,1481337197,1,1521),(210,14,80,0,7563,'description',0,1550,294,1521,1481337197,1,1561),(210,14,80,0,7564,'description',0,1554,295,1561,1481337197,1,1550),(210,14,80,0,7565,'description',0,1562,296,1550,1481337197,1,1554),(210,14,80,0,7566,'description',0,1563,297,1554,1481337197,1,1562),(210,14,80,0,7567,'description',0,1125,298,1562,1481337197,1,1563),(210,14,80,0,7568,'description',0,1557,299,1563,1481337197,1,1125),(210,14,80,0,7569,'description',0,1564,300,1125,1481337197,1,1557),(210,14,80,0,7570,'description',0,1565,301,1557,1481337197,1,1564),(210,14,80,0,7571,'description',0,1566,302,1564,1481337197,1,1565),(210,14,80,0,7572,'description',0,1567,303,1565,1481337197,1,1566),(210,14,80,0,7573,'description',0,1568,304,1566,1481337197,1,1567),(210,14,80,0,7574,'description',0,1569,305,1567,1481337197,1,1568),(210,14,80,0,7575,'description',0,814,306,1568,1481337197,1,1569),(210,14,80,0,7576,'description',0,1570,307,1569,1481337197,1,814),(210,14,80,0,7577,'description',0,1571,308,814,1481337197,1,1570),(210,14,80,0,7578,'description',0,1524,309,1570,1481337197,1,1571),(210,14,80,0,7579,'description',0,1572,310,1571,1481337197,1,1524),(210,14,80,0,7580,'description',0,1571,311,1524,1481337197,1,1572),(210,14,80,0,7581,'description',0,1573,312,1572,1481337197,1,1571),(210,14,80,0,7582,'description',0,1574,313,1571,1481337197,1,1573),(210,14,80,0,7583,'description',0,1575,314,1573,1481337197,1,1574),(210,14,80,0,7584,'description',0,1576,315,1574,1481337197,1,1575),(210,14,80,0,7585,'description',0,1553,316,1575,1481337197,1,1576),(210,14,80,0,7586,'description',0,814,317,1576,1481337197,1,1553),(210,14,80,0,7587,'description',0,1548,318,1553,1481337197,1,814),(210,14,80,0,7588,'description',0,1577,319,814,1481337197,1,1548),(210,14,80,0,7589,'description',0,0,320,1548,1481337197,1,1577),(186,16,75,0,7603,'name',0,0,0,0,1480987917,1,1589);
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
) ENGINE=InnoDB AUTO_INCREMENT=1590 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,1,'setup'),(814,2,'the'),(816,2,'for'),(927,2,'ez.no'),(930,3,'users'),(951,1,'main'),(952,2,'group'),(953,2,'anonymous'),(954,3,'user'),(955,2,'nospam'),(956,1,'guest'),(957,1,'accounts'),(958,2,'administrator'),(959,2,'editors'),(960,1,'admin'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(967,1,'sitestyle_identifier'),(974,1,'applications'),(975,1,'bewerbungen'),(985,1,'uber'),(986,1,'uns'),(987,1,'hi'),(988,1,'there'),(989,1,'hello'),(990,1,'esfehani'),(991,9,'folder'),(992,7,'1'),(994,5,'2'),(995,3,'3'),(996,1,'studuim'),(997,1,'studium'),(1004,1,'forschungreisen'),(1042,1,'al'),(1043,1,'mustafa'),(1044,1,'uberschrift'),(1113,3,'lorem'),(1114,3,'ipsum'),(1115,2,'ist'),(1116,2,'ein'),(1117,1,'einfacher'),(1118,1,'demo'),(1119,3,'text'),(1120,1,'fur'),(1121,2,'die'),(1122,1,'print'),(1123,2,'und'),(1124,1,'schriftindustrie'),(1125,2,'in'),(1126,2,'der'),(1127,1,'industrie'),(1128,1,'bereits'),(1129,1,'standard'),(1130,1,'seit'),(1131,1,'1500'),(1132,2,'als'),(1133,1,'unbekannter'),(1134,1,'schriftsteller'),(1135,1,'eine'),(1136,1,'hand'),(1137,1,'voll'),(1138,1,'worter'),(1139,1,'nahm'),(1140,2,'diese'),(1141,1,'durcheinander'),(1142,1,'warf'),(1143,1,'um'),(1144,1,'musterbuch'),(1145,2,'zu'),(1146,1,'erstellen'),(1147,2,'es'),(1148,1,'hat'),(1149,1,'nicht'),(1150,1,'nur'),(1151,1,'5'),(1152,1,'jahrhunderte'),(1153,1,'uberlebt'),(1154,1,'sondern'),(1155,2,'auch'),(1156,1,'spruch'),(1157,1,'elektronische'),(1158,1,'schriftbearbeitung'),(1159,1,'geschafft'),(1160,1,'bemerke'),(1161,1,'nahezu'),(1162,1,'unverandert'),(1163,1,'bekannt'),(1164,1,'wurde'),(1165,1,'1960'),(1166,1,'mit'),(1167,1,'dem'),(1168,1,'erscheinen'),(1169,2,'von'),(1170,1,'letraset'),(1171,1,'welches'),(1172,1,'passagen'),(1173,1,'enhielt'),(1174,1,'so'),(1175,1,'wie'),(1176,3,'desktop'),(1177,1,'software'),(1178,1,'aldus'),(1179,1,'pagemaker'),(1180,1,'ebenfalls'),(1181,1,'first'),(1182,2,'blog'),(1183,1,'post'),(1184,1,'lang'),(1185,1,'erwiesener'),(1186,1,'fakt'),(1187,1,'dass'),(1188,1,'leser'),(1189,1,'vom'),(1190,1,'abgelenkt'),(1191,1,'wird'),(1192,1,'wenn'),(1193,1,'er'),(1194,1,'sich'),(1195,2,'layout'),(1196,1,'ansieht'),(1197,1,'punkt'),(1198,1,'nutzen'),(1199,1,'mehr'),(1200,1,'oder'),(1201,1,'weniger'),(1202,1,'normale'),(1203,1,'anordnung'),(1204,1,'buchstaben'),(1205,1,'darstellt'),(1206,1,'somit'),(1207,1,'nach'),(1208,1,'lesbarer'),(1209,1,'sprache'),(1210,1,'aussieht'),(1211,1,'viele'),(1212,1,'publisher'),(1213,1,'webeditoren'),(1214,1,'mittlerweile'),(1215,1,'den'),(1216,1,'standardtext'),(1217,1,'suche'),(1218,1,'im'),(1219,1,'internet'),(1220,1,'macht'),(1221,1,'webseiten'),(1222,1,'sichtbar'),(1223,1,'wo'),(1224,1,'noch'),(1225,1,'immer'),(1226,1,'vorkommen'),(1227,1,'gibt'),(1228,1,'mehrere'),(1229,1,'versionen'),(1230,1,'des'),(1231,1,'einige'),(1232,1,'zufallig'),(1233,1,'andere'),(1234,1,'bewusst'),(1235,1,'beeinflusst'),(1236,1,'witz'),(1237,1,'eigenen'),(1238,1,'geschmacks'),(1309,1,'qom2'),(1511,1,'qom'),(1512,1,'2016'),(1513,1,'it'),(1514,1,'is'),(1515,1,'a'),(1516,1,'long'),(1517,1,'established'),(1518,1,'fact'),(1519,1,'that'),(1520,1,'reader'),(1521,1,'will'),(1522,1,'be'),(1523,1,'distracted'),(1524,1,'by'),(1525,1,'readable'),(1526,1,'content'),(1527,1,'of'),(1528,1,'page'),(1529,1,'when'),(1530,1,'looking'),(1531,1,'at'),(1532,1,'its'),(1533,1,'point'),(1534,1,'using'),(1535,1,'has'),(1536,1,'more'),(1537,1,'or'),(1538,1,'less'),(1539,1,'normal'),(1540,1,'distribution'),(1541,1,'letters'),(1542,1,'as'),(1543,1,'opposed'),(1544,1,'to'),(1545,1,'here'),(1546,1,'making'),(1547,1,'look'),(1548,1,'like'),(1549,1,'english'),(1550,1,'many'),(1551,1,'publishing'),(1552,1,'packages'),(1553,1,'and'),(1554,1,'web'),(1555,1,'now'),(1556,1,'use'),(1557,1,'their'),(1558,1,'default'),(1559,1,'model'),(1560,1,'search'),(1561,1,'uncover'),(1562,1,'sites'),(1563,1,'still'),(1564,1,'infancy'),(1565,1,'various'),(1566,1,'versions'),(1567,1,'have'),(1568,1,'evolved'),(1569,1,'over'),(1570,1,'years'),(1571,1,'sometimes'),(1572,1,'accident'),(1573,1,'on'),(1574,1,'purpose'),(1575,1,'injected'),(1576,1,'humour'),(1577,1,'large'),(1589,1,'veranstaltungen');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
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
INSERT INTO `ezurlalias_ml` VALUES ('eznode:67','eznode',1,51,0,1,5,51,0,'Folder-1','00c96df9cd9d010ff263477f20621bca'),('eznode:77','eznode',0,61,0,1,5,61,0,'Veranstaltungen','071fae8a900e0092e887f3d604a49bbd'),('eznode:65','eznode',0,49,0,1,5,49,0,'Ueber-uns','32d11cc18ca4520fc6b900b928c2f0e1'),('eznode:77','eznode',1,96,0,0,5,61,0,'Vernstellungen','402cf2026c1252bf549651d94e28a984'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:76','eznode',0,60,0,1,5,60,0,'Folder-3','5d283f767ea6b623a67bb225a9e8b78d'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:54','eznode',1,38,0,1,3,38,0,'Applications','b5fba9ff24d0045d1377a05a46b32f68'),('eznode:2','eznode',1,1,0,1,7,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:71','eznode',1,55,0,1,5,55,0,'Folder-2','dddcdf376c1131c3b095c3b12f2bfb6b'),('eznode:54','eznode',0,38,0,1,5,38,0,'Bewerbungen','df60e76c42ff86edce0aa8ebc6bf3a63'),('eznode:79','eznode',0,64,0,1,5,64,0,'Forschungreisen','e09cd6a92aa493e7e38982555d74dc1a'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:56','eznode',0,40,0,1,3,40,4,'Amir-Test-Amir-Test','cf0de445238ec5084251469ac3342c70'),('eznode:15','eznode',1,91,0,0,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,8,0,1,3,8,5,'Amir-Koklan','90c93d9d0307a665c281e060c7d55368'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:95','eznode',0,94,0,1,3,94,18,'Qom2','2f52bc118434a43b3db33d6f0c7c5196'),('eznode:73','eznode',0,57,0,1,5,57,49,'Studium','e0432b98442d77d2a6436ba4e6c28ba9'),('eznode:66','eznode',0,50,0,1,5,50,49,'Esfehani','ffc267a0056c23b78284afbc55a9cff5'),('eznode:69','eznode',1,53,0,1,5,53,51,'folder-1.1','0252335e3ba69b818f020b5cf446f3f8'),('eznode:70','eznode',0,54,0,1,5,54,51,'Folder-1.3','d9193a9d72b84b4fb9d8e3a6d026b9aa'),('eznode:68','eznode',1,52,0,1,5,52,51,'Folder-1.2','e75555303aa8425d0bd6ad2e111544ac'),('eznode:75','eznode',0,59,0,1,5,59,52,'Folder-1.2.2','38570d354f4d3bf37d983f7c6f757cb9'),('eznode:74','eznode',0,58,0,1,5,58,52,'Folder-1.2.1','c919e4304ba2a41619610db4101bc9a5'),('eznode:72','eznode',1,56,0,1,5,56,55,'Folder-2.1','b5739492cf2dbdafaba6eb61ea7171d9'),('eznode:78','eznode',0,67,0,0,5,62,61,'location_78','3fe12025b1fc810eac19c08424121c81'),('eznode:94','eznode',0,93,0,1,5,93,61,'Blog-Post-3','a9122dce667051c1283c683d2e980cc6'),('eznode:78','eznode',1,62,0,1,7,62,61,'First-Blog','aa9f805dafafcd4f26acd081bedf15af'),('eznode:93','eznode',1,92,0,1,5,92,61,'Lorem-Ipsum-ist-ein-einfacher-Demo','b5f4307dbbbc9475698304145495a432'),('eznode:82','eznode',1,68,0,1,5,68,64,'Qom-2016','e34aa6ed5001b7e5c787bb31ff331079');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96);
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
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'amirkoklan@gmail.com','admin','c78e3b0f3d9244ed8c6d1c29464bdff9',2),(54,'amir@test.de','amir.test','d738f23739286b45b542c0518b6be838',2);
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

-- Dump completed on 2016-12-24  3:03:10
