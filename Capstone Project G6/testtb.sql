-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 06:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testtb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `pwd`, `uname`) VALUES
('admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`) VALUES
(1, 'electronics'),
(2, 'clothing'),
(3, 'home appliances'),
(5, 'shopping'),
(7, 'toys'),
(8, 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `city`, `gender`, `name`, `phone`, `pwd`, `userid`) VALUES
(1, 'Navi-Mumbai', 'Male', 'Omkar Pandurang Khandeshe', '9096666021', 'Vijay@123', 'vijaymore@gmail.com'),
(2, 'pune', 'Male', 'shreaysh', '9876543212', 'admin', 'admin@gmail.com'),
(3, 'pune', 'Male', 'shreaysh', '9876543212', 'admin', 'admin@gmail.com'),
(4, 'Navi-Mumbai', 'Male', 'hnjjj', '9096666021', 'Vijay@12', 'vijaymor@gmail.com'),
(5, 'sangli', 'Female', 'Girija kulkarni', '7866777222', 'Atul@123', 'atul@yopmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `names` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `qty`, `orderId`, `productid`) VALUES
(4, 3, 4, 36),
(5, 7, 4, 39),
(6, 1, 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `orderDate`, `paymethod`, `status`, `addressId`, `customerId`, `paymentId`) VALUES
(4, '2022-07-14', 'By Card', 'Pending', NULL, 1, NULL),
(5, '2022-07-14', 'By Card', 'Pending', NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `nameoncard` varchar(255) DEFAULT NULL,
  `paymentdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `stocks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `descr`, `photo`, `pname`, `price`, `cat_id`, `stocks`) VALUES
(36, 'Highlander Shirts', 'https://omkarecommercebucket2.s3.amazonaws.com/files/WhatsApp%20Image%202022-07-13%20at%209.21.08%20AM.jpeg', 'T-Shirts', 700, 2, 56),
(37, 'smartphone', 'https://omkarecommercebucket2.s3.amazonaws.com/files/WhatsApp%20Image%202022-07-13%20at%209.22.50%20AM.jpeg', 'mi', 14000, 1, 6),
(38, 'test', 'https://omkarecommercebucket2.s3.amazonaws.com/files/WhatsApp+Image+2022-07-13+at+9.22.50+AM.jpeg', 'test', 1, 2, 1),
(39, 'test', 'https://omkarecommercebucket2.s3.amazonaws.com/files/WhatsApp+Image+2022-07-13+at+9.22.50+AM.jpeg', 'test', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `saleslog`
--

CREATE TABLE `saleslog` (
  `id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_id`) VALUES
(4, 1, 37),
(5, 1, 38);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjh6lsweiw8ipasfagjwmmgi9u` (`customer_id`),
  ADD KEY `FK1prjnseb2sioiqy35ijp0upfd` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4p5c64mj3tsqj1v4ypeq3jans` (`orderId`),
  ADD KEY `FKgvhajjkcym4a5g960y6gus6dc` (`productid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `FKh9mg44fdpi0pwusk56r0xged5` (`addressId`),
  ADD KEY `FKeokvurs5fbw7s13q8nmgpqx71` (`customerId`),
  ADD KEY `FK3uouvmvg4j5yov27idsmpw468` (`paymentId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf6jqtf7fbsr0gil5ofrnbme0e` (`cat_id`);

--
-- Indexes for table `saleslog`
--
ALTER TABLE `saleslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo3e9kgr4b9p91pjm3uyfpdr3u` (`customer_id`),
  ADD KEY `FKm4dcpslidmyxx6a4572hm1740` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `saleslog`
--
ALTER TABLE `saleslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK1prjnseb2sioiqy35ijp0upfd` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKjh6lsweiw8ipasfagjwmmgi9u` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK4p5c64mj3tsqj1v4ypeq3jans` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `FKgvhajjkcym4a5g960y6gus6dc` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK3uouvmvg4j5yov27idsmpw468` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `FKeokvurs5fbw7s13q8nmgpqx71` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKh9mg44fdpi0pwusk56r0xged5` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKf6jqtf7fbsr0gil5ofrnbme0e` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FKm4dcpslidmyxx6a4572hm1740` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKo3e9kgr4b9p91pjm3uyfpdr3u` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
