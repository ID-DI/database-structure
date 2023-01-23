-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 06:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `оnline-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `additiona atributes_type of drinks`
--

CREATE TABLE `additiona atributes_type of drinks` (
  `aT_id` int(10) UNSIGNED NOT NULL,
  `type_drinks_id` int(10) UNSIGNED DEFAULT NULL,
  `add_atri_drink_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `DATE OF MANUFACTURE` date DEFAULT NULL,
  `SHELF LIFE` date DEFAULT NULL,
  `COMPOSITION` varchar(96) DEFAULT NULL,
  `PRICE / DEN.` int(10) UNSIGNED DEFAULT NULL,
  `STORAGE TEMPERATURE - C` int(10) UNSIGNED DEFAULT NULL,
  `PLACE OF ORIGIN` varchar(32) DEFAULT NULL,
  `QUANTITY` int(10) UNSIGNED DEFAULT NULL,
  `MANUFACTURER` varchar(32) DEFAULT NULL,
  `IMPORTER` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additiona atributes_type of drinks`
--

INSERT INTO `additiona atributes_type of drinks` (`aT_id`, `type_drinks_id`, `add_atri_drink_id`, `name`, `DATE OF MANUFACTURE`, `SHELF LIFE`, `COMPOSITION`, `PRICE / DEN.`, `STORAGE TEMPERATURE - C`, `PLACE OF ORIGIN`, `QUANTITY`, `MANUFACTURER`, `IMPORTER`) VALUES
(1, 1, 1, 'Jack Daniels', '2022-02-15', '2031-02-22', 'something strong', 1560, 15, 'USA', 12, 'Jack Daniels COO', 'dptu.Trajco DOOEL'),
(2, 2, 2, 'Coca Cola', '2022-02-16', '2022-02-28', 'something', 56, 10, 'Macedonia', 23, 'ad.Skopska Pivara DOOEL', NULL),
(3, 2, 3, 'Bi-Juice', '2022-02-15', '2022-02-28', 'orange juice', 65, 15, 'Macedonia', 52, 'BI_Juice Bitola', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `additional atributes of drinks`
--

CREATE TABLE `additional atributes of drinks` (
  `add_atri_drink_id` int(10) UNSIGNED NOT NULL,
  `additional atributes` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additional atributes of drinks`
--

INSERT INTO `additional atributes of drinks` (`add_atri_drink_id`, `additional atributes`) VALUES
(1, 'Alcohol -40%'),
(2, 'Carbonated drink'),
(3, 'Non-carbonated drink');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `roles_id` int(10) UNSIGNED DEFAULT NULL,
  `name and surname` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `roles_id`, `name and surname`) VALUES
(1, 1, 'Trajce Trajkov');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `roles_id` int(10) UNSIGNED DEFAULT NULL,
  `card_id` int(10) UNSIGNED DEFAULT NULL,
  `name and surname` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `shipping address` varchar(64) DEFAULT NULL,
  `shipping city` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyer_id`, `roles_id`, `card_id`, `name and surname`, `address`, `city`, `shipping address`, `shipping city`) VALUES
(1, 2, 1, 'Biljana Biljanova', 'bul.Partizanski Odredi br16/5-2', 'Skopje', 'bul.Partizanski Odredi br16/5-2', 'Skopje');

-- --------------------------------------------------------

--
-- Table structure for table `caracteristics of household items`
--

CREATE TABLE `caracteristics of household items` (
  `carate_id` int(10) UNSIGNED NOT NULL,
  `household_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `DATE OF MANUFACTURE` date DEFAULT NULL,
  `SHELF LIFE` date DEFAULT NULL,
  `COMPOSITION` varchar(96) DEFAULT NULL,
  `PRICE / DEN.` int(10) UNSIGNED DEFAULT NULL,
  `STORAGE TEMPERATURE - C` int(10) UNSIGNED DEFAULT NULL,
  `PLACE OF ORIGIN` varchar(32) DEFAULT NULL,
  `QUANTITY` int(10) UNSIGNED DEFAULT NULL,
  `MANUFACTURER` varchar(32) DEFAULT NULL,
  `IMPORTER` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caracteristics of household items`
--

INSERT INTO `caracteristics of household items` (`carate_id`, `household_id`, `name`, `DATE OF MANUFACTURE`, `SHELF LIFE`, `COMPOSITION`, `PRICE / DEN.`, `STORAGE TEMPERATURE - C`, `PLACE OF ORIGIN`, `QUANTITY`, `MANUFACTURER`, `IMPORTER`) VALUES
(1, 1, 'Ariel', '2022-02-15', '2031-02-22', 'teska hemija', 250, 25, 'USA', 50, 'Hemija DOOEL', 'dptu.Trajco DOOEL'),
(2, 2, 'Spoon', '2022-02-15', '2022-02-28', 'Steel', 50, 50, 'Macedonia', 50, 'Spoon DOOEL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart items`
--

CREATE TABLE `cart items` (
  `cartItems_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED DEFAULT NULL,
  `type_drinks_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity_tobacco_id` int(10) UNSIGNED DEFAULT NULL,
  `carate_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity of bought items` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart items`
--

INSERT INTO `cart items` (`cartItems_id`, `products_id`, `type_drinks_id`, `quantity_tobacco_id`, `carate_id`, `quantity of bought items`) VALUES
(1, 1, 2, 2, 1, '3 salami\r\n3 Coca Cola\r\n2 Marlboro\r\n1 ariel');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category name` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category name`) VALUES
(1, 'Food products'),
(2, 'Drinks '),
(5, 'Tobacco'),
(9, 'Milk and dairy products'),
(10, 'Confectionery products'),
(11, 'Cosmetics'),
(12, 'Household items');

-- --------------------------------------------------------

--
-- Table structure for table `credit card info`
--

CREATE TABLE `credit card info` (
  `card_id` int(10) UNSIGNED NOT NULL,
  `name and surname` varchar(64) DEFAULT NULL,
  `card number` int(10) UNSIGNED DEFAULT NULL,
  `valid date` date DEFAULT NULL,
  `code` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credit card info`
--

INSERT INTO `credit card info` (`card_id`, `name and surname`, `card number`, `valid date`, `code`) VALUES
(1, 'Biljana Biljanova', 123456789, '2026-05-21', 564);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(10) UNSIGNED NOT NULL,
  `roles_id` int(10) UNSIGNED DEFAULT NULL,
  `company name` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `roles_id`, `company name`, `address`) VALUES
(1, 3, 'dptu.Brza Isporaka DOOEL Skopje', 'ul.Leninova br.16 - Skopje');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(10) UNSIGNED NOT NULL,
  `orderStatus_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `money - den.` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orderStatus_id`, `cart_id`, `buyer_id`, `money - den.`) VALUES
(1, 1, 1, 1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `order status and info`
--

CREATE TABLE `order status and info` (
  `orderStatus_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `time sent to buyer` datetime DEFAULT NULL,
  `time of approval` datetime DEFAULT NULL,
  `time of reciving order - buyer` datetime DEFAULT NULL,
  `time of delivering - delivery` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order status and info`
--

INSERT INTO `order status and info` (`orderStatus_id`, `admin_id`, `delivery_id`, `time sent to buyer`, `time of approval`, `time of reciving order - buyer`, `time of delivering - delivery`) VALUES
(1, 1, 1, '2022-02-26 15:17:14', '2022-02-26 15:30:08', '2022-02-26 18:09:08', '2022-02-20 18:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `date of manufacture` date DEFAULT NULL,
  `shlef life` date DEFAULT NULL,
  `composition` varchar(96) DEFAULT NULL,
  `price / den.` int(10) UNSIGNED DEFAULT NULL,
  `storage temperature - C` int(10) UNSIGNED DEFAULT NULL,
  `place of origin` varchar(32) DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `manufacture` varchar(32) DEFAULT NULL,
  `importer` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `category_id`, `admin_id`, `name`, `date of manufacture`, `shlef life`, `composition`, `price / den.`, `storage temperature - C`, `place of origin`, `quantity`, `manufacture`, `importer`) VALUES
(1, 1, 1, 'Salami', '2022-02-10', '2022-02-28', 'meat from a pig', 150, 5, 'EU', 15, 'Salami DOOEL', 'dptu\'Trajco\'dooel'),
(2, 9, 1, 'Bi-Milk', '2022-02-23', '2022-02-23', 'Milk', 55, 5, 'Macedonia', 32, 'Bitolska Mlekara', NULL),
(3, 10, 1, 'Banana Chocolate', '2022-02-17', '2022-02-28', 'Chocolate and something', 10, 15, 'Croatia', 150, 'Krash', 'dptu\'Trajco\'dooel'),
(4, 11, 1, 'Lady\'s Red Lipstick', '2022-02-15', '2022-02-23', 'Vax color and something else', 72, 22, 'EU', 23, 'Chanel', 'dptu\'Trajco\'dooel');

-- --------------------------------------------------------

--
-- Table structure for table `quantity of cigars`
--

CREATE TABLE `quantity of cigars` (
  `quantity_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity of cigars` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity of cigars`
--

INSERT INTO `quantity of cigars` (`quantity_id`, `category_id`, `quantity of cigars`) VALUES
(1, 5, 'Cigar per piece'),
(2, 5, 'Box of cigars'),
(3, 5, 'Dry tobacco ');

-- --------------------------------------------------------

--
-- Table structure for table `quantity_tobacco content`
--

CREATE TABLE `quantity_tobacco content` (
  `quantity_tobacco_id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `DATE OF MANUFACTURE` date DEFAULT NULL,
  `SHELF LIFE` date DEFAULT NULL,
  `COMPOSITION` varchar(96) DEFAULT NULL,
  `PRICE / DEN.` int(10) UNSIGNED DEFAULT NULL,
  `STORAGE TEMPERATURE - C` int(10) UNSIGNED DEFAULT NULL,
  `PLACE OF ORIGIN` varchar(32) DEFAULT NULL,
  `QUANTITY of CIGARS` varchar(32) DEFAULT NULL,
  `CONTENT OF CIGARS` varchar(32) DEFAULT NULL,
  `QUANTITY` int(10) UNSIGNED DEFAULT NULL,
  `MANUFACTURER` varchar(32) DEFAULT NULL,
  `IMPORTER` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity_tobacco content`
--

INSERT INTO `quantity_tobacco content` (`quantity_tobacco_id`, `content_id`, `quantity_id`, `name`, `DATE OF MANUFACTURE`, `SHELF LIFE`, `COMPOSITION`, `PRICE / DEN.`, `STORAGE TEMPERATURE - C`, `PLACE OF ORIGIN`, `QUANTITY of CIGARS`, `CONTENT OF CIGARS`, `QUANTITY`, `MANUFACTURER`, `IMPORTER`) VALUES
(1, 1, 1, 'Rodeo', '2022-02-15', '2031-02-22', 'tobaco', 72, 30, 'Macedonia', '1', 'Nicotine 2mg Tar 5mg Carnbon mon', 50, 'Prilepski kombinat', NULL),
(2, 2, 2, 'Marlboro', '2022-02-15', '2022-02-28', 'tobbaco', 150, 30, 'USA', '20', 'Nicotine 2mg Tar 5mg Carnbon mon', 20, 'Phillip Moris', 'dptu.Trajco DOOEL'),
(3, 3, 3, 'West', '2022-02-16', '2031-02-22', 'tobbaco', 250, 30, 'USA', '40', 'Nicotine 2mg Tar 5mg Carnbon mon', 25, 'Phillip Moris', 'dptu.Trajco DOOEL');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `grade product from 1 - 5` varchar(32) DEFAULT NULL,
  `comentary from buyer` varchar(96) DEFAULT NULL,
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `grade buyer from 1 - 5` varchar(32) DEFAULT NULL,
  `comentary from delivery` varchar(96) DEFAULT NULL,
  `products_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity_tobacco_id` int(10) UNSIGNED DEFAULT NULL,
  `aT_id` int(10) UNSIGNED DEFAULT NULL,
  `carate_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `buyer_id`, `grade product from 1 - 5`, `comentary from buyer`, `delivery_id`, `grade buyer from 1 - 5`, `comentary from delivery`, `products_id`, `quantity_tobacco_id`, `aT_id`, `carate_id`) VALUES
(1, 1, '4', 'Ne mi se aresaa cigarite meki bea', 1, '3', 'Mnogu se rasprava', 1, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shopping cart`
--

CREATE TABLE `shopping cart` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopping cart`
--

INSERT INTO `shopping cart` (`cart_id`, `buyer_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tobbaco content`
--

CREATE TABLE `tobbaco content` (
  `content_id` int(10) UNSIGNED NOT NULL,
  `content` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tobbaco content`
--

INSERT INTO `tobbaco content` (`content_id`, `content`) VALUES
(1, 'Nicotine 1mg Tar 3mg Carnbon monoxide 5mg'),
(2, 'Nicotine 3mg Tar 5mg Carnbon monoxide 7mg'),
(3, 'Nicotine 2mg Tar 4mg Carnbon monoxide 6mg');

-- --------------------------------------------------------

--
-- Table structure for table `type of drinks`
--

CREATE TABLE `type of drinks` (
  `type_drinks_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `Type of drinks` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type of drinks`
--

INSERT INTO `type of drinks` (`type_drinks_id`, `category_id`, `Type of drinks`) VALUES
(1, 2, 'Alcoholic drinks'),
(2, 2, 'Non-alcoholic drinks');

-- --------------------------------------------------------

--
-- Table structure for table `type of houshold items`
--

CREATE TABLE `type of houshold items` (
  `household_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type of household items` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type of houshold items`
--

INSERT INTO `type of houshold items` (`household_id`, `category_id`, `type of household items`) VALUES
(1, 12, 'Cleaning agents'),
(2, 12, 'Kitchen utensils');

-- --------------------------------------------------------

--
-- Table structure for table `user roles`
--

CREATE TABLE `user roles` (
  `roles_id` int(10) UNSIGNED NOT NULL,
  `type of users` varchar(32) DEFAULT NULL,
  `e-mail` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone number` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user roles`
--

INSERT INTO `user roles` (`roles_id`, `type of users`, `e-mail`, `password`, `phone number`) VALUES
(1, 'Administrator', 'trajce@admin.com', 'trajce_drvarce13', '071234567'),
(2, 'Buyer', 'biljana@platno.com', 'Bibi196', '075951357'),
(3, 'Delivery', 'brza@isporaka.com', 'nesmebrzi151', '078457812');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additiona atributes_type of drinks`
--
ALTER TABLE `additiona atributes_type of drinks`
  ADD PRIMARY KEY (`aT_id`),
  ADD UNIQUE KEY `aT_id` (`aT_id`),
  ADD KEY `type_drinks_id` (`type_drinks_id`);

--
-- Indexes for table `additional atributes of drinks`
--
ALTER TABLE `additional atributes of drinks`
  ADD PRIMARY KEY (`add_atri_drink_id`),
  ADD UNIQUE KEY `add_atri_drink_id` (`add_atri_drink_id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`),
  ADD UNIQUE KEY `buyer_id` (`buyer_id`),
  ADD KEY `roles_id` (`roles_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `caracteristics of household items`
--
ALTER TABLE `caracteristics of household items`
  ADD PRIMARY KEY (`carate_id`),
  ADD UNIQUE KEY `carate_id` (`carate_id`),
  ADD KEY `household_id` (`household_id`);

--
-- Indexes for table `cart items`
--
ALTER TABLE `cart items`
  ADD PRIMARY KEY (`cartItems_id`),
  ADD UNIQUE KEY `cartItems_id` (`cartItems_id`),
  ADD KEY `products_id` (`products_id`),
  ADD KEY `type_drinks_id` (`type_drinks_id`),
  ADD KEY `quantity_tobacco_id` (`quantity_tobacco_id`),
  ADD KEY `carate_id` (`carate_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `credit card info`
--
ALTER TABLE `credit card info`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_id` (`card_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD UNIQUE KEY `delivery_id` (`delivery_id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD UNIQUE KEY `orders_id` (`orders_id`),
  ADD KEY `orderStatus_id` (`orderStatus_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `order status and info`
--
ALTER TABLE `order status and info`
  ADD PRIMARY KEY (`orderStatus_id`),
  ADD UNIQUE KEY `orderStatus_id` (`orderStatus_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `delivery_id` (`delivery_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD UNIQUE KEY `products_id` (`products_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `quantity of cigars`
--
ALTER TABLE `quantity of cigars`
  ADD PRIMARY KEY (`quantity_id`),
  ADD UNIQUE KEY `quantity_id` (`quantity_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `quantity_tobacco content`
--
ALTER TABLE `quantity_tobacco content`
  ADD PRIMARY KEY (`quantity_tobacco_id`),
  ADD UNIQUE KEY `quantity_tobacco_id` (`quantity_tobacco_id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `quantity_id` (`quantity_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `review_id` (`review_id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `delivery_id` (`delivery_id`),
  ADD KEY `products_id` (`products_id`),
  ADD KEY `quantity_tobacco_id` (`quantity_tobacco_id`),
  ADD KEY `aT_id` (`aT_id`),
  ADD KEY `carate_id` (`carate_id`);

--
-- Indexes for table `shopping cart`
--
ALTER TABLE `shopping cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `cart_id` (`cart_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `tobbaco content`
--
ALTER TABLE `tobbaco content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_id` (`content_id`);

--
-- Indexes for table `type of drinks`
--
ALTER TABLE `type of drinks`
  ADD PRIMARY KEY (`type_drinks_id`),
  ADD UNIQUE KEY `type_drinks_id` (`type_drinks_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `type of houshold items`
--
ALTER TABLE `type of houshold items`
  ADD PRIMARY KEY (`household_id`),
  ADD UNIQUE KEY `household_id` (`household_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user roles`
--
ALTER TABLE `user roles`
  ADD PRIMARY KEY (`roles_id`),
  ADD UNIQUE KEY `roles_id` (`roles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additiona atributes_type of drinks`
--
ALTER TABLE `additiona atributes_type of drinks`
  MODIFY `aT_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `additional atributes of drinks`
--
ALTER TABLE `additional atributes of drinks`
  MODIFY `add_atri_drink_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `caracteristics of household items`
--
ALTER TABLE `caracteristics of household items`
  MODIFY `carate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart items`
--
ALTER TABLE `cart items`
  MODIFY `cartItems_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `credit card info`
--
ALTER TABLE `credit card info`
  MODIFY `card_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order status and info`
--
ALTER TABLE `order status and info`
  MODIFY `orderStatus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quantity of cigars`
--
ALTER TABLE `quantity of cigars`
  MODIFY `quantity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quantity_tobacco content`
--
ALTER TABLE `quantity_tobacco content`
  MODIFY `quantity_tobacco_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopping cart`
--
ALTER TABLE `shopping cart`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tobbaco content`
--
ALTER TABLE `tobbaco content`
  MODIFY `content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type of drinks`
--
ALTER TABLE `type of drinks`
  MODIFY `type_drinks_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type of houshold items`
--
ALTER TABLE `type of houshold items`
  MODIFY `household_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user roles`
--
ALTER TABLE `user roles`
  MODIFY `roles_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additiona atributes_type of drinks`
--
ALTER TABLE `additiona atributes_type of drinks`
  ADD CONSTRAINT `additiona atributes_type of drinks_ibfk_1` FOREIGN KEY (`type_drinks_id`) REFERENCES `type of drinks` (`type_drinks_id`),
  ADD CONSTRAINT `additiona atributes_type of drinks_ibfk_2` FOREIGN KEY (`type_drinks_id`) REFERENCES `type of drinks` (`type_drinks_id`);

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `user roles` (`roles_id`);

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `user roles` (`roles_id`),
  ADD CONSTRAINT `buyer_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `credit card info` (`card_id`);

--
-- Constraints for table `caracteristics of household items`
--
ALTER TABLE `caracteristics of household items`
  ADD CONSTRAINT `caracteristics of household items_ibfk_1` FOREIGN KEY (`household_id`) REFERENCES `type of houshold items` (`household_id`);

--
-- Constraints for table `cart items`
--
ALTER TABLE `cart items`
  ADD CONSTRAINT `cart items_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  ADD CONSTRAINT `cart items_ibfk_2` FOREIGN KEY (`type_drinks_id`) REFERENCES `additiona atributes_type of drinks` (`type_drinks_id`),
  ADD CONSTRAINT `cart items_ibfk_3` FOREIGN KEY (`quantity_tobacco_id`) REFERENCES `quantity_tobacco content` (`quantity_tobacco_id`),
  ADD CONSTRAINT `cart items_ibfk_4` FOREIGN KEY (`carate_id`) REFERENCES `caracteristics of household items` (`carate_id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `user roles` (`roles_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orderStatus_id`) REFERENCES `order status and info` (`orderStatus_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `shopping cart` (`cart_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`);

--
-- Constraints for table `order status and info`
--
ALTER TABLE `order status and info`
  ADD CONSTRAINT `order status and info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`),
  ADD CONSTRAINT `order status and info_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`);

--
-- Constraints for table `quantity of cigars`
--
ALTER TABLE `quantity of cigars`
  ADD CONSTRAINT `quantity of cigars_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `quantity_tobacco content`
--
ALTER TABLE `quantity_tobacco content`
  ADD CONSTRAINT `quantity_tobacco content_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `tobbaco content` (`content_id`),
  ADD CONSTRAINT `quantity_tobacco content_ibfk_2` FOREIGN KEY (`quantity_id`) REFERENCES `quantity of cigars` (`quantity_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  ADD CONSTRAINT `review_ibfk_4` FOREIGN KEY (`quantity_tobacco_id`) REFERENCES `quantity_tobacco content` (`quantity_tobacco_id`),
  ADD CONSTRAINT `review_ibfk_5` FOREIGN KEY (`aT_id`) REFERENCES `additiona atributes_type of drinks` (`aT_id`),
  ADD CONSTRAINT `review_ibfk_6` FOREIGN KEY (`carate_id`) REFERENCES `caracteristics of household items` (`carate_id`);

--
-- Constraints for table `shopping cart`
--
ALTER TABLE `shopping cart`
  ADD CONSTRAINT `shopping cart_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`);

--
-- Constraints for table `type of drinks`
--
ALTER TABLE `type of drinks`
  ADD CONSTRAINT `type of drinks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `type of houshold items`
--
ALTER TABLE `type of houshold items`
  ADD CONSTRAINT `type of houshold items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
