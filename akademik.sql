-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: akademik
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `nip` char(9) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `pendidikan` varchar(10) DEFAULT NULL,
  `gelar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('191020030','Joko Susilo','L','S2','M. Kom.'),('191034580','Bambang Susanto','L','S2','S.Pd., M.Ag.'),('191364319','Desi Yulianti','P','S1','S.Pd.'),('191934305','Siti Fatimah','P','S1','S. Pd.'),('192080305','Sugiyono','L','S2','ST, MT'),('192834053','Eni Susanti','P','S3','Dr., M.Kom.');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mk` char(7) DEFAULT NULL,
  `nip` char(9) DEFAULT NULL,
  `kelas` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'FT101','191034580','01'),(2,'FT102','192834053','01'),(3,'FT103','191020030','01'),(4,'FT103','191020030','02'),(5,'FT105','191934305','01'),(6,'FT303','192080305','01'),(7,'UN101','191034580','01');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `tpt_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `kota_asal` varchar(20) DEFAULT NULL,
  `penghasilan_ortu` int(11) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('81140002','Fitri Rahmawat','Surakarta','1999-05-18','P','Yogyakarta',2000000),('81140009','Eko Nur Cahyo','Wonosobo','1998-09-23','L','Wonosobo',2000000),('81140010','Sulton Salahudin','Surabaya','1999-03-31','L','Surabaya',1500000),('81140023','Dewi Sarah','Surabaya','1999-07-10','P','Surabaya',1250000),('81140028','Daniel Abror','Yogyakarta','1999-04-29','L','Semarang',3000000),('81140059','Sri Setyowati','Wonosobo','2001-03-09','P','Wonosobo',3500000),('81140090','Ahmad Ihwany','Jakarta','2000-06-26','L','Wonosobo',2500000),('81140103','Ali Munajid','Yogyakarta','2000-11-11','L','Yogyakarta',4250000),('81140107','Kartika Sari','Medan','2000-01-10','P','Jakarta',1500000),('81140119','Safitri','Jakarta','2000-10-30','P','Jakarta',3500000),('81140219','Agus Sulaiman','Yogyakarta','2000-12-05','L','Wonosobo',2750000);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `kode_mk` char(7) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `smt` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES ('FT101','Pendidikan Pancasila',2,'1'),('FT102','Algoritma & Struktur Data',2,'2'),('FT103','Praktek Algoritma & Struktur Data',2,'2'),('FT105','Bahasa Inggris',2,'1'),('FT202','Matematika',3,'1'),('FT207','Pemrograman 1',4,'1'),('FT303','Statistik',2,'2'),('UN101','Pendidikan Agama Islam',2,'1'),('UN202','Tahfidzul Qur\'an',2,'2');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` char(10) DEFAULT NULL,
  `kode_mk` char(7) DEFAULT NULL,
  `kelas` char(2) DEFAULT NULL,
  `nilai` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,'81140009','FT101','01','A'),(2,'81140009','FT102','01','B'),(3,'81140009','FT103','01','A'),(4,'81140009','FT105','01','A'),(5,'81140009','FT303','01','C'),(6,'81140009','UN101','01','D'),(7,'81140010','FT101','01','B'),(8,'81140010','FT102','01','E'),(9,'81140010','FT103','01','C'),(10,'81140010','FT105','01','B'),(11,'81140010','FT303','01','D'),(12,'81140010','UN101','01','A'),(13,'81140023','FT101','01','C'),(14,'81140023','FT102','01','B'),(15,'81140023','FT103','01','D'),(16,'81140023','FT105','01','A'),(17,'81140023','FT303','01','C'),(18,'81140023','UN101','01','B'),(19,'81140059','FT101','01','C'),(20,'81140059','FT102','01','C'),(21,'81140059','FT103','01','A'),(22,'81140059','FT105','01','B'),(23,'81140059','FT303','01','D'),(24,'81140059','UN101','01','C'),(25,'81140090','FT101','01','A'),(26,'81140090','FT102','01','B'),(27,'81140090','FT103','02','A'),(28,'81140090','FT105','01','C'),(29,'81140090','FT303','01','B'),(30,'81140090','UN101','01','A'),(31,'81140107','FT101','01','D'),(32,'81140107','FT102','01','B'),(33,'81140107','FT103','02','C'),(34,'81140107','FT105','01','A'),(35,'81140107','FT303','01','D'),(36,'81140107','UN101','01','B'),(37,'81140119','FT101','01','E'),(38,'81140119','FT102','01','C'),(39,'81140119','FT103','02','A'),(40,'81140119','FT105','01','B'),(41,'81140119','FT303','01','D'),(42,'81140119','UN101','01','C'),(43,'81140219','FT101','01','A'),(44,'81140219','FT102','01','B'),(45,'81140219','FT103','02','D'),(46,'81140219','FT105','01','A'),(47,'81140219','FT303','01','C'),(48,'81140219','UN101','01','A');
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 17:32:13
