-- MySQL dump 10.13  Distrib 8.2.0, for Linux (x86_64)
--
-- Host: localhost    Database: ruoyidb
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_nameçš„å¤–é”®',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  `blob_data` blob COMMENT 'å­˜æ”¾æŒä¹…åŒ–Triggerå¯¹è±¡',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Blobç±»åž‹çš„è§¦å‘å™¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `calendar_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ—¥åŽ†åç§°',
  `calendar` blob NOT NULL COMMENT 'å­˜æ”¾æŒä¹…åŒ–calendarå¯¹è±¡',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='æ—¥åŽ†ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_nameçš„å¤–é”®',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  `cron_expression` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cronè¡¨è¾¾å¼',
  `time_zone_id` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ—¶åŒº',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cronç±»åž‹çš„è§¦å‘å™¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `entry_id` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦å™¨å®žä¾‹id',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_nameçš„å¤–é”®',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  `instance_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦å™¨å®žä¾‹å',
  `fired_time` bigint NOT NULL COMMENT 'è§¦å‘çš„æ—¶é—´',
  `sched_time` bigint NOT NULL COMMENT 'å®šæ—¶å™¨åˆ¶å®šçš„æ—¶é—´',
  `priority` int NOT NULL COMMENT 'ä¼˜å…ˆçº§',
  `state` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'çŠ¶æ€',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ä»»åŠ¡åç§°',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ä»»åŠ¡ç»„å',
  `is_nonconcurrent` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦å¹¶å‘',
  `requests_recovery` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦æŽ¥å—æ¢å¤æ‰§è¡Œ',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å·²è§¦å‘çš„è§¦å‘å™¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ä»»åŠ¡åç§°',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ä»»åŠ¡ç»„å',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç›¸å…³ä»‹ç»',
  `job_class_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ‰§è¡Œä»»åŠ¡ç±»åç§°',
  `is_durable` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ˜¯å¦æŒä¹…åŒ–',
  `is_nonconcurrent` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ˜¯å¦å¹¶å‘',
  `is_update_data` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ˜¯å¦æ›´æ–°æ•°æ®',
  `requests_recovery` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ˜¯å¦æŽ¥å—æ¢å¤æ‰§è¡Œ',
  `job_data` blob COMMENT 'å­˜æ”¾æŒä¹…åŒ–jobå¯¹è±¡',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ä»»åŠ¡è¯¦ç»†ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `lock_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'æ‚²è§‚é”åç§°',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å­˜å‚¨çš„æ‚²è§‚é”ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='æš‚åœçš„è§¦å‘å™¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `instance_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'å®žä¾‹åç§°',
  `last_checkin_time` bigint NOT NULL COMMENT 'ä¸Šæ¬¡æ£€æŸ¥æ—¶é—´',
  `checkin_interval` bigint NOT NULL COMMENT 'æ£€æŸ¥é—´éš”æ—¶é—´',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='è°ƒåº¦å™¨çŠ¶æ€è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_nameçš„å¤–é”®',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  `repeat_count` bigint NOT NULL COMMENT 'é‡å¤çš„æ¬¡æ•°ç»Ÿè®¡',
  `repeat_interval` bigint NOT NULL COMMENT 'é‡å¤çš„é—´éš”æ—¶é—´',
  `times_triggered` bigint NOT NULL COMMENT 'å·²ç»è§¦å‘çš„æ¬¡æ•°',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç®€å•è§¦å‘å™¨çš„ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_nameçš„å¤–é”®',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_triggersè¡¨trigger_groupçš„å¤–é”®',
  `str_prop_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Stringç±»åž‹çš„triggerçš„ç¬¬ä¸€ä¸ªå‚æ•°',
  `str_prop_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Stringç±»åž‹çš„triggerçš„ç¬¬äºŒä¸ªå‚æ•°',
  `str_prop_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Stringç±»åž‹çš„triggerçš„ç¬¬ä¸‰ä¸ªå‚æ•°',
  `int_prop_1` int DEFAULT NULL COMMENT 'intç±»åž‹çš„triggerçš„ç¬¬ä¸€ä¸ªå‚æ•°',
  `int_prop_2` int DEFAULT NULL COMMENT 'intç±»åž‹çš„triggerçš„ç¬¬äºŒä¸ªå‚æ•°',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'longç±»åž‹çš„triggerçš„ç¬¬ä¸€ä¸ªå‚æ•°',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'longç±»åž‹çš„triggerçš„ç¬¬äºŒä¸ªå‚æ•°',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimalç±»åž‹çš„triggerçš„ç¬¬ä¸€ä¸ªå‚æ•°',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimalç±»åž‹çš„triggerçš„ç¬¬äºŒä¸ªå‚æ•°',
  `bool_prop_1` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Booleanç±»åž‹çš„triggerçš„ç¬¬ä¸€ä¸ªå‚æ•°',
  `bool_prop_2` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Booleanç±»åž‹çš„triggerçš„ç¬¬äºŒä¸ªå‚æ•°',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='åŒæ­¥æœºåˆ¶çš„è¡Œé”è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒåº¦åç§°',
  `trigger_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§¦å‘å™¨çš„åå­—',
  `trigger_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§¦å‘å™¨æ‰€å±žç»„çš„åå­—',
  `job_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_job_detailsè¡¨job_nameçš„å¤–é”®',
  `job_group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'qrtz_job_detailsè¡¨job_groupçš„å¤–é”®',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç›¸å…³ä»‹ç»',
  `next_fire_time` bigint DEFAULT NULL COMMENT 'ä¸Šä¸€æ¬¡è§¦å‘æ—¶é—´ï¼ˆæ¯«ç§’ï¼‰',
  `prev_fire_time` bigint DEFAULT NULL COMMENT 'ä¸‹ä¸€æ¬¡è§¦å‘æ—¶é—´ï¼ˆé»˜è®¤ä¸º-1è¡¨ç¤ºä¸è§¦å‘ï¼‰',
  `priority` int DEFAULT NULL COMMENT 'ä¼˜å…ˆçº§',
  `trigger_state` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§¦å‘å™¨çŠ¶æ€',
  `trigger_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§¦å‘å™¨çš„ç±»åž‹',
  `start_time` bigint NOT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_time` bigint DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `calendar_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ—¥ç¨‹è¡¨åç§°',
  `misfire_instr` smallint DEFAULT NULL COMMENT 'è¡¥å¿æ‰§è¡Œçš„ç­–ç•¥',
  `job_data` blob COMMENT 'å­˜æ”¾æŒä¹…åŒ–jobå¯¹è±¡',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='è§¦å‘å™¨è¯¦ç»†ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ç¼–å·',
  `table_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¡¨åç§°',
  `table_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¡¨æè¿°',
  `sub_table_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å…³è”å­è¡¨çš„è¡¨å',
  `sub_table_fk_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å­è¡¨å…³è”çš„å¤–é”®å',
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å®žä½“ç±»åç§°',
  `tpl_category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'crud' COMMENT 'ä½¿ç”¨çš„æ¨¡æ¿ï¼ˆcrudå•è¡¨æ“ä½œ treeæ ‘è¡¨æ“ä½œï¼‰',
  `tpl_web_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å‰ç«¯æ¨¡æ¿ç±»åž‹ï¼ˆelement-uiæ¨¡ç‰ˆ element-plusæ¨¡ç‰ˆï¼‰',
  `package_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”ŸæˆåŒ…è·¯å¾„',
  `module_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”Ÿæˆæ¨¡å—å',
  `business_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”Ÿæˆä¸šåŠ¡å',
  `function_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½å',
  `function_author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½ä½œè€…',
  `gen_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'ç”Ÿæˆä»£ç æ–¹å¼ï¼ˆ0zipåŽ‹ç¼©åŒ… 1è‡ªå®šä¹‰è·¯å¾„ï¼‰',
  `gen_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '/' COMMENT 'ç”Ÿæˆè·¯å¾„ï¼ˆä¸å¡«é»˜è®¤é¡¹ç›®è·¯å¾„ï¼‰',
  `options` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å…¶å®ƒç”Ÿæˆé€‰é¡¹',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ä»£ç ç”Ÿæˆä¸šåŠ¡è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ç¼–å·',
  `table_id` bigint DEFAULT NULL COMMENT 'å½’å±žè¡¨ç¼–å·',
  `column_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ—åç§°',
  `column_comment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ—æè¿°',
  `column_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'åˆ—ç±»åž‹',
  `java_type` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVAç±»åž‹',
  `java_field` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JAVAå­—æ®µå',
  `is_pk` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦ä¸»é”®ï¼ˆ1æ˜¯ï¼‰',
  `is_increment` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦è‡ªå¢žï¼ˆ1æ˜¯ï¼‰',
  `is_required` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦å¿…å¡«ï¼ˆ1æ˜¯ï¼‰',
  `is_insert` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦ä¸ºæ’å…¥å­—æ®µï¼ˆ1æ˜¯ï¼‰',
  `is_edit` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦ç¼–è¾‘å­—æ®µï¼ˆ1æ˜¯ï¼‰',
  `is_list` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦åˆ—è¡¨å­—æ®µï¼ˆ1æ˜¯ï¼‰',
  `is_query` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¯å¦æŸ¥è¯¢å­—æ®µï¼ˆ1æ˜¯ï¼‰',
  `query_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'EQ' COMMENT 'æŸ¥è¯¢æ–¹å¼ï¼ˆç­‰äºŽã€ä¸ç­‰äºŽã€å¤§äºŽã€å°äºŽã€èŒƒå›´ï¼‰',
  `html_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ˜¾ç¤ºç±»åž‹ï¼ˆæ–‡æœ¬æ¡†ã€æ–‡æœ¬åŸŸã€ä¸‹æ‹‰æ¡†ã€å¤é€‰æ¡†ã€å•é€‰æ¡†ã€æ—¥æœŸæŽ§ä»¶ï¼‰',
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸ç±»åž‹',
  `sort` int DEFAULT NULL COMMENT 'æŽ’åº',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ä»£ç ç”Ÿæˆä¸šåŠ¡è¡¨å­—æ®µ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT 'å‚æ•°ä¸»é”®',
  `config_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å‚æ•°åç§°',
  `config_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å‚æ•°é”®å',
  `config_value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å‚æ•°é”®å€¼',
  `config_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT 'ç³»ç»Ÿå†…ç½®ï¼ˆYæ˜¯ Nå¦ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å‚æ•°é…ç½®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (2,'Account Initial Password','sys.user.initPassword','123456','Y','admin','2024-03-19 07:38:16','admin','2024-04-18 10:34:53','Initialization password to be 123456'),(4,'Verification code switch','sys.account.captchaEnabled','true','Y','admin','2024-03-19 07:38:16','admin','2024-04-18 10:35:35','Verification code function enabled, value could be true/false'),(5,'User Registration Enable ','sys.account.registerUser','false','Y','admin','2024-03-19 07:38:16','admin','2024-04-18 10:37:57','User registration function enabled(true or false)'),(6,'User Login - Blacklist List','sys.login.blackIPList','','Y','admin','2024-03-19 07:38:16','',NULL,'Set up login IP blacklist restrictions with multiple matching items; Separation, supporting matching (* universal, network segment);');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'éƒ¨é—¨id',
  `parent_id` bigint DEFAULT '0' COMMENT 'çˆ¶éƒ¨é—¨id',
  `ancestors` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ç¥–çº§åˆ—è¡¨',
  `dept_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'éƒ¨é—¨åç§°',
  `order_num` int DEFAULT '0' COMMENT 'æ˜¾ç¤ºé¡ºåº',
  `leader` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'è´Ÿè´£äºº',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'è”ç³»ç”µè¯',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'é‚®ç®±',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'éƒ¨é—¨çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'åˆ é™¤æ ‡å¿—ï¼ˆ0ä»£è¡¨å­˜åœ¨ 2ä»£è¡¨åˆ é™¤ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='éƒ¨é—¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','Lawson Group',0,'Josephine M.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','',NULL),(101,100,'0,100','Shenzhen branch',1,'Lee F.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','',NULL),(102,100,'0,100','Changsha branch',2,'Taylor P.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','',NULL),(103,101,'0,100,101','R&D',1,'Remond D.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 05:03:27'),(104,101,'0,100,101','Marketing',2,'Aaron A.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:01:34'),(105,101,'0,100,101','Testing',3,'Whitney F.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:01:41'),(106,101,'0,100,101','Finances',4,'Niki Q.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:01:49'),(107,101,'0,100,101','Operations&Maintenance',5,'Joan V.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:02:06'),(108,102,'0,100,102','Marketing',1,'Linda X.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:02:11'),(109,102,'0,100,102','Finances',2,'Gloria A.','15888888888','ry@qq.com','0','0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:02:18');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT 'å­—å…¸ç¼–ç ',
  `dict_sort` int DEFAULT '0' COMMENT 'å­—å…¸æŽ’åº',
  `dict_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸æ ‡ç­¾',
  `dict_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸é”®å€¼',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸ç±»åž‹',
  `css_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ ·å¼å±žæ€§ï¼ˆå…¶ä»–æ ·å¼æ‰©å±•ï¼‰',
  `list_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'è¡¨æ ¼å›žæ˜¾æ ·å¼',
  `is_default` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT 'æ˜¯å¦é»˜è®¤ï¼ˆYæ˜¯ Nå¦ï¼‰',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å­—å…¸æ•°æ®è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'Male','0','sys_user_sex','','','Y','0','admin','2024-03-19 07:38:16','',NULL,'Gender:Male'),(2,2,'Female','1','sys_user_sex','','','N','0','admin','2024-03-19 07:38:16','',NULL,'Gender:Female'),(3,3,'Unknown','2','sys_user_sex','','','N','0','admin','2024-03-19 07:38:16','',NULL,'Gender:Unknown'),(4,1,'Display','0','sys_show_hide','','primary','Y','0','admin','2024-03-19 07:38:16','',NULL,'Menu display'),(5,2,'Hide','1','sys_show_hide','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Menu hide'),(6,1,'On','0','sys_normal_disable','','primary','Y','0','admin','2024-03-19 07:38:16','',NULL,'Status:On'),(7,2,'Off','1','sys_normal_disable','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Status:Off'),(8,1,'On','0','sys_job_status','','primary','Y','0','admin','2024-03-19 07:38:16','',NULL,'Status:On'),(9,2,'Paused','1','sys_job_status','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Status:Off'),(10,1,'Default','DEFAULT','sys_job_group','','','Y','0','admin','2024-03-19 07:38:16','',NULL,'Default Grouping'),(11,2,'System','SYSTEM','sys_job_group','','','N','0','admin','2024-03-19 07:38:16','',NULL,'System Grouping'),(12,1,'YES','Y','sys_yes_no','','primary','Y','0','admin','2024-03-19 07:38:16','',NULL,'System Default Yes'),(13,2,'NO','N','sys_yes_no','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'System Default No'),(14,1,'Notice','1','sys_notice_type','','warning','Y','0','admin','2024-03-19 07:38:16','',NULL,'Notice'),(15,2,'Annoncement','2','sys_notice_type','','success','N','0','admin','2024-03-19 07:38:16','',NULL,'Annoncement'),(16,1,'On','0','sys_notice_status','','primary','Y','0','admin','2024-03-19 07:38:16','',NULL,'Status:On'),(17,2,'Off','1','sys_notice_status','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Status:Off'),(18,99,'Others','0','sys_oper_type','','info','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Others'),(19,1,'Addition','1','sys_oper_type','','info','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Addition'),(20,2,'Modification','2','sys_oper_type','','info','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Modification'),(21,3,'Deletion','3','sys_oper_type','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Deletion'),(22,4,'Authentication','4','sys_oper_type','','primary','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Authentication'),(23,5,'Export','5','sys_oper_type','','warning','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Export'),(24,6,'Import','6','sys_oper_type','','warning','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Import'),(25,7,'Forced Exit','7','sys_oper_type','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Forced Exit'),(26,8,'Code Generation','8','sys_oper_type','','warning','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Generation'),(27,9,'Data Wipe Out','9','sys_oper_type','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Operation-Wipe Out'),(28,1,'Success','0','sys_common_status','','primary','N','0','admin','2024-03-19 07:38:16','',NULL,'Status:On'),(29,2,'Failure','1','sys_common_status','','danger','N','0','admin','2024-03-19 07:38:16','',NULL,'Status:Off');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'å­—å…¸ä¸»é”®',
  `dict_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸åç§°',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å­—å…¸ç±»åž‹',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å­—å…¸ç±»åž‹è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'User Gender','sys_user_sex','0','admin','2024-03-19 07:38:16','',NULL,'User Gender List'),(2,'Menu status','sys_show_hide','0','admin','2024-03-19 07:38:16','',NULL,'Menu Status List'),(3,'System switch','sys_normal_disable','0','admin','2024-03-19 07:38:16','',NULL,'System switch list'),(4,'Task status','sys_job_status','0','admin','2024-03-19 07:38:16','',NULL,'Task Status List'),(5,'Task grouping','sys_job_group','0','admin','2024-03-19 07:38:16','',NULL,'Task Group List'),(6,'System Boolean','sys_yes_no','0','admin','2024-03-19 07:38:16','',NULL,'System  List'),(7,'Notification type','sys_notice_type','0','admin','2024-03-19 07:38:16','',NULL,'Notification Type List'),(8,'Notification status','sys_notice_status','0','admin','2024-03-19 07:38:16','',NULL,'Notification Status List'),(9,'Operation type','sys_oper_type','0','admin','2024-03-19 07:38:16','',NULL,'Operation types List'),(10,'System state','sys_common_status','0','admin','2024-03-19 07:38:16','',NULL,'Login Status List');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ä»»åŠ¡ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ä»»åŠ¡åç§°',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT 'ä»»åŠ¡ç»„å',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒç”¨ç›®æ ‡å­—ç¬¦ä¸²',
  `cron_expression` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'cronæ‰§è¡Œè¡¨è¾¾å¼',
  `misfire_policy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '3' COMMENT 'è®¡åˆ’æ‰§è¡Œé”™è¯¯ç­–ç•¥ï¼ˆ1ç«‹å³æ‰§è¡Œ 2æ‰§è¡Œä¸€æ¬¡ 3æ”¾å¼ƒæ‰§è¡Œï¼‰',
  `concurrent` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT 'æ˜¯å¦å¹¶å‘æ‰§è¡Œï¼ˆ0å…è®¸ 1ç¦æ­¢ï¼‰',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1æš‚åœï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å®šæ—¶ä»»åŠ¡è°ƒåº¦è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'System default (no parameters)','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-03-19 07:38:16','',NULL,''),(2,'System default (with parameters)','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-03-19 07:38:16','admin','2024-03-21 15:48:16',''),(3,'System default (multiple parameters)','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-03-19 07:38:16','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ä»»åŠ¡æ—¥å¿—ID',
  `job_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ä»»åŠ¡åç§°',
  `job_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ä»»åŠ¡ç»„å',
  `invoke_target` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è°ƒç”¨ç›®æ ‡å­—ç¬¦ä¸²',
  `job_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æ—¥å¿—ä¿¡æ¯',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'æ‰§è¡ŒçŠ¶æ€ï¼ˆ0æ­£å¸¸ 1å¤±è´¥ï¼‰',
  `exception_info` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å¼‚å¸¸ä¿¡æ¯',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å®šæ—¶ä»»åŠ¡è°ƒåº¦æ—¥å¿—è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'è®¿é—®ID',
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ç”¨æˆ·è´¦å·',
  `ipaddr` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ç™»å½•IPåœ°å€',
  `login_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ç™»å½•åœ°ç‚¹',
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æµè§ˆå™¨ç±»åž‹',
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ“ä½œç³»ç»Ÿ',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'ç™»å½•çŠ¶æ€ï¼ˆ0æˆåŠŸ 1å¤±è´¥ï¼‰',
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æç¤ºæ¶ˆæ¯',
  `login_time` datetime DEFAULT NULL COMMENT 'è®¿é—®æ—¶é—´',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç³»ç»Ÿè®¿é—®è®°å½•';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (1,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-23 09:21:07'),(2,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','退出成功','2024-03-23 09:22:26'),(3,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-23 09:22:38'),(4,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','user.jcaptcha.error','2024-03-27 01:50:22'),(5,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','user.jcaptcha.expire','2024-03-27 01:58:56'),(6,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','user.jcaptcha.expire','2024-03-27 02:00:58'),(7,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','user.jcaptcha.error','2024-03-27 02:01:03'),(8,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','user.jcaptcha.error','2024-03-27 02:34:01'),(9,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','user.jcaptcha.error','2024-03-27 02:34:16'),(10,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','Validation code has expired','2024-03-27 02:40:11'),(11,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','Wrong validation code','2024-03-27 02:40:18'),(12,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','Valid code expired','2024-03-27 02:45:32'),(13,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','Wrong valid code','2024-03-27 02:45:40'),(14,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 02:47:29'),(15,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','user.logout.success','2024-03-27 03:17:33'),(16,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 03:17:39'),(17,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','1','Verify code expired','2024-03-27 04:02:05'),(18,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 04:02:09'),(19,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 04:46:32'),(20,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 04:52:21'),(21,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:04:37'),(22,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','Wrong verify code','2024-03-27 05:26:12'),(23,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:26:18'),(24,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:35:56'),(25,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:38:57'),(26,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:54:03'),(27,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:54:32'),(28,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','1','Wrong verify code','2024-03-27 05:56:12'),(29,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:56:15'),(30,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:58:50'),(31,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 05:59:13'),(32,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 09:46:59'),(33,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 12:55:34'),(34,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-03-27 13:00:20'),(35,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:00:29'),(36,'admin','127.0.0.1','Intranet IP','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:16:18'),(37,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:33:11'),(38,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:34:54'),(39,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:37:33'),(40,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-03-27 13:40:59'),(41,'admin','117.173.222.241','Unknown','Chrome 12','Mac OS X','0','login.success','2024-03-27 13:42:00'),(42,'admin','117.173.222.241','Unknown','Safari','Mac OS X','1','Wrong verify code','2024-03-31 03:23:37'),(43,'admin','117.173.222.241','Unknown','Safari','Mac OS X','0','login.success','2024-03-31 03:23:41'),(44,'admin','117.173.222.195','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-06 02:18:01'),(45,'admin','117.173.222.195','Unknown','Safari','Mac OS X','0','login.success','2024-04-06 02:37:06'),(46,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','1','Verify code expired','2024-04-13 04:26:13'),(47,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-13 04:26:17'),(48,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-13 06:11:26'),(49,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-16 02:19:43'),(50,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-16 04:15:24'),(51,'admin','117.173.225.209','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-16 10:42:23'),(52,'admin','117.173.225.239','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-17 14:36:40'),(53,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 03:11:56'),(54,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 04:00:24'),(55,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 04:00:43'),(56,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','1','Verify code expired','2024-04-18 04:20:49'),(57,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 04:20:53'),(58,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 06:02:19'),(59,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 06:06:22'),(60,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 06:08:32'),(61,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 06:31:29'),(62,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 06:36:00'),(63,'admin','83.147.61.249','Unknown','Safari','Mac OS X','1','Wrong verify code','2024-04-18 06:39:43'),(64,'admin','83.147.61.249','Unknown','Safari','Mac OS X','0','login.success','2024-04-18 06:39:51'),(65,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 07:15:38'),(66,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 07:18:07'),(67,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 07:18:14'),(68,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 07:30:51'),(69,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 07:34:30'),(70,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 09:45:58'),(71,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 09:46:15'),(72,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','1','Wrong verify code','2024-04-18 09:46:22'),(73,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 09:46:27'),(74,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 09:49:20'),(75,'admin','83.147.61.244','Unknown','Safari','Mac OS X','1','Wrong verify code','2024-04-18 09:53:01'),(76,'admin','83.147.61.244','Unknown','Safari','Mac OS X','0','login.success','2024-04-18 09:53:07'),(77,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:05:18'),(78,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:16:01'),(79,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:27:43'),(80,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:27:51'),(81,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:28:30'),(82,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:30:21'),(83,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:30:26'),(84,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:31:26'),(85,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:31:31'),(86,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:32:13'),(87,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:32:17'),(88,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:33:10'),(89,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:33:14'),(90,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:33:57'),(91,'admin','83.147.61.244','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:34:05'),(92,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-18 10:40:16'),(93,'admin','83.147.61.249','Unknown','Chrome 12','Mac OS X','0','user.logout.success','2024-04-18 10:49:37'),(94,'admin','117.173.224.170','Unknown','Chrome 12','Mac OS X','0','login.success','2024-04-19 02:48:16');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'èœå•ID',
  `menu_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'èœå•åç§°',
  `parent_id` bigint DEFAULT '0' COMMENT 'çˆ¶èœå•ID',
  `order_num` int DEFAULT '0' COMMENT 'æ˜¾ç¤ºé¡ºåº',
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è·¯ç”±åœ°å€',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ç»„ä»¶è·¯å¾„',
  `query` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'è·¯ç”±å‚æ•°',
  `is_frame` int DEFAULT '1' COMMENT 'æ˜¯å¦ä¸ºå¤–é“¾ï¼ˆ0æ˜¯ 1å¦ï¼‰',
  `is_cache` int DEFAULT '0' COMMENT 'æ˜¯å¦ç¼“å­˜ï¼ˆ0ç¼“å­˜ 1ä¸ç¼“å­˜ï¼‰',
  `menu_type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'èœå•ç±»åž‹ï¼ˆMç›®å½• Cèœå• FæŒ‰é’®ï¼‰',
  `visible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'èœå•çŠ¶æ€ï¼ˆ0æ˜¾ç¤º 1éšè—ï¼‰',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'èœå•çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `perms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'æƒé™æ ‡è¯†',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT 'èœå•å›¾æ ‡',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='èœå•æƒé™è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'Info Management',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2024-03-19 07:38:15','',NULL,'System Management Catalog'),(2,'System Monitor',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2024-03-19 07:38:15','',NULL,'System monitoring directory'),(3,'Dev Tools',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2024-03-19 07:38:15','',NULL,'System Tools Catalog'),(100,'User',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2024-03-19 07:38:15','',NULL,'User Management Menu'),(101,'Role',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2024-03-19 07:38:15','',NULL,'Role Management Menu'),(102,'Menu',1,5,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-03-19 07:38:15','',NULL,'Menu Management Menu'),(103,'Department',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2024-03-19 07:38:15','',NULL,'Department Management Menu'),(104,'Position',1,3,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2024-03-19 07:38:15','',NULL,'Position Management Menu'),(106,'Settings',1,9,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2024-03-19 07:38:15','',NULL,'Parameter Setting Menu'),(107,'Announcement',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2024-03-19 07:38:15','',NULL,'Notification Announcement Menu'),(108,'Loggings',2,2,'log','','',1,0,'M','0','0','','log','admin','2024-03-19 07:38:15','',NULL,'Log Management Menu'),(109,'Online Users',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2024-03-19 07:38:15','',NULL,'Online User Menu'),(110,'Scheduled Tasks',3,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2024-03-19 07:38:15','',NULL,'Timed Task Menu'),(112,'Application Monitoring',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2024-03-19 07:38:15','',NULL,'Service Monitoring Menu'),(113,'Cache Monitoring',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2024-03-19 07:38:15','',NULL,'Cache monitoring menu'),(117,'System Interface',3,1,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-03-19 07:38:15','',NULL,'System Interface Menu'),(500,'Operation Logs',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-03-19 07:38:15','',NULL,'Operation log menu'),(501,'Login Logs',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-03-19 07:38:15','',NULL,'Login Log Menu'),(1000,'User queries',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1001,'User Addition',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1002,'User modification',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1003,'User deletion',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1004,'User export',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1005,'User import',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2024-03-19 07:38:15','',NULL,''),(1006,'reset password',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-03-19 07:38:15','',NULL,''),(1007,'Role Query',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1008,'Role Addition',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1009,'Role modification',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1010,'Role deletion',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1011,'Roles export',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1012,'Menu query',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1013,'Menu Addition',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1014,'Menu modification',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1015,'Menu deletion',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1016,'Department Query',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1017,'Department Addition',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1018,'Department modification',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1019,'Department deletion',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1020,'Post search',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1021,'Post Addition',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1022,'Post modification',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1023,'Post deletion',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1024,'Post export',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1030,'Parameter Query',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1031,'Parameter Addition',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1032,'Parameter modification',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1033,'Parameter deletion',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1034,'Parameter export',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1035,'Announcement inquiry',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1036,'Announcement Addition',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1037,'Announcement modification',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1038,'Announcement deletion',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1039,'Operation query',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1040,'Operation deletion',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1041,'Log export',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1042,'Login query',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1043,'Login Delete',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1044,'Log export',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-03-19 07:38:15','',NULL,''),(1045,'Account unlocking',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-03-19 07:38:15','',NULL,''),(1046,'Online query',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1047,'Batch forced Rollback',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2024-03-19 07:38:15','',NULL,''),(1048,'Single forced Rollback',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2024-03-19 07:38:15','',NULL,''),(1049,'Task Query',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2024-03-19 07:38:15','',NULL,''),(1050,'Task Addition',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2024-03-19 07:38:15','',NULL,''),(1051,'Task modification',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2024-03-19 07:38:15','',NULL,''),(1052,'Task deletion',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2024-03-19 07:38:15','',NULL,''),(1053,'Status modification',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2024-03-19 07:38:15','',NULL,''),(1054,'Task export',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2024-03-19 07:38:15','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT 'å…¬å‘ŠID',
  `notice_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'å…¬å‘Šæ ‡é¢˜',
  `notice_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'å…¬å‘Šç±»åž‹ï¼ˆ1é€šçŸ¥ 2å…¬å‘Šï¼‰',
  `notice_content` longblob COMMENT 'å…¬å‘Šå†…å®¹',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'å…¬å‘ŠçŠ¶æ€ï¼ˆ0æ­£å¸¸ 1å…³é—­ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='é€šçŸ¥å…¬å‘Šè¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'Kind reminder: the  version NEW will be released on July 1st, 2024','2',_binary 'New version content','0','admin','2024-03-19 07:38:16','',NULL,'administrator'),(2,'Maintenance Notice: 2024-04-01 system will be maintained in the early morning','1',_binary 'Maintenance content','0','admin','2024-03-19 07:38:16','',NULL,'administrator'),(10,'Vacations coming','2',_binary '<p>Vacations coming</p>','0','admin','2024-03-21 14:13:13','',NULL,NULL);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'æ—¥å¿—ä¸»é”®',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ¨¡å—æ ‡é¢˜',
  `business_type` int DEFAULT '0' COMMENT 'ä¸šåŠ¡ç±»åž‹ï¼ˆ0å…¶å®ƒ 1æ–°å¢ž 2ä¿®æ”¹ 3åˆ é™¤ï¼‰',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ–¹æ³•åç§°',
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¯·æ±‚æ–¹å¼',
  `operator_type` int DEFAULT '0' COMMENT 'æ“ä½œç±»åˆ«ï¼ˆ0å…¶å®ƒ 1åŽå°ç”¨æˆ· 2æ‰‹æœºç«¯ç”¨æˆ·ï¼‰',
  `oper_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ“ä½œäººå‘˜',
  `dept_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'éƒ¨é—¨åç§°',
  `oper_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¯·æ±‚URL',
  `oper_ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ä¸»æœºåœ°å€',
  `oper_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ“ä½œåœ°ç‚¹',
  `oper_param` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¯·æ±‚å‚æ•°',
  `json_result` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'è¿”å›žå‚æ•°',
  `status` int DEFAULT '0' COMMENT 'æ“ä½œçŠ¶æ€ï¼ˆ0æ­£å¸¸ 1å¼‚å¸¸ï¼‰',
  `error_msg` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'é”™è¯¯æ¶ˆæ¯',
  `oper_time` datetime DEFAULT NULL COMMENT 'æ“ä½œæ—¶é—´',
  `cost_time` bigint DEFAULT '0' COMMENT 'æ¶ˆè€—æ—¶é—´',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='æ“ä½œæ—¥å¿—è®°å½•';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (1,'Log Operation',9,'com.ruoyi.web.controller.monitor.SysOperlogController.clean()','DELETE',1,'admin','Research&Development','/monitor/operlog/clean','117.173.224.53','Unknown','{}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-03-23 05:04:30',54),(2,'Login Log',9,'com.ruoyi.web.controller.monitor.SysLogininforController.clean()','DELETE',1,'admin','Research&Development','/monitor/logininfor/clean','117.173.224.53','Unknown','{}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-03-23 05:04:44',43),(3,'Role Management',5,'com.ruoyi.web.controller.system.SysRoleController.export()','POST',1,'admin','R&D','/system/role/export','127.0.0.1','Intranet IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2024-03-27 03:24:09',369),(4,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133802A001.png','2024-03-27 05:38:03',450),(5,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133806A002.png','2024-03-27 05:38:07',368),(6,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133811A003.png','2024-03-27 05:38:11',426),(7,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133815A004.png','2024-03-27 05:38:16',472),(8,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133819A005.png','2024-03-27 05:38:20',465),(9,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','127.0.0.1','Intranet IP','',NULL,1,'/home/application/uploadPath/avatar/2024/03/27/avatar_20240327133826A006.png','2024-03-27 05:38:26',461),(10,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','117.173.222.241','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/03/27/avatar_20240327133904A001.png\",\"code\":200}',0,NULL,'2024-03-27 05:39:04',113),(11,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','117.173.222.241','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/03/27/IMG_1914_20240327134334A002.JPG\",\"code\":200}',0,NULL,'2024-03-27 05:43:34',12),(12,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','117.173.222.241','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/03/27/IMG_1916_20240327134410A003.JPG\",\"code\":200}',0,NULL,'2024-03-27 05:44:10',12),(13,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','117.173.225.209','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/04/16/白底证件照_20240416121552A001.jpg\",\"code\":200}',0,NULL,'2024-04-16 04:15:52',171),(14,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','83.147.61.249','Unknown','',NULL,1,'Malformed input or input contains unmappable characters: /home/application/uploadPath/avatar/2024/04/18/白底证件照_20240418140326A001.jpg','2024-04-18 06:03:26',151),(15,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','83.147.61.249','Unknown','',NULL,1,'Malformed input or input contains unmappable characters: /home/application/uploadPath/avatar/2024/04/18/白底证件照_20240418140344A002.jpg','2024-04-18 06:03:45',1),(16,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','83.147.61.249','Unknown','',NULL,1,'Malformed input or input contains unmappable characters: /home/application/uploadPath/avatar/2024/04/18/白底证件照_20240418140433A003.jpg','2024-04-18 06:04:34',1),(17,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','83.147.61.249','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/04/18/whiteback_20240418140501A004.jpg\",\"code\":200}',0,NULL,'2024-04-18 06:05:03',802),(18,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','117.173.224.170','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/04/18/whiteback_20240418140852A001.jpg\",\"code\":200}',0,NULL,'2024-04-18 06:08:52',119),(19,'Profile Picture',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'admin','R&D','/system/user/profile/avatar','83.147.61.249','Unknown','','{\"msg\":\"Succeed\",\"imgUrl\":\"/profile/avatar/2024/04/18/whiteback_20240418143626A005.jpg\",\"code\":200}',0,NULL,'2024-04-18 06:36:28',799),(20,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"Account self-service - verification code switch\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Verification code function enabledï¼ˆtrueï¼Œfalseï¼‰\",\"updateBy\":\"admin\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:27:38',1889),(21,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":3,\"configKey\":\"sys.index.sideTheme\",\"configName\":\"Main Frame Page - Sidebar Theme\",\"configType\":\"N\",\"configValue\":\"theme-dark\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"theme-dark;theme-light\",\"updateBy\":\"admin\",\"updateTime\":\"2024-03-21 05:33:44\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:29:18',1057),(22,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"Main Frame Page - Default Skin Style Name\",\"configType\":\"Y\",\"configValue\":\"skin-green\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"skin-blue;skin-green;skin-purple;skin-red;skin-yellow;\",\"updateBy\":\"admin\",\"updateTime\":\"2024-03-21 14:12:46\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:30:15',1050),(23,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":3,\"configKey\":\"sys.index.sideTheme\",\"configName\":\"Main Frame Page - Sidebar Theme\",\"configType\":\"Y\",\"configValue\":\"theme-dark\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"theme-dark;theme-light\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:29:18\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:30:55',1052),(24,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"Account self-service - verification code switch\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Verification code function enabledï¼ˆtrueï¼Œfalseï¼‰\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:27:37\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:31:02',1488),(25,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"Account self-service - verification code switch\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Verification code function enabledï¼ˆtrueï¼Œfalseï¼‰\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:31:02\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:31:20',1993),(26,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"Account self-service - verification code switch\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Verification code function enabledï¼ˆtrueï¼Œfalseï¼‰\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:31:19\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:31:46',1058),(27,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"Main Frame Page - Default Skin Style Name\",\"configType\":\"Y\",\"configValue\":\"skin-yellow\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"skin-blue;skin-green;skin-purple;skin-red;skin-yellow;\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:30:14\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:32:09',1051),(28,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":3,\"configKey\":\"sys.index.sideTheme\",\"configName\":\"Main Frame Page - Sidebar Theme\",\"configType\":\"Y\",\"configValue\":\"theme-light\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"theme-dark;theme-light\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:30:55\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:33:04',1057),(29,' Parameter Management ',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin','R&D','/system/config/1','83.147.61.244','Unknown','{}',NULL,1,'内置参数【sys.index.skinName】不能删除 ','2024-04-18 10:33:26',264),(30,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"Account self-service - whether to enable user registration function\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"User registration function enabled(true,false)\",\"updateBy\":\"admin\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:33:54',934),(31,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":2,\"configKey\":\"sys.user.initPassword\",\"configName\":\"Account Initial Password\",\"configType\":\"Y\",\"configValue\":\"123456\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Initialization password to be 123456\",\"updateBy\":\"admin\",\"updateTime\":\"2024-03-21 05:46:58\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:34:54',2020),(32,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"Verification code switch\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"Verification code function enabled, value could be true/false\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:31:46\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:35:35',1061),(33,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.244','Unknown','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"User Registration Enable \",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"User registration function enabled(true or false)\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:33:51\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:36:32',1053),(34,' Parameter Management ',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','R&D','/system/config','83.147.61.249','Unknown','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"User Registration Enable \",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-03-19 07:38:16\",\"params\":{},\"remark\":\"User registration function enabled(true or false)\",\"updateBy\":\"admin\",\"updateTime\":\"2024-04-18 10:36:28\"}','{\"msg\":\"Succeed\",\"code\":200}',0,NULL,'2024-04-18 10:37:57',1440);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'å²—ä½ID',
  `post_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'å²—ä½ç¼–ç ',
  `post_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'å²—ä½åç§°',
  `post_sort` int NOT NULL COMMENT 'æ˜¾ç¤ºé¡ºåº',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='å²—ä½ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','chairman',1,'1','admin','2024-03-19 07:38:15','admin','2024-03-21 14:12:16',''),(2,'se','project manager',2,'0','admin','2024-03-19 07:38:15','',NULL,''),(3,'hr','human resources',3,'0','admin','2024-03-19 07:38:15','admin','2024-03-21 14:12:33',''),(4,'user','employee',4,'0','admin','2024-03-19 07:38:15','admin','2024-03-23 04:01:08','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'è§’è‰²ID',
  `role_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§’è‰²åç§°',
  `role_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§’è‰²æƒé™å­—ç¬¦ä¸²',
  `role_sort` int NOT NULL COMMENT 'æ˜¾ç¤ºé¡ºåº',
  `data_scope` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT 'æ•°æ®èŒƒå›´ï¼ˆ1ï¼šå…¨éƒ¨æ•°æ®æƒé™ 2ï¼šè‡ªå®šæ•°æ®æƒé™ 3ï¼šæœ¬éƒ¨é—¨æ•°æ®æƒé™ 4ï¼šæœ¬éƒ¨é—¨åŠä»¥ä¸‹æ•°æ®æƒé™ï¼‰',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT 'èœå•æ ‘é€‰æ‹©é¡¹æ˜¯å¦å…³è”æ˜¾ç¤º',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT 'éƒ¨é—¨æ ‘é€‰æ‹©é¡¹æ˜¯å¦å…³è”æ˜¾ç¤º',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'è§’è‰²çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'åˆ é™¤æ ‡å¿—ï¼ˆ0ä»£è¡¨å­˜åœ¨ 2ä»£è¡¨åˆ é™¤ï¼‰',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='è§’è‰²ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'Super Administrator','admin',1,'1',1,1,'0','0','admin','2024-03-19 07:38:15','',NULL,'Super Administrator'),(2,'Common User','common',2,'2',1,1,'0','0','admin','2024-03-19 07:38:15','',NULL,'Common User'),(100,'你老大哥','老大哥',3,'1',1,1,'0','2','admin','2024-03-20 07:36:48','admin','2024-03-20 07:37:04','老大哥');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT 'è§’è‰²ID',
  `dept_id` bigint NOT NULL COMMENT 'éƒ¨é—¨ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='è§’è‰²å’Œéƒ¨é—¨å…³è”è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT 'è§’è‰²ID',
  `menu_id` bigint NOT NULL COMMENT 'èœå•ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='è§’è‰²å’Œèœå•å…³è”è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ç”¨æˆ·ID',
  `dept_id` bigint DEFAULT NULL COMMENT 'éƒ¨é—¨ID',
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ç”¨æˆ·è´¦å·',
  `nick_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ç”¨æˆ·æ˜µç§°',
  `user_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '00' COMMENT 'ç”¨æˆ·ç±»åž‹ï¼ˆ00ç³»ç»Ÿç”¨æˆ·ï¼‰',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'ç”¨æˆ·é‚®ç®±',
  `phonenumber` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ‰‹æœºå·ç ',
  `sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'ç”¨æˆ·æ€§åˆ«ï¼ˆ0ç”· 1å¥³ 2æœªçŸ¥ï¼‰',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å¤´åƒåœ°å€',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'å¯†ç ',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'å¸å·çŠ¶æ€ï¼ˆ0æ­£å¸¸ 1åœç”¨ï¼‰',
  `del_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'åˆ é™¤æ ‡å¿—ï¼ˆ0ä»£è¡¨å­˜åœ¨ 2ä»£è¡¨åˆ é™¤ï¼‰',
  `login_ip` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æœ€åŽç™»å½•IP',
  `login_date` datetime DEFAULT NULL COMMENT 'æœ€åŽç™»å½•æ—¶é—´',
  `create_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'åˆ›å»ºè€…',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'æ›´æ–°è€…',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç”¨æˆ·ä¿¡æ¯è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','Pokemon','00','ry@163.com','15888888888','0','/profile/avatar/2024/04/18/whiteback_20240418143626A005.jpg','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','117.173.224.170','2024-04-19 10:48:14','admin','2024-03-19 07:38:15','','2024-04-19 02:48:14','administrator'),(2,105,'ry','Ash','00','ry@qq.com','15666668766','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-03-19 07:38:15','admin','2024-03-19 07:38:15','admin','2024-03-21 13:45:14','Tester');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT 'ç”¨æˆ·ID',
  `post_id` bigint NOT NULL COMMENT 'å²—ä½ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç”¨æˆ·ä¸Žå²—ä½å…³è”è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT 'ç”¨æˆ·ID',
  `role_id` bigint NOT NULL COMMENT 'è§’è‰²ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç”¨æˆ·å’Œè§’è‰²å…³è”è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19  3:38:45
