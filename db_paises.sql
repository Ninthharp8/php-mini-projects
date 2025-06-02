CREATE DATABASE  IF NOT EXISTS `my_oauth2_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_oauth2_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: my_oauth2_db
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('37aa6b9028f8ad54172917b43b5c73bbe12a4576','testclient','miguel','2023-10-19 23:55:02','r');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_authorization_codes`
--

DROP TABLE IF EXISTS `oauth_authorization_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_authorization_codes`
--

LOCK TABLES `oauth_authorization_codes` WRITE;
/*!40000 ALTER TABLE `oauth_authorization_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_authorization_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('testclient','$2y$10$LIJby0X939afr5C0gf5SUOFgfazl8xmF31WmqQVoabzOkpnL.f0U6',NULL,'password','r','2');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_jwt`
--

DROP TABLE IF EXISTS `oauth_jwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_jwt`
--

LOCK TABLES `oauth_jwt` WRITE;
/*!40000 ALTER TABLE `oauth_jwt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_jwt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('c488606d01fb1637608767b52aa9e2d040fab19a','testclient','miguel','2023-11-02 22:55:02','r');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
INSERT INTO `oauth_scopes` VALUES ('read',0);
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_users`
--

DROP TABLE IF EXISTS `oauth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_users`
--

LOCK TABLES `oauth_users` WRITE;
/*!40000 ALTER TABLE `oauth_users` DISABLE KEYS */;
INSERT INTO `oauth_users` VALUES ('miguel','$2y$10$LIJby0X939afr5C0gf5SUOFgfazl8xmF31WmqQVoabzOkpnL.f0U6','miguel','omar','miguelomar@gmail.com',1,'r');
/*!40000 ALTER TABLE `oauth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `codigo_iso` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Afganistán','AFG'),(2,'Åland','ALA'),(3,'Albania','ALB'),(4,'Alemania','DEU'),(5,'Andorra','AND'),(6,'Angola','AGO'),(7,'Anguila','AIA'),(8,'Antártida','ATA'),(9,'Antigua y Barbuda','ATG'),(10,'Arabia Saudita','SAU'),(11,'Argelia','DZA'),(12,'Argentina','ARG'),(13,'Armenia','ARM'),(14,'Aruba','ABW'),(15,'Australia','AUS'),(16,'Austria','AUT'),(17,'Azerbaiyán','AZE'),(18,'Bahamas','BHS'),(19,'Bangladés','BGD'),(20,'Barbados','BRB'),(21,'Baréin','BHR'),(22,'Bélgica','BEL'),(23,'Belice','BLZ'),(24,'Benín','BEN'),(25,'Bermudas','BMU'),(26,'Bielorrusia','BLR'),(27,'Birmania','MMR'),(28,'Bolivia','BOL'),(29,'Bosnia y Herzegovina','BIH'),(30,'Botsuana','BWA'),(31,'Brasil','BRA'),(32,'Brunéi','BRN'),(33,'Bulgaria','BGR'),(34,'Burkina Faso','BFA'),(35,'Burundi','BDI'),(36,'Bután','BTN'),(37,'Cabo Verde','CPV'),(38,'Camboya','KHM'),(39,'Camerún','CMR'),(40,'Canadá','CAN'),(41,'Catar','QAT'),(42,'Caribe Neerlandés','BES'),(43,'Chad','TCD'),(44,'Chile','CHL'),(45,'China','CHN'),(46,'Chipre','CYP'),(47,'Colombia','COL'),(48,'Comoras','COM'),(49,'Corea del Norte','PRK'),(50,'Corea del Sur','KOR'),(51,'Costa de Marfil','CIV'),(52,'Costa Rica','CRI'),(53,'Croacia','HRV'),(54,'Cuba','CUB'),(55,'Curazao','CUW'),(56,'Dinamarca','DNK'),(57,'Dominica','DMA'),(58,'Ecuador','ECU'),(59,'Egipto','EGY'),(60,'El Salvador','SLV'),(61,'Emiratos Árabes Unidos','ARE'),(62,'Eritrea','ERI'),(63,'Eslovaquia','SVK'),(64,'Eslovenia','SVN'),(65,'España','ESP'),(66,'Estados Unidos','USA'),(67,'Estonia','EST'),(68,'Etiopía','ETH'),(69,'Filipinas','PHL'),(70,'Finlandia','FIN'),(71,'Fiyi','FJI'),(72,'Francia','FRA'),(73,'Gabón','GAB'),(74,'Gambia','GMB'),(75,'Georgia','GEO'),(76,'Ghana','GHA'),(77,'Gibraltar','GIB'),(78,'Granada','GRD'),(79,'Grecia','GRC'),(80,'Groenlandia','GRL'),(81,'Guadalupe','GLP'),(82,'Guam','GUM'),(83,'Guatemala','GTM'),(84,'Guayana Francesa','GUF'),(85,'Guernsey','GGY'),(86,'Guinea','GIN'),(87,'Guinea-Bisáu','GNB'),(88,'Guinea Ecuatorial','GNQ'),(89,'Guyana','GUY'),(90,'Haití','HTI'),(91,'Honduras','HND'),(92,'Hong Kong','HKG'),(93,'Hungría','HUN'),(94,'India','IND'),(95,'Indonesia','IDN'),(96,'Irak','IRQ'),(97,'Irán','IRN'),(98,'Irlanda','IRL'),(99,'Isla Bouvet','BVT'),(100,'Isla de Man','IMN'),(101,'Isla de Navidad','CXR'),(102,'Norfolk','NFK'),(103,'Islandia','ISL'),(104,'Islas Caimán','CYM'),(105,'Islas Cocos','CCK'),(106,'Islas Cook','COK'),(107,'Islas Feroe','FRO'),(108,'Islas Georgias del Sur y Sand','SGS'),(109,'Islas Heard y McDonald','HMD'),(110,'Islas Malvinas','FLK'),(111,'Islas Marianas del Norte','MNP'),(112,'Islas Marshall','MHL'),(113,'Islas Pitcairn','PCN'),(114,'Islas Salomón','SLB'),(115,'Islas Turcas y Caicos','TCA'),(116,'Islas ultramarinas de Estados','UMI'),(117,'Islas Vírgenes Británicas','VGB'),(118,'Islas Vírgenes de los Estados','VIR'),(119,'Israel','ISR'),(120,'Italia','ITA'),(121,'Jamaica','JAM'),(122,'Japón','JPN'),(123,'Jersey','JEY'),(124,'Jordania','JOR'),(125,'Kazajistán','KAZ'),(126,'Kenia','KEN'),(127,'Kirguistán','KGZ'),(128,'Kiribati','KIR'),(129,'Kuwait','KWT'),(130,'Laos','LAO'),(131,'Lesoto','LSO'),(132,'Letonia','LVA'),(133,'Líbano','LBN'),(134,'Liberia','LBR'),(135,'Libia','LBY'),(136,'Liechtenstein','LIE'),(137,'Lituania','LTU'),(138,'Luxemburgo','LUX'),(139,'Macao','MAC'),(140,'Madagascar','MDG'),(141,'Malasia','MYS'),(142,'Malaui','MWI'),(143,'Maldivas','MDV'),(144,'Malí','MLI'),(145,'Malta','MLT'),(146,'Marruecos','MAR'),(147,'Martinica','MTQ'),(148,'Mauricio','MUS'),(149,'Mauritania','MRT'),(150,'Mayotte','MYT'),(151,'México','MEX'),(152,'Micronesia','FSM'),(153,'Moldavia','MDA'),(154,'Mónaco','MCO'),(155,'Mongolia','MNG'),(156,'Montenegro','MNE'),(157,'Montserrat','MSR'),(158,'Mozambique','MOZ'),(159,'Namibia','NAM'),(160,'Nauru','NRU'),(161,'Nepal','NPL'),(162,'Nicaragua','NIC'),(163,'Níger','NER'),(164,'Nigeria','NGA'),(165,'Niue','NIU'),(166,'Noruega','NOR'),(167,'Nueva Caledonia','NCL'),(168,'Nueva Zelanda','NZL'),(169,'Omán','OMN'),(170,'Países Bajos','NLD'),(171,'Pakistán','PAK'),(172,'Palaos','PLW'),(173,'Palestina','PSE'),(174,'Panamá','PAN'),(175,'Papúa Nueva Guinea','PNG'),(176,'Paraguay','PRY'),(177,'Perú','PER'),(178,'Polinesia Francesa','PYF'),(179,'Polonia','POL'),(180,'Portugal','PRT'),(181,'Puerto Rico','PRI'),(182,'Reino Unido','GBR'),(183,'República Árabe Saharaui Democr','ESH'),(184,'República Centroafricana','CAF'),(185,'República Checa','CZE'),(186,'República de Macedonia','MKD'),(187,'República del Congo','COG'),(188,'República Democrática del Congo','COD'),(189,'República Dominicana','DOM'),(190,'Reunión','REU'),(191,'Ruanda','RWA'),(192,'Rumania','ROU'),(193,'Rusia','RUS'),(194,'Sáhara Occidental','ESH'),(195,'Samoa','WSM'),(196,'Samoa Americana','ASM'),(197,'San Bartolomé','BLM'),(198,'San Cristóbal y Nieves','KNA'),(199,'San Marino','SMR'),(200,'San Martín','MAF'),(201,'San Pedro y Miquelón','SPM'),(202,'San Vicente y las Granadinas','VCT'),(203,'Santa Elena','SHN'),(204,'Santa Lucía','LCA'),(205,'Santa Sede','VAT'),(206,'Santo Tomé y Príncipe','STP'),(207,'Senegal','SEN'),(208,'Serbia','SRB'),(209,'Seychelles','SYC'),(210,'Sierra Leona','SLE'),(211,'Singapur','SGP'),(212,'Siria','SYR'),(213,'Somalia','SOM'),(214,'Sri Lanka','LKA'),(215,'Sudáfrica','ZAF'),(216,'Sudán','SDN'),(217,'Sudán del Sur','SSD'),(218,'Suecia','SWE'),(219,'Suiza','CHE'),(220,'Surinam','SUR'),(221,'Svalbard y Jan Mayen','SJM'),(222,'Swazilandia','SWZ'),(223,'Tadjikistán','TJK'),(224,'Tailandia','THA'),(225,'Taiwán','TWN'),(226,'Tanzania','TZA'),(227,'Territorio Británico del Océano','IOT'),(228,'Territorio Palestino','PSE'),(229,'Territorios Australes Franceses','ATF'),(230,'Timor Oriental','TLS'),(231,'Togo','TGO'),(232,'Tokelau','TKL'),(233,'Tonga','TON'),(234,'Trinidad y Tobago','TTO'),(235,'Túnez','TUN'),(236,'Turkmenistán','TKM'),(237,'Turquía','TUR'),(238,'Tuvalu','TUV'),(239,'Ucrania','UKR'),(240,'Uganda','UGA'),(241,'Uruguay','URY'),(242,'Uzbekistán','UZB'),(243,'Vanuatu','VUT'),(244,'Venezuela','VEN'),(245,'Vietnam','VNM'),(246,'Wallis y Futuna','WLF'),(247,'Yemen','YEM'),(248,'Yibuti','DJI'),(249,'Zambia','ZMB'),(250,'Zimbabue','ZWE');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'my_oauth2_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 18:01:33
