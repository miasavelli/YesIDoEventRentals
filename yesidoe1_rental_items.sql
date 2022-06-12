-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2022 at 01:21 AM
-- Server version: 8.0.28
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yesidoe1_rental_items`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

-- CREATE TABLE `categories` (
--   `categoryID` int NOT NULL,
--   `categoryName` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
-- (1, 'Tables'),
-- (2, 'Chairs'),
-- (3, 'Glasses'),
-- (4, 'Chargers'),
-- (5, 'Dishes'),
-- (6, 'Silverware'),
-- (7, 'Tablecloths'),
-- (8, 'Napkins'),
-- (9, 'Chair Sashes'),
-- (10, 'Backdrops'),
-- (11, 'Candles'),
-- (12, 'Vases'),
-- (13, 'Catering'),
-- (14, 'Signs'),
-- (15, 'Beverage Tubs'),
-- (16, 'Dessert Servers'),
-- (17, 'Specialty');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

-- CREATE TABLE `products` (
--   `categoryID` int NOT NULL,
--   `imgURL` varchar(655) NOT NULL,
--   `productName` varchar(255) NOT NULL,
--   `productDesc` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--






















COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
