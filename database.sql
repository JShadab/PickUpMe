-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.22 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2018-05-05 10:51:09
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for pickupme
CREATE DATABASE IF NOT EXISTS `pickupme` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pickupme`;


-- Dumping structure for table pickupme.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(50) DEFAULT NULL,
  `expert_email` varchar(50) DEFAULT NULL,
  `timing` varchar(50) DEFAULT NULL,
  `charge` double DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table pickupme.booking: ~1 rows (approximately)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`id`, `customer_email`, `expert_email`, `timing`, `charge`, `location`, `status`) VALUES
	(1, 'coolshad12@gmail.com', 'baba@gmail.com', 'Sat May 05 10:40:10 PDT 2018', 250, 'Vikas Nagar', 'Booked');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;


-- Dumping structure for table pickupme.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table pickupme.customer: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`, `email`, `contact`, `address`, `pincode`, `password`, `type`) VALUES
	(1, 'admin', 'admin@gmail.com', '1234567890', 'lko', '654321', '1234', 'admin'),
	(2, 'Shadab', 'coolshad12@gmail.com', '9335105662', 'Vikas Nagar', '226022', '1234', 'customer'),
	(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table pickupme.expert
CREATE TABLE IF NOT EXISTS `expert` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table pickupme.expert: ~3 rows (approximately)
/*!40000 ALTER TABLE `expert` DISABLE KEYS */;
INSERT INTO `expert` (`id`, `name`, `email`, `contact`, `category`, `address`, `pincode`, `rate`) VALUES
	(1, 'baba', 'baba@gmail.com', '9335105662', 'Driver', 'VikasNagar', '226022', 300),
	(2, 'Sheru', 'sheru@gmail.com', '7007586179', 'Electrician', 'Inderanagar', '226023', 400),
	(3, 'Shahid', 'shahid@gmail.com', '9335105662', 'Car_Mechanic', 'Gomti Nagar', '226010', 500);
/*!40000 ALTER TABLE `expert` ENABLE KEYS */;


-- Dumping structure for table pickupme.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table pickupme.feedback: ~1 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`, `first_name`, `last_name`, `email`, `contact`, `message`) VALUES
	(2, 'shadab', 'Ahmad', 'abc@gmail.com', '9335105662', 'This is demo');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
