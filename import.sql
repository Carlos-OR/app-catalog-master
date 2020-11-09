-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: catalogodeaplicaciones
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sistema_operativo` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf5qguemikbynr9e6a76cxdl50` (`id_categoria`),
  KEY `FKarq2ye4xyxvk4hp1wd8uc0w7k` (`id_sistema_operativo`),
  KEY `FK7a2gwvj7sctr16qabwmgkperm` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
INSERT INTO `aplicacion` VALUES (1,'','Call of Duty es un videojuego de disparos en primera persona, belico de tipo fps','https://vignette.wikia.nocookie.net/cod/images/6/67/Call_of_Duty_Warzone.png/revision/latest?cb=20200311112324&path-prefix=es','Call of Duty',1,2,1),(2,'','Call of Duty Mobile','https://i.pinimg.com/originals/13/5c/d5/135cd57e2bab9b9aa23aba0c059dfb20.jpg','Call of Duty Mobile',1,1,1),(3,'','Facebook','https://www.despachotres.com/wp-content/uploads/2020/03/logo-facebook.jpg','Facebook',3,1,3),(4,'','Instagram','https://s1.eestatic.com/2019/11/28/omicrono/Internet-Redes_sociales-Tecnologia-Facebook-Instagram-Omicrono_447966574_139153579_1024x576.jpg','Instagram',3,1,2),(5,'','Twitter','https://lh3.googleusercontent.com/proxy/tkwart8fo-9P1ZCSQwEIXolbt08rdBqCeWG_FKpgQxNdVoL3jg3zeJoCAbNzvIyd58ArzTBZhh3at0vqgKJUlZbBsIFFfqKo_tmflk7Pvzr9eqtkCZMGKHWecsc87g','Twitter',3,1,3),(6,'','Rayma Legends','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrFlzt0CsZ2zvNhGQJTvRVg1yOG8uWmRh1wg&usqp=CAU','Rayman Legends',1,3,1),(7,'','Blur','https://psmedia.playstation.com/is/image/psmedia/Blur_Screenshot_095?$MediaCarousel_SmallImage$','Blur',1,4,2),(8,'','Halo 5','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTmu9yB1S7FTWI49V6sME3YowtKv_KYKVelOw&usqp=CAU','Halo 5',1,3,2),(9,'','Daily Yoga','https://www.antaryami.com/wp-content/uploads/2017/05/yogadaily-1280x720.jpg','Daily Yoga',2,1,3),(10,'','Pocket Yoga','https://play-lh.googleusercontent.com/UQuUNUZ8ofvJzKaXR90PaarYvC0PdEQgcEbP7jHEewZwdLlBT2vbKHqLBE7JXZD8rmlM=w412-h220-rw','Pocket Yoga',2,1,3);
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'','Juegos...','Juegos'),(2,'','Deportes...','Deportes'),(3,'','Sociales...','Sociales');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema_operativo`
--

DROP TABLE IF EXISTS `sistema_operativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema_operativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_operativo`
--

LOCK TABLES `sistema_operativo` WRITE;
/*!40000 ALTER TABLE `sistema_operativo` DISABLE KEYS */;
INSERT INTO `sistema_operativo` VALUES (1,'','Mobile...','Mobile'),(2,'','PC..','PC..'),(3,'','Xbox...','Xbox'),(4,'','Play Station...','Play Station');
/*!40000 ALTER TABLE `sistema_operativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'','Orellana','orellanaramos122@gmail.com','...','Carlos'),(2,'','Briones','aprendefacil1020@gmail.com','...','Jose'),(3,'','Guzman','fjgp2000@gmail.com','...','Fernando'),(4,'','Rosa','davidbriones@gmail.com','Soy programador XD','David'),(5,'','Ximenes','xim.32@gmail.com','Ximenes XD','XD'),(6,'','MM','mm.32@gmail.com','Soy la mera verga','XX'),(7,'','Rosa','bytepl.info@gmail.com','Esta es una nota que agrego mientras estoy haciendo un directo','Jose David');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'catalogodeaplicaciones'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-29 14:42:47
