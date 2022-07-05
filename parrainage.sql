-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Parrainage
-- ------------------------------------------------------
-- Server version	5.5.38-0+wheezy1

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
-- Table structure for table `bouls`
--

DROP TABLE IF EXISTS `bouls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bouls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bouls`
--

LOCK TABLES `bouls` WRITE;
/*!40000 ALTER TABLE `bouls` DISABLE KEYS */;
INSERT INTO `bouls` VALUES (1,'Norm\'ss','2014-08-17 22:09:29','2014-08-18 12:17:57'),(2,'SDT','2014-08-17 22:31:02','2014-09-02 11:10:01'),(3,'Phylo\'ss','2014-08-17 22:31:20','2015-08-29 11:15:29'),(4,'Cerber\'ss','2014-08-17 23:29:03','2014-08-17 23:29:03'),(5,'Toler\'ss','2014-08-17 23:29:13','2014-08-17 23:29:13'),(6,'Pepper\'ss','2014-09-06 12:45:41','2014-09-06 12:45:41');
/*!40000 ALTER TABLE `bouls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `pg_id` int(11) DEFAULT NULL,
  `onscrit_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_onscrit_id` (`onscrit_id`),
  KEY `index_comments_on_pg_id` (`pg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contraintes`
--

DROP TABLE IF EXISTS `contraintes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contraintes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cible_type` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `onscrit_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `sondage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contraintes`
--

LOCK TABLES `contraintes` WRITE;
/*!40000 ALTER TABLE `contraintes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contraintes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fillots`
--

DROP TABLE IF EXISTS `fillots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fillots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_id` int(11) DEFAULT NULL,
  `onscrit_id` int(11) DEFAULT NULL,
  `semaine_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fillots_on_onscrit_id` (`onscrit_id`),
  KEY `index_fillots_on_pg_id` (`pg_id`),
  KEY `index_fillots_on_semaine_id` (`semaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fillots`
--

LOCK TABLES `fillots` WRITE;
/*!40000 ALTER TABLE `fillots` DISABLE KEYS */;
/*!40000 ALTER TABLE `fillots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manips`
--

DROP TABLE IF EXISTS `manips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manips`
--

LOCK TABLES `manips` WRITE;
/*!40000 ALTER TABLE `manips` DISABLE KEYS */;
/*!40000 ALTER TABLE `manips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onscrits`
--

DROP TABLE IF EXISTS `onscrits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onscrits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `naissance` date DEFAULT NULL,
  `prepa_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) DEFAULT NULL,
  `photo_content_type` varchar(255) DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_onscrits_on_prepa_id` (`prepa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onscrits`
--

LOCK TABLES `onscrits` WRITE;
/*!40000 ALTER TABLE `onscrits` DISABLE KEYS */;
/*!40000 ALTER TABLE `onscrits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgs`
--

DROP TABLE IF EXISTS `pgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `bucque` varchar(255) DEFAULT NULL,
  `fam` varchar(255) DEFAULT NULL,
  `saque` tinyint(1) DEFAULT NULL,
  `boul_id` int(11) DEFAULT NULL,
  `prepa_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `naissance` date DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `biocit` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `double_fillot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pgs_on_boul_id` (`boul_id`),
  KEY `index_pgs_on_prepa_id` (`prepa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgs`
--

LOCK TABLES `pgs` WRITE;
/*!40000 ALTER TABLE `pgs` DISABLE KEYS */;
INSERT INTO `pgs` VALUES (1,'Noulin','Maxime','Celsius','108.KIN213',0,4,27,'2015-08-25 00:00:00','2015-08-29 11:31:38','C1083615','1994-02-21','$2a$10$wCsrUpznQhJv8Vv4vmlzGeICDiuPiD20r2E1nEZyS.NNqVMwvwQ36','0660638721','',5,'',NULL,0),(2,'Guiller','Kirian','Kitkat','151',0,2,13,'2015-08-25 21:00:12','2015-08-29 16:20:46','K1514659','1994-01-01','$2a$10$/vLLHUur2D.EG8gZCRfule.rvyZAchlzJeesdBp6in3z9NSwhnK8.','0699644779','',2,'',NULL,0),(3,'Lallet','Guillaume','DooRooKooLee','53',0,4,35,'2015-08-26 09:09:24','2015-08-29 16:22:00','D5317450','1992-06-08','$2a$10$i9TWIs4z8T7NzPJCNZsqr.X2VkQ/G8FS3/KaXswASw.sYHDh3l2hK','0604144720','',1,'',NULL,NULL),(4,'SYLVESTRE','Robin','Lenwe','171-175',0,1,18,'2015-08-29 11:22:10','2015-08-29 11:22:10','L1716411','1994-11-18','$2a$10$XohiVJAw16IsCIdpnFZQAOHhbaNKU/ZyI5yGsb6CUqRgyywspnyhW','0648135543','',1,'',NULL,NULL),(5,'patae','pataet','Fekfhj','172',0,2,5,'2016-05-03 17:31:34','2016-05-03 17:31:34','F1726003','1994-02-02','$2a$10$VUxoqpJX3WqYbsqpaKK3xO1qz0hXVd1rFfBHwAglt.rhilFoTiH5m','0648521232','Physss',1,'PATATE',NULL,NULL);
/*!40000 ALTER TABLE `pgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepas`
--

DROP TABLE IF EXISTS `prepas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prepas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepas`
--

LOCK TABLES `prepas` WRITE;
/*!40000 ALTER TABLE `prepas` DISABLE KEYS */;
INSERT INTO `prepas` VALUES (2,'Rouvière','Toulon','2014-08-17 22:32:20','2014-08-21 14:10:36'),(4,'Philippe de Girard','Avignon','2014-08-18 09:57:29','2014-08-21 14:10:45'),(5,'Chaptal','Paris','2014-08-21 14:08:31','2014-08-21 14:10:50'),(6,'Descartes','Tours','2014-08-21 14:09:04','2014-08-21 14:10:56'),(7,'Dhuoda','Nîmes','2014-08-21 14:09:54','2014-08-21 14:11:01'),(8,'Dumont D\'Urville','Toulon','2014-08-21 14:10:07','2014-08-21 14:11:06'),(9,'Fabert','Metz','2014-08-21 14:11:29','2014-08-21 14:11:29'),(10,'Fénelon Sainte-Marie','Paris','2014-08-21 14:12:20','2014-08-21 14:12:20'),(11,'François Arago','Perpignan','2014-08-21 14:12:59','2014-08-21 14:12:59'),(12,'Lycée International de Valbonne','Valbonne','2014-08-21 14:13:52','2014-08-21 14:13:52'),(13,'Jean Mermoz','Montpellier','2014-08-21 14:14:32','2014-08-21 14:14:32'),(14,'Jean Perrin','Marseille','2014-08-21 14:15:38','2014-08-21 14:15:38'),(15,'Joffre','Montpellier','2014-08-21 14:16:03','2014-08-21 14:16:03'),(16,'Jules Garnier','Noumea','2014-08-21 14:17:29','2014-08-21 14:17:29'),(17,'Laetitia Bonaparte','Ajaccio','2014-08-21 14:18:00','2014-08-21 14:18:00'),(18,'Les Eucalyptus','Nice','2014-08-21 14:18:23','2014-08-21 14:18:23'),(19,'Massena','Nice','2014-08-21 14:19:00','2014-08-21 14:19:00'),(20,'Lycée Militaire','Aix-en-Provence','2014-08-21 14:19:41','2014-08-21 14:19:41'),(21,'Notre Dame de Sion','Marseille','2014-08-21 14:20:15','2014-08-21 14:20:15'),(22,'Saint-Louis','Paris','2014-08-21 14:20:54','2014-08-21 14:20:54'),(23,'Stanislas','Paris','2014-08-21 14:22:38','2014-08-21 14:22:38'),(24,'Thiers','Marseille','2014-08-21 14:23:02','2014-08-21 14:23:02'),(25,'Vauvenargues','Aix-en-Provence','2014-08-21 14:23:18','2014-08-21 14:23:18'),(26,'License (L3)','Indifférent ','2014-08-21 14:23:43','2014-08-21 14:23:43'),(27,'Jean-Baptiste Say','Paris','2014-08-27 17:37:59','2014-08-27 17:37:59'),(28,'Lycée César Baggio','Lille','2014-09-06 11:01:42','2014-09-06 11:01:42'),(29,'Blaise Pascal','Orsay','2014-09-06 11:12:37','2014-09-06 11:12:37'),(30,'Lycée Gustave Eiffel','Bordeaux','2014-09-06 11:20:12','2014-09-06 11:20:12'),(31,'Lycée Stanislas','Cannes ','2014-09-06 11:31:14','2014-09-06 11:31:14'),(32,'François 1er','Fontainebleau','2014-09-06 11:38:46','2014-09-06 11:38:46'),(33,'Eugène Livet','Nantes','2014-09-06 14:14:30','2014-09-06 14:14:30'),(34,'Chateaubriand','Rennes','2014-09-06 17:48:58','2014-09-06 17:48:58'),(35,'Faculté de sciences Valrose','Nice','2014-09-06 23:14:58','2014-09-06 23:14:58'),(36,'Jules Ferry','Versailles','2014-09-08 12:37:50','2014-09-08 12:37:50'),(37,'La Martinière Monplaisir','Lyon','2014-09-09 10:46:02','2014-09-09 10:46:02'),(38,'Janson de Sailly','Paris','2014-09-10 09:20:12','2014-09-10 09:20:12'),(39,'Fac','Nice','2014-09-11 09:32:18','2014-09-11 09:32:18'),(40,'Lycée du Parc','Lyon','2014-09-14 14:28:38','2014-09-14 14:28:38'),(41,'polytech','marseille','2014-09-28 20:09:28','2014-09-28 20:09:28');
/*!40000 ALTER TABLE `prepas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presences`
--

DROP TABLE IF EXISTS `presences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manip_id` int(11) DEFAULT NULL,
  `pg_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_presences_on_manip_id` (`manip_id`),
  KEY `index_presences_on_pg_id` (`pg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presences`
--

LOCK TABLES `presences` WRITE;
/*!40000 ALTER TABLE `presences` DISABLE KEYS */;
/*!40000 ALTER TABLE `presences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultats_sondages`
--

DROP TABLE IF EXISTS `resultats_sondages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultats_sondages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pg_id` int(10) unsigned NOT NULL,
  `onscrit_id` int(10) unsigned NOT NULL,
  `sondage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultats_sondages`
--

LOCK TABLES `resultats_sondages` WRITE;
/*!40000 ALTER TABLE `resultats_sondages` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultats_sondages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130726082530'),('20130726082630'),('20130726082654'),('20130726082756'),('20130726082919'),('20130726083012'),('20130727094811'),('20130727134738'),('20130802103419'),('20130802104530'),('20130802104755'),('20130802144512'),('20130807211227'),('20130812010821'),('20130812015850'),('20130813002727'),('20130813155216'),('20130822073009'),('20130822073332'),('20130822073517'),('20130822073606'),('20130822074423'),('20130822133915'),('20130823074111'),('20130823212741'),('20130823212810'),('20130930212811');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semaines`
--

DROP TABLE IF EXISTS `semaines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semaines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` text,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semaines`
--

LOCK TABLES `semaines` WRITE;
/*!40000 ALTER TABLE `semaines` DISABLE KEYS */;
/*!40000 ALTER TABLE `semaines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sondages`
--

DROP TABLE IF EXISTS `sondages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sondages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` text,
  `nbchoix` int(11) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `visible` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sondages`
--

LOCK TABLES `sondages` WRITE;
/*!40000 ALTER TABLE `sondages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sondages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valeurs`
--

DROP TABLE IF EXISTS `valeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valeurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manip_id` int(11) DEFAULT NULL,
  `boul_id` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_valeurs_on_boul_id` (`boul_id`),
  KEY `index_valeurs_on_manip_id` (`manip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valeurs`
--

LOCK TABLES `valeurs` WRITE;
/*!40000 ALTER TABLE `valeurs` DISABLE KEYS */;
INSERT INTO `valeurs` VALUES (1,1,1,5,'2015-08-29 11:34:31','2015-08-29 11:34:31'),(2,1,2,5,'2015-08-29 11:34:31','2015-08-29 11:34:31'),(3,1,3,5,'2015-08-29 11:34:31','2015-08-29 11:34:31'),(4,1,4,5,'2015-08-29 11:34:31','2015-08-29 11:34:31'),(5,1,5,5,'2015-08-29 11:34:31','2015-08-29 11:34:31'),(6,1,6,5,'2015-08-29 11:34:31','2015-08-29 11:34:31');
/*!40000 ALTER TABLE `valeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priorite` int(11) DEFAULT NULL,
  `pg_id` int(11) DEFAULT NULL,
  `onscrit_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sondage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_votes_on_onscrit_id` (`onscrit_id`),
  KEY `index_votes_on_pg_id` (`pg_id`),
  KEY `index_votes_on_sondage_id` (`sondage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-03 22:42:39
