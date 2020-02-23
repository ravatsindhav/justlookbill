-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 08:48 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justlook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`, `email`) VALUES
(1, 'ravat', '17899', 'king789@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `billno` int(11) NOT NULL,
  `customername` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `total_amount` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `billno`, `customername`, `mobileno`, `total_amount`, `date`) VALUES
(1, 2, 'ravat ', '9687872854', '36000', '2020-02-21'),
(2, 12, 'Ajay', '35246556454', '369', '2019-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_detail`) VALUES
(1, 'Grevity Shirt', 'Grevity Shirt is Grevity casual shirt'),
(2, 'GloryShirt', 'glory shirt '),
(3, 'catino shirt', 'catino designer shirt'),
(4, 'tago jeans pant', 'tago regular jeans pant'),
(5, 'Grevity formal shirt', 'Grevity Formal Shirt is Grevity company formal shirt'),
(6, 'viras jeans', 'viras polo jeans amd'),
(7, 'spyker t shirt', 'spyker plain t shirt'),
(8, 'Stride shirt', 'Stride plain shirt');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `pprice` float NOT NULL,
  `pqty` int(11) NOT NULL,
  `pdetail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pid`, `category`, `ptitle`, `pprice`, `pqty`, `pdetail`) VALUES
(1, 'SRT107', 'Grevity Shirt', 'Grevity Designer Shirt', 995, 3, 'designer shirt'),
(2, 'PNT202', 'tago jeans pant', 'Tago Plain Jeans', 1399, 6, 'Tago plain black jeans');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `billno` int(11) NOT NULL,
  `customername` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `productid` varchar(20) NOT NULL,
  `pprice` varchar(20) NOT NULL,
  `pqty` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `billno`, `customername`, `mobileno`, `productid`, `pprice`, `pqty`, `total`, `date`) VALUES
(1, 1, 'Ravat', '9687872884', 'dfgfd', '20', '20', '400', '2020-02-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
