create database restaurant;
use  restaurant;

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL auto_increment,
  `username` nvarchar(100) ,
  `password` nvarchar(100),
  `question` nvarchar(100),
  `answer` nvarchar(100),
  `date` date null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE `receipt` (
  `id` int NOT NULL auto_increment,
  `customer_id` int(100),
  `total` double,
  `date` date NULL,
  `em_username` nvarchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
  `id` int NOT NULL auto_increment,
  `prod_id` nvarchar(100) ,
  `prod_name` nvarchar(100),
  `type` nvarchar(100),
  `stock` int(100),
  `price` double,
  `status` varchar(100),
  `image` varchar(10000),
  `date` date null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `id` int NOT NULL auto_increment,
  `customer_id` int(100) ,
  `prod_id` nvarchar(100) ,
  `prod_name` nvarchar(100),
  `type` nvarchar(100),
  `quantity` int(100),
  `price` double,
  `date` date null,
  `image` varchar(10000),
  `em_username` nvarchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


use quanlykhachsan;
select * from dondat;

