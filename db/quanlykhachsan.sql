CREATE DATABASE restaurant;
USE restaurant;

DROP TABLE IF EXISTS `employee`, `receipt`, `product`, `customer`;


CREATE TABLE `employee` (
  `id` int NOT NULL auto_increment,
  `username` nvarchar(100) UNIQUE,  -- Đảm bảo rằng username là duy nhất
  `password` nvarchar(100),
  `question` nvarchar(100),
  `answer` nvarchar(100),
  `date` date null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
  `id` int NOT NULL auto_increment,
  `prod_id` nvarchar(100),
  `prod_name` nvarchar(100),
  `type` nvarchar(100),
  `stock` int(100),
  `price` double,
  `status` varchar(100),
  `image` varchar(10000),
  `date` date null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Đảm bảo rằng customer_id trong bảng customer là khóa chính hoặc có chỉ mục duy nhất
CREATE TABLE `customer` (
  `id` int NOT NULL auto_increment,
  `customer_id` int(100) UNIQUE,  -- Đảm bảo rằng customer_id là duy nhất
  `prod_id` nvarchar(100),
  `prod_name` nvarchar(100),
  `type` nvarchar(100),
  `quantity` int(100),
  `price` double,
  `date` date null,
  `image` varchar(10000),
  `em_username` nvarchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Tạo bảng receipt với khóa ngoại
CREATE TABLE `receipt` (
  `id` int NOT NULL auto_increment,
  `customer_id` int(100),
  `total` double,
  `date` date NULL,
  `em_username` nvarchar(100),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_receipt_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_receipt_employee` FOREIGN KEY (`em_username`) REFERENCES `employee` (`username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

