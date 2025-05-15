-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 15, 2025 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jhatpat`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakfast_items`
--

CREATE TABLE `breakfast_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breakfast_items`
--

INSERT INTO `breakfast_items` (`id`, `name`, `photo`, `description`, `price`) VALUES
(1, 'idli', '1747308955947.jpeg', 'healty', 90.00),
(2, 'samosa', '1747309197065.jpeg', 'healdy', 35.00),
(3, 'sasa', '1747309769769.jpeg', 'adsddsfds', 54.00),
(4, 'ffdf', '1747312077280.jpeg', 'dfff', 32.00),
(5, 'ffdf', '1747312077360.jpeg', 'dfff', 32.00);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `country`, `postal_code`, `message`, `created_at`) VALUES
(1, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'fffffffffffff', '2025-05-09 11:47:13'),
(2, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'fffffffffffff', '2025-05-09 11:47:13'),
(3, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'fffffffffffff', '2025-05-09 11:47:13'),
(4, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'fffffffffffff', '2025-05-09 11:47:13'),
(5, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'kk', '2025-05-10 07:42:02'),
(6, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'kk', '2025-05-10 07:42:03'),
(7, 'Shveta Maddhesiya', 'sevetamaddhesiya@gmail.com', '8604695002', 'India', '273212', 'kkkkkkkkkkkkk', '2025-05-10 07:42:07'),
(8, 'sakshi', 'gupta@gmail.com', '6553257596', 'India', '273212', 'fffffffffffff', '2025-05-10 07:45:40'),
(9, 'sakshi', 'shikhamaddhe1@gmail.com', '06553257596', 'India', '273212', 'lk', '2025-05-14 11:30:58'),
(10, 'sakshi', 'shikhamaddhe1@gmail.com', '06553257596', 'India', '273212', 'lk', '2025-05-14 12:34:23'),
(11, 'sakshi', 'shikhamaddhe1@gmail.com', '06553257596', 'India', '273212', 'lk', '2025-05-14 12:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `item` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `delivery_method` enum('Pickup','Home Delivery') NOT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `payment_method` enum('Cash on Delivery','UPI','Card') NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todaymenu`
--

CREATE TABLE `todaymenu` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todaymenu`
--

INSERT INTO `todaymenu` (`id`, `filename`) VALUES
(1, '1747301765051.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakfast_items`
--
ALTER TABLE `breakfast_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todaymenu`
--
ALTER TABLE `todaymenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakfast_items`
--
ALTER TABLE `breakfast_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
