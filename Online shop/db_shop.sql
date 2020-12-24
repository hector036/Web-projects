-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 05:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `first_Name` varchar(255) NOT NULL,
  `last_Name` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `adminUser` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `first_Name`, `last_Name`, `adminEmail`, `adminPass`, `adminUser`) VALUES
(1, 'Lamia', 'Aktar', 'lamia.aktar@gmail.com', 'lami', 'lamia198526');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`) VALUES
(1, 'Easy'),
(6, 'Aarong'),
(7, 'Cats Eye'),
(8, 'Richman'),
(9, 'Yellow'),
(10, 'Le Reve'),
(12, 'Apex');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(10, 'Computing & Gaming'),
(4, 'Men\'s Fashion'),
(5, 'Women\'s Fashion'),
(9, 'Phones & Tablets'),
(11, 'Appliances'),
(12, 'Home & Living'),
(13, 'Sports & Travel'),
(14, 'Beauty & Health'),
(15, 'Baby,Kids & Toys'),
(16, 'Grocer\'s Shop'),
(17, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobilenumber` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `address`, `mobilenumber`, `email`, `city`, `zipcode`, `password`) VALUES
(1, 'Nayeem', 'Khan', 'Suhrawardy Hall, Buet', '01712402628', 'nayeem1505@gmail.com', 'Dhaka', '1200', 'nayeem1505'),
(2, 'Lamia', 'Akter', 'Bhola Sadar, Barisal', '01712345780', 'lamia.akter@gmail.com', 'Bhola', '8727', 'lamia12345'),
(3, 'Riman', 'Khan', 'Sagordi, Barisal Sadar, Barisal', '01771144544', 'riman.khan@gmail.com', 'Barisal', '8725', 'riman123'),
(4, 'Sakib', 'Nehal', 'Suhrawardy Hall, Buet', '01888897989', 'sakibnehal95@gmail.com', 'Dhaka', '1000', 'nehal123');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptId` int(11) NOT NULL,
  `deptName` varchar(255) NOT NULL,
  `menegerId` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` int(11) NOT NULL,
  `first_Name` varchar(255) NOT NULL,
  `last_Name` varchar(255) NOT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `employeeEmail` varchar(255) NOT NULL,
  `menegerId` varchar(255) NOT NULL,
  `deptId` int(255) NOT NULL,
  `salary` float NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meneger`
--

CREATE TABLE `meneger` (
  `menegerId` int(11) NOT NULL,
  `first_Name` varchar(255) NOT NULL,
  `last_Name` varchar(255) NOT NULL,
  `menegerEmail` varchar(255) NOT NULL,
  `menegerPass` varchar(32) NOT NULL,
  `menegerUser` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meneger`
--

INSERT INTO `meneger` (`menegerId`, `first_Name`, `last_Name`, `menegerEmail`, `menegerPass`, `menegerUser`) VALUES
(1, 'Nayeem', 'khan', 'nayeem1505@gmail.com', '123', 'hector036');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `brandId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `brandId`, `catId`, `body`, `price`, `image`, `type`) VALUES
(8, 'Black Cotton Formal Shirt', 8, 4, 'Welcome to Richman, the premium fashion and lifestyle brand. We provide fashionable, trendy and quality product at a best price. So be fashionable with Richman.\n<br><br>\n\nKEY FEATURES<br>\nProduct Type : Formal Shirt<br>\nColor : Black<br>\nMain Material : Cotton<br>\nGender : Men<br>', 1000, 'upload/889bb37990.jpg', 0),
(11, 'Gray Cotton Formal Shirt ', 8, 4, 'Welcome to Richman, the premium fashion and lifestyle brand. We provide fashionable, trendy and quality product at a best price. So be fashionable with Richman.<br><br>\nKEY FEATURES<br>\nProduct Type : Formal Shirt<br>\nColor : Gray<br>\nMain Material : Cotton<br>\nGender : Men<br>', 980, 'upload/fd8d8021b6.jpg', 0),
(13, 'Navy Blue Denim Jeans Pant', 9, 4, 'This sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\n<br><br>\n\nKEY FEATURES<br>\nProduct Type: Jeans Pant<br>\nColor: Navy Blue<br>\nMain Material: Denim<br>\nGender: Men<br>', 1310, 'upload/c461fbbb48.jpg', 0),
(14, 'Black Denim Jeans Pant ', 9, 4, 'This sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\n\n<br><br>\nKEY FEATURES<br><br>\nProduct Type: Jeans Pant<br>\nColor: Black<br>\nMain Material: Denim<br>\nGender: Men<br>', 980, 'upload/b81ad1a5c8.jpg', 0),
(15, 'Navy Blue Denim Jeans Pant', 9, 4, 'This sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\n<br><br>\n\nKEY FEATURES<br>\nProduct Type: Jeans Pant<br>\nColor: Navy Blue<br>\nMain Material: Denim<br>\nGender: Men<br>', 1430, 'upload/5b8b8b8cdd.jpg', 0),
(25, 'Venturini Leather Formal Shoe - Black', 12, 4, 'Venturini Leather Formal Shoe - Black', 5089, 'upload/8c0cf57a00.jpg', 0),
(26, 'Venturini Leather Formal Shoe - Black', 12, 4, 'Venturini Leather Formal Shoe - Black', 5699, 'upload/bdbb5ae810.jpg', 0),
(18, 'Venturini Black Leather Formal Slip On', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\n\n<br><br>\nKEY FEATURES<br>\nProduct Type: Slip On<br>\nColor: Black<br>\nMain Material: Leather<br>\nGender: Men', 4490, 'upload/6cfac39164.jpg', 0),
(19, 'Venturini Leather Formal Shoe - Black', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\n<br><br>\n\nKEY FEATURES<br>\nProduct Type: Shoes<br>\nColor: Black<br>\nMain Material: Leather<br>\nStyle: Formal<br>\nGender: Men<br>', 4490, 'upload/1d2108afec.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `orderId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`orderId`, `id`, `productId`, `productName`, `quantity`, `price`, `image`, `date`) VALUES
(100, 2, 26, 'Venturini Leather Formal Shoe - Black', 9, 51291, 'upload/bdbb5ae810.jpg', '2018-01-10 22:48:37'),
(103, 2, 13, 'Navy Blue Denim Jeans Pant', 1, 1310, 'upload/c461fbbb48.jpg', '2018-01-10 22:49:45'),
(102, 2, 8, 'Black Cotton Formal Shirt', 3, 3000, 'upload/889bb37990.jpg', '2018-01-10 22:49:45'),
(101, 2, 8, 'Black Cotton Formal Shirt', 1, 1000, 'upload/889bb37990.jpg', '2018-01-10 22:48:37'),
(99, 2, 15, 'Navy Blue Denim Jeans Pant', 4, 5720, 'upload/5b8b8b8cdd.jpg', '2018-01-10 22:43:56'),
(98, 2, 11, 'Gray Cotton Formal Shirt ', 1, 980, 'upload/fd8d8021b6.jpg', '2018-01-10 22:43:56'),
(97, 1, 11, 'Gray Cotton Formal Shirt ', 3, 2940, 'upload/fd8d8021b6.jpg', '2018-01-10 22:07:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `meneger`
--
ALTER TABLE `meneger`
  ADD PRIMARY KEY (`menegerId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`orderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meneger`
--
ALTER TABLE `meneger`
  MODIFY `menegerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
