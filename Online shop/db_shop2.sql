-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 02:55 PM
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
(14, 'Le Reve'),
(8, 'Richman'),
(9, 'Yellow'),
(15, 'Aarong'),
(12, 'Apex'),
(16, 'Noir'),
(17, 'Ocelle'),
(18, 'Apple'),
(19, 'Samsung');

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

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptId`, `deptName`, `menegerId`) VALUES
(1, 'Order Management', 1),
(2, 'Product Management', 2),
(3, 'Supply Management', 3);

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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeId`, `first_Name`, `last_Name`, `mobilenumber`, `employeeEmail`, `menegerId`, `deptId`, `salary`, `address`) VALUES
(1, 'Hasan', 'Ali', '01875722057', 'hasan.ali@gmail.com', '1', 1, 5000, 'Banani,Dhaka'),
(2, 'Soikot', 'Mia', '01734352090', 'soikot.mia@gmail.com', '1', 1, 5000, 'Polashi, Buet'),
(3, 'Donald', 'Trump', '01876762015', 'donald.trum11@gmail.com', '1', 1, 5000, 'Nill Khet,Dhaka'),
(4, 'Barack', 'Obama', '01986867545', 'obama123@gmail.com', '1', 1, 5000, 'Banashree,Dhaka'),
(5, 'George', 'Bush', '01787876545', 'bush0909@gmail.com', '1', 1, 5000, 'Gazipur,Dhaka'),
(6, 'Bill', 'Clinton', '01986864534', 'clinton.bill99@gmail.com', '1', 1, 5000, 'Uttora,Dhaka'),
(7, 'Jimmy', 'Carter', '01787876543', 'jimmy.9090@gmail.com', '1', 1, 5000, 'Washington D.c, USA'),
(8, 'Gerald', 'Ford', '01867568798', 'ford.as.123@gmail.com', '2', 2, 8000, 'Washington D.c, USA'),
(9, 'Nayeem', 'Khan', '01712402628', 'nayeem1505@gmail.com', '0', 1, 50000, 'Suhrawardy Hall,Buet'),
(10, 'Emran', 'Mostofa', '01787876567', 'emran.mostofa@gmail.com', '0', 2, 45000, 'Sher-e-bangla Hall,Buet'),
(11, 'Riman', 'Khan', '01771144544', 'riman.khan@gmail.com', '0', 3, 60000, 'Barisal Sadar, Barisal');

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
  `menegerUser` varchar(255) NOT NULL,
  `deptId` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meneger`
--

INSERT INTO `meneger` (`menegerId`, `first_Name`, `last_Name`, `menegerEmail`, `menegerPass`, `menegerUser`, `deptId`) VALUES
(1, 'Nayeem', 'khan', 'nayeem1505@gmail.com', '123', 'hector036', 1),
(2, 'Emran', 'Mostofa', 'emran.mostofa@gmail.com', '123', 'emran123', 2),
(3, 'Riman', 'Khan', 'riman.khan@gmail.com', '123', 'riman321', 3);

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
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `buyprice` float DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `brandId`, `catId`, `body`, `price`, `image`, `type`, `buyprice`, `quantity`) VALUES
(41, 'Black Denim Jeans Pant ', 9, 4, '\r\n\r\nThis sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Jeans Pant<br>\r\nColor: Black<br>\r\nMain Material: Denim<br>\r\nGender: Men<br>', 980, 'upload/7c2c826db6.jpg', 0, 900, 100),
(40, 'Gray Cotton Formal Shirt ', 8, 4, 'Richman is a trusted and reliable source for all your garment related needs from Bangladesh. Richman manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Formal Shirt<br>\r\nColor: Gray<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 850, 'upload/3852d40bc9.jpg', 0, 800, 100),
(39, 'Black Cotton Formal Shirt ', 8, 4, 'Richman is a trusted and reliable source for all your garment related needs from Bangladesh. Richman manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Formal Shirt<br>\r\nColor: Black<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 850, 'upload/26f974ab83.jpg', 0, 800, 100),
(38, 'White Cotton Formal Shirt ', 8, 4, 'Richman is a trusted and reliable source for all your garment related needs from Bangladesh. Richman manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Formal Shirt<br>\r\nColor: White<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 999, 'upload/49587d46d6.jpg', 0, 950, 100),
(37, 'Blue Denim Casual Shirt', 8, 4, 'Richman is a trusted and reliable source for all your garment related needs from Bangladesh. Richman manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Shirt<br>\r\nColor: Blue<br>\r\nMaterial: Denim<br>\r\nGender: Men<br>\r\n', 769, 'upload/ff0702448c.jpg', 0, 700, 100),
(35, 'Ash Cotton Long Sleeve T-Shirt', 14, 4, 'Le reve is a trusted and reliable source for all your garment related needs from Bangladesh. Le reve manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: T-Shirt<br>\r\nColor: Ash<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 337, 'upload/e9f23a619b.jpg', 0, 330, 100),
(36, 'Black Cotton Long Sleeve T-Shirt', 14, 4, 'Le reve is a trusted and reliable source for all your garment related needs from Bangladesh. Le reve manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: T-Shirt<br>\r\nColor: Black<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 499, 'upload/bf6c5e601f.jpg', 0, 450, 100),
(33, 'Black Cotton Long Sleeve T-Shirt', 14, 4, 'Le reve is a trusted and reliable source for all your garment related needs from Bangladesh. Le reve manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: T-Shirt<br>\r\nColor: Black<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 330, 'upload/80ffa0389b.jpg', 0, 300, 100),
(34, 'Navy Blue Cotton Long Sleeve T-Shirt', 14, 4, 'Le reve is a trusted and reliable source for all your garment related needs from Bangladesh. Le reve manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: T-Shirt<br>\r\nColor: Navy Blue<br>\r\nMaterial: Cotton<br>\r\nGender: Men<br>\r\n', 380, 'upload/3f9ec5df56.jpg', 0, 350, 100),
(42, 'Navy Blue Denim Jeans Pant', 9, 4, '\r\n\r\nThis sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Jeans Pant<br>\r\nColor: Navy Blue<br>\r\nMain Material: Denim<br>\r\nGender: Men<br>', 1310, 'upload/701849ac1f.jpg', 0, 1250, 100),
(43, 'Navy Blue Denim Jeans Pant', 9, 4, '\r\n\r\nThis sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Jeans Pant<br>\r\nColor: Navy Blue<br>\r\nMain Material: Denim<br>\r\nGender: Men<br>', 890, 'upload/92e263991e.jpg', 0, 850, 100),
(44, 'Navy Blue Denim Jeans Pant', 9, 4, '\r\n\r\nThis sweater is densely knit for the enhanced performance and durability. The finest pure authentic Inner material, no mixture of cashmere fiber from any other regions which ensures the best pilling performance, durability, superior look and ultra softness.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Jeans Pant<br>\r\nColor: Navy Blue<br>\r\nMain Material: Denim<br>\r\nGender: Men<br>', 1000, 'upload/ee272bc058.jpg', 0, 950, 100),
(45, 'Navy Blue Cotton Panjabi For Men', 15, 4, 'Aarong is one of the popular brand for all type of fashion products at reasonable price. They provide us different types of fashion items very frequently. Shop your choice from this seller!\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Panjabi<br>\r\nColor: Navy Blue<br>\r\nMain Material: Cotton<br>\r\nGender: Men<br>', 1700, 'upload/bb97e2eb75.jpg', 0, 1500, 100),
(46, 'Black and White Cotton Panjabi', 15, 4, 'Aarong is one of the popular brand for all type of fashion products at reasonable price. They provide us different types of fashion items very frequently. Shop your choice from this seller!\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Panjabi<br>\r\nColor: Black And White<br>\r\nMain Material: Cotton<br>\r\nGender: Men<br>', 1700, 'upload/1423606a68.jpg', 0, 1500, 100),
(47, 'Deep Gray Cotton Panjabi For Men', 15, 4, 'Aarong is one of the popular brand for all type of fashion products at reasonable price. They provide us different types of fashion items very frequently. Shop your choice from this seller!\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Panjabi<br>\r\nColor: Deep Gray<br>\r\nMain Material: Cotton<br>\r\nGender: Men<br>', 1700, 'upload/9a6b97471d.jpg', 0, 1500, 100),
(48, 'White and Golden Stripe Cotton Panjabi', 15, 4, 'Aarong is one of the popular brand for all type of fashion products at reasonable price. They provide us different types of fashion items very frequently. Shop your choice from this seller!\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Panjabi<br>\r\nColor: White<br>\r\nMain Material: Cotton<br>\r\nGender: Men<br>', 2150, 'upload/9045b28d6d.jpg', 0, 2000, 100),
(49, 'Venturini Leather Formal Shoe - Black', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\r\n<br><br>\r\n\r\nKEY FEATURES<br>\r\nProduct Type: Shoes<br>\r\nColor: Black<br>\r\nMain Material: Leather<br>\r\nStyle: Formal<br>\r\nGender: Men<br>', 4490, 'upload/c4d5989a85.jpg', 0, 4200, 100),
(50, 'Venturini Black Leather Formal Slip On', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Slip On<br>\r\nColor: Black<br>\r\nMain Material: Leather<br>\r\nGender: Men', 4690, 'upload/8c33a07d53.jpg', 0, 4400, 100),
(51, 'Venturini Leather Formal Shoe - Light Brown', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Slip On<br>\r\nColor: Light Brown<br>\r\nMain Material: Leather<br>\r\nGender: Men', 5067, 'upload/4f3979d006.jpg', 0, 4800, 100),
(52, 'Venturini Leather Formal Shoe - Black', 12, 4, 'Apex offers an array of shoes and sandals from the finest quality leather and craftsmanship wrapped in comfort, only for those men who value authenticity and originality above everything. When designing an Apex, equal emphasis is given to classic designs, comfort and durability.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Slip On<br>\r\nColor: Light Brown<br>\r\nMain Material: Leather<br>\r\nGender: Men', 4588, 'upload/85234fe405.jpg', 0, 4450, 100),
(53, 'Harley Queen Lemon and Chocolate Georgette Saree', 15, 5, 'Aarong is a trusted and reliable source for all your garment related needs from Bangladesh. Aarong manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Saree<br>\r\nColor: Lemon and Chocolate<br>\r\nMain Material: Georgette<br>\r\nGender: Women<br>', 1900, 'upload/8fdece8fbe.jpg', 0, 1800, 100),
(54, 'Royal Blue and Golden Georgette Saree', 15, 5, '\r\nWelcome to Aarong fashion, the premium fashion and lifestyle brand. We provide fashionable, trendy and quality product at a best price. So be fashionable with Aarong fashion.\r\n\r\nKEY FEATURES\r\nProduct Type: Saree\r\nColor: Royal Blue and Golden\r\nMain Material: Georgette\r\nGender: Women\r\nBlouse Piece Work: Embroidered\r\nBlouse Piece Fabric: Cotton Silk\r\nBlouse Piece Size: 0.80 Meter\r\nSaree Size: 6.3 Meter', 2430, 'upload/4e701b05cb.jpg', 0, 2200, 100),
(55, 'Royal Blue and Golden Georgette Saree', 15, 5, '\r\nWelcome to Aarong fashion, the premium fashion and lifestyle brand. We provide fashionable, trendy and quality product at a best price. So be fashionable with Aarong fashion.\r\n\r\nKEY FEATURES\r\nProduct Type: Saree\r\nColor: Royal Blue and Golden\r\nMain Material: Georgette\r\nGender: Women\r\nBlouse Piece Work: Embroidered\r\nBlouse Piece Fabric: Cotton Silk\r\nBlouse Piece Size: 0.80 Meter\r\nSaree Size: 6.3 Meter', 2540, 'upload/790fea6404.jpg', 0, 2300, 100),
(56, 'Purple and Golden Chiffon Saree ', 15, 5, 'Saree is very common dress in this sub continental area like Bangladesh. Women look very gorgeous in colorful sarees, and so they love to wear and have luxurious and colorful sarees for different social and cultural functions. Young lady to elderly person - every woman is fascinated about sarees just because of our culture. Daraz has a massive collection of different types of quality sarees to be sold all the year round to make the buyers happy.\r\nThe seller, Quality Shopping, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.\r\n<br><br>\r\n\r\nKEY FEATURES<br>\r\nProduct type: Saree<br>\r\nColor: Purple and Golden<br>\r\nMain material: Chiffon<br>\r\nGender: Women<br>\r\nOccasion: Casual<br>', 4500, 'upload/58304c398e.jpg', 0, 4400, 100),
(57, 'Sandy Brown PU Leather Hand Bag', 16, 5, 'We always try to deliver the best of the market, and the online shop is a new initiative. New Top Ten as an exclusive shop with the variety of products.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Sandy Brown<br>\r\nGender: Women<br>\r\nMain Material: PU Leather<br>', 1520, 'upload/9a86f6c236.jpg', 0, 1400, 100),
(58, ' Black Artificial Leather Hand Bag', 16, 5, 'Noir a platform of quality products at reasonable price. We are selling different Fashion, Appliances and electronic products as well as accessories in lower cost. Customers can find their desired unique products in a reasonable price within time. Shop your choice from this seller.\r\n\r\n<br><br>\r\n\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Black<br>\r\nGender: Women<br>\r\nMain Material: Artificial Leather<br>', 1220, 'upload/1d2279e6a5.jpg', 0, 1100, 100),
(59, 'Ten Brown Artificial Leather Hand Bag', 16, 5, 'We always try to deliver the best of the market, and the online shop is a new initiative. New Top Ten as an exclusive shop with the variety of products.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Brown<br>\r\nMain Material: Artificial Leather<br>\r\nGender: Women<br>\r\nImported From Thailand<br>', 1450, 'upload/40b093dd4f.jpg', 0, 1400, 100),
(61, 'Chocolate Artificial Leather Handbag ', 16, 5, 'We always try to deliver the best of the market, and the online shop is a new initiative. New Top Ten as an exclusive shop with the variety of products.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Brown<br>\r\nMain Material: Artificial Leather<br>\r\nGender: Women<br>\r\nImported From Thailand<br>', 1400, 'upload/b0a8bee48d.jpg', 0, 1350, 100),
(62, 'SobCart Golden and Pink American Diamond Cut Chain Style Jewellery Set ', 17, 5, 'The seller, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.\r\n<br><br>\r\nKEY FEATURES<br>\r\nColor: Golden and Pink<br>\r\nSize: Free Size<br>\r\nQuantity: 1 Set<br>\r\nMaterial: American Diamond and Gold Plated<br>\r\nGender: Women<br>', 3890, 'upload/8a60c27cfc.jpg', 0, 3700, 100),
(63, 'Golden and White American Diamond Cut Double Locket Style Jewellery', 17, 5, 'The seller, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nColor: Golden and White<br>\r\nSize: Free Size<br>\r\nQuantity: 1 Set (1 Necklace, 2 Earring)<br>\r\nMaterial: American Diamond and Gold Plated<br>\r\nGender: Women<br>', 3990, 'upload/9c8762f868.jpg', 0, 3790, 100),
(64, 'Golden and White American Diamond Cut Locket Style Jewellery', 17, 5, 'We always try to deliver the best of the market, and the online shop is a new initiative. New Top Ten as an exclusive shop with the variety of products.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Brown<br>\r\nMain Material: Artificial Leather<br>\r\nGender: Women<br>\r\nImported From Thailand<br>', 3990, 'upload/d6a0f63dfb.jpg', 0, 3790, 100),
(65, 'Multicolor American Diamond Cut Locket Style Jewellery Set', 17, 5, 'We always try to deliver the best of the market, and the online shop is a new initiative. New Top Ten as an exclusive shop with the variety of products.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Hand Bag<br>\r\nColor: Brown<br>\r\nMain Material: Artificial Leather<br>\r\nGender: Women<br>\r\nImported From Thailand<br>', 4310, 'upload/cb090360f4.jpg', 0, 4200, 100),
(66, 'Black Leather Heeled Sandal For Women', 12, 5, 'We ensure that our customers are completely satisfied by our products. Hence we offer quality products with an after sales service option. We believe happy customers, happy us.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Heeled Sandal<br>\r\nColor: Black<br>\r\nGender: Women<br>\r\nMain Material: Leather<br>', 2925, 'upload/ab2015e663.jpg', 0, 2700, 100),
(67, 'Black Leather Sandal For Women', 12, 5, 'We ensure that our customers are completely satisfied by our products. Hence we offer quality products with an after sales service option. We believe happy customers, happy us.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Heeled Sandal<br>\r\nColor: Black<br>\r\nGender: Women<br>\r\nMain Material: Leather<br>', 1866, 'upload/31f87ad871.jpg', 0, 1700, 100),
(68, 'Linen Leather Sandal For Women', 12, 5, 'We ensure that our customers are completely satisfied by our products. Hence we offer quality products with an after sales service option. We believe happy customers, happy us.\r\n<br><br>\r\n\r\nKEY FEATURES<br>\r\nProduct Type: Sandal<br>\r\nColor: Linen<br>\r\nGender: Women<br>\r\nMain Material: Leather<br>', 1679, 'upload/04371408cc.jpg', 0, 1600, 100),
(69, 'Gray Leather High Heeled Sandal', 12, 5, 'We ensure that our customers are completely satisfied by our products. Hence we offer quality products with an after sales service option. We believe happy customers, happy us.\r\n\r\n<br><br>\r\nKEY FEATURES<br>\r\nProduct Type: Heeled Sandal<br>\r\nColor: Black<br>\r\nGender: Women<br>\r\nMain Material: Leather<br>', 2419, 'upload/24d581aa96.jpg', 0, 2300, 100),
(70, 'Apple iPhone 8 Plus - New', 18, 9, 'A beautiful mindiPhone 8 introduces an allâ€‘new glass design. The worldâ€™s most popular camera, now even better. The most powerful and smartest chip ever in a smartphone. Wireless charging thatâ€™s truly effortless. And augmented reality experiences never before possible. iPhone 8. A new generation of iPhone.', 105000, 'upload/f0a7cd9c27.jpg', 0, 100000, 100),
(71, 'Apple iPhone X - Smartphone - 5.8', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 150500, 'upload/7d578b9ad3.jpg', 0, 150400, 100),
(72, 'Apple Smartphone - iPhone 7 Plus', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 88000, 'upload/c5ef62bb6f.jpg', 0, 8700, 100),
(73, 'Apple iPhone 8 - 4.7" - 2GB RAM', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 92000, 'upload/8f0de64bcd.jpg', 0, 91000, 100),
(74, 'Apple iPhone 8 - 4.7" - 2GB RAM', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 92000, 'upload/ac53969f7a.jpg', 0, 91000, 100),
(75, 'Apple iPhone 8 Plus - 5.5" - 3GB ', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 105000, 'upload/637ec9a218.jpg', 0, 104900, 100),
(76, 'Apple Smartphone - iPhone 7 Plus', 18, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 88000, 'upload/289895f25e.jpg', 0, 87000, 100),
(77, 'Samsung TAB3 10 Business 10inch ', 19, 9, 'One Tough Tablet\r\n\r\nWhether youâ€™re on the road or at a work site, the Tab3 10 Business is durable enough to take a beating. Itâ€™s splash- and dust-resistant  â€“ and scratch-resistant  as well, thanks to its GorillaÂ® Glass display.\r\n', 22999, 'upload/d968535362.jpg', 0, 22800, 100),
(78, 'Samsung SYMTAB 60 â€“ RAM 2GB ', 19, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 9490, 'upload/3fa021188b.jpg', 0, 9300, 100),
(79, 'Samsung SYMTAB 60 - 8" â€“ RAM 2GB ', 19, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 9490, 'upload/f14fdf008f.jpg', 0, 9300, 100),
(80, 'Samsung Tab3 7- 4G 7inch 4G Voice ', 19, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 13999, 'upload/660fcfea24.jpg', 0, 13800, 100),
(81, 'Lenovo Tab3 7 Ess 7inch 3G Voice ', 19, 9, 'Design and DisplayHow do you create a deeply intelligent device whose enclosure and display are a single, uninterrupted element? Thatâ€™s the goal we first set for ourselves with the original iPhone. With iPhone X, weâ€™ve achieved it.\r\nWith iPhone X, the device is the display. An allâ€‘new 5.8â€‘inch Super Retina screen fills the hand and dazzles the eyes. The display employs new techniques and technology to precisely follow the curves of the design, all the way to the elegantly rounded corners.', 10299, 'upload/3bc40230b1.jpg', 0, 10000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `supplyId` int(11) NOT NULL,
  `id` int(255) NOT NULL,
  `employeeId` int(255) NOT NULL,
  `orderTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supplyId`, `id`, `employeeId`, `orderTime`) VALUES
(6, 1, 1, '2018-01-10 22:07:39'),
(7, 2, 2, '2018-01-10 22:43:56'),
(8, 2, 2, '2018-01-11 10:31:11'),
(9, 1, 3, '2018-01-11 02:40:11');

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
-- Triggers `tb_order`
--
DELIMITER $$
CREATE TRIGGER `update_insert` AFTER INSERT ON `tb_order` FOR EACH ROW UPDATE product SET product.quantity=product.quantity-new.quantity WHERE
product.productId=new.productId
$$
DELIMITER ;

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
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supplyId`);

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
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
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
  MODIFY `deptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meneger`
--
ALTER TABLE `meneger`
  MODIFY `menegerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `supply`
--
ALTER TABLE `supply`
  MODIFY `supplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
