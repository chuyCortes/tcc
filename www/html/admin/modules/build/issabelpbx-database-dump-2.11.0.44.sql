-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `asterisk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `asterisk`;


--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `variable` varchar(20) NOT NULL DEFAULT '',
  `value` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('need_reload','false'),('version','2.11.0'),('ALLOW_SIP_ANON','no');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ampusers`
--

DROP TABLE IF EXISTS `ampusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ampusers` (
  `username` varchar(255) NOT NULL,
  `password_sha1` varchar(40) NOT NULL,
  `extension_low` varchar(20) NOT NULL DEFAULT '',
  `extension_high` varchar(20) NOT NULL DEFAULT '',
  `deptname` varchar(20) NOT NULL DEFAULT '',
  `sections` blob NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ampusers`
--

LOCK TABLES `ampusers` WRITE;
/*!40000 ALTER TABLE `ampusers` DISABLE KEYS */;
INSERT INTO `ampusers` VALUES ('admin','c6d331ade0935f8ca6c023eb2ba077ec94acae1e','','','','*');
/*!40000 ALTER TABLE `ampusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `recording_id` int(11) DEFAULT NULL,
  `allow_skip` int(11) DEFAULT NULL,
  `post_dest` varchar(255) DEFAULT NULL,
  `return_ivr` tinyint(1) NOT NULL DEFAULT '0',
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  `repeat_msg` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`announcement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `immortal` varchar(25) DEFAULT NULL,
  `data` longtext,
  `email` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_cache`
--

DROP TABLE IF EXISTS `backup_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_cache` (
  `id` varchar(50) NOT NULL,
  `manifest` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_cache`
--

LOCK TABLES `backup_cache` WRITE;
/*!40000 ALTER TABLE `backup_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_details`
--

DROP TABLE IF EXISTS `backup_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_details` (
  `backup_id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `index` varchar(25) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_details`
--

LOCK TABLES `backup_details` WRITE;
/*!40000 ALTER TABLE `backup_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_items`
--

DROP TABLE IF EXISTS `backup_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_items` (
  `backup_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `path` text,
  `exclude` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_items`
--

LOCK TABLES `backup_items` WRITE;
/*!40000 ALTER TABLE `backup_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_old`
--

DROP TABLE IF EXISTS `backup_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_old` (
  `name` varchar(50) DEFAULT NULL,
  `voicemail` varchar(50) DEFAULT NULL,
  `recordings` varchar(50) DEFAULT NULL,
  `configurations` varchar(50) DEFAULT NULL,
  `cdr` varchar(55) DEFAULT NULL,
  `fop` varchar(50) DEFAULT NULL,
  `minutes` varchar(50) DEFAULT NULL,
  `hours` varchar(50) DEFAULT NULL,
  `days` varchar(50) DEFAULT NULL,
  `months` varchar(50) DEFAULT NULL,
  `weekdays` varchar(50) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftpuser` varchar(50) DEFAULT NULL,
  `ftppass` varchar(50) DEFAULT NULL,
  `ftphost` varchar(50) DEFAULT NULL,
  `ftpdir` varchar(150) DEFAULT NULL,
  `sshuser` varchar(50) DEFAULT NULL,
  `sshkey` varchar(150) DEFAULT NULL,
  `sshhost` varchar(50) DEFAULT NULL,
  `sshdir` varchar(150) DEFAULT NULL,
  `emailaddr` varchar(75) DEFAULT NULL,
  `emailmaxsize` varchar(25) DEFAULT NULL,
  `emailmaxtype` varchar(5) DEFAULT NULL,
  `admin` varchar(10) DEFAULT NULL,
  `include` blob,
  `exclude` blob,
  `sudo` varchar(25) DEFAULT NULL,
  `remotesshhost` varchar(50) DEFAULT NULL,
  `remotesshuser` varchar(50) DEFAULT NULL,
  `remotesshkey` varchar(150) DEFAULT NULL,
  `remoterestore` varchar(5) DEFAULT NULL,
  `overwritebackup` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_old`
--

LOCK TABLES `backup_old` WRITE;
/*!40000 ALTER TABLE `backup_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_server_details`
--

DROP TABLE IF EXISTS `backup_server_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_server_details` (
  `server_id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_server_details`
--

LOCK TABLES `backup_server_details` WRITE;
/*!40000 ALTER TABLE `backup_server_details` DISABLE KEYS */;
INSERT INTO `backup_server_details` VALUES (1,'path','__ASTVARLIBDIR__/backups'),(2,'path','__ASTSPOOLDIR__/backup'),(3,'host','__AMPDBHOST__'),(3,'port','3306'),(3,'user','__AMPDBUSER__'),(3,'dbname','__AMPDBNAME__'),(3,'password','__AMPDBPASS__'),(4,'host','__CDRDBHOST__'),(4,'port','__CDRDBPORT__'),(4,'user','__CDRDBUSER__'),(4,'dbname','__CDRDBNAME__'),(4,'password','__CDRDBPASS__');
/*!40000 ALTER TABLE `backup_server_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_servers`
--

DROP TABLE IF EXISTS `backup_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `desc` varchar(150) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `readonly` varchar(250) DEFAULT NULL,
  `immortal` varchar(25) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_servers`
--

LOCK TABLES `backup_servers` WRITE;
/*!40000 ALTER TABLE `backup_servers` DISABLE KEYS */;
INSERT INTO `backup_servers` VALUES (1,'Legacy Backup','Location of backups pre 2.10','local','a:1:{i:0;s:1:\"*\";}','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(2,'Local Storage','Storage location for backups','local','a:1:{i:0;s:1:\"*\";}','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(3,'Config server','PBX config server, generally a local database server','mysql','a:1:{i:0;s:1:\"*\";}','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(4,'CDR server','CDR server, generally a local database server','mysql','a:1:{i:0;s:1:\"*\";}','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}');
/*!40000 ALTER TABLE `backup_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_template_details`
--

DROP TABLE IF EXISTS `backup_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_template_details` (
  `template_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `path` text,
  `exclude` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_template_details`
--

LOCK TABLES `backup_template_details` WRITE;
/*!40000 ALTER TABLE `backup_template_details` DISABLE KEYS */;
INSERT INTO `backup_template_details` VALUES (1,'mysql','server-3','a:1:{i:0;s:0:\"\";}'),(1,'astdb','','a:1:{i:0;s:0:\"\";}'),(2,'mysql','server-3','a:1:{i:0;s:0:\"\";}'),(2,'astdb','','a:1:{i:0;s:0:\"\";}'),(2,'mysql','server-4','a:1:{i:0;s:0:\"\";}'),(2,'dir','__ASTETCDIR__','a:1:{i:0;s:0:\"\";}'),(2,'dir','__AMPWEBROOT__','a:1:{i:0;s:0:\"\";}'),(2,'dir','__AMPBIN__','a:2:{i:0;s:20:\"__ASTVARLIBDIR__/moh\";i:1;s:23:\"__ASTVARLIBDIR__/sounds\";}'),(2,'dir','/etc/dahdi','a:1:{i:0;s:0:\"\";}'),(3,'mysql','server-4','a:1:{i:0;s:0:\"\";}'),(4,'dir','__ASTSPOOLDIR__/voicemail','a:1:{i:0;s:0:\"\";}'),(5,'dir','__ASTVARLIBDIR__/moh','a:1:{i:0;s:0:\"\";}'),(5,'dir','__ASTVARLIBDIR__/sounds/custom','a:1:{i:0;s:0:\"\";}'),(6,'mysql','server-3','a:9:{i:0;s:6:\"backup\";i:1;s:12:\"backup_cache\";i:2;s:14:\"backup_details\";i:3;s:12:\"backup_items\";i:4;s:21:\"backup_server_details\";i:5;s:14:\"backup_servers\";i:6;s:23:\"backup_template_details\";i:7;s:16:\"backup_templates\";i:8;s:0:\"\";}');
/*!40000 ALTER TABLE `backup_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_templates`
--

DROP TABLE IF EXISTS `backup_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `desc` varchar(150) DEFAULT NULL,
  `immortal` varchar(25) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_templates`
--

LOCK TABLES `backup_templates` WRITE;
/*!40000 ALTER TABLE `backup_templates` DISABLE KEYS */;
INSERT INTO `backup_templates` VALUES (1,'Config Backup','Configurations only','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(2,'Full Backup','A full backup of core settings and web files, dosen\'t include system sounds or recordings.','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(3,'CDR\'s','Call Detail Records','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(4,'Voice Mail','Voice Mail Storage','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(5,'System Audio','All system audio - including IVR prompts and Music On Hold. DOES NOT BACKUP VOICEMAIL','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}'),(6,'Exclude Backup Settings','Exclude Backup\'s settings so that they dont get restored, usefull for a remote restore','true','a:1:{s:10:\"created_by\";s:11:\"install.php\";}');
/*!40000 ALTER TABLE `backup_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callback`
--

DROP TABLE IF EXISTS `callback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callback` (
  `callback_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `callbacknum` varchar(100) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `sleep` int(11) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`callback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callback`
--

LOCK TABLES `callback` WRITE;
/*!40000 ALTER TABLE `callback` DISABLE KEYS */;
/*!40000 ALTER TABLE `callback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callrecording`
--

DROP TABLE IF EXISTS `callrecording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callrecording` (
  `callrecording_id` int(11) NOT NULL AUTO_INCREMENT,
  `callrecording_mode` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`callrecording_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callrecording`
--

LOCK TABLES `callrecording` WRITE;
/*!40000 ALTER TABLE `callrecording` DISABLE KEYS */;
/*!40000 ALTER TABLE `callrecording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callrecording_module`
--

DROP TABLE IF EXISTS `callrecording_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callrecording_module` (
  `extension` varchar(50) DEFAULT NULL,
  `cidnum` varchar(50) DEFAULT '',
  `callrecording` varchar(10) DEFAULT NULL,
  `display` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callrecording_module`
--

LOCK TABLES `callrecording_module` WRITE;
/*!40000 ALTER TABLE `callrecording_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `callrecording_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidlookup`
--

DROP TABLE IF EXISTS `cidlookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidlookup` (
  `cidlookup_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `sourcetype` varchar(100) NOT NULL,
  `cache` tinyint(1) NOT NULL DEFAULT '0',
  `deptname` varchar(30) DEFAULT NULL,
  `http_host` varchar(30) DEFAULT NULL,
  `http_port` varchar(30) DEFAULT NULL,
  `http_username` varchar(30) DEFAULT NULL,
  `http_password` varchar(30) DEFAULT NULL,
  `http_path` varchar(100) DEFAULT NULL,
  `http_query` varchar(100) DEFAULT NULL,
  `mysql_host` varchar(60) DEFAULT NULL,
  `mysql_dbname` varchar(60) DEFAULT NULL,
  `mysql_query` text,
  `mysql_username` varchar(30) DEFAULT NULL,
  `mysql_password` varchar(30) DEFAULT NULL,
  `mysql_charset` varchar(30) DEFAULT NULL,
  `opencnam_account_sid` varchar(34) DEFAULT NULL,
  `opencnam_auth_token` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`cidlookup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidlookup`
--

LOCK TABLES `cidlookup` WRITE;
/*!40000 ALTER TABLE `cidlookup` DISABLE KEYS */;
INSERT INTO `cidlookup` VALUES (5,'OpenCNAM','opencnam',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cidlookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidlookup_incoming`
--

DROP TABLE IF EXISTS `cidlookup_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidlookup_incoming` (
  `cidlookup_id` int(11) NOT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `cidnum` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidlookup_incoming`
--

LOCK TABLES `cidlookup_incoming` WRITE;
/*!40000 ALTER TABLE `cidlookup_incoming` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidlookup_incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronmanager`
--

DROP TABLE IF EXISTS `cronmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronmanager` (
  `module` varchar(24) NOT NULL DEFAULT '',
  `id` varchar(24) NOT NULL DEFAULT '',
  `time` varchar(5) DEFAULT NULL,
  `freq` int(11) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `command` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`module`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronmanager`
--

LOCK TABLES `cronmanager` WRITE;
/*!40000 ALTER TABLE `cronmanager` DISABLE KEYS */;
INSERT INTO `cronmanager` VALUES ('module_admin','UPDATES','21',24,0,'/var/lib/asterisk/bin/module_admin listonline');
/*!40000 ALTER TABLE `cronmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_destinations`
--

DROP TABLE IF EXISTS `custom_destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_destinations` (
  `custom_dest` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`custom_dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_destinations`
--

LOCK TABLES `custom_destinations` WRITE;
/*!40000 ALTER TABLE `custom_destinations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_extensions`
--

DROP TABLE IF EXISTS `custom_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_extensions` (
  `custom_exten` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`custom_exten`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_extensions`
--

LOCK TABLES `custom_extensions` WRITE;
/*!40000 ALTER TABLE `custom_extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcontexts_contexts`
--

DROP TABLE IF EXISTS `customcontexts_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customcontexts_contexts` (
  `context` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `dialrules` varchar(1000) DEFAULT NULL,
  `faildestination` varchar(250) DEFAULT NULL,
  `featurefaildestination` varchar(250) DEFAULT NULL,
  `failpin` varchar(100) DEFAULT NULL,
  `failpincdr` tinyint(1) NOT NULL DEFAULT '0',
  `featurefailpin` varchar(100) DEFAULT NULL,
  `featurefailpincdr` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`context`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcontexts_contexts`
--

LOCK TABLES `customcontexts_contexts` WRITE;
/*!40000 ALTER TABLE `customcontexts_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customcontexts_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcontexts_contexts_list`
--

DROP TABLE IF EXISTS `customcontexts_contexts_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customcontexts_contexts_list` (
  `context` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`context`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcontexts_contexts_list`
--

LOCK TABLES `customcontexts_contexts_list` WRITE;
/*!40000 ALTER TABLE `customcontexts_contexts_list` DISABLE KEYS */;
INSERT INTO `customcontexts_contexts_list` VALUES ('from-internal','Default Internal Context',1),('from-internal-additional','Internal Dialplan',0),('outbound-allroutes','Outbound Routes',0);
/*!40000 ALTER TABLE `customcontexts_contexts_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcontexts_includes`
--

DROP TABLE IF EXISTS `customcontexts_includes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customcontexts_includes` (
  `context` varchar(100) NOT NULL DEFAULT '',
  `include` varchar(100) NOT NULL DEFAULT '',
  `timegroupid` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `userules` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`context`,`include`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcontexts_includes`
--

LOCK TABLES `customcontexts_includes` WRITE;
/*!40000 ALTER TABLE `customcontexts_includes` DISABLE KEYS */;
/*!40000 ALTER TABLE `customcontexts_includes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcontexts_includes_list`
--

DROP TABLE IF EXISTS `customcontexts_includes_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customcontexts_includes_list` (
  `context` varchar(100) NOT NULL DEFAULT '',
  `include` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `missing` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`context`,`include`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcontexts_includes_list`
--

LOCK TABLES `customcontexts_includes_list` WRITE;
/*!40000 ALTER TABLE `customcontexts_includes_list` DISABLE KEYS */;
INSERT INTO `customcontexts_includes_list` VALUES ('from-internal','from-internal-additional','ENTIRE Basic Internal Dialplan',0,0),('from-internal','from-internal-custom','Custom Internal Dialplan',0,0),('from-internal','parkedcalls','Call Parking',0,0),('from-internal-additional','outbound-allroutes','ALL OUTBOUND ROUTES',0,0);
/*!40000 ALTER TABLE `customcontexts_includes_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customcontexts_module`
--

DROP TABLE IF EXISTS `customcontexts_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customcontexts_module` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customcontexts_module`
--

LOCK TABLES `customcontexts_module` WRITE;
/*!40000 ALTER TABLE `customcontexts_module` DISABLE KEYS */;
INSERT INTO `customcontexts_module` VALUES ('displaysortforincludes','1'),('moduledisplayname','Custom Contexts'),('modulerawname','customcontexts'),('moduleversion','0.3.2');
/*!40000 ALTER TABLE `customcontexts_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdb`
--

DROP TABLE IF EXISTS `customerdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `addr1` varchar(150) NOT NULL,
  `addr2` varchar(150) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(5) NOT NULL,
  `zip` varchar(12) DEFAULT NULL,
  `sip` varchar(20) DEFAULT NULL,
  `did` varchar(45) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `account` varchar(6) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdb`
--

LOCK TABLES `customerdb` WRITE;
/*!40000 ALTER TABLE `customerdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdi`
--

DROP TABLE IF EXISTS `dahdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dahdi` (
  `id` varchar(20) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL DEFAULT '',
  `flags` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdi`
--

LOCK TABLES `dahdi` WRITE;
/*!40000 ALTER TABLE `dahdi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dahdichandids`
--

DROP TABLE IF EXISTS `dahdichandids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dahdichandids` (
  `channel` int(11) NOT NULL DEFAULT '0',
  `description` varchar(40) NOT NULL DEFAULT '',
  `did` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dahdichandids`
--

LOCK TABLES `dahdichandids` WRITE;
/*!40000 ALTER TABLE `dahdichandids` DISABLE KEYS */;
/*!40000 ALTER TABLE `dahdichandids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daynight`
--

DROP TABLE IF EXISTS `daynight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daynight` (
  `ext` varchar(10) NOT NULL DEFAULT '',
  `dmode` varchar(40) NOT NULL DEFAULT '',
  `dest` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ext`,`dmode`,`dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daynight`
--

LOCK TABLES `daynight` WRITE;
/*!40000 ALTER TABLE `daynight` DISABLE KEYS */;
/*!40000 ALTER TABLE `daynight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `tech` varchar(10) NOT NULL DEFAULT '',
  `dial` varchar(50) NOT NULL DEFAULT '',
  `devicetype` varchar(5) NOT NULL DEFAULT '',
  `user` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `emergency_cid` varchar(100) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `tech` (`tech`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disa`
--

DROP TABLE IF EXISTS `disa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disa` (
  `disa_id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `cid` varchar(50) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  `digittimeout` int(11) DEFAULT NULL,
  `resptimeout` int(11) DEFAULT NULL,
  `needconf` varchar(10) DEFAULT NULL,
  `hangup` varchar(10) DEFAULT NULL,
  `keepcid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`disa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disa`
--

LOCK TABLES `disa` WRITE;
/*!40000 ALTER TABLE `disa` DISABLE KEYS */;
/*!40000 ALTER TABLE `disa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extensions` (
  `context` varchar(45) NOT NULL DEFAULT 'default',
  `extension` varchar(45) NOT NULL DEFAULT '',
  `priority` varchar(5) NOT NULL DEFAULT '1',
  `application` varchar(45) NOT NULL DEFAULT '',
  `args` varchar(255) DEFAULT NULL,
  `descr` text,
  `flags` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`context`,`extension`,`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions`
--

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
INSERT INTO `extensions` VALUES ('outrt-001-9_outside','_9.','1','Macro','dialout-trunk,1,${EXTEN:1}',NULL,0),('outrt-001-9_outside','_9.','2','Macro','outisbusy','No available circuits',0),('outbound-allroutes','include','1','outrt-001-9_outside','','',2);
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fax_details`
--

DROP TABLE IF EXISTS `fax_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fax_details` (
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(510) DEFAULT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fax_details`
--

LOCK TABLES `fax_details` WRITE;
/*!40000 ALTER TABLE `fax_details` DISABLE KEYS */;
INSERT INTO `fax_details` VALUES ('minrate','14400'),('maxrate','14400'),('ecm','yes'),('legacy_mode','no'),('force_detection','no'),('sender_address','fax@issabel.org'),('fax_rx_email','fax@mydomain.com');
/*!40000 ALTER TABLE `fax_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fax_incoming`
--

DROP TABLE IF EXISTS `fax_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fax_incoming` (
  `cidnum` varchar(20) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `detection` varchar(20) DEFAULT NULL,
  `detectionwait` varchar(5) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `legacy_email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fax_incoming`
--

LOCK TABLES `fax_incoming` WRITE;
/*!40000 ALTER TABLE `fax_incoming` DISABLE KEYS */;
/*!40000 ALTER TABLE `fax_incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fax_users`
--

DROP TABLE IF EXISTS `fax_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fax_users` (
  `user` varchar(15) DEFAULT NULL,
  `faxenabled` varchar(10) DEFAULT NULL,
  `faxemail` text,
  `faxattachformat` varchar(10) DEFAULT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fax_users`
--

LOCK TABLES `fax_users` WRITE;
/*!40000 ALTER TABLE `fax_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fax_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featurecodes`
--

DROP TABLE IF EXISTS `featurecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurecodes` (
  `modulename` varchar(50) NOT NULL DEFAULT '',
  `featurename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `defaultcode` varchar(20) DEFAULT NULL,
  `customcode` varchar(20) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `providedest` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`modulename`,`featurename`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featurecodes`
--

LOCK TABLES `featurecodes` WRITE;
/*!40000 ALTER TABLE `featurecodes` DISABLE KEYS */;
INSERT INTO `featurecodes` VALUES ('core','userlogon','User Logon','*11',NULL,1,0),('core','userlogoff','User Logoff','*12',NULL,1,0),('core','zapbarge','ZapBarge','888',NULL,1,1),('core','simu_pstn','Simulate Incoming Call','7777',NULL,1,1),('fax','simu_fax','Dial System FAX','666',NULL,1,1),('core','chanspy','ChanSpy','555',NULL,1,1),('core','pickup','Directed Call Pickup','**',NULL,1,0),('core','pickupexten','Asterisk General Call Pickup','*8',NULL,1,0),('core','blindxfer','In-Call Asterisk Blind Transfer','##',NULL,1,0),('core','atxfer','In-Call Asterisk Attended Transfer','*2',NULL,1,0),('core','automon','In-Call Asterisk Toggle Call Recording','*1',NULL,1,0),('core','disconnect','In-Call Asterisk Disconnect Code','**',NULL,1,0),('queues','que_pause_toggle','Queue Pause Toggle','*46',NULL,1,0),('infoservices','calltrace','Call Trace','*69',NULL,1,0),('infoservices','echotest','Echo Test','*43',NULL,1,1),('infoservices','speakingclock','Speaking Clock','*60',NULL,1,1),('infoservices','speakextennum','Speak Your Exten Number','*65',NULL,1,0),('voicemail','myvoicemail','My Voicemail','*97',NULL,1,0),('voicemail','dialvoicemail','Dial Voicemail','*98',NULL,1,1),('recordings','record_save','Save Recording','*77',NULL,1,0),('recordings','record_check','Check Recording','*99',NULL,1,0),('callforward','cfon','Call Forward All Activate','*72',NULL,1,0),('callforward','cfoff','Call Forward All Deactivate','*73',NULL,1,0),('callforward','cfoff_any','Call Forward All Prompting Deactivate','*74',NULL,1,0),('callforward','cfbon','Call Forward Busy Activate','*90',NULL,1,0),('callforward','cfboff','Call Forward Busy Deactivate','*91',NULL,1,0),('callforward','cfboff_any','Call Forward Busy Prompting Deactivate','*92',NULL,1,0),('callforward','cfuon','Call Forward No Answer/Unavailable Activate','*52',NULL,1,0),('callforward','cfuoff','Call Forward No Answer/Unavailable Deactivate','*53',NULL,1,0),('callwaiting','cwon','Call Waiting - Activate','*70',NULL,1,0),('callwaiting','cwoff','Call Waiting - Deactivate','*71',NULL,1,0),('dictate','dodictate','Perform dictation','*34',NULL,1,0),('dictate','senddictate','Email completed dictation','*35',NULL,1,0),('donotdisturb','dnd_on','DND Activate','*78',NULL,1,0),('donotdisturb','dnd_off','DND Deactivate','*79',NULL,1,0),('donotdisturb','dnd_toggle','DND Toggle','*76',NULL,1,0),('findmefollow','fmf_toggle','Findme Follow Toggle','*21',NULL,1,0),('paging','intercom-prefix','Intercom prefix','*80',NULL,0,0),('paging','intercom-on','User Intercom Allow','*54',NULL,0,0),('paging','intercom-off','User Intercom Disallow','*55',NULL,0,0),('pbdirectory','app-pbdirectory','Phonebook dial-by-name directory','411',NULL,1,1),('blacklist','blacklist_add','Blacklist a number','*30',NULL,1,1),('blacklist','blacklist_remove','Remove a number from the blacklist','*31',NULL,1,1),('blacklist','blacklist_last','Blacklist the last caller','*32',NULL,1,0),('speeddial','callspeeddial','Speeddial prefix','*0',NULL,1,0),('speeddial','setspeeddial','Set user speed dial','*75',NULL,1,0),('gabcast','gabdial','Connect to Gabcast','*422',NULL,1,0),('queues','que_toggle','Queue Toggle','*45',NULL,1,0),('callforward','cf_toggle','Call Forward Toggle','*740',NULL,1,0),('parking','parkedcall','Pickup ParkedCall Prefix','*85',NULL,1,1),('voicemail','directdialvoicemail','Direct Dial Prefix','*',NULL,1,0),('callforward','cfpon','Call Forward All Prompting Activate','*720',NULL,1,0),('callforward','cfbpon','Call Forward Busy Prompting Activate','*900',NULL,1,0),('callforward','cfupon','Call Forward No Answer/Unavailable Prompting Activate','*520',NULL,1,0),('conferences','conf_status','Conference Status','*87',NULL,1,0),('daynight','toggle-mode-all','All: Call Flow Toggle','*28',NULL,1,0),('queues','que_callers','Queue Callers','*47',NULL,1,0),('timeconditions','toggle-mode-all','All: Time Condition Override','*27',NULL,1,0);
/*!40000 ALTER TABLE `featurecodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `findmefollow`
--

DROP TABLE IF EXISTS `findmefollow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `findmefollow` (
  `grpnum` varchar(20) NOT NULL,
  `strategy` varchar(50) NOT NULL,
  `grptime` smallint(6) NOT NULL,
  `grppre` varchar(100) DEFAULT NULL,
  `grplist` varchar(255) NOT NULL,
  `annmsg_id` int(11) DEFAULT NULL,
  `postdest` varchar(255) DEFAULT NULL,
  `dring` varchar(255) DEFAULT NULL,
  `remotealert_id` int(11) DEFAULT NULL,
  `needsconf` varchar(10) DEFAULT NULL,
  `toolate_id` int(11) DEFAULT NULL,
  `pre_ring` smallint(6) NOT NULL DEFAULT '0',
  `ringing` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`grpnum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `findmefollow`
--

LOCK TABLES `findmefollow` WRITE;
/*!40000 ALTER TABLE `findmefollow` DISABLE KEYS */;
/*!40000 ALTER TABLE `findmefollow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issabelpbx_log`
--

DROP TABLE IF EXISTS `issabelpbx_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issabelpbx_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section` varchar(50) DEFAULT NULL,
  `level` enum('error','warning','debug','devel-debug') NOT NULL DEFAULT 'error',
  `status` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`,`level`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issabelpbx_log`
--

LOCK TABLES `issabelpbx_log` WRITE;
/*!40000 ALTER TABLE `issabelpbx_log` DISABLE KEYS */;
INSERT INTO `issabelpbx_log` VALUES (1,'2006-11-06 01:55:36','retrieve_conf','devel-debug',0,'Started retrieve_conf, DB Connection OK'),(2,'2006-11-06 01:55:36','retrieve_conf','devel-debug',0,'Writing extensions_additional.conf');
/*!40000 ALTER TABLE `issabelpbx_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabcast`
--

DROP TABLE IF EXISTS `gabcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gabcast` (
  `ext` varchar(50) NOT NULL,
  `channbr` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ext`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabcast`
--

LOCK TABLES `gabcast` WRITE;
/*!40000 ALTER TABLE `gabcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `gabcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals` (
  `variable` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES ('FAX_RX','system'),('FAX_RX_EMAIL','fax@mydomain.com'),('FAX_RX_FROM','fax@issabel.org');
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iax`
--

DROP TABLE IF EXISTS `iax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iax` (
  `id` varchar(20) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL,
  `flags` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iax`
--

LOCK TABLES `iax` WRITE;
/*!40000 ALTER TABLE `iax` DISABLE KEYS */;
/*!40000 ALTER TABLE `iax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iaxsettings`
--

DROP TABLE IF EXISTS `iaxsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iaxsettings` (
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL DEFAULT '',
  `seq` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`seq`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iaxsettings`
--

LOCK TABLES `iaxsettings` WRITE;
/*!40000 ALTER TABLE `iaxsettings` DISABLE KEYS */;
INSERT INTO `iaxsettings` VALUES ('ulaw','1',0,1),('alaw','1',1,1),('slin','',2,1),('g726','',3,1),('gsm','1',4,1),('g729','',5,1),('ilbc','',6,1),('g723','',7,1),('g726aal2','',8,1),('adpcm','',9,1),('lpc10','',10,1),('speex','',11,1),('g722','',12,1);
/*!40000 ALTER TABLE `iaxsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incoming`
--

DROP TABLE IF EXISTS `incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incoming` (
  `cidnum` varchar(20) DEFAULT NULL,
  `extension` varchar(50) NOT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `faxexten` varchar(20) DEFAULT NULL,
  `faxemail` varchar(50) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `wait` int(2) DEFAULT NULL,
  `privacyman` tinyint(1) DEFAULT NULL,
  `alertinfo` varchar(255) DEFAULT NULL,
  `ringing` varchar(20) DEFAULT NULL,
  `mohclass` varchar(80) NOT NULL DEFAULT 'default',
  `description` varchar(80) DEFAULT NULL,
  `grppre` varchar(80) DEFAULT NULL,
  `delay_answer` int(2) DEFAULT NULL,
  `pricid` varchar(20) DEFAULT NULL,
  `pmmaxretries` varchar(2) DEFAULT NULL,
  `pmminlength` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoming`
--

LOCK TABLES `incoming` WRITE;
/*!40000 ALTER TABLE `incoming` DISABLE KEYS */;
/*!40000 ALTER TABLE `incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indications_zonelist`
--

DROP TABLE IF EXISTS `indications_zonelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indications_zonelist` (
  `name` varchar(80) NOT NULL,
  `iso` varchar(20) NOT NULL,
  `conf` blob,
  PRIMARY KEY (`iso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indications_zonelist`
--

LOCK TABLES `indications_zonelist` WRITE;
/*!40000 ALTER TABLE `indications_zonelist` DISABLE KEYS */;
INSERT INTO `indications_zonelist` VALUES ('Angola','ao','ringcadence = 1000,5000\nbusy = 425/500,0/500\ncongestion = 500/500,0500\ndial = 425\nringing = 25/1000,0/5000\ncallwaiting = 400/1000,0/5000\n'),('Argentina','ar','ringcadence = 1000,4500\ndial = 425\nbusy = 425/300,0/300\nring = 425/1000,0/4500\ncongestion = 425/200,0/300\ncallwaiting = 425/200,0/9000\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425/330,0/330,425/660,0/660\nrecord = 1400/500,0/14000\ninfo = 425/100,0/100\nstutter = 425/450,0/50\n'),('Australia','au','ringcadence = 400,200,400,2000\ndial = 413+438\nbusy = 425/375,0/375\nring = 413+438/400,0/200,413+438/400,0/2000\ncongestion = 425/375,0/375,420/375,0/375\ncallwaiting = 425/200,0/200,425/200,0/4400\ndialrecall = 413+438\nrecord = !425/1000,!0/15000,425/360,0/15000\ninfo = 425/2500,0/500\nstd = !525/100,!0/100,!525/100,!0/100,!525/100,!0/100,!525/100,!0/100,!525/100\nfacility = 425\nstutter = 413+438/100,0/40\nringmobile = 400+450/400,0/200,400+450/400,0/2000\n'),('Austria','at','ringcadence = 1000,5000\ndial = 420\nbusy = 420/400,0/400\nring = 420/1000,0/5000\ncongestion = 420/200,0/200\ncallwaiting = 420/40,0/1960\ndialrecall = 420\nrecord = 1400/80,0/14920\ninfo = 950/330,1450/330,1850/330,0/1000\nstutter = 380+420\n'),('Belgium','be','ringcadence = 1000,3000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/3000\ncongestion = 425/167,0/167\ncallwaiting = 1400/175,0/175,1400/175,0/3500\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = 900/330,1400/330,1800/330,0/1000\nstutter = 425/1000,0/250\n'),('Brazil','br','ringcadence = 1000,4000\ndial = 425\nbusy = 425/250,0/250\nring = 425/1000,0/4000\ncongestion = 425/250,0/250,425/750,0/250\ncallwaiting = 425/50,0/1000\ndialrecall = 350+440\nrecord = 425/250,0/250\ninfo = 950/330,1400/330,1800/330\nstutter = 350+440\n'),('Bulgaria','bg','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/250,0/250\ncallwaiting = 425/150,0/150,425/150,0/4000\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/425,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 425/1500,0/100\n'),('Chile','cl','ringcadence = 1000,3000\ndial = 400\nbusy = 400/500,0/500\nring = 400/1000,0/3000\ncongestion = 400/200,0/200\ncallwaiting = 400/250,0/8750\ndialrecall = !400/100,!0/100,!400/100,!0/100,!400/100,!0/100,400\nrecord = 1400/500,0/15000\ninfo = 950/333,1400/333,1800/333,0/1000\nstutter = !400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,400\n'),('China','cn','ringcadence = 1000,4000\ndial = 450\nbusy = 450/350,0/350\nring = 450/1000,0/4000\ncongestion = 450/700,0/700\ncallwaiting = 450/400,0/4000\ndialrecall = 450\nrecord = 950/400,0/10000\ninfo = 450/100,0/100,450/100,0/100,450/100,0/100,450/400,0/400\nstutter = 450+425\n'),('Colombia (Republic of)','co','ringcadance = 1000,4000\ndial = 425\nbusy = 425/250,0/250\nring = 425/1000,0/4500\ncongestion = 425/100,0/250,425/350,0/250,425/650,0/250\ncallwaiting = 400+450/300,0/6000\ndialrecall = 425\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0/1000\n'),('Costa Rica','cr','ringcadence = 1203,4797\ndial = 450\nbusy = 450/330,0/330\nring = 450/1200,0/4900\ncongestion = 450/330,0/330\ncallwaiting = 450/150,0/150,450/150,0/8000\\dialrecall = !450/100,!0/100,!450/100,!0/100,!450/100,!0/100,450\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !450/100,!0/100,!450/100,!0/100,!450/100,!0/100,!450/100,!0/100,!42\n'),('Czech Republic','cz','ringcadence = 1000,4000\ndial = 425/330,0/330,425/660,0/660\nbusy = 425/330,0/330\nring = 425/1000,0/4000\ncongestion = 425/165,0/165\ncallwaiting = 425/330,0/9000\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425/330,0/330,425/660,0/660\nrecord = 1400/500,0/14000\ninfo = 950/330,0/30,1400/330,0/30,1800/330,0/1000\nstutter = 425/450,0/50\n'),('Denmark','dk','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = !425/200,!0/600,!425/200,!0/3000,!425/200,!0/200,!425/200,0\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/80,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 425/450,0/50\n'),('Estonia','ee','ringcadence = 1000,4000\ndial = 425\nbusy = 425/300,0/300\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 950/650,0/325,950/325,0/30,1400/1300,0/2600\ndialrecall = 425/650,0/25\nrecord = 1400/500,0/15000\ninfo = 950/650,0/325,950/325,0/30,1400/1300,0/2600\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Finland','fi','ringcadence = 1000,4000\ndial = 425\nbusy = 425/300,0/300\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/150,0/150,425/150,0/8000\ndialrecall = 425/650,0/25\nrecord = 1400/500,0/15000\ninfo = 950/650,0/325,950/325,0/30,1400/1300,0/2600\nstutter = 425/650,0/25\n'),('France','fr','ringcadence = 1500,3500\ndial = 440\nbusy = 440/500,0/500\nring = 440/1500,0/3500\ncongestion = 440/250,0/250\ncallwait = 440/300,0/10000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330\nstutter = !440/100,!0/100,!440/100,!0/100,!440/100,!0/100,!440/100,!0/100,!440/100,!0/100,!440/100,!0/100,440\n'),('Germany','de','ringcadence = 1000,4000\ndial = 425\nbusy = 425/480,0/480\nring = 425/1000,0/4000\ncongestion = 425/240,0/240\ncallwaiting = !425/200,!0/200,!425/200,!0/5000,!425/200,!0/200,!425/200,!0/5000,!425/200,!0/200,!425/200,!0/5000,!425/200,!0/200,!425/200,!0/5000,!425/200,!0/200,!425/200,0\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/80,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 425+400\n'),('Greece','gr','ringcadence = 1000,4000\ndial = 425/200,0/300,425/700,0/800\nbusy = 425/300,0/300\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/150,0/150,425/150,0/8000\ndialrecall = 425/650,0/25\nrecord = 1400/400,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,0\nstutter = 425/650,0/25\n'),('Hong Kong','hk','ringcadence = 400,200,400,3000\ndial = 350+440\nbusy = 480+620/500,0/500\nring = 440+480/400,0/200,440+480/400,0/3000\ncongestion = 480+620/250,0/250\ncallwaiting = 440/300,0/10000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('Hungary','hu','ringcadence = 1250,3750\ndial = 425\nbusy = 425/300,0/300\nring = 425/1250,0/3750\ncongestion = 425/300,0/300\ncallwaiting = 425/40,0/1960\ndialrecall = 425+450\nrecord = 1400/400,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,0\nstutter = 350+375+400\n'),('India','in','ringcadence = 400,200,400,2000\ndial = 400*25\nbusy = 400/750,0/750\nring = 400*25/400,0/200,400*25/400,0/2000\ncongestion = 400/250,0/250\ncallwaiting = 400/200,0/100,400/200,0/7500\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0/1000\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('Iran','ir','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/240,0/240\ncallwaiting = 425/200,0/200,425/200,0/10000\ndialrecall = 425 record = 1400/80,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 400+425\n'),('Israel','il','ringcadence = 1000,3000\ndial = 414\nbusy = 414/500,0/500\nring = 414/1000,0/3000\ncongestion = 414/250,0/250\ncallwaiting = 414/100,0/100,414/100,0/100,414/600,0/3000 \ndialrecall = !414/100,!0/100,!414/100,!0/100,!414/100,!0/100,414\nrecord = 1400/500,0/15000\ninfo = 1000/330,1400/330,1800/330,0/1000\nstutter = !414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,!414/160,!0/160,414 \n'),('Italy','it','ringcadence = 1000,4000\ndial = 425/200,0/200,425/600,0/1000\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/400,0/100,425/250,0/100,425/150,0/14000\ndialrecall = 470/400,425/400\nrecord = 1400/400,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,0\nstutter = 470/400,425/400\n'),('Japan','jp','ringcadence = 1000,2000\ndial = 400\nbusy = 400/500,0/500\nring = 400+415/1000,0/2000\ncongestion = 400/500,0/500\ncallwaiting = 400+16/500,0/8000\ndialrecall = !400/200,!0/200,!400/200,!0/200,!400/200,!0/200,400\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter =!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,!400/100,!0/100,400\n'),('Kenya (Republic of)','ke','ringcadence = 670,3000,1500,5000\nbusy = 425/200,0/600,425/200,0/600\ncongestion = 425/200,0/600\ndial = 425\nringing = 425/670,0/3000,425/1500,0/5000\ninfo = 900/750,1400/750,1800/750,0/1250\ncallwaiting = 425\n'),('Lithuania','lt','ringcadence = 1000,4000\ndial = 425\nbusy = 425/350,0/350\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/150,0/150,425/150,0/4000\ndialrecall = 425/500,0/50\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,0\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Macao','mo','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/250,0/250\ncallwaiting = 425/200,0/600\nrecord = 1400/400,0/15000\ninfo = 950/333,1400/333,1800/333,0/1000\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Malaysia','my','ringcadence = 400,200,400,2000\ndial = 425\nbusy = 425/500,0/500\nring = 425/400,0/200,425/400,0/2000\ncongestion = 425/500,0/500\ncallwaiting = 425/100,0/4000\ndialrecall = 350+440\nrecord = 1400/500,0/60000\ninfo = 950/330,0/15,1400/330,0/15,1800/330,0/1000\nstutter = 450+425\n'),('Mexico','mx','ringcadence = 2000,4000\ndial = 425\nbusy = 425/250,0/250\nring = 425/1000,0/4000\ncongestion = 425/250,0/250\ncallwaiting = 425/200,0/600,425/200,0/10000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = 950/330,0/30,1400/330,0/30,1800/330,0/1000\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('Netherlands','nl','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/250,0/250\ncallwaiting = 425/500,0/9500\ndialrecall = 425/500,0/50\nrecord = 1400/500,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 425/500,0/50\n'),('New Zealand','nz','ringcadence = 400,200,400,2000\ndial = 400\nbusy = 400/250,0/250\nring = 400+450/400,0/200,400+450/400,0/2000\ncongestion = 400/375,0/375\ncallwaiting = !400/200,!0/3000,!400/200,!0/3000,!400/200,!0/3000,!400/200\ndialrecall = !400/100!0/100,!400/100,!0/100,!400/100,!0/100,400\nrecord = 1400/425,0/15000\ninfo = 400/750,0/100,400/750,0/100,400/750,0/100,400/750,0/400\nstutter = !400/100!0/100,!400/100,!0/100,!400/100,!0/100,!400/100!0/100,!400/100,!0/100,!400/100,!0/100,400\n'),('Norway','no','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/200,0/600,425/200,0/10000\ndialrecall = 470/400,425/400\nrecord = 1400/400,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,0\nstutter = 470/400,425/400\n'),('Pakistan','pk','ringcadence = 400,1000,0,2000\nbusy = 400/500,0/500\nring = 400/1000,0/2000\ncongestion = 400/250,0/250\n'),('Panama','pa','ringcadence = 2000,4000\ndial = 425\nbusy = 425/320,0/320\nring = 425/1200,0/4650\ncongestion = 425/320,0/320\ncallwaiting = 425/180,0/180,425/180\\dialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!42\n'),('Philippines','phl','ringcadence = 1000,4000\ndial = 425\nbusy = 480+620/500,0/500\nring = 425+480/1000,0/4000\ncongestion = 480+620/250,0/250\ncallwaiting = 440/300,0/10000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('Poland','pl','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/500,0/500\ncallwaiting = 425/150,0/150,425/150,0/4000\ndialrecall = 425/500,0/50\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000,!950/330,!1400/330,!1800/330,!0/1000\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Portugal','pt','ringcadence = 1000,5000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/5000\ncongestion = 425/200,0/200\ncallwaiting = 440/300,0/10000\ndialrecall = 425/1000,0/200\nrecord = 1400/500,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Russian Federation','ru','ringcadence = 1000,4000\ndial = 425\nbusy = 425/350,0/350\nring = 425/800,0/3200\ncongestion = 425/350,0/350\ncallwaiting = 425/200,0/5000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\n'),('Singapore','sg','ringcadence = 400,200,400,2000\ndial = 425\nring = 425*24/400,0/200,425*24/400,0/2000 ; modulation should be 100%, not 90%\nbusy = 425/750,0/750\ncongestion = 425/250,0/250\ncallwaiting = 425*24/300,0/200,425*24/300,0/3200\nstutter = !425/200,!0/200,!425/600,!0/200,!425/200,!0/200,!425/600,!0/200,!425/200,!0/200,!425/600,!0/200,!425/200,!0/200,!425/600,!0/200,425\ninfo = 950/330,1400/330,1800/330,0/1000 ; not currently in use acc. to reference\ndialrecall = 425*24/500,0/500,425/500,0/2500 ; unspecified in IDA reference, use repeating Holding Tone A,B\nrecord = 1400/500,0/15000 ; unspecified in IDA reference, use 0.5s tone every 15s\nnutone = 425/2500,0/500\nintrusion = 425/250,0/2000\nwarning = 425/624,0/4376 ; end of period tone, warning\nacceptance = 425/125,0/125\nholdinga = !425*24/500,!0/500 ; followed by holdingb\nholdingb = !425/500,!0/2500\n'),('South Africa','za','ringcadence = 400,200,400,2000\ndial = 400*33\nbusy = 400/500,0/500\nring = 400*33/400,0/200,400*33/400,0/2000\ncongestion = 400/250,0/250\ncallwaiting = 400*33/250,0/250,400*33/250,0/250,400*33/250,0/250,400*33/250,0/250\ndialrecall = 350+440\nrecord = 1400/500,0/10000\ninfo = 950/330,1400/330,1800/330,0/330\nstutter =!400*33/100,!0/100,!400*33/100,!0/100,!400*33/100,!0/100,!400*33/100,!0/100,!400*33/100,!0/100,!400*33/100,!0/100,400*33 \n'),('Spain','es','ringcadence = 1500,3000\ndial = 425\nbusy = 425/200,0/200\nring = 425/1500,0/3000\ncongestion = 425/200,0/200,425/200,0/200,425/200,0/600\ncallwaiting = 425/175,0/175,425/175,0/3500\ndialrecall = !425/200,!0/200,!425/200,!0/200,!425/200,!0/200,425\nrecord = 1400/500,0/15000\ninfo = 950/330,0/1000\ndialout = 500\n'),('Sweden','se','ringcadence = 1000,5000\ndial = 425\nbusy = 425/250,0/250\nring = 425/1000,0/5000\ncongestion = 425/250,0/750\ncallwaiting = 425/200,0/500,425/200,0/9100\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/500,0/15000\ninfo = !950/332,!0/24,!1400/332,!0/24,!1800/332,!0/2024,!950/332,!0/24,!1400/332,!0/24,!1800/332,!0/2024,!950/332,!0/24,!1400/332,!0/24,!1800/332,!0/2024,!950/332,!0/24,!1400/332,!0/24,!1800/332,!0/2024,!950/332,!0/24,!1400/332,!0/24,!1800/332,0\nstutter = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\n'),('Switzerland','ch','ringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/200,0/200\ncallwaiting = 425/200,0/200,425/200,0/4000\ndialrecall = !425/100,!0/100,!425/100,!0/100,!425/100,!0/100,425\nrecord = 1400/80,0/15000\ninfo = 950/330,1400/330,1800/330,0/1000\nstutter = 425+340/1100,0/1100\n'),('Taiwan','tw','ringcadence = 1000,4000\ndial = 350+440\nbusy = 480+620/500,0/500\nring = 440+480/1000,0/2000\ncongestion = 480+620/250,0/250\ncallwaiting = 350+440/250,0/250,350+440/250,0/3250\ndialrecall = 300/1500,0/500\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('Tanzania (United Republic of)','tz','ringcadence = 1000,4000\nbusy = 425/1000,0/1000\ncongestion = 425/375,0/375\ndial = 425+400\nringing = 425/1000,0/4000\ninfo = 950/375,1400/375,1800/375,0/30,950/375,1400/375,1800/375,0/30,950/375,1400/375,1800/375callwaiting = 425/500,0/200\n'),('Thailand','th','ringcadence = 1000,4000\\dial = 400*50\nbusy = 400/500,0/500\nring = 420/1000,0/5000\ncongestion = 400/300,0/300\ncallwaiting = 1000/400,10000/400,1000/400\ndialrecall = 400*50/400,0/100,400*50/400,0/100\nrecord = 1400/500,0/15000\ninfo = 950/330,1400/330,1800/330\nstutter = !400/200,!0/200,!400/600,!0/200,!400/200,!0/200,!400/600,!0/200,!400/200,!0/200,!400/600,!0/200,!400/200,!0/200,!400/600,!0/200,400\n'),('Turkey','tr','ringcadance = 2000,4000\ndial = 450\nbusy = 450/500,0/500\nring = 450/2000,450/4000\ncongestion = 450/200,0/200,450/200,0/200,450/200,0/200,450/600,0/200\ncallwaiting = 450/200,0/600,450/200,0/8000\ndialrecall = 450/1000,0/250\nrecord = 1400/500,0/15000\ninfo = !950/300,!1400/300,!1800/300,!0/1000,!950/300,!1400/300,!1800/300,!0/1000,!950/300,!1400/300,!1800/300,!0/1000,0\n'),('Uganda (Republic of)','ug','ringcadence = 1000,4000\nbusy = 425/500,0/500\ncongestion = 425/250,0/250\ndial = 425\nringing = 425/1000,0/4000\ncallwaiting = 425/150,0/150,425/150,0/8000\n'),('United Kingdom','uk','ringcadence = 400,200,400,2000\ndial = 350+440\nspecialdial = 350+440/750,440/750\nbusy = 400/375,0/375\ncongestion = 400/400,0/350,400/225,0/525\nspecialcongestion = 400/200,1004/300\nunobtainable = 400\nring = 400+450/400,0/200,400+450/400,0/2000\ncallwaiting = 400/100,0/4000\nspecialcallwaiting = 400/250,0/250,400/250,0/250,400/250,0/5000\ncreditexpired = 400/125,0/125\nconfirm = 1400\nswitching = 400/200,0/400,400/2000,0/400\ninfo = 950/330,0/15,1400/330,0/15,1800/330,0/1000\nrecord = 1400/500,0/60000\nstutter = 350+440/750,440/750\n'),('United States / North America','us','ringcadence = 2000,4000\ndial = 350+440\nbusy = 480+620/500,0/500\nring = 440+480/2000,0/4000\ncongestion = 480+620/250,0/250\ncallwaiting = 440/300,0/10000\ndialrecall = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,!350+440/100,!0/100,350+440\n'),('United States Circa 1950/ North America','us-old','ringcadence = 2000,4000\ndial = 600*120\nbusy = 500*100/500,0/500\nring = 420*40/2000,0/4000\ncongestion = 500*100/250,0/250\ncallwaiting = 440/300,0/10000\ndialrecall = !600*120/100,!0/100,!600*120/100,!0/100,!600*120/100,!0/100,600*120\nrecord = 1400/500,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !600*120/100,!0/100,!600*120/100,!0/100,!600*120/100,!0/100,!600*120/100,!0/100,!600*120/100,!0/100,!600*120/100,!0/100,600*120\n'),('Venezuela / South America','ve','; Tone definition source for ve found on\n; Reference: http://www.itu.int/ITU-T/inr/forms/files/tones-0203.pdf\nringcadence = 1000,4000\ndial = 425\nbusy = 425/500,0/500\nring = 425/1000,0/4000\ncongestion = 425/250,0/250\ncallwaiting = 400+450/300,0/6000\ndialrecall = 425\nrecord =  1400/500,0/15000\ninfo = !950/330,!1440/330,!1800/330,0/1000\n'),('Romania','ro','ringcadence = 1850,4150\ndial = 450\nbusy = 450/167,0/167\nring = 450*25/1850,0/4150\ncongestion = 450/500,0/500\ncallwaiting = 450/150,0/150,450/150,0/8000\ndialrecall = !450/100,!0/100,!450/100,!0/100,!450/100,!0/100,450\nrecord = 1400/400,0/15000\ninfo = !950/330,!1400/330,!1800/330,0\nstutter = !450/100,!0/100,!450/100,!0/100,!450/100,!0/100,!450/100,!0/100,!450/100,!0/100,!450/100,!0/100,450\nfacility = 450\nhowler = 3000\ndialout = 600\nintrusion = 450/150,0/4950\nspecialdial = 450*25/400,0/40\nunobtainable = !450/92,!0/110,!450/92,!0/110,!450/92,!0/110,450/362,0/110\n');
/*!40000 ALTER TABLE `indications_zonelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorydb`
--

DROP TABLE IF EXISTS `inventorydb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventorydb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empnum` varchar(10) DEFAULT NULL,
  `empname` varchar(20) NOT NULL,
  `building` varchar(150) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `section` varchar(6) DEFAULT NULL,
  `cubicle` varchar(6) DEFAULT NULL,
  `desk` varchar(6) DEFAULT NULL,
  `exten` varchar(8) DEFAULT NULL,
  `phusername` varchar(10) DEFAULT NULL,
  `phpassword` varchar(10) DEFAULT NULL,
  `mac` varchar(18) DEFAULT NULL,
  `serial` varchar(20) DEFAULT NULL,
  `device` varchar(20) DEFAULT NULL,
  `distdate` varchar(10) DEFAULT NULL,
  `ip` varchar(14) DEFAULT NULL,
  `pbxbox` varchar(20) DEFAULT NULL,
  `extrainfo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorydb`
--

LOCK TABLES `inventorydb` WRITE;
/*!40000 ALTER TABLE `inventorydb` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorydb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issabelpbx_settings`
--

DROP TABLE IF EXISTS `issabelpbx_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issabelpbx_settings` (
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `level` tinyint(1) DEFAULT '0',
  `description` text,
  `type` varchar(25) DEFAULT NULL,
  `options` text,
  `defaultval` varchar(255) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT '0',
  `hidden` tinyint(1) DEFAULT '0',
  `category` varchar(50) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `emptyok` tinyint(1) DEFAULT '1',
  `sortorder` int(11) DEFAULT '0',
  PRIMARY KEY (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issabelpbx_settings`
--

LOCK TABLES `issabelpbx_settings` WRITE;
/*!40000 ALTER TABLE `issabelpbx_settings` DISABLE KEYS */;
INSERT INTO `issabelpbx_settings` VALUES ('AGGRESSIVE_DUPLICATE_CHECK','0','Aggresively Check for Duplicate Extensions',0,'When set to true IssabelPBX will update its extension map every page load. This is used to check for duplicate extension numbers in the client side javascript validation. Normally the extension map is only created when Apply Configuration Settings is pressed and retrieve_conf is run.','bool','','0',0,0,'System Setup','',0,-137),('ALWAYS_SHOW_DEVICE_DETAILS','0','Show all Device Setting on Add',0,'When adding a new extension/device, setting this to true will show most available device settings that are displayed when you edit the same extension/device. Otherwise, just a few basic settings are displayed.','bool','','0',0,0,'Device Settings','',0,10),('AMPASTERISKGROUP','asterisk','System Asterisk Group',4,'The user group Asterisk should be running as, used by issabelpbx_engine. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPASTERISKUSER','asterisk','System Asterisk User',4,'The user Asterisk should be running as, used by issabelpbx_engine. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPASTERISKWEBGROUP','asterisk','System Web Group',4,'The user group your httpd should be running as, used by issabelpbx_engine. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPASTERISKWEBUSER','asterisk','System Web User',4,'The user your httpd should be running as, used by issabelpbx_engine. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPBACKUPEMAILFROM','','Email \"From:\" Address',0,'The From: field for emails when using the backup email feature.','text','','',0,0,'Backup Module','backup',1,0),('AMPBADNUMBER','1','Use bad-number Context',2,'Generate the bad-number context which traps any bogus number or feature code and plays a message to the effect. If you use the Early Dial feature on some Grandstream phones, you will want to set this to false.','bool','','1',0,0,'Dialplan and Operational','',0,-100),('AMPBIN','/var/lib/asterisk/bin','IssabelPBX bin Dir',4,'Location of the IssabelPBX command line scripts.','dir','','/var/lib/asterisk/bin',1,0,'Directory Layout','',0,-100),('AMPCGIBIN','/var/www/cgi-bin ','CGI Dir',4,'The path to Apache cgi-bin dir (leave off trailing slash).','dir','','/var/www/cgi-bin ',1,0,'Directory Layout','',0,-100),('AMPDEVGROUP','asterisk','System Device Group',4,'The user group that various device directories should be set to, used by issabelpbx_engine. Examples include /dev/zap, /dev/dahdi, /dev/misdn, /dev/mISDN and /dev/dsp. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPDEVUSER','asterisk','System Device User',4,'The user that various device directories should be set to, used by issabelpbx_engine. Examples include /dev/zap, /dev/dahdi, /dev/misdn, /dev/mISDN and /dev/dsp. Most systems should not change this.','text','','asterisk',1,0,'System Setup','',0,-100),('AMPDISABLELOG','0','Disable IssabelPBX Log',0,'Whether or not to invoke the IssabelPBX log facility.','bool','','0',0,0,'System Setup','',0,-180),('AMPENGINE','asterisk','Telephony Engine',3,'The telephony backend engine being used, asterisk is the only option currently.','select','asterisk','asterisk',1,0,'System Setup','',0,-100),('AMPEXTENSIONS','extensions','User & Devices Mode',0,'Sets the extension behavior in IssabelPBX.  If set to <b>extensions</b>, Devices and Users are administered together as a unified Extension, and appear on a single page. If set to <b>deviceanduser</b>, Devices and Users will be administered separately. Devices (e.g. each individual line on a SIP phone) and Users (e.g. <b>101</b>) will be configured independent of each other, allowing association of one User to many Devices, or allowing Users to login and logout of Devices.','select','extensions,deviceanduser','extensions',0,0,'System Setup','',0,-135),('AMPLOCALBIN','','AMPLOCALBIN Dir for retrieve_conf',2,'If this directory is defined, retrieve_conf will check for a file called <i>retrieve_conf_post_custom</i> and if that file exists, it will be included after other processing thus having full access to the current environment for additional customization.','dir','','',1,0,'Developer and Customization','',1,-100),('AMPMGRPASS','amp111','Asterisk Manager Password',2,'Password for accessing the Asterisk Manager Interface (AMI), this will be automatically updated in manager.conf.','text','','amp111',0,0,'Asterisk Manager','',0,-100),('AMPMGRUSER','admin','Asterisk Manager User',2,'Username for accessing the Asterisk Manager Interface (AMI), this will be automatically updated in manager.conf.','text','','admin',0,0,'Asterisk Manager','',0,-100),('AMPMPG123','1','Convert Music Files to WAV',3,'When set to false, the MP3 files can be loaded and WAV files converted to MP3 in the MoH module. The default behavior of true assumes you have mpg123 loaded as well as sox and will convert MP3 files to WAV. This is highly recommended as MP3 files heavily tax the system and can cause instability on a busy phone system','bool','','1',0,0,'System Setup','music',0,0),('AMPPLAYKEY','','Recordings Crypt Key',3,'Crypt key used by this recordings module when accessing the recording files. Change from the default of \"moufdsuu3nma0\" if desired.','text','','',0,0,'System Setup','recordings',1,0),('AMPSBIN','/usr/sbin','IssabelPBX sbin Dir',4,'Where (root) command line scripts are located.','dir','','/usr/sbin',1,0,'Directory Layout','',0,-100),('AMPSYSLOGLEVEL','FILE','IssabelPBX Log Routing',0,'Determine where to send log information if the log is enabled (\'Disable IssabelPBX Log\' (AMPDISABLELOG) false. There are two places to route the log messages. \'FILE\' will send all log messages to the defined \'IssabelPBX Log File\' (FPBX_LOG_FILE). All the other settings will route the log messages to your System Logging subsystem (syslog) using the specified log level. Syslog can be configured to route different levels to different locations. See \'syslog\' documentation (man syslog) on your system for more details.','select','FILE,LOG_EMERG,LOG_ALERT,LOG_CRIT,LOG_ERR,LOG_WARNING,LOG_NOTICE,LOG_INFO,LOG_DEBUG','FILE',0,0,'System Setup','',0,-190),('AMPVMUMASK','007','Asterisk VMU Mask',4,'Defaults to 077 allowing only the asterisk user to have any permission on VM files. If set to something like 007, it would allow the group to have permissions. This can be used if setting apache to a different user then asterisk, so that the apache user (and thus ARI) can have access to read/write/delete the voicemail files. If changed, some of the voicemail directory structures may have to be manually changed.','text','','007',0,0,'System Setup','',0,-100),('AMPWEBADDRESS','','IssabelPBX Web Address',4,'This is the address of your Web Server. It is mostly obsolete and derived when not supplied and will be phased out, but there are still some areas expecting a variable to be set and if you are using it this will migrate your value.','text','','',0,0,'System Setup','',1,-100),('AMPWEBROOT','/var/www/html','IssabelPBX Web Root Dir',4,'The path to Apache webroot (leave off trailing slash).','dir','','/var/www/html',1,0,'Directory Layout','',0,-100),('AMP_ACCESS_DB_CREDS','0','Allow Login With DB Credentials',0,'When Set to True, admin access to the IssabelPBX GUI will be allowed using the IssabelPBX configured AMPDBUSER and AMPDBPASS credentials. This only applies when Authorization Type is \'database\' mode.','bool','','0',0,0,'System Setup','',0,-126),('ARI_ADMIN_PASSWORD','issabel1234','User Portal Admin Password',0,'This is the default admin password to allow an administrator to login to ARI bypassing all security. Change this to a secure password. Default = not set','text','','ari_password',0,0,'System Setup','',0,-110),('ARI_ADMIN_USERNAME','admin','User Portal Admin Username',0,'This is the default admin name used to allow an administrator to login to ARI bypassing all security. Change this to whatever you want, do not forget to change the User Portal Admin Password as well. Default = not set','text','','',0,0,'System Setup','',1,-120),('ASTAGIDIR','/var/lib/asterisk/agi-bin','Asterisk AGI Dir',4,'This is the default directory for Asterisks agi files.','dir','','/var/lib/asterisk/agi-bin',1,0,'Directory Layout','',0,-100),('ASTCONFAPP','app_meetme','Conference Room App',0,'The asterisk application to use for conferencing. If only one is compiled into asterisk, IssabelPBX will auto detect and change this value if set wrong. The app_confbridge application is considered \"experimental\" with known issues and does not work on Asterisk 10 where it was completely rewritten and changed from the version on 1.6 and 1.8.','select','app_meetme,app_confbridge','app_meetme',0,0,'Dialplan and Operational','',0,-100),('ASTETCDIR','/etc/asterisk','Asterisk etc Dir',4,'This is the default directory for Asterisks configuration files.','dir','','/etc/asterisk',1,0,'Directory Layout','',0,-100),('ASTLOGDIR','/var/log/asterisk','Asterisk Log Dir',4,'This is the default directory for Asterisks log files.','dir','','/var/log/asterisk',1,0,'Directory Layout','',0,-100),('ASTMANAGERHOST','localhost','Asterisk Manager Host',2,'Hostname for the Asterisk Manager','text','','localhost',1,0,'Asterisk Manager','',0,-100),('ASTMANAGERPORT','5038','Asterisk Manager Port',2,'Port for the Asterisk Manager','int','1024,65535','5038',1,0,'Asterisk Manager','',0,-100),('ASTMANAGERPROXYPORT','','Asterisk Manager Proxy Port',2,'Optional port for an Asterisk Manager Proxy','int','1024,65535','',1,0,'Asterisk Manager','',1,-100),('ASTMGRWRITETIMEOUT','5000','Asterisk Manager Write Timeout',2,'Timeout, im ms, for write timeouts for cases where Asterisk disconnects frequently','int','100,100000','5000',1,0,'Asterisk Manager','',1,-100),('ASTMODDIR','/usr/lib/asterisk/modules','Asterisk Modules Dir',4,'This is the default directory for Asterisks modules.','dir','','/usr/lib/asterisk/modules',1,0,'Directory Layout','',0,-100),('ASTRUNDIR','/var/run/asterisk','Asterisk Run Dir',4,'This is the default directory for Asterisks run files.','dir','','/var/run/asterisk',1,0,'Directory Layout','',0,-100),('ASTSPOOLDIR','/var/spool/asterisk','Asterisk Spool Dir',4,'This is the default directory for Asterisks spool directory.','dir','','/var/spool/asterisk',1,0,'Directory Layout','',0,-100),('ASTSTOPPOLLINT','2','Polling Interval for Stopping Asterisk',0,'When Asterisk is stopped or restarted with the \'amportal stop/restart\' commands, it does a graceful stop waiting for active channels to hangup. This sets the polling interval to check if Asterisk is shutdown and update the countdown timer.','select','1,2,3,5,10','2',0,0,'Dialplan and Operational','',0,-100),('ASTSTOPTIMEOUT','120','Waiting Period to Stop Asterisk',0,'When Asterisk is stopped or restarted with the \'amportal stop/restart\' commands, it does a graceful stop waiting for active channels to hangup. This sets the maximum time in seconds to wait prior to force stopping Asterisk','select','0,5,10,30,60,120,300,600,1800,3600,7200,10800','120',0,0,'Dialplan and Operational','',0,-100),('ASTVARLIBDIR','/var/lib/asterisk','Asterisk bin Dir',4,'This is the default directory for Asterisks lib files.','dir','','/var/lib/asterisk',1,0,'Directory Layout','',0,-100),('ASTVERSION','11.25.1','Asterisk Version',10,'Last Asterisk Version detected (or forced)','text','','',1,1,'Internal Use','',1,0),('AST_APP_VQA','','Asterisk Application VQA',10,'Set to the application name if the application is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_CONNECTEDLINE','','Asterisk Function CONNECTEDLINE',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_DEVICE_STATE','','Asterisk Function DEVICE_STATE',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_EXTENSION_STATE','','Asterisk Function EXTENSION_STATE',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_MASTER_CHANNEL','','Asterisk Function MASTER_CHANNEL',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_PRESENCE_STATE','','Asterisk Function PRESENCE_STATE',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AST_FUNC_SHARED','','Asterisk Function SHARED',10,'Set to the function name if the function is present in this Asterisk install','text','','',1,1,'Internal Use','',1,0),('AS_DISPLAY_FRIENDLY_NAME','1','Display Friendly Name',0,'Normally the friendly names will be displayed on this page and the internal issabelpbx_conf configuration names are shown in the tooltip. If you prefer to view the configuration variables, and the friendly name in the tooltip, set this to false..','bool','','1',0,0,'Advanced Settings Details','',0,0),('AS_DISPLAY_HIDDEN_SETTINGS','0','Display Hidden Settings',0,'This will display settings that are normally hidden by the system. These settings are often internally used settings that are not of interest to most users.','bool','','0',1,1,'Advanced Settings Details','',0,0),('AS_DISPLAY_READONLY_SETTINGS','0','Display Readonly Settings',0,'This will display settings that are readonly. These settings are often internally used settings that are not of interest to most users. Since they are readonly they can only be viewed.','bool','','0',0,0,'Advanced Settings Details','',0,0),('AS_OVERRIDE_READONLY','0','Override Readonly Settings',0,'Setting this to true will allow you to override un-hidden readonly setting to change them. Settings that are readonly may be extremely volatile and have a high chance of breaking your system if you change them. Take extreme caution when electing to make such changes.','bool','','0',0,0,'Advanced Settings Details','',0,0),('AUTHTYPE','database','Authorization Type',3,'Authentication type to use for web admin. If type set to <b>database</b>, the primary AMP admin credentials will be the AMPDBUSER/AMPDBPASS above. When using database you can create users that are restricted to only certain module pages. When set to none, you should make sure you have provided security at the apache level. When set to webserver, IssabelPBX will expect authentication to happen at the apache level, but will take the user credentials and apply any restrictions as if it were in database mode.','select','database,none,webserver','database',1,0,'System Setup','',0,-130),('BADDESTABORT','0','Abort Config Gen on Bad Dest',3,'Setting either of these to true will result in retrieve_conf aborting during a reload if an extension conflict is detected or a destination is detected. It is usually better to allow the reload to go through and then correct the problem but these can be set if a more strict behavior is desired.','bool','','0',0,0,'GUI Behavior','',0,-100),('BLOCK_OUTBOUND_TRUNK_CNAM','0','Block CNAM on External Trunks',0,'Some carriers will reject a call if a CallerID Name (CNAM) is presented. This occurs in several areas when configuring CID on the PBX using the format of \'CNAM\' <CNUM>. To remove the CNAM part of CID on all external trunks, set this value to true. This WILL NOT remove CNAM when a trunk is called from an Intra-Company route. This can be done on each individual trunk in addition to globally if there are trunks where it is desirable to keep CNAM information, though most carriers ignore CNAM.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('BRAND_ALT_JS','','Alternate JS',1,'Alternate JS file, to supplement legacy.script.js','text','','',1,1,'Styling and Logos','',1,360),('BRAND_CSS_ALT_MAINSTYLE','','Primary CSS Stylesheet',1,'Set this to replace the default mainstyle.css style sheet with your own, relative to admin.','text','','',1,0,'Styling and Logos','',1,160),('BRAND_CSS_ALT_POPOVER','','Primary CSS Popover Stylesheet Addtion',1,'Set this to replace the default popover.css style sheet with your own, relative to admin.','text','','',1,0,'Styling and Logos','',1,162),('BRAND_CSS_CUSTOM','','Optional Additional CSS Stylesheet',1,'Optional custom CSS style sheet included after the primary one and any module specific ones are loaded, relative to admin.','text','','',1,0,'Styling and Logos','',1,170),('BRAND_IMAGE_FAVICON','images/favicon.ico','Favicon',1,'Favicon','text','','images/favicon.ico',1,1,'Styling and Logos','',0,40),('BRAND_IMAGE_ISSABELPBX_FOOT','images/issabelpbx_small.png','Image: Footer',1,'Logo in footer.  Path is relative to admin.','text','','images/issabelpbx_small.png',1,0,'Styling and Logos','',1,50),('BRAND_IMAGE_ISSABELPBX_LINK_FOOT','http://www.issabel.org','Link for Footer Logo',1,'link to follow when clicking on logo, defaults to http://www.issabel.org','text','','http://www.issabel.org',1,0,'Styling and Logos','',1,120),('BRAND_IMAGE_ISSABELPBX_LINK_LEFT','http://www.issabel.org','Link for Left Logo',1,'link to follow when clicking on logo, defaults to http://www.issabel.org','text','','http://www.issabel.org',1,0,'Styling and Logos','',1,100),('BRAND_IMAGE_SPONSOR_FOOT','','Image: Footer',1,'Logo in footer.  Path is relative to admin.','text','','',1,0,'Styling and Logos','',1,50),('BRAND_IMAGE_SPONSOR_LINK_FOOT','','Link for Sponsor Footer Logo',1,'link to follow when clicking on sponsor logo','text','','',1,0,'Styling and Logos','',1,120),('BRAND_IMAGE_TANGO_LEFT','images/tango.png','Image: Left Upper',1,'Left upper logo.  Path is relative to admin.','text','','images/tango.png',1,0,'Styling and Logos','',0,40),('BRAND_ISSABELPBX_ALT_FOOT','IssabelPBX&reg;','Alt for Footer Logo',1,'alt attribute to use in place of image and title hover value. Defaults to IssabelPBX','text','','IssabelPBX&reg;',1,0,'Styling and Logos','',1,90),('BRAND_ISSABELPBX_ALT_LEFT','IssabelPBX','Alt for Left Logo',1,'alt attribute to use in place of image and title hover value. Defaults to IssabelPBX','text','','IssabelPBX',1,0,'Styling and Logos','',1,70),('BRAND_SPONSOR_ALT_FOOT','','Alt for Footer Logo',1,'alt attribute to use in place of image and title hover value. Defaults to IssabelPBX','text','','',1,0,'Styling and Logos','',1,90),('BRAND_TITLE','IssabelPBX Administration','Page Title',1,'HTML title of all pages','text','','IssabelPBX Administration',1,1,'Styling and Logos','',0,40),('BROWSER_STATS','1','Browser Stats',0,'Setting this to true will allow the development team to use google analytics to anonymously analyze browser information to help make better development decision.','bool','','1',0,0,'System Setup','',0,-100),('CCBS_AVAILABLE_TIMER_DEFAULT','4800','Max Camp-On Life Busy Default',1,'Asteirsk: ccbs_available_timer. How long a call completion request will remain active, in seconds, before expiring if the phone rang busy when first attempting the call.','select','1200,2400,3600,4800,6000,7200,10800,14400,18000,21600,25200,28800,32400','4800',0,0,'Camp-On Module','campon',0,70),('CCNR_AVAILABLE_TIMER_DEFAULT','7200','Max Camp-On Life No Answer Default',1,'Asteirsk: ccnr_available_timer. How long a call completion request will remain active, in seconds, before expiring if the phone was simply unanswered when first attempting the call.','select','1200,2400,3600,4800,6000,7200,10800,14400,18000,21600,25200,28800,32400','7200',0,0,'Camp-On Module','campon',0,80),('CC_AGENT_ALERT_INFO_DEFAULT','','Default Callback Alert-Info',1,'An optional Alert-Info setting that can be used when initiating a callback. Only valid when \'Caller Policy\' is set to \'generic\' device\'','text','','',0,0,'Camp-On Module','campon',1,120),('CC_AGENT_CID_PREPEND_DEFAULT','','Default Callback CID Prepend',1,'An optional CID Prepend setting that can be used when initiating a callback. Only valid when \'Caller Policy\' is set to a \'generic\' device\'','text','','',0,0,'Camp-On Module','campon',1,130),('CC_AGENT_DIALSTRING_DEFAULT','extension','Default Caller Callback Mode',1,'Affects Asterisk: cc_agent_dialstring. If not set a callback request will be dialed straight to the speciifc device that made the call. If using \'native\' technology support this may be the peferred mode. The \'internal\' (Callback Standard) option will intiate a call back to the caller just as if someone else on the system placed the call, which means the call can pursue Follow-Me. To avoid Follow-Me setting, choose \'extension\' (Callback Extension).','select',',extension,internal','extension',0,0,'Camp-On Module','campon',0,100),('CC_AGENT_POLICY_DEFAULT','generic','Caller Policy Default',1,'Asterisk: cc_agent_policy. Used to enable Camp-On for a user and set the Technology Mode that will be used when engaging the feature. In most cases \'generic\' should be chosen unless you have phones designed to work with channel specific capabilities.','select','never,generic,native','generic',0,0,'Camp-On Module','campon',0,40),('CC_ANNOUNCE_MONITOR_DEFAULT','1','Announce the Callee Extension',1,'When set to true the target extension being called will be announced upone answering the Callback prior to ringing the extension. Setting this to false will go directly to ringing the extension, the CID information will still reflect who is being called back.','bool','','1',0,0,'Camp-On Module','campon',0,140),('CC_BLF_CALLER_BUSY','ONHOLD','BLF Camp-On Busy Caller State',1,'This is the state that will be set for BLF subscriptions once the callee becomes available if the caller is not busy. Restart Asterisk for changes to take effect.','select','NOT_INUSE,INUSE,BUSY,UNAVAILABLE,RINGING,RINGINUSE,ONHOLD','ONHOLD',0,0,'Camp-On Module','campon',0,200),('CC_BLF_OFFERED','NOT_INUSE','BLF Camp-On Available State',1,'This is the state that will be set for BLF subscriptions after attempting a call while it is still possible to Camp-On to the last called number, prior to the offer_timer expiring. Restart Asterisk for changes to take effect.','select','NOT_INUSE,INUSE,BUSY,UNAVAILABLE,RINGING,RINGINUSE,ONHOLD','NOT_INUSE',0,0,'Camp-On Module','campon',0,180),('CC_BLF_PENDING','INUSE','BLF Camp-On Pending State',1,'This is the state that will be set for BLF subscriptions upon a successful Camp-On request, pending a callback when the party becomes available. Restart Asterisk for changes to take effect.','select','NOT_INUSE,INUSE,BUSY,UNAVAILABLE,RINGING,RINGINUSE,ONHOLD','INUSE',0,0,'Camp-On Module','campon',0,190),('CC_BLF_RECALL','RINGING','BLF Camp-On Recalling State',1,'This is the state that will be set for BLF subscriptions once the callee becomes available if the caller is not busy. Restart Asterisk for changes to take effect.','select','NOT_INUSE,INUSE,BUSY,UNAVAILABLE,RINGING,RINGINUSE,ONHOLD','RINGING',0,0,'Camp-On Module','campon',0,210),('CC_FORCE_DEFAULTS','1','Only Use Default Camp-On Settings',1,'You can force all extensions on a system to only used the default Camp-On settings. When in this mode, the individual settings will not be shown on the extension page. If there were unique settings previously configured, the data will be retained but not used unless you switch this back to false. With this set, the Caller Policy (cc_agent_policy) and Callee Policy (cc_monitor_policy) settings will still be configurable for each user so you can still enable/disable Call Camping ability on select extensions.','bool','','1',0,0,'Camp-On Module','campon',0,30),('CC_MAX_AGENTS_DEFAULT','5','Default Max Camped-On Extensions',1,'Asterisk: cc_max_agents. Only valid for when using \'native\' technology support for Caller Policy. This is the number of outstanding Call Completion requests that can be pending to different extensions. With \'generic\' device mode you can only have a single request outstanding and this will be ignored.','select','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20','5',0,0,'Camp-On Module','campon',0,110),('CC_MAX_MONITORS_DEFAULT','5','Default Max Queued Callers',1,'Asterisk: cc_max_monitors. This is the maximum number of callers that are allowed to queue up call completion requests against this extension.','select','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20','5',0,0,'Camp-On Module','campon',0,170),('CC_MAX_REQUESTS_GLOBAL','20','Maximum Active Camp-On Requests',1,'System wide maximum number of outstanding Camp-On requests that can be active. This limit is useful on a system that may have memory constraints since the internal state machine takes up system resources relative to the number of active requests it has to track. Restart Asterisk for changes to take effect.','int','1,1000','20',0,0,'Camp-On Module','campon',0,10),('CC_MONITOR_ALERT_INFO_DEFAULT','','Default Callee Alert-Info',1,'An optional Alert-Info setting that can be used to send to the extension being called back.','text','','',0,0,'Camp-On Module','campon',1,150),('CC_MONITOR_CID_PREPEND_DEFAULT','','Default Callee CID Prepend',1,'An optional CID Prepend setting that can be used to send to the extension being called back.\'','text','','',0,0,'Camp-On Module','campon',1,160),('CC_MONITOR_POLICY_DEFAULT','generic','Callee Policy Default',1,'Asterisk: cc_monitor_policy. Used to control if other phones are allowed to Camp On to an extension. If so, it sets the technology mode used to monitor the availability of the extension. If no specific technology support is available then it should be set to a \'generic\'. In this mode, a callback will be initiated to the extension when it changes from an InUse state to NotInUse. If it was busy when first attempted, this will be when the current call has eneded. If it simply did not answer, then this will be the next time this phone is used to make or answer a call and then hangs up. It is possible to set this to take advantage of \'native\' technology support if available and automatically fallback to \'generic\' whe not by setting it to \'always\'.','select','never,generic,native,always','generic',0,0,'Camp-On Module','campon',0,50),('CC_NON_EXTENSION_POLICY','never','Non Extensions Callee Policy',1,'If this is set to \'generic\' or \'always\' then it will be possible to attempt call completion requests when dialing non-extensions such as ring groups and other possible destinations that could work with call completion. Setting this will bypass any Callee Policies and can result in inconsistent behavior. If set, \'generic\' is the most common, \'always\' will attempt to use technology specific capabilities if the called extension uses a channel that supports that.','select','never,generic,always','never',0,0,'Camp-On Module','campon',0,20),('CC_OFFER_TIMER_DEFAULT','30','Caller Timeout to Request Default',1,'Asterisk: cc_offer_timer. How many seconds after dialing an extenion a user has to make a call completion request.','select','20,30,45,60,120,180,240,300,600','30',0,0,'Camp-On Module','campon',0,60),('CC_RECALL_TIMER_DEFAULT','15','Default Time to Ring Back Caller',1,'Asterisk: cc_recall_timer. How long in seconds to ring back a caller who\'s Caller Policy is set to \'Generic Device\'. This has no affect if set to any other setting.','select','5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60','15',0,0,'Camp-On Module','campon',0,90),('CDRDBHOST','','Remote CDR DB Host',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX.<br>Hostname of db server if not the same as AMPDBHOST.','text','','',1,0,'Remote CDR Database','',1,-100),('CDRDBNAME','','Remote CDR DB Name',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX.<br>Name of database used for cdr records.','text','','',1,0,'Remote CDR Database','',1,-100),('CDRDBPASS','','Remote CDR DB Password',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX.<br>Password for connecting to db if its not the same as AMPDBPASS.','text','','',1,0,'Remote CDR Database','',1,-100),('CDRDBPORT','','Remote CDR DB Port',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX.<br>Port number for db host.','int','1024,65536','',1,0,'Remote CDR Database','',1,-100),('CDRDBTABLENAME','','Remote CDR DB Table',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX. Name of the table in the db where the cdr is stored. cdr is default.','text','','',1,0,'Remote CDR Database','',1,-100),('CDRDBTYPE','','Remote CDR DB Type',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX. Defaults to your configured AMDBENGINE.','select',',mysql,postgres','',1,0,'Remote CDR Database','',1,-100),('CDRDBUSER','','Remote CDR DB User',3,'DO NOT set this unless you know what you are doing. Only used if you do not use the default values provided by IssabelPBX. Username to connect to db with if it is not the same as AMPDBUSER.','text','','',1,0,'Remote CDR Database','',1,-100),('CEL_ENABLED','1','Enable CEL Reporting',3,'Setting this true will enable the CDR module to drill down on CEL data for each CDR. Although the CDR module will assure there is a CEL table available, the reporting functionality in Asterisk and associated ODBC database and CEL configuration must be done outside of IssabelPBX either by the user or at the Distro level.','bool','','0',0,0,'CDR Report Module','cdr',0,10),('CFRINGTIMERDEFAULT','0','Call Forward Ringtimer Default',0,'This is the default time in seconds to try and connect a call that has been call forwarded by the server side CF, CFU and CFB options. (If your phones use client side CF such as SIP redirects, this will not have any affect) If set to the default of 0, it will use the standard ring timer. If set to -1 it will ring the forwarded number with no limit which is consistent with the behavior of some existing PBX systems. If set to any other value, it will ring for that duration before diverting the call to the users voicemail if they have one. This can be overridden for each extension.','select','-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120','0',0,0,'Dialplan and Operational','',0,-100),('CHECKREFERER','1','Check Server Referrer',0,'When set to the default value of true, all requests into IssabelPBX that might possibly add/edit/delete settings will be validated to assure the request is coming from the server. This will protect the system from CSRF (cross site request forgery) attacks. It will have the effect of preventing legitimately entering URLs that could modify settings which can be allowed by changing this field to false.','bool','','1',0,0,'GUI Behavior','',0,-100),('CID_PREPEND_REPLACE','1','Only Use Last CID Prepend',0,'Some modules allow the CNAM to be prepended. If a previous prepend was done, the default behavior is to remove the previous prepend and only use the most recent one. Setting this to false will turn that off allowing all prepends to be \'starcked\' in front of one another.','bool','','1',0,0,'Dialplan and Operational','',0,-100),('CONCURRENCYLIMITDEFAULT','0','Extension Concurrency Limit',0,'Default maximum number of outbound simultaneous calls that an extension can make. This is also very useful as a Security Protection against a system that has been compromised. It will limit the number of simultaneous calls that can be made on the compromised extension. This default is used when an extension is created. A default of 0 means no limit.','select','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120','0',0,0,'Dialplan and Operational','',0,-100),('CONNECTEDLINE_PRESENCESTATE','1','Display Presence State of Callee',0,'When set to true and when CONNECTEDLINE() capabilities are configured and supported by your handset, the name displayed will include the presence state of the callee.','bool','','1',0,0,'Dialplan and Operational','',0,0),('CRONMAN_UPDATES_CHECK','1','Update Notifications',0,'IssabelPBX allows you to automatically check for updates online. The updates will NOT be automatically installed. It is STRONGYLY advised that you keep this enabled and keep updated of these important notificaions to avoid costly security issues.','bool','','1',1,0,'System Setup','',0,-100),('CUSTOMASERROR','1','Report Unknown Dest as Error',2,'If false, then the Destination Registry will not report unknown destinations as errors. This should be left to the default true and custom destinations should be moved into the new custom apps registry.','bool','','1',0,0,'GUI Behavior','',0,-100),('CWINUSEBUSY','1','Occupied Lines CW Busy',0,'For extensions that have CW enabled, report unanswered CW calls as <b>busy</b> (resulting in busy voicemail greeting). If set to no, unanswered CW calls simply report as <b>no-answer</b>.','bool','','1',0,0,'Dialplan and Operational','',0,-100),('DASHBOARD_INFO_UPDATE_TIME','30','Dashboard Info Update Frequency',0,'Update rate in seconds of the Info section of the System Status panel.','select','15,30,60,120,300,600','30',0,0,'GUI Behavior','dashboard',0,0),('DASHBOARD_STATS_UPDATE_TIME','6','Dashboard Stats Update Frequency',0,'Update rate in seconds of all sections of the System Status panel except the Info box.','select','6,10,20,30,45,60,120,300,600','6',0,0,'GUI Behavior','dashboard',0,0),('DAYNIGHTTCHOOK','0','Hook Time Conditions Module',1,'By default, the Call Flow Control module will not hook Time Conditions allowing one to associate a call flow toggle feauture code with a time condition since time conditions have their own feature code as of version 2.9. If there is already an associaiton configured (on an upgraded system), this will have no affect for the Time Conditions that are effected. Setting this to true reverts the 2.8 and prior behavior by allowing for the use of a call flow toggle to be associated with a time conditon. This can be useful for two scenarios. First, to override a Time Condition without the automatic resetting that occurs with the built in Time Condition overrides. The second use is the ability to associate a single call flow toggle with multiple time conditions thus creating a <b>master switch</b> that can be used to override several possible call flows through different time conditions.','bool','','0',0,0,'Call Flow Control Module','daynight',0,0),('DEFAULT_INTERNAL_AUTO_ANSWER','disabled','Internal Auto Answer Default',0,'Default setting for new extensions. When set to Intercom, calls to new extensions/users from other internal users act as if they were intercom calls meaning they will be auto-answered if the endpoint supports this feature and the system is configured to operate in this mode. All the normal white list and black list settings will be honored if they are set. External calls will still ring as normal, as will certain other circumstances such as blind transfers and when a Follow Me is configured and enabled. If Disabled, the phone rings as a normal phone.','select','disabled,intercom','disabled',0,0,'Dialplan and Operational','',0,-100),('DEVEL','0','Developer Mode',2,'This enables several debug features geared towards developers, including some page load timing information, some debug information in Module Admin, use of original CSS files and other future capabilities will be enabled.','bool','','0',0,0,'Developer and Customization','',0,-100),('DEVELRELOAD','0','Leave Reload Bar Up',2,'Forces the \'Apply Configuration Changes\' reload bar to always be present even when not necessary.','bool','','0',0,0,'Developer and Customization','',0,-100),('DEVICE_ALLOW','','SIP and IAX allow',0,'Default setting for SIP and IAX allow (for codecs). Codecs to allow in addition to those set in general settings unless explicitly \'disallowed\' for the device. Values van be separated with \'&\' e.g. \'ulaw&g729&g729\' where the preference order is preserved. See Asterisk documentation for details.','text','','',0,0,'Device Settings','',1,90),('DEVICE_CALLGROUP','','SIP and DAHDi callgroup',0,'Default setting for SIP, DAHDi (and Zap) callgroup. Callgroup(s) that the device is part of, can be one or more callgroups, e.g. \'1,3-5\' would be in groups 1,3,4,5. See Asterisk documentation for details.','text','','',0,0,'Device Settings','',1,100),('DEVICE_DISALLOW','','SIP and IAX disallow',0,'Default setting for SIP and IAX disallow (for codecs). Codecs to disallow, can help to reset from the general settings by setting a value of \'all\' and then specifically including allowed codecs with the \'allow\' directive. Values van be separated with \'&\' e.g. \'g729&g722\'. See Asterisk documentation for details.','text','','',0,0,'Device Settings','',1,90),('DEVICE_PICKUPGROUP','','SIP and DAHDi pickupgroup',0,'Default setting for SIP, DAHDi (and Zap) pickupgroup. Pickupgroups(s) that the device can pickup calls from, can be one or more groups, e.g. \'1,3-5\' would be in groups 1,3,4,5. Device does not have to be in a group to be able to pickup calls from that group. See Asterisk documentation for details.','text','','',0,0,'Device Settings','',1,110),('DEVICE_QUALIFY','yes','SIP and IAX qualify',0,'Default setting for SIP and IAX qualify. Whether to send periodic OPTIONS messages (for SIP) or otherwise monitor the channel, and at what point to consider the channel unavailable. A value of \'yes\' is equivalent to 2000, time in msec. Can help to keep NAT holes open with SIP but not dependable for remote client firewalls. See Asterisk documentation for details.','text','','yes',0,0,'Device Settings','',0,80),('DEVICE_REMOVE_MAILBOX','0','Remove mailbox Setting when no Voicemail',0,'If set to true, any fixed device associated with a user that has no voicemail configured will have the \"mailbox=\" setting removed in the generated technology configuration file such as sip_additional.conf. This will not affect the value in the GUI.','bool','','0',0,0,'Device Settings','',0,15),('DEVICE_SIP_CANREINVITE','no','SIP canrenivite (directmedia)',0,'Default setting for SIP canreinvite (same as directmedia). See Asterisk documentation for details.','select','no,yes,nonat,update','no',0,0,'Device Settings','',0,20),('DEVICE_SIP_ENCRYPTION','no','SIP encryption',0,'Default setting for SIP encryption. Whether to offer SRTP encrypted media (and only SRTP encrypted media) on outgoing calls to a peer. Calls will fail with HANGUPCAUSE=58 if the peer does not support SRTP. See Asterisk documentation for details.','select','no,yes','no',0,0,'Device Settings','',0,60),('DEVICE_SIP_NAT','no','SIP nat',0,'Default setting for SIP nat. A \'yes\' will attempt to handle nat, also works for local (uses the network ports and address instead of the reported ports), \'no\' follows the protocol, \'never\' tries to block it, no RFC3581, \'route\' ignores the rport information. See Asterisk documentation for details.','select','no,yes,never,route','no',0,0,'Device Settings','',0,50),('DEVICE_SIP_QUALIFYFREQ','60','SIP qualifyfreq',0,'Default setting for SIP qualifyfreq. Only valid for Asterisk 1.6 and above. Frequency that \'qualify\' OPTIONS messages will be sent to the device. Can help to keep NAT holes open but not dependable for remote client firewalls. See Asterisk documentation for details.','int','15,86400','60',0,0,'Device Settings','',0,70),('DEVICE_SIP_SENDRPID','no','SIP sendrpid',0,'Default setting for SIP sendrpid. A value of \'yes\' is equivalent to \'rpid\' and will send the \'Remote-Party-ID\' header. A value of \'pai\' is only valid starting with Asterisk 1.8 and will send the \'P-Asserted-Identity\' header. See Asterisk documentation for details.','select','no,yes,pai','no',0,0,'Device Settings','',0,40),('DEVICE_SIP_TRUSTRPID','yes','SIP trustrpid',0,'Default setting for SIP trustrpid. See Asterisk documentation for details.','select','no,yes','yes',0,0,'Device Settings','',0,30),('DEVICE_STRONG_SECRETS','1','Require Strong Secrets',0,'Requires a strong secret on SIP and IAX devices requiring at least two numeric and non-numeric characters and 6 or more characters. This can be disabled if using devices that can not meet these needs, or you prefer to put other constraints including more rigid constraints that this rule actually considers weak when it may not be.','bool','','1',0,0,'Device Settings','',0,12),('DIAL_OPTIONS','Ttr','Asterisk Dial Options',0,'Options to be passed to the Asterisk Dial Command when making internal calls or for calls ringing internal phones. The options are documented in Asterisk documentation, a subset of which are described here. The default options T and t allow the calling and called users to transfer a call with ##. The r option allows Asterisk to generate ringing back to the calling phones which is needed by some phones and sometimes needed in complex dialplan features that may otherwise result in silence to the caller.','text','','Ttr',0,0,'Dialplan and Operational','',1,0),('DIE_ISSABELPBX_VERBOSE','0','Provide Verbose Tracebacks',2,'Provides a very verbose traceback when die_issabelpbx() is called including extensive object details if present in the traceback.','bool','','0',0,0,'Developer and Customization','',0,-100),('DISABLECUSTOMCONTEXTS','0','Disable -custom Context Includes',2,'Normally IssabelPBX auto-generates a custom context that may be usable for adding custom dialplan to modify the normal behavior of IssabelPBX. It takes a good understanding of how Asterisk processes these includes to use this and in many of the cases, there is no useful application. All includes will result in a WARNING in the Asterisk log if there is no context found to include though it results in no errors. If you know that you want the includes, you can set this to true. If you comment it out IssabelPBX will revert to legacy behavior and include the contexts.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('DISABLE_CSS_AUTOGEN','1','Disable Mainstyle CSS Compression',2,'Stops the automatic generation of a stripped CSS file that replaces the primary sheet, usually mainstyle.css.','bool','','0',0,0,'Developer and Customization','',0,-100),('DISPLAY_MONITOR_TRUNK_FAILURES_FIELD','0','Display Monitor Trunk Failures Option',2,'Setting this to true will expose the \"Monitor Trunk Failures\" field on the Trunks page. This field allows for a custom AGI script to be called upon a trunk failure. This is an advanced field requiring a custom script to be properly written and installed. Existing trunk page entries will not be affected if this is set to false but if the settings are changed on those pages the field will go away.','bool','','0',0,0,'Developer and Customization','',0,-100),('DITECH_VQA_INBOUND','7','Ditech VQA Inbound Setting',0,'If Ditech\'s VQA, Voice Quality application is installed, this setting will be used for all inbound calls. For more information \'core show application VQA\' at the Asterisk CLI will show the different settings.','select','0,1,2,3,4,5,6,7','7',0,0,'Dialplan and Operational','',0,-100),('DITECH_VQA_OUTBOUND','7','Ditech VQA Outbound Setting',0,'If Ditech\'s VQA, Voice Quality application is installed, this setting will be used for all outbound calls. For more information \'core show application VQA\' at the Asterisk CLI will show the different settings.','select','0,1,2,3,4,5,6,7','7',0,0,'Dialplan and Operational','',0,-100),('DIVERSIONHEADER','0','Generate Diversion Headers',0,'If this value is set to true, then calls going out your outbound routes that originate from outside your PBX and were subsequently forwarded through a call forward, ring group, follow-me or other means, will have a SIP diversion header added to the call with the original incoming DID assuming there is a DID available. This is useful with some carriers that may require this under certain circumstances.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('DYNAMICHINTS','0','Dynamically Generate Hints',0,'If true, Core will not statically generate hints, but instead make a call to the AMPBIN php script, and generate_hints.php through an Asterisk #exec call. This requires asterisk.conf to be configured with <b>execincludes=yes<b> set in the [options] section.','bool','','0',1,0,'Dialplan and Operational','',0,-100),('ENABLECW','1','CW Enabled by Default',0,'Enable call waiting by default when an extension is created (Default is yes). Set to <b>no</b> to if you do not want phones to be commissioned with call waiting already enabled. The user would then be required to dial the CW feature code (*70 default) to enable their phone. Most installations should leave this alone. It allows multi-line phones to receive multiple calls on their line appearances.','bool','','1',0,0,'Dialplan and Operational','',0,-100),('EXTENSION_LIST_RINGGROUPS','0','Display Extension Ring Group Members',0,'When set to true extensions that belong to one or more Ring Groups will have a Ring Group section and link back to each group they are a member of.','bool','','0',0,0,'Ring Group Module','ringgroups',0,50),('FCBEEPONLY','0','Feature Codes Beep Only',0,'When set to true, a beep is played instead of confirmation message when activating/de-activating: CallForward, CallWaiting, DayNight, DoNotDisturb and FindMeFollow.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('FOLLOWME_AUTO_CREATE','0','Create Follow Me at Extension Creation Time',1,'When creating a new user or extension, setting this to true will automatically create a new Follow Me for that user using the default settings listed below','bool','','0',0,0,'Follow Me Module','findmefollow',0,30),('FOLLOWME_DISABLED','1','Disable Follow Me Upon Creation',1,'This is the default value for the Follow Me \"Disable\" setting. When first creating a Follow Me or if auto-created with a new extension, setting this to true will disable the Follow Me setting which can be changed by the user or admin in multiple locations.','bool','','1',0,0,'Follow Me Module','findmefollow',0,40),('FOLLOWME_PRERING','7','Default Follow Me Initial Ring Time',1,'The default Initial Ring Time for a Follow Me set upon creation and used if auto-created with a new extension.','select','5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60','7',0,0,'Follow Me Module','findmefollow',0,60),('FOLLOWME_RG_STRATEGY','ringallv2-prim','Default Follow Me Ring Strategy',1,'The default Ring Strategy selected for a Follow Me set upon creation and used if auto-created with an extension.','select','ringallv2,ringallv2-prim,ringall,ringall-prim,hunt,hunt-prim,memoryhunt,memoryhunt-prim,firstavailable,firstnotonphone','ringallv2-prim',0,0,'Follow Me Module','findmefollow',0,70),('FOLLOWME_TIME','20','Default Follow Me Ring Time',1,'The default Ring Time for a Follow Me set upon creation and used if auto-created with a new extension.','select','5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120','20',0,0,'Follow Me Module','findmefollow',0,50),('FOPWEBROOT','','FOP Web Root Dir',4,'Path to the Flash Operator Panel webroot or other modules providing such functionality (leave off trailing slash).','dir','','',1,0,'Flash Operator Panel','',1,-100),('FORCED_ASTVERSION','','Force Asterisk Version',4,'Normally IssabelPBX gets the current Asterisk version directly from Asterisk. This is required to generate proper dialplan for a given version. When using some custom Asterisk builds, the version may not be properly parsed and improper dialplan generated. Setting this to an equivalent Asterisk version will override what is read from Asterisk. This SHOULD be left blank unless you know what you are doing.','text','','',1,0,'System Setup','',1,-100),('FORCE_INTERNAL_AUTO_ANSWER_ALL','0','Force All Internal Auto Answer',0,'Force all extensions to operate in the Internal Auto Answer mode regardless of their individual settings. See \'Internal Auto Answer Default\' for more information.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('FORCE_JS_CSS_IMG_DOWNLOAD','0','Always Download Web Assets',2,'IssabelPBX appends versioning tags on the CSS and javascript files and some of the main logo images. The versioning will help force browsers to load new versions of the files when module versions are upgraded. Setting this value to true will try to force these to be loaded to the browser every page load by appending an additional timestamp in the version information. This is useful during development and debugging where changes are being made to javascript and CSS files.','bool','','0',0,0,'Developer and Customization','',0,-100),('FPBXDBUGDISABLE','1','Disable IssabelPBX dbug Logging',2,'Set to true to stop all dbug() calls from writing to the Debug File (FPBXDBUGFILE)','bool','','1',0,0,'Developer and Customization','',0,-100),('FPBXDBUGFILE','/var/log/asterisk/issabelpbx_dbug','Debug File',2,'Full path and name of IssabelPBX debug file. Used by the dbug() function by developers.','text','','/var/log/asterisk/issabelpbx_dbug',0,0,'Developer and Customization','',0,-100),('FPBX_LOG_FILE','/var/log/asterisk/issabelpbx.log','IssabelPBX Log File',0,'Full path and name of the IssabelPBX Log File used in conjunction with the Syslog Level (AMPSYSLOGLEVEL) being set to FILE, not used otherwise. Initial installs may have some early logging sent to /tmp/issabelpbx_pre_install.log when it is first bootstrapping the installer.','text','','/var/log/asterisk/issabelpbx.log',0,0,'System Setup','',0,-150),('GENERATE_LEGACY_QUEUE_CODES','1','Generate queuenum*/** Login/off Codes',3,'Queue login and out codes were historically queunum* and queunum**. These have been largely replaced by the *45 queue toggle codes. The legacy codes are required to login or out a third party user that is not the extension dialing. These can be removed from the system by setting this to false.','bool','','1',0,0,'Queues Module','queues',0,120),('HTTPBINDADDRESS','0.0.0.0','HTTP Bind Address',2,'Address to bind to. Default is 0.0.0.0','text','','0.0.0.0',0,0,'Asterisk Builtin mini-HTTP server','',0,0),('HTTPBINDPORT','8088','HTTP Bind Port',2,'Port to bind to. Default is 8088','int','10,65536','8088',0,0,'Asterisk Builtin mini-HTTP server','',0,0),('HTTPENABLED','0','Enable the mini-HTTP Server',1,'Whether the Asterisk HTTP interface is enabled or not. This is for Asterisk, it is not directly related for IssabelPBX usage and the value of this setting is irrelevant for accessing core IssabelPBX settings. Default is no.','bool','','0',0,0,'Asterisk Builtin mini-HTTP server','',0,0),('HTTPENABLESTATIC','0','Enable Static Content',2,'Whether Asterisk should serve static content from http-static (HTML pages, CSS, javascript, etc.). Default is no.','bool','','0',0,0,'Asterisk Builtin mini-HTTP server','',0,0),('HTTPPREFIX','','HTTP Prefix',2,'HTTP Prefix allows you to specify a prefix for all requests to the server. For example, if the prefix is set to \"asterisk\" then all requests must begin with /asterisk. If this field is blank it is akin to saying all requests must being with /, essentially no prefix','text','','',0,0,'Asterisk Builtin mini-HTTP server','',1,0),('JQUERYUI_VER','1.8.9','jQuery UI Version',0,'The version of jQuery UI that we wish to use.','text','','1.8.9',1,1,'System Setup','',0,-100),('JQUERY_CSS','assets/css/jquery-ui.css','jQuery UI css',1,'css file for jquery ui','text','','assets/css/jquery-ui.css',1,1,'Styling and Logos','',0,320),('JQUERY_VER','1.7.1','jQuery Version',0,'The version of jQuery that we wish to use.','text','','1.7.1',1,1,'System Setup','',0,-100),('LOG_NOTIFICATIONS','1','Send Dashboard Notifications to Log',0,'When enabled all notification updates to the Dashboard notification panel will also be logged into the specified log file when enabled.','bool','','1',0,0,'System Setup','',0,-160),('LOG_OUT_MESSAGES','1','Log Verbose Messages',0,'IssabelPBX has many verbose and useful messages displayed to users during module installation, system installations, loading configurations and other places. In order to accumulate these messages in the log files as well as the on screen display, set this to true.','bool','','1',0,0,'System Setup','',0,-170),('mainstyle_css_generated','','Compressed Copy of Main CSS',10,'internal use','text','','',1,1,'Internal Use','',1,110),('MAXCALLS','','Dashboard Max Calls Initial Scale',2,'Use this to pre-set the scale for maximum calls on the Dashboard display. If not set, the the scale is dynamically sized based on the active calls on the system.','int','0,3000','',0,0,'GUI Behavior','dashboard',1,0),('MIXMON_DIR','','Override Call Recording Location',9,'Override the default location where asterisk will store call recordings. Be sure to set proper permissions on the directory for the asterisk user.','dir','','',1,0,'Directory Layout','',1,0),('MIXMON_FORMAT','wav','Call Recording Format',0,'Format to save recoreded calls for most call recording unless specified differently in specific applications.','select','wav,WAV,ulaw,ulaw,alaw,sln,gsm,g729','wav',0,0,'System Setup','',0,0),('MIXMON_POST','','Post Call Recording Script',9,'An optional script to be run after the call is hangup. You can include channel and MixMon variables like ${CALLFILENAME}, ${MIXMON_FORMAT} and ${MIXMON_DIR}. To ensure that you variables are properly escaped, use the following notation: ^{MY_VAR}','text','','',1,0,'Developer and Customization','',1,0),('MODULEADMINWGET','0','Use wget For Module Admin',0,'Module Admin normally tries to get its online information through direct file open type calls to URLs that go back to the issabel.org server. If it fails, typically because of content filters in firewalls that do not like the way PHP formats the requests, the code will fall back and try a wget to pull the information. This will often solve the problem. However, in such environment there can be a significant timeout before the failed file open calls to the URLs return and there are often 2-3 of these that occur. Setting this value will force IssabelPBX to avoid the attempt to open the URL and go straight to the wget calls.','bool','','0',0,0,'GUI Behavior','',0,-100),('MODULEADMIN_SKIP_CACHE','0','Disable Module Admin Caching',2,'Module Admin caches a copy of the online XML document that describes what is available on the server. Subsequent online update checks will use the cached information if it is less than 5 minutes old. To bypass the cache and force it to go to the server each time, set this to True. This should normally be false but can be helpful during testing.','bool','','0',1,0,'Developer and Customization','',0,-100),('MODULE_REPO','http://cloud.issabel.org,http://cloud2.issabel.org','Repo Server',10,'repo server','text','','http://cloud.issabel.org,http://cloud2.issabel.org',1,1,'Internal Use','',0,110),('MOHDIR','moh','MoH Subdirectory',4,'This is the subdirectory for the MoH files/directories which is located in ASTVARLIBDIR. Older installation may be using mohmp3 which was the old Asterisk default and should be set to that value if the music files are located there relative to the ASTVARLIBDIR.','select','moh,mohmp3','moh',1,0,'Directory Layout','',0,-100),('NOOPTRACE','0','NoOp Traces in Dialplan',0,'Some modules will generate lots of NoOp() commands proceeded by a [TRACE](trace_level) that can be used during development or while trying to trace call flows. These NoOp() commands serve no other purpose so if you do not want to see excessive NoOp()s in your dialplan you can set this to 0. The higher the number the more detailed level of trace NoOp()s will be generated','select','0,1,2,3,4,5,6,7,8,9,10','0',0,0,'Dialplan and Operational','',0,-100),('NOTICE_BROWSER_STATS','1','Browser Stats Notice',10,'Internal use to track if notice has been given that anonyous browser stats are being collected.','bool','','0',1,1,'Internal Use','',0,110),('OUTBOUND_CID_UPDATE','1','Display CallerID on Calling Phone',0,'When set to true and when CONNECTEDLINE() capabilities are configured and supported by your handset, the CID value being transmitted on this call will be updated on your handset in the CNAM field prepended with CID: so you know what is being presented to the caller if the outbound trunk supports and honors setting the transmitted CID.','bool','','1',0,0,'Dialplan and Operational','',0,0),('OUTBOUND_DIAL_UPDATE','1','Display Dialed Number on Calling Phone',0,'When set to true and when CONNECTEDLINE() capabilities are configured and supported by your handset, the number actually dialled will be updated on your handset in the CNUM field. This allows you to see the final manipulation of your number after outbound route and trunk dial manipulation rules have been applied. For example, if you have configured 7 digit dialing on a North America dialplan, the ultimate 10 or 11 digit transmission will be displayed back. Any \'Outbound Dial Prefixes\' configured at the trunk level will NOT be shown as these are foten analog line pauses (w) or other characters that distort the CNUM field on updates.','bool','','1',0,0,'Dialplan and Operational','',0,0),('PDFAUTHOR','www.issabel.org','tiff2pdf Author',0,'Author to pass to tiff2pdf\'s -a option','text','','www.issabel.org',1,1,'Styling and Logos','',0,0),('PHP_ERROR_HANDLER_OUTPUT','issabelpbxlog','PHP Error Log Output',0,'Where to send PHP errors, warnings and notices by the IssabelPBX PHP error handler. Set to \'dbug\', they will go to the Debug File regardless of whether dbug Loggin is disabled or not. Set to \'issabelpbxlog\' will send them to the IssabelPBX Log. Set to \'off\' and they will be ignored.','select','dbug,issabelpbxlog,off','issabelpbxlog',0,0,'System Setup','',0,-140),('POST_RELOAD','','POST_RELOAD Script',2,'Automatically execute a script after applying changes in the AMP admin. Set POST_RELOAD to the script you wish to execute after applying changes. If POST_RELOAD_DEBUG=true, you will see the output of the script in the web page.','text','','',1,0,'Developer and Customization','',1,-100),('POST_RELOAD_DEBUG','0','POST_RELOAD Debug Mode',2,'Display debug output for script used if POST_RELOAD is used.','bool','','0',0,0,'Developer and Customization','',0,-100),('PRE_RELOAD','','PRE_RELOAD Script',2,'Optional script to run just prior to doing an extension reload to Asterisk through the manager after pressing Apply Configuration Changes in the GUI.','text','','',1,0,'Developer and Customization','',1,-100),('QUEUES_EVENTS_MEMEBER_STATUS_DEFAULT','0','Memeber Status Event Default',3,'Default state for AMI to emit the QueueMemberStatus event. This setting will only affect the default for NEW queues, it won\'t change existing queues or enfore the option on in new ones.','bool','','0',0,0,'Queues Module','queues',0,120),('QUEUES_EVENTS_WHEN_CALLED_DEFAULT','0','Agent Called Events Default',3,'Default state for AMI emit events related to an agent\'s call. This setting will only affect the default for NEW queues, it won\'t change existing queues or enfore the option on in new ones.','bool','','0',0,0,'Queues Module','queues',0,120),('QUEUES_HIDE_NOANSWER','1','Hide Queue No Answer Option',0,'It is possible for a queue to NOT Answer a call and still enter callers to the queue. The normal behavior is that all  allers are answered before entering the queue. If the call is not answered, it is possible that some early media delivery would still allow callers to hear recordings, MoH, etc. but this can be inconsistent and vary. Because of the volatility of this option, it is not displayed by default. If a queue is set to not answer, the setting will be displayed for that queue regardless of this setting.','bool','','1',0,0,'Queues Module','queues',0,50),('QUEUES_MIX_MONITOR','1','Use MixMonitor for Recordings',0,'Queues: monitor-type = MixMonitor. Setting true will use the MixMonitor application instead of Monitor so the concept of \'joining/mixing\' the in/out files now goes away when this is enabled.','bool','','1',0,0,'Queues Module','queues',0,40),('QUEUES_PESISTENTMEMBERS','1','Persistent Members',0,'Queues: persistentmembers. Store each dynamic member in each queue in the astdb so that when asterisk is restarted, each member will be automatically read into their recorded queues.','bool','','1',1,0,'Queues Module','queues',0,10),('QUEUES_SHARED_LASTCALL','1','Honor Wrapup Time Across Queues',0,'Queues: shared_lastcall, only valid with Asterisk 1.6+. This will make the lastcall and calls received be the same in members logged in more than one queue. This is useful to make the queue respect the wrapuptime of another queue for a shared member.','bool','','1',1,0,'Queues Module','queues',0,20),('QUEUES_UPDATECDR','0','Set Agent Name in CDR dstchannel',0,'Queues: updatecdr, only valid with Asterisk 1.6+. This option is implemented to mimic chan_agents behavior of populating CDR dstchannel field of a call with an agent name, which is set if available at the login time with AddQueueMember membername parameter, or with static members.','bool','','0',0,0,'Queues Module','queues',0,30),('REC_POLICY','caller','Call Recording Policy',0,'Call Recording Policy used to resove the winner in a conflict between two extensions when one wants a call recorded and the other does not, if both their priorities are also the same.','select','caller,callee','caller',0,0,'Dialplan and Operational','',0,-100),('RELOADCONFIRM','1','Require Confirm with Apply Changes',0,'When set to false, will bypass the confirm on Reload Box.','bool','','1',0,0,'GUI Behavior','',0,-100),('RINGTIMER','15','Ringtime Default',0,'Default number of seconds to ring phones before sending callers to voicemail or other extension destinations. This can be set per extension/user. Phones with no voicemail or other destination options will ring indefinitely.','select','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120','15',0,0,'Dialplan and Operational','',1,0),('SERVERINTITLE','0','Include Server Name in Browser',0,'Precede browser title with the server name.','bool','','0',0,0,'GUI Behavior','',0,-100),('SHOWLANGUAGE','1','Show Language setting',0,'Show Language setting on menu . Defaults = false','bool','','1',0,0,'GUI Behavior','',0,-100),('SIPUSERAGENT','FPBX','SIP User Agent',10,'User Agent prefix','text','','FPBX',1,1,'Internal Use','',0,110),('SSHPORT','','Dashboard Non-Std SSH Port',2,'SSH port number configured on your system if not using the default port 22, this allows the dashboard monitoring to watch the poper port.','int','1,65535','',0,0,'System Setup','dashboard',1,0),('TCINTERVAL','60','Maintenance Polling Interval',1,'The polling interval in seconds used by the Time Conditions manintenace task, launched by an Asterisk call file used to update Time Conditions override states as well as keep custom device state hint values up-to-date when being used with BLF. A shorter interval will assure that BLF keys states are accurate. The interval should be less than the shortest configured span between two time condition states, so that a manual overide during such a period is properly reset when the new period starts.','select','60,120,180,240,300,600,900','60',0,0,'Time Condition Module','timeconditions',0,0),('TCMAINT','1','Enable Maintenance Polling',1,'If set to false, this will override the execution of the Time Conditons maintenace task launched by call files. If all the feature codes for time conditions are disabled, the maintenance task will not be launched anyhow. Setting this to false would be fairly un-common. You may want to set this temporarily if debugging a system to avoid the periodic dialplan running through the CLI that the maintenance task launches and can be distracting.','bool','','1',0,0,'Time Condition Module','timeconditions',0,0),('TIMEFORMAT','12 Hour Format','Speaking Clock Time Format',0,'Time format to use with the Speaking Clock.','select','12 Hour Format,24 Hour Format','12 Hour Format',0,0,'Dialplan and Operational','infoservices',0,0),('TONEZONE','us','Country Indication Tones',0,'Choose the country tonezone that you would like Asterisk to use when creating the different standard telephony tones such as ringing, busy, congetstion, etc.','fselect','a:54:{s:2:\"ao\";s:6:\"Angola\";s:2:\"ar\";s:9:\"Argentina\";s:2:\"au\";s:9:\"Australia\";s:2:\"at\";s:7:\"Austria\";s:2:\"be\";s:7:\"Belgium\";s:2:\"br\";s:6:\"Brazil\";s:2:\"bg\";s:8:\"Bulgaria\";s:2:\"cl\";s:5:\"Chile\";s:2:\"cn\";s:5:\"China\";s:2:\"co\";s:22:\"Colombia (Republic of)\";s:2:\"cr\";s:10:\"Costa Rica\";s:2:\"cz\";s:14:\"Czech Republic\";s:2:\"dk\";s:7:\"Denmark\";s:2:\"ee\";s:7:\"Estonia\";s:2:\"fi\";s:7:\"Finland\";s:2:\"fr\";s:6:\"France\";s:2:\"de\";s:7:\"Germany\";s:2:\"gr\";s:6:\"Greece\";s:2:\"hk\";s:9:\"Hong Kong\";s:2:\"hu\";s:7:\"Hungary\";s:2:\"in\";s:5:\"India\";s:2:\"ir\";s:4:\"Iran\";s:2:\"il\";s:6:\"Israel\";s:2:\"it\";s:5:\"Italy\";s:2:\"jp\";s:5:\"Japan\";s:2:\"ke\";s:19:\"Kenya (Republic of)\";s:2:\"lt\";s:9:\"Lithuania\";s:2:\"mo\";s:5:\"Macao\";s:2:\"my\";s:8:\"Malaysia\";s:2:\"mx\";s:6:\"Mexico\";s:2:\"nl\";s:11:\"Netherlands\";s:2:\"nz\";s:11:\"New Zealand\";s:2:\"no\";s:6:\"Norway\";s:2:\"pk\";s:8:\"Pakistan\";s:2:\"pa\";s:6:\"Panama\";s:3:\"phl\";s:11:\"Philippines\";s:2:\"pl\";s:6:\"Poland\";s:2:\"pt\";s:8:\"Portugal\";s:2:\"ro\";s:7:\"Romania\";s:2:\"ru\";s:18:\"Russian Federation\";s:2:\"sg\";s:9:\"Singapore\";s:2:\"za\";s:12:\"South Africa\";s:2:\"es\";s:5:\"Spain\";s:2:\"se\";s:6:\"Sweden\";s:2:\"ch\";s:11:\"Switzerland\";s:2:\"tw\";s:6:\"Taiwan\";s:2:\"tz\";s:29:\"Tanzania (United Republic of)\";s:2:\"th\";s:8:\"Thailand\";s:2:\"tr\";s:6:\"Turkey\";s:2:\"ug\";s:20:\"Uganda (Republic of)\";s:2:\"uk\";s:14:\"United Kingdom\";s:2:\"us\";s:29:\"United States / North America\";s:6:\"us-old\";s:39:\"United States Circa 1950/ North America\";s:2:\"ve\";s:25:\"Venezuela / South America\";}','us',0,0,'Dialplan and Operational','',1,0),('TRANSFER_CONTEXT','from-internal-xfer','Asterisk TRANSFER_CONTEXT Variable',9,'This is the Asterisk Channel Variable TRANSFER_CONTEXT. In general it should NOT be changed unless you really know what you are doing. It is used to do create slightly different \'views\' when a call is being transfered. An example is hiding the paging groups so a call isn\'t accidentally transfered into a page.','text','','from-internal-xfer',1,1,'Dialplan and Operational','',1,-100),('TRUNK_OPTIONS','Tt','Asterisk Outbound Trunk Dial Options',0,'Options to be passed to the Asterisk Dial Command when making outbound calls on your trunks when not part of an Intra-Company Route. The options are documented in Asterisk documentation, a subset of which are described here. The default options T and t allow the calling and called users to transfer a call with ##. It is HIGHLY DISCOURAGED to use the r option here as this will prevent early media from being delivered from the PSTN and can result in the inability to interact with some external IVRs','text','','Tt',0,0,'Dialplan and Operational','',1,0),('TRUNK_RING_TIMER','300','Trunk Dial Timeout',2,'How many seconds to try a call on your trunks before giving up. This should normally be a very long time and is usually only changed if you have some sort of problematic trunks. This is the Asterisk Dial Command timeout parameter.','int','0,86400','300',1,0,'Dialplan and Operational','',0,-100),('USEDEVSTATE','0','Enable Custom Device States',0,'If this is set, it assumes that you are running Asterisk 1.4 or higher and want to take advantage of the func_devstate.c backport available from Asterisk 1.6. This allows custom hints to be created to support BLF for server side feature codes such as daynight, followme, etc','bool','','1',0,0,'Dialplan and Operational','',0,-100),('USEGOOGLEDNSFORENUM','0','Use Google DNS for Enum',2,'Setting this flag will generate the required global variable so that enumlookup.agi will use Google DNS 8.8.8.8 when performing an ENUM lookup. Not all DNS deals with NAPTR record, but Google does. There is a drawback to this as Google tracks every lookup. If you are not comfortable with this, do not enable this setting. Please read Google FAQ about this: <b>http://code.google.com/speed/public-dns/faq.html#privacy</b>.','bool','','0',0,0,'Dialplan and Operational','',0,-100),('USEQUEUESTATE','0','Asterisk Queues Patch 15168 Installed',3,'Setting this flag will generate the required dialplan to integrate with the following Asterisk patch: <b>https://issues.asterisk.org/view.php?id=15168</b>. This setting is obsolete on Asterisk 1.8+ systems where the hint state is now standard and always used. This asterisk patch is only available on Asterisk 1.4, trying to use this setting on Asterisk 1.6 will break some queue behavior and should be avoided','bool','','0',0,0,'Queues Module','queues',0,100),('USERESMWIBLF','0','Create Voicemail Hints',3,'Setting this flag with generate the required dialplan to integrate with res_mwi_blf which is included with the Official IssabelPBX Distro. It allows users to subscribe to other voicemail box and be notified via BLF of changes.','bool','','0',0,0,'Voicemail Module','voicemail',0,100),('USE_GOOGLE_CDN_JS','0','Use Google Distribution Network for js Downloads',0,'Setting this to true will fetch system javascript libraries such as jQuery and jQuery-ui from ajax.googleapis.com. This can be advantageous if accessing remote or multiple different IssabelPBX systems since the libraries are only cached once in your browser. If external internet connections are problematic, setting this true could result in slow systems. IssabelPBX will always fallback to the locally available libraries if the CDN is not available.','bool','','0',0,0,'System Setup','',0,-100),('USE_ISSABELPBX_MENU_CONF','0','Use issabelpbx_menu.conf Configuration',0,'When set to true, the system will check for a issabelpbx_menu.conf file amongst the normal configuraiton files and if found, it will be used to define and remap the menu tabs and contents. See the template supplied with IssabelPBX for details on how to do this.','bool','','0',0,0,'GUI Behavior','',0,-100),('USE_PACKAGED_JS','1','Use Packaged Javascript Library ',2,'IssabelPBX packages several javascript libraries and components into a compressed file called libissabelpbx.javascript.js. By default this will be loaded instead of the individual uncompressed libraries. Setting this to false will force IssabelPBX to load all the libraries as individual uncompressed files. This is useful during development and debugging.','bool','','1',0,0,'Developer and Customization','',0,-100),('VIEW_BAD_REFFERER','views/bad_refferer.php','View: bad_refferer.php',1,'bad_refferer.php view. This should never be changed except for very advanced layout changes.','text','','views/bad_refferer.php',1,1,'Styling and Logos','',0,270),('VIEW_BETA_NOTICE','views/beta_notice.php','View: beta_notice.php',1,'beta_notice.php view. This should never be changed except for very advanced layout changes','text','','views/beta_notice.php',1,1,'Styling and Logos','',0,312),('VIEW_FOOTER','views/footer.php','View: issabelpbx.php',1,'footer.php view. This should never be changed except for very advanced layout changes','text','','views/footer.php',1,1,'Styling and Logos','',0,350),('VIEW_FOOTER_CONTENT','views/footer_content.php','View: footer_content.php',1,'footer_content.php view. This should never be changed except for very advanced layout changes','text','','views/footer_content.php',1,1,'Styling and Logos','',0,360),('VIEW_HEADER','views/header.php','View: header.php',1,'header.php view. This should never be changed except for very advanced layout changes','text','','views/header.php',1,1,'Styling and Logos','',0,340),('VIEW_ISSABELPBX','views/issabelpbx.php','View: issabelpbx.php',1,'issabelpbx.php view. This should never be changed except for very advanced layout changes.','text','','views/issabelpbx.php',1,1,'Styling and Logos','',0,190),('VIEW_ISSABELPBX_ADMIN','views/issabelpbx_admin.php','View: issabelpbx_admin.php',1,'issabelpbx_admin.php view. This should never be changed except for very advanced layout changes.','text','','views/issabelpbx_admin.php',1,1,'Styling and Logos','',0,180),('VIEW_ISSABELPBX_RELOAD','views/issabelpbx_reload.php','View: issabelpbx_reload.php',1,'issabelpbx_reload.php view. This should never be changed except for very advanced layout changes.','text','','views/issabelpbx_reload.php',1,1,'Styling and Logos','',0,200),('VIEW_ISSABELPBX_RELOADBAR','views/issabelpbx_reloadbar.php','View: issabelpbx_reloadbar.php',1,'issabelpbx_reloadbar.php view. This should never be changed except for very advanced layout changes.','text','','views/issabelpbx_reloadbar.php',1,1,'Styling and Logos','',0,210),('VIEW_LOGGEDOUT','views/loggedout.php','View: loggedout.php',1,'loggedout.php view. This should never be changed except for very advanced layout changes.','text','','views/loggedout.php',1,1,'Styling and Logos','',0,280),('VIEW_LOGIN','views/login.php','View: login.php',1,'login.php view. This should never be changed except for very advanced layout changes','text','','views/login.php',1,1,'Styling and Logos','',0,330),('VIEW_MENU','views/menu.php','View: menu.php',1,'menu.php view. This should never be changed except for very advanced layout changes','text','','views/menu.php',1,1,'Styling and Logos','',0,310),('VIEW_MENUITEM_DISABLED','views/menuitem_disabled.php','View: menuitem_disabled.php',1,'menuitem_disabled.php view. This should never be changed except for very advanced layout changes.','text','','views/menuitem_disabled.php',1,1,'Styling and Logos','',0,240),('VIEW_NOACCESS','views/noaccess.php','View: noaccess.php',1,'noaccess.php view. This should never be changed except for very advanced layout changes.','text','','views/noaccess.php',1,1,'Styling and Logos','',0,250),('VIEW_OBE','views/obe.php','View: obe.php',1,'obe.php view. This should never be changed except for very advanced layout changes','text','','views/obe.php',1,1,'Styling and Logos','',0,310),('VIEW_PANEL','views/panel.php','View: panel.php',1,'panel.php view. This should never be changed except for very advanced layout changes.','text','','views/panel.php',1,1,'Styling and Logos','',0,290),('VIEW_POPOVER_JS','views/popover_js.php','View: popover_js.php',1,'popover_js.php view. This should never be changed except for very advanced layout changes','text','','views/popover_js.php',1,1,'Styling and Logos','',0,355),('VIEW_REPORTS','views/reports.php','View: reports.php',1,'reports.php view. This should never be changed except for very advanced layout changes.','text','','views/reports.php',1,1,'Styling and Logos','',0,300),('VIEW_UNAUTHORIZED','views/unauthorized.php','View: unauthorized.php',1,'unauthorized.php view. This should never be changed except for very advanced layout changes.','text','','views/unauthorized.php',1,1,'Styling and Logos','',0,260),('VIEW_WELCOME','views/welcome.php','View: welcome.php',1,'welcome.php view. This should never be changed except for very advanced layout changes.','text','','views/welcome.php',1,1,'Styling and Logos','',0,220),('VIEW_WELCOME_NONMANAGER','views/welcome_nomanager.php','View: welcome_nomanager.php',1,'welcome_nomanager.php view. This should never be changed except for very advanced layout changes.','text','','views/welcome_nomanager.php',1,1,'Styling and Logos','',0,230),('VMX_CONTEXT','from-internal','VMX Default Context',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this.','text','','from-internal',1,0,'VmX Locater','',0,0),('VMX_LOOPDEST_CONTEXT','','VMX Default Loop Exceed Context',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they press an invalid options too many times, as defined by the Maximum Loops count.','text','','',1,0,'VmX Locater','',1,0),('VMX_LOOPDEST_EXT','dovm','VMX Default Loop Exceed Extension',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they press an invalid options too many times, as defined by the Maximum Loops count.','text','','dovm',1,0,'VmX Locater','',0,0),('VMX_LOOPDEST_PRI','1','VMX Default Loop Exceed Priority',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they press an invalid options too many times, as defined by the Maximum Loops count.','int','1,1000','1',1,0,'VmX Locater','',0,0),('VMX_PRI','1','VMX Default Priority',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this.','int','1,1000','1',1,0,'VmX Locater','',0,0),('VMX_TIMEDEST_CONTEXT','','VMX Default Timeout Context',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they don\'t press any key (timeout) or press # which is interpreted as a timeout. Set this to \'dovm\' to go to voicemail (default).','text','','',1,0,'VmX Locater','',1,0),('VMX_TIMEDEST_EXT','dovm','VMX Default Timeout Extension',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they don\'t press any key (timeout) or press # which is interpreted as a timeout. Set this to \'dovm\' to go to voicemail (default).','text','','dovm',1,0,'VmX Locater','',0,0),('VMX_TIMEDEST_PRI','1','VMX Default Timeout Priority',9,'Used to do extremely advanced and customized changes to the macro-vm VmX locater. Check the dialplan for a thorough understanding of how to use this. The default location that a caller will be sent if they don\'t press any key (timeout) or press # which is interpreted as a timeout. Set this to \'dovm\' to go to voicemail (default).','int','1,1000','1',1,0,'VmX Locater','',0,0),('VM_SHOW_IMAP','0','Provide IMAP Voicemail Fields',3,'Installations that have configured Voicemail with IMAP should set this to true so that the IMAP username and password fields are provided in the Voicemail setup screen for extensions. If an extension alread has these fields populated, they will be displayed even if this is set to false.','bool','','0',0,0,'Voicemail Module','voicemail',0,100),('WHICH_rm','/bin/rm','Path for rm',2,'The path to rm as auto-determined by the system. Overwrite as necessary.','text','','/bin/rm',1,0,'System Apps','',1,0),('XTNCONFLICTABORT','0','Abort Config Gen on Exten Conflict',3,'Setting either of these to true will result in retrieve_conf aborting during a reload if an extension conflict is detected or a destination is detected. It is usually better to allow the reload to go through and then correct the problem but these can be set if a more strict behavior is desired.','bool','','0',0,0,'GUI Behavior','',0,-100),('ZAP2DAHDICOMPAT','1','Convert ZAP Settings to DAHDi',0,'If set to true, IssabelPBX will check if you have chan_dahdi installed. If so, it will automatically use all your ZAP configuration settings (devices and trunks) and silently convert them, under the covers, to DAHDi so no changes are needed. The GUI will continue to refer to these as ZAP but it will use the proper DAHDi channels. This will also keep Zap Channel DIDs working.','bool','','0',1,0,'Dialplan and Operational','',0,-100);
/*!40000 ALTER TABLE `issabelpbx_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivr_details`
--

DROP TABLE IF EXISTS `ivr_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivr_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `announcement` varchar(25) DEFAULT NULL,
  `directdial` varchar(50) DEFAULT NULL,
  `invalid_loops` varchar(10) DEFAULT NULL,
  `invalid_retry_recording` varchar(25) DEFAULT NULL,
  `invalid_destination` varchar(50) DEFAULT NULL,
  `invalid_recording` varchar(25) DEFAULT NULL,
  `retvm` varchar(8) DEFAULT NULL,
  `timeout_time` int(11) DEFAULT NULL,
  `timeout_recording` varchar(25) DEFAULT NULL,
  `timeout_retry_recording` varchar(25) DEFAULT NULL,
  `timeout_destination` varchar(50) DEFAULT NULL,
  `timeout_loops` varchar(11) DEFAULT NULL,
  `timeout_append_announce` tinyint(1) NOT NULL DEFAULT '1',
  `invalid_append_announce` tinyint(1) NOT NULL DEFAULT '1',
  `timeout_ivr_ret` tinyint(1) NOT NULL DEFAULT '0',
  `invalid_ivr_ret` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr_details`
--

LOCK TABLES `ivr_details` WRITE;
/*!40000 ALTER TABLE `ivr_details` DISABLE KEYS */;
INSERT INTO `ivr_details` VALUES (3,'Unnamed',NULL,NULL,'ext-local','disabled','','','','',10,'','','','disabled',1,1,0,0);
/*!40000 ALTER TABLE `ivr_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivr_entries`
--

DROP TABLE IF EXISTS `ivr_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivr_entries` (
  `ivr_id` int(11) NOT NULL,
  `selection` varchar(10) DEFAULT NULL,
  `dest` varchar(50) DEFAULT NULL,
  `ivr_ret` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr_entries`
--

LOCK TABLES `ivr_entries` WRITE;
/*!40000 ALTER TABLE `ivr_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ivr_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_incoming`
--

DROP TABLE IF EXISTS `language_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_incoming` (
  `extension` varchar(50) DEFAULT NULL,
  `cidnum` varchar(50) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_incoming`
--

LOCK TABLES `language_incoming` WRITE;
/*!40000 ALTER TABLE `language_incoming` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logfile_logfiles`
--

DROP TABLE IF EXISTS `logfile_logfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logfile_logfiles` (
  `name` varchar(25) NOT NULL DEFAULT '',
  `debug` varchar(25) DEFAULT NULL,
  `dtmf` varchar(25) DEFAULT NULL,
  `error` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `notice` varchar(25) DEFAULT NULL,
  `verbose` varchar(25) DEFAULT NULL,
  `warning` varchar(25) DEFAULT NULL,
  `security` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logfile_logfiles`
--

LOCK TABLES `logfile_logfiles` WRITE;
/*!40000 ALTER TABLE `logfile_logfiles` DISABLE KEYS */;
INSERT INTO `logfile_logfiles` VALUES ('full','on','off','on','off','on','on','on','off'),('console','on','off','on','off','on','on','on','off'),('messages','off','off','on','off','on','off','on','on');
/*!40000 ALTER TABLE `logfile_logfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logfile_settings`
--

DROP TABLE IF EXISTS `logfile_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logfile_settings` (
  `key` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logfile_settings`
--

LOCK TABLES `logfile_settings` WRITE;
/*!40000 ALTER TABLE `logfile_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `logfile_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `secret` varchar(50) DEFAULT NULL,
  `deny` varchar(255) DEFAULT NULL,
  `permit` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetme`
--

DROP TABLE IF EXISTS `meetme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetme` (
  `exten` varchar(50) NOT NULL,
  `options` varchar(15) DEFAULT NULL,
  `userpin` varchar(50) DEFAULT NULL,
  `adminpin` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `joinmsg_id` int(11) DEFAULT NULL,
  `music` varchar(80) DEFAULT NULL,
  `users` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetme`
--

LOCK TABLES `meetme` WRITE;
/*!40000 ALTER TABLE `meetme` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscapps`
--

DROP TABLE IF EXISTS `miscapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscapps` (
  `miscapps_id` int(11) NOT NULL AUTO_INCREMENT,
  `ext` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`miscapps_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscapps`
--

LOCK TABLES `miscapps` WRITE;
/*!40000 ALTER TABLE `miscapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscdests`
--

DROP TABLE IF EXISTS `miscdests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscdests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `destdial` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscdests`
--

LOCK TABLES `miscdests` WRITE;
/*!40000 ALTER TABLE `miscdests` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscdests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_xml`
--

DROP TABLE IF EXISTS `module_xml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_xml` (
  `id` varchar(20) NOT NULL DEFAULT 'xml',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_xml`
--


--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(50) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (59,'core','2.11.0.35',1),(60,'iaxsettings','2.11.0.3',1),(61,'paging','2.11.0.9',1),(62,'featurecodeadmin','2.11.0.2',1),(63,'asteriskinfo','2.11.0.89',1),(64,'callwaiting','2.11.0.4',1),(65,'restart','2.11.0.2',1),(66,'phpagiconf','2.11.0.2',1),(67,'music','2.11.0.3',1),(68,'dictate','2.11.0.3',1),(69,'ringgroups','2.11.0.6',1),(70,'infoservices','2.11.0.3',1),(71,'timeconditions','2.11.1.1',1),(72,'ivr','2.11.0.10',1),(73,'callrecording','2.11.0.9',1),(74,'phonebook','2.11.0.2',1),(75,'gabcast','2.5.0.2',1),(76,'inventorydb','2.5.0.2',1),(77,'logfiles','2.11.1.3',1),(78,'outroutemsg','2.11.0.2',1),(79,'miscapps','2.11.0.2',1),(80,'manager','2.11.0.5',1),(81,'customcontexts','2.11.0.2',1),(82,'vmblast','2.11.0.4',1),(83,'printextensions','2.11.0.2',1),(84,'framework','2.11.0.44',1),(85,'sipsettings','2.11.0.9',1),(86,'voicemail','2.11.1.6',1),(87,'callforward','2.11.5',1),(88,'announcement','2.11.0.4',1),(89,'miscdests','2.11.0.4',1),(90,'dashboard','2.11.0.5',1),(91,'recordings','3.4.0.3',1),(92,'asterisk-cli','2.11.0.3',1),(93,'weakpasswords','2.11.0.1',1),(94,'queues','2.11.0.27',1),(95,'cidlookup','2.11.1.12',1),(96,'donotdisturb','2.11.0.3',1),(97,'backup','2.11.0.22',1),(98,'customappsreg','2.11.0.2',1),(99,'conferences','2.11.0.6',1),(100,'pbdirectory','2.11.0.5',1),(101,'blacklist','2.11.0.6',1),(102,'disa','2.11.0.6',1),(103,'cdr','2.11.0.12',1),(104,'javassh','2.11.2',1),(105,'queueprio','2.11.0.2',1),(106,'callback','2.11.0.4',1),(107,'speeddial','2.11.0.4',1),(108,'pinsets','2.11.0.9',1),(109,'fw_langpacks','2.11.2',1),(110,'languages','2.11.0.2',1),(111,'customerdb','2.5.0.4',1),(112,'parking','2.11.0.15',1),(113,'fax','2.11.0.9',1),(114,'findmefollow','2.11.0.6',1),(115,'dundicheck','2.11.0.3',1),(116,'phpinfo','2.11.0.1',1),(117,'daynight','2.11.0.6',1);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motif`
--

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `module` varchar(24) NOT NULL DEFAULT '',
  `id` varchar(24) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `display_text` varchar(255) NOT NULL DEFAULT '',
  `extended_text` blob NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `reset` tinyint(4) NOT NULL DEFAULT '0',
  `candelete` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--


--
-- Table structure for table `outbound_route_patterns`
--

DROP TABLE IF EXISTS `outbound_route_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_route_patterns` (
  `route_id` int(11) NOT NULL,
  `match_pattern_prefix` varchar(60) NOT NULL DEFAULT '',
  `match_pattern_pass` varchar(60) NOT NULL DEFAULT '',
  `match_cid` varchar(60) NOT NULL DEFAULT '',
  `prepend_digits` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`route_id`,`match_pattern_prefix`,`match_pattern_pass`,`match_cid`,`prepend_digits`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_route_patterns`
--

LOCK TABLES `outbound_route_patterns` WRITE;
/*!40000 ALTER TABLE `outbound_route_patterns` DISABLE KEYS */;
INSERT INTO `outbound_route_patterns` VALUES (1,'9','.','','');
/*!40000 ALTER TABLE `outbound_route_patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_route_sequence`
--

DROP TABLE IF EXISTS `outbound_route_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_route_sequence` (
  `route_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  PRIMARY KEY (`route_id`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_route_sequence`
--

LOCK TABLES `outbound_route_sequence` WRITE;
/*!40000 ALTER TABLE `outbound_route_sequence` DISABLE KEYS */;
INSERT INTO `outbound_route_sequence` VALUES (1,0);
/*!40000 ALTER TABLE `outbound_route_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_route_trunks`
--

DROP TABLE IF EXISTS `outbound_route_trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_route_trunks` (
  `route_id` int(11) NOT NULL,
  `trunk_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  PRIMARY KEY (`route_id`,`trunk_id`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_route_trunks`
--

LOCK TABLES `outbound_route_trunks` WRITE;
/*!40000 ALTER TABLE `outbound_route_trunks` DISABLE KEYS */;
INSERT INTO `outbound_route_trunks` VALUES (1,1,0);
/*!40000 ALTER TABLE `outbound_route_trunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_routes`
--

DROP TABLE IF EXISTS `outbound_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_routes` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `outcid` varchar(40) DEFAULT NULL,
  `outcid_mode` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `emergency_route` varchar(4) DEFAULT NULL,
  `intracompany_route` varchar(4) DEFAULT NULL,
  `mohclass` varchar(80) DEFAULT NULL,
  `time_group_id` int(11) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_routes`
--

LOCK TABLES `outbound_routes` WRITE;
/*!40000 ALTER TABLE `outbound_routes` DISABLE KEYS */;
INSERT INTO `outbound_routes` VALUES (1,'9_outside','','','','','','',NULL,NULL);
/*!40000 ALTER TABLE `outbound_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outroutemsg`
--

DROP TABLE IF EXISTS `outroutemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outroutemsg` (
  `keyword` varchar(40) NOT NULL DEFAULT '',
  `data` varchar(10) NOT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outroutemsg`
--

LOCK TABLES `outroutemsg` WRITE;
/*!40000 ALTER TABLE `outroutemsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `outroutemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paging_autoanswer`
--

DROP TABLE IF EXISTS `paging_autoanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paging_autoanswer` (
  `useragent` varchar(255) NOT NULL,
  `var` varchar(20) NOT NULL,
  `setting` varchar(255) NOT NULL,
  PRIMARY KEY (`useragent`,`var`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paging_autoanswer`
--

LOCK TABLES `paging_autoanswer` WRITE;
/*!40000 ALTER TABLE `paging_autoanswer` DISABLE KEYS */;
INSERT INTO `paging_autoanswer` VALUES ('default','CALLINFO','Call-Info: <uri>\\;answer-after=0'),('default','ALERTINFO','Alert-Info: Ring Answer'),('default','SIPURI','intercom=true'),('Mitel','CALLINFO','Call-Info: <sip:broadworks.net>\\;answer-after=0'),('Panasonic','ALERTINFO','Alert-Info: Intercom'),('Polycom','ALERTINFO','Alert-Info: info=Auto Answer'),('Digium','ALERTINFO','Alert-Info: ring-answer');
/*!40000 ALTER TABLE `paging_autoanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paging_config`
--

DROP TABLE IF EXISTS `paging_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paging_config` (
  `page_group` varchar(255) NOT NULL DEFAULT '',
  `force_page` int(1) NOT NULL,
  `duplex` int(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paging_config`
--

LOCK TABLES `paging_config` WRITE;
/*!40000 ALTER TABLE `paging_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `paging_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paging_groups`
--

DROP TABLE IF EXISTS `paging_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paging_groups` (
  `page_number` varchar(50) NOT NULL DEFAULT '',
  `ext` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_number`,`ext`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paging_groups`
--

LOCK TABLES `paging_groups` WRITE;
/*!40000 ALTER TABLE `paging_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `paging_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkplus`
--

DROP TABLE IF EXISTS `parkplus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkplus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `defaultlot` varchar(10) NOT NULL DEFAULT 'no',
  `type` varchar(10) NOT NULL DEFAULT 'public',
  `name` varchar(40) NOT NULL DEFAULT '',
  `parkext` varchar(40) NOT NULL DEFAULT '',
  `parkpos` varchar(40) NOT NULL DEFAULT '',
  `numslots` int(11) NOT NULL DEFAULT '4',
  `parkingtime` int(11) NOT NULL DEFAULT '45',
  `parkedmusicclass` varchar(100) DEFAULT 'default',
  `generatefc` varchar(10) NOT NULL DEFAULT 'yes',
  `generatehints` varchar(10) NOT NULL DEFAULT 'yes',
  `findslot` varchar(10) NOT NULL DEFAULT 'first',
  `parkedplay` varchar(10) NOT NULL DEFAULT 'both',
  `parkedcalltransfers` varchar(10) NOT NULL DEFAULT 'caller',
  `parkedcallreparking` varchar(10) NOT NULL DEFAULT 'caller',
  `alertinfo` varchar(254) NOT NULL DEFAULT '',
  `cidpp` varchar(100) NOT NULL DEFAULT '',
  `autocidpp` varchar(10) NOT NULL DEFAULT 'none',
  `announcement_id` int(11) DEFAULT NULL,
  `comebacktoorigin` varchar(10) NOT NULL DEFAULT 'yes',
  `dest` varchar(100) NOT NULL DEFAULT 'app-blackhole,hangup,1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkplus`
--

LOCK TABLES `parkplus` WRITE;
/*!40000 ALTER TABLE `parkplus` DISABLE KEYS */;
INSERT INTO `parkplus` VALUES (1,'yes','public','Default Lot','','',4,45,'default','yes','yes','first','both','caller','caller','','','none',NULL,'yes','app-blackhole,hangup,1');
/*!40000 ALTER TABLE `parkplus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpagiconf`
--

DROP TABLE IF EXISTS `phpagiconf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpagiconf` (
  `phpagiid` int(11) NOT NULL AUTO_INCREMENT,
  `debug` tinyint(1) DEFAULT NULL,
  `error_handler` tinyint(1) DEFAULT NULL,
  `err_email` varchar(50) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `tempdir` varchar(255) DEFAULT NULL,
  `festival_text2wave` varchar(255) DEFAULT NULL,
  `asman_server` varchar(255) DEFAULT NULL,
  `asman_port` int(11) NOT NULL,
  `asman_user` varchar(50) DEFAULT NULL,
  `asman_secret` varchar(255) DEFAULT NULL,
  `cepstral_swift` varchar(255) DEFAULT NULL,
  `cepstral_voice` varchar(50) DEFAULT NULL,
  `setuid` tinyint(1) DEFAULT NULL,
  `basedir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phpagiid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpagiconf`
--

LOCK TABLES `phpagiconf` WRITE;
/*!40000 ALTER TABLE `phpagiconf` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpagiconf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinset_usage`
--

DROP TABLE IF EXISTS `pinset_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinset_usage` (
  `pinsets_id` int(11) NOT NULL,
  `dispname` varchar(30) NOT NULL DEFAULT '',
  `foreign_id` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`dispname`,`foreign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinset_usage`
--

LOCK TABLES `pinset_usage` WRITE;
/*!40000 ALTER TABLE `pinset_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinset_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinsets`
--

DROP TABLE IF EXISTS `pinsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinsets` (
  `pinsets_id` int(11) NOT NULL AUTO_INCREMENT,
  `passwords` longtext,
  `description` varchar(50) DEFAULT NULL,
  `addtocdr` tinyint(1) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pinsets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinsets`
--

LOCK TABLES `pinsets` WRITE;
/*!40000 ALTER TABLE `pinsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queueprio`
--

DROP TABLE IF EXISTS `queueprio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queueprio` (
  `queueprio_id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_priority` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`queueprio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queueprio`
--

LOCK TABLES `queueprio` WRITE;
/*!40000 ALTER TABLE `queueprio` DISABLE KEYS */;
/*!40000 ALTER TABLE `queueprio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues_config`
--

DROP TABLE IF EXISTS `queues_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues_config` (
  `extension` varchar(20) NOT NULL DEFAULT '',
  `descr` varchar(35) NOT NULL DEFAULT '',
  `grppre` varchar(100) NOT NULL DEFAULT '',
  `alertinfo` varchar(254) NOT NULL DEFAULT '',
  `ringing` tinyint(1) NOT NULL DEFAULT '0',
  `maxwait` varchar(8) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `ivr_id` varchar(8) NOT NULL DEFAULT '0',
  `dest` varchar(50) NOT NULL DEFAULT '',
  `cwignore` tinyint(1) NOT NULL DEFAULT '0',
  `qregex` varchar(255) DEFAULT NULL,
  `agentannounce_id` int(11) DEFAULT NULL,
  `joinannounce_id` int(11) DEFAULT NULL,
  `queuewait` tinyint(1) DEFAULT '0',
  `use_queue_context` tinyint(1) DEFAULT '0',
  `togglehint` tinyint(1) DEFAULT '0',
  `qnoanswer` tinyint(1) DEFAULT '0',
  `callconfirm` tinyint(1) DEFAULT '0',
  `callconfirm_id` int(11) DEFAULT NULL,
  `monitor_type` varchar(5) DEFAULT NULL,
  `monitor_heard` int(11) DEFAULT NULL,
  `monitor_spoken` int(11) DEFAULT NULL,
  `callback_id` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues_config`
--

LOCK TABLES `queues_config` WRITE;
/*!40000 ALTER TABLE `queues_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues_details`
--

DROP TABLE IF EXISTS `queues_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues_details` (
  `id` varchar(45) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(150) NOT NULL DEFAULT '',
  `flags` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`,`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues_details`
--

LOCK TABLES `queues_details` WRITE;
/*!40000 ALTER TABLE `queues_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordings`
--

DROP TABLE IF EXISTS `recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) DEFAULT NULL,
  `filename` blob,
  `description` varchar(254) DEFAULT NULL,
  `fcode` tinyint(1) DEFAULT '0',
  `fcode_pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordings`
--

LOCK TABLES `recordings` WRITE;
/*!40000 ALTER TABLE `recordings` DISABLE KEYS */;
INSERT INTO `recordings` VALUES (1,'__invalid','install done','',0,NULL);
/*!40000 ALTER TABLE `recordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ringgroups`
--

DROP TABLE IF EXISTS `ringgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ringgroups` (
  `grpnum` varchar(20) NOT NULL,
  `strategy` varchar(50) NOT NULL,
  `grptime` smallint(6) NOT NULL,
  `grppre` varchar(100) DEFAULT NULL,
  `grplist` varchar(255) NOT NULL,
  `annmsg_id` int(11) DEFAULT NULL,
  `postdest` varchar(255) DEFAULT NULL,
  `description` varchar(35) NOT NULL,
  `alertinfo` varchar(255) DEFAULT NULL,
  `remotealert_id` int(11) DEFAULT NULL,
  `needsconf` varchar(10) DEFAULT NULL,
  `toolate_id` int(11) DEFAULT NULL,
  `ringing` varchar(80) DEFAULT NULL,
  `cwignore` varchar(10) DEFAULT NULL,
  `cfignore` varchar(10) DEFAULT NULL,
  `cpickup` varchar(10) DEFAULT NULL,
  `recording` varchar(10) DEFAULT 'dontcare',
  PRIMARY KEY (`grpnum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ringgroups`
--

LOCK TABLES `ringgroups` WRITE;
/*!40000 ALTER TABLE `ringgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ringgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sip`
--

DROP TABLE IF EXISTS `sip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sip` (
  `id` varchar(20) NOT NULL DEFAULT '-1',
  `keyword` varchar(30) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL,
  `flags` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sip`
--

LOCK TABLES `sip` WRITE;
/*!40000 ALTER TABLE `sip` DISABLE KEYS */;
/*!40000 ALTER TABLE `sip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sipsettings`
--

DROP TABLE IF EXISTS `sipsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sipsettings` (
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `data` varchar(255) NOT NULL DEFAULT '',
  `seq` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`seq`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sipsettings`
--

LOCK TABLES `sipsettings` WRITE;
/*!40000 ALTER TABLE `sipsettings` DISABLE KEYS */;
INSERT INTO `sipsettings` VALUES ('ulaw','1',0,1),('alaw','1',1,1),('slin','',2,1),('g726','',3,1),('gsm','1',4,1),('g729','',5,1),('ilbc','',6,1),('g723','',7,1),('g726aal2','',8,1),('adpcm','',9,1),('lpc10','',10,1),('speex','',11,1),('g722','',12,1),('rtpstart','10000',0,0),('rtpend','20000',1,0);
/*!40000 ALTER TABLE `sipsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeconditions`
--

DROP TABLE IF EXISTS `timeconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeconditions` (
  `timeconditions_id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `truegoto` varchar(50) DEFAULT NULL,
  `falsegoto` varchar(50) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  `generate_hint` tinyint(1) DEFAULT '0',
  `priority` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`timeconditions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeconditions`
--

LOCK TABLES `timeconditions` WRITE;
/*!40000 ALTER TABLE `timeconditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeconditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timegroups_details`
--

DROP TABLE IF EXISTS `timegroups_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timegroups_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timegroupid` int(11) NOT NULL DEFAULT '0',
  `time` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timegroups_details`
--

LOCK TABLES `timegroups_details` WRITE;
/*!40000 ALTER TABLE `timegroups_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `timegroups_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timegroups_groups`
--

DROP TABLE IF EXISTS `timegroups_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timegroups_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `display` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timegroups_groups`
--

LOCK TABLES `timegroups_groups` WRITE;
/*!40000 ALTER TABLE `timegroups_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `timegroups_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trunk_dialpatterns`
--

DROP TABLE IF EXISTS `trunk_dialpatterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trunk_dialpatterns` (
  `trunkid` int(11) NOT NULL DEFAULT '0',
  `match_pattern_prefix` varchar(50) NOT NULL DEFAULT '',
  `match_pattern_pass` varchar(50) NOT NULL DEFAULT '',
  `prepend_digits` varchar(50) NOT NULL DEFAULT '',
  `seq` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`trunkid`,`match_pattern_prefix`,`match_pattern_pass`,`prepend_digits`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunk_dialpatterns`
--

LOCK TABLES `trunk_dialpatterns` WRITE;
/*!40000 ALTER TABLE `trunk_dialpatterns` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_dialpatterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trunks`
--

DROP TABLE IF EXISTS `trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trunks` (
  `trunkid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `tech` varchar(20) NOT NULL,
  `outcid` varchar(40) NOT NULL DEFAULT '',
  `keepcid` varchar(4) DEFAULT 'off',
  `maxchans` varchar(6) DEFAULT '',
  `failscript` varchar(255) NOT NULL DEFAULT '',
  `dialoutprefix` varchar(255) NOT NULL DEFAULT '',
  `channelid` varchar(255) NOT NULL DEFAULT '',
  `usercontext` varchar(255) DEFAULT NULL,
  `provider` varchar(40) DEFAULT NULL,
  `disabled` varchar(4) DEFAULT 'off',
  `continue` varchar(4) DEFAULT 'off',
  PRIMARY KEY (`trunkid`,`tech`,`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunks`
--

LOCK TABLES `trunks` WRITE;
/*!40000 ALTER TABLE `trunks` DISABLE KEYS */;
INSERT INTO `trunks` VALUES (1,'','dahdi','','','','','','g0','',NULL,'off','off');
/*!40000 ALTER TABLE `trunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `extension` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `voicemail` varchar(50) DEFAULT NULL,
  `ringtimer` int(3) DEFAULT NULL,
  `noanswer` varchar(100) DEFAULT NULL,
  `recording` varchar(50) DEFAULT NULL,
  `outboundcid` varchar(50) DEFAULT NULL,
  `sipname` varchar(50) DEFAULT NULL,
  `mohclass` varchar(80) DEFAULT 'default',
  `noanswer_cid` varchar(20) DEFAULT '',
  `busy_cid` varchar(20) DEFAULT '',
  `chanunavail_cid` varchar(20) DEFAULT '',
  `noanswer_dest` varchar(255) DEFAULT '',
  `busy_dest` varchar(255) DEFAULT '',
  `chanunavail_dest` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmblast`
--

DROP TABLE IF EXISTS `vmblast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmblast` (
  `grpnum` int(11) NOT NULL,
  `description` varchar(35) NOT NULL,
  `audio_label` int(11) NOT NULL DEFAULT '-1',
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`grpnum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmblast`
--

LOCK TABLES `vmblast` WRITE;
/*!40000 ALTER TABLE `vmblast` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmblast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmblast_groups`
--

DROP TABLE IF EXISTS `vmblast_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmblast_groups` (
  `grpnum` varchar(50) NOT NULL DEFAULT '',
  `ext` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`grpnum`,`ext`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmblast_groups`
--

LOCK TABLES `vmblast_groups` WRITE;
/*!40000 ALTER TABLE `vmblast_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmblast_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemail_admin`
--

DROP TABLE IF EXISTS `voicemail_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voicemail_admin` (
  `variable` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemail_admin`
--

LOCK TABLES `voicemail_admin` WRITE;
/*!40000 ALTER TABLE `voicemail_admin` DISABLE KEYS */;
INSERT INTO `voicemail_admin` VALUES ('OPERATOR_XTN',''),('VM_OPTS',''),('VM_GAIN',''),('VM_DDTYPE','u'),('VMX_OPTS_LOOP',''),('VMX_OPTS_DOVM',''),('VMX_TIMEOUT','2'),('VMX_REPEAT','1'),('VMX_LOOPS','1');
/*!40000 ALTER TABLE `voicemail_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 19:08:58
