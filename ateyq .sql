-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 08:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ateyq`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Product` varchar(50) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_data`
--

CREATE TABLE `cart_data` (
  `id` int(11) NOT NULL,
  `product` text NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart_data`
--

INSERT INTO `cart_data` (`id`, `product`, `qty`, `amount`) VALUES
(1, 'cup: Ballet dancer', 4, 540),
(5, 'cup: Piano lesson', 1, 130),
(6, 'cup: the Beautiful', 2, 260),
(7, 'Al-Hilal Magazine - The cover of The Oud Player', 4, 312),
(8, 'Tulip dish', 2, 270);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `attachement` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `firstname`, `lastname`, `phone`, `email`, `message`, `attachement`) VALUES
(4, 'Shaahd', 'emad', '99887', 'wsmo2089@outlook.com', 'aaa', ''),
(5, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(6, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(7, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(8, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(9, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(10, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(11, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(12, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(13, 'Shaahd', 'wede', '99887', 'shshs@aiaua', 'zz', ''),
(14, 'Shaahd', 'emad', '9677755', 'shshs@aiaua', 'this', '');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `cardNumber` int(20) NOT NULL,
  `cardName` int(50) NOT NULL,
  `expirationDate` int(10) NOT NULL,
  `CVcode` int(3) NOT NULL,
  `products` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Cups` varchar(11) NOT NULL,
  `Magazine` varchar(11) NOT NULL,
  `HandMade` varchar(11) NOT NULL,
  `Tea` varchar(11) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `remember` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `phone_number`, `email`, `password`, `address`, `neighborhood`, `street`, `remember`) VALUES
(4, 'test', 'test', 'test', 'test@gmail.com', '1234', 'test', 'test', 'test', 'check'),
(5, 'test name', 'test lastname', '123456', 'test1@gmail.com', '12345', 'test', 'test', 'test', 'check'),
(6, 'shahad', 'e', '08999', 'shshs@aiaua', '11111', 'da', 'oh', '17', 'check');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Product`),
  ADD KEY `Price` (`Price`);

--
-- Indexes for table `cart_data`
--
ALTER TABLE `cart_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`cardNumber`),
  ADD KEY `products` (`products`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Price`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_data`
--
ALTER TABLE `cart_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`Price`) REFERENCES `products` (`Price`);

--
-- Constraints for table `pay`
--
ALTER TABLE `pay`
  ADD CONSTRAINT `pay_ibfk_1` FOREIGN KEY (`products`) REFERENCES `cart` (`Product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
