-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 10:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bypassssss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'administrator', 'bypassssss@gmail.com', 'resuovqm80rq2h80cq3j9ifcam');

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`id`, `item_name`, `quantity`, `created_by`) VALUES
(1, 'Blue Shirt', 50, ' admin'),
(2, 'Red Shoes', 25, ' admin'),
(3, 'Green Hat', 15, ' admin'),
(4, 'Silver Watch', 10, ' admin'),
(5, 'Black Pants', 30, ' admin'),
(6, 'Gold Necklace', 5, ' admin'),
(7, 'White Socks', 100, ' admin'),
(8, 'Purple Scarf', 20, ' admin'),
(9, 'Brown Belt', 40, ' admin'),
(10, 'Orange Gloves', 12, ' admin'),
(11, 'Yellow Sunglasses', 8, ' admin'),
(12, 'Pink Earrings', 3, ' admin'),
(13, 'Cyan Tie', 18, ' admin'),
(14, 'Magenta Backpack', 6, ' admin'),
(15, 'Teal Wallet', 22, ' admin'),
(16, 'Indigo Jacket', 14, ' admin'),
(17, 'Maroon Hat', 9, ' admin'),
(18, 'Olive Shoes', 11, ' admin'),
(19, 'Lavender Sweater', 17, ' admin'),
(20, 'Aqua Jeans', 28, ' admin'),
(21, 'Beige Ring', 4, ' admin'),
(22, 'Turquoise Bracelet', 7, ' admin'),
(23, 'Violet Watch', 13, ' admin'),
(24, 'TCP1P{wHuT_15_fR4gm3nTEd_SqL_1Nj3ct10N?!?!}', 1337, ' admin'),
(25, 'Navy Backpack', 16, ' admin'),
(26, 'Silver Wallet', 19, ' admin'),
(27, 'Bronze Tie', 10, ' admin'),
(28, 'Crimson Earrings', 2, ' admin'),
(29, 'Mauve Jacket', 23, ' admin'),
(30, 'Azure Hat', 27, ' admin'),
(31, 'Cobalt Shoes', 35, ' admin'),
(32, 'Ruby Necklace', 1, ' admin'),
(33, 'Emerald Pants', 26, ' admin'),
(34, 'Topaz Scarf', 29, ' admin'),
(35, 'Amber Belt', 24, ' admin'),
(36, 'Sapphire Gloves', 33, ' admin'),
(37, 'Jade Sunglasses', 32, ' admin'),
(38, 'Opal Earrings', 30, ' admin'),
(39, 'Pearl Tie', 31, ' admin'),
(40, 'Onyx Backpack', 36, ' admin'),
(41, 'Peridot Wallet', 38, ' admin'),
(42, 'Aquamarine Jacket', 42, ' admin'),
(43, 'Garnet Hat', 44, ' admin'),
(44, 'Quartz Ring', 46, ' admin'),
(45, 'Citrine Bracelet', 48, ' admin'),
(46, 'Amethyst Watch', 47, ' admin'),
(47, 'Turmaline Scarf', 45, ' admin'),
(48, 'Malachite Shoes', 43, ' admin'),
(49, 'Moonstone Sweater', 41, ' admin'),
(50, 'Lapis Lazuli Jeans', 39, ' admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
