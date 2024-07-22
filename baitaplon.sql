-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: baitaplon
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cateId` int NOT NULL AUTO_INCREMENT,
  `cateName` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'Electronics',1),(3,'Clothing',1),(4,'T-short',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `total_pro_cart` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_user_id` (`userId`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (1,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',NULL),(2,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',NULL),(3,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',90),(4,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',90),(5,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',5092),(6,2,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',10064),(7,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','hls-store10@gmail.com',5032),(8,1,'Dinh Van Can','89 pham van dong mai dich ha noi','0389288817','dat3cua@yahoo.com',30);
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_product`
--

DROP TABLE IF EXISTS `checkout_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `checkout_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `checkout_id` (`checkout_id`,`product_id`),
  KEY `fk_product_id` (`product_id`),
  CONSTRAINT `fk_checkout_id` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`proId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_product`
--

LOCK TABLES `checkout_product` WRITE;
/*!40000 ALTER TABLE `checkout_product` DISABLE KEYS */;
INSERT INTO `checkout_product` VALUES (1,2,17),(2,2,20),(3,3,17),(4,3,20),(5,4,17),(6,4,20),(8,5,10),(7,5,20),(9,6,10),(10,7,10),(11,8,20);
/*!40000 ALTER TABLE `checkout_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `proId` int NOT NULL AUTO_INCREMENT,
  `proName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `CateId` int DEFAULT NULL,
  PRIMARY KEY (`proId`),
  KEY `CateId` (`CateId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CateId`) REFERENCES `category` (`cateId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (9,'T-shirt',25,'Casual cotton t-shirt','3.jpg',2),(10,'Jeans',5032,'Denim jeans for everyday wear','4.jpg',2),(11,'Java Programming Book',30,'Comprehensive guide to Java programming','6.jpg',3),(17,'Java Programming Book',30,'Comprehensive guide to Java programming','7.jpg',3),(18,'Java Programming Book',30,'Comprehensive guide to Java programming','8.jpg',3),(19,'Java Programming Book',30,'Comprehensive guide to Java programming','9.jpg',3),(20,'Java Programming Book',30,'Comprehensive guide to Java programming','10.jpg',3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `enabled` tinyint DEFAULT NULL,
  `fullname` varchar(70) DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u',1,'Nguyễn Thành Trung',1,'2000-02-12','Ba Vì - Hà Nội','trung.nt@gmail.com','0123456789'),(2,'user1','$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u',1,'Nguyễn Khánh Nam',1,'2001-05-11','Ý Yên - Nam Định','nam.nk@gmail.com','0911233455'),(3,'admin','$2a$12$s8FyYcAauHqILMBcI6x0BepO5JI.9/C16QRYMswF7Avt0rRkOiR0u',1,'Nguyễn Thành Trung',1,'2000-02-12','Ba Vì - Hà Nội','trung.nt@gmail.com','0123456789');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1,1),(2,1,2),(3,2,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 21:10:20
