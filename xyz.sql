-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `admin_id` int(11) NOT NULL,
  `admin_fullname` text NOT NULL,
  `admin_email` text NOT NULL,
  `admin_phone` varchar(50) NOT NULL,
  `admin_role` text NOT NULL,
  `admin_datetime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`admin_id`, `admin_fullname`, `admin_email`, `admin_phone`, `admin_role`, `admin_datetime`) VALUES
(4, 'Admin', 'admin@gmail.com', '123', 'admin', '2024-01-02 13:04:06'),
(15, 'Manager', 'manager@gmail.com', '123', 'manager', '2024-01-02 16:23:36'),
(17, 'demo', 'demo@gmail.com', '123', 'customer', '2024-01-02 17:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `busseats_master`
--

CREATE TABLE `busseats_master` (
  `busseats_id` int(11) NOT NULL,
  `tourbooking_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `busseats_number` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `busseats_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busseats_master`
--

INSERT INTO `busseats_master` (`busseats_id`, `tourbooking_id`, `tour_id`, `busseats_number`, `admin_id`, `busseats_datetime`) VALUES
(7, 2, 2, 13, 15, '2024-02-16 10:21:53'),
(8, 2, 2, 11, 15, '2024-02-16 10:21:53'),
(9, 2, 2, 9, 15, '2024-02-16 10:21:53'),
(10, 2, 2, 14, 15, '2024-02-16 10:21:53'),
(11, 2, 2, 12, 15, '2024-02-16 10:21:53'),
(12, 2, 2, 10, 15, '2024-02-16 10:21:53'),
(13, 2, 2, 8, 15, '2024-02-16 10:21:53'),
(14, 2, 2, 6, 15, '2024-02-16 10:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `bus_master`
--

CREATE TABLE `bus_master` (
  `bus_id` int(11) NOT NULL,
  `bus_number` text NOT NULL,
  `bus_type` varchar(50) NOT NULL,
  `bus_drivename` varchar(50) NOT NULL,
  `bus_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_master`
--

INSERT INTO `bus_master` (`bus_id`, `bus_number`, `bus_type`, `bus_drivename`, `bus_datetime`) VALUES
(1, 'GJ27DK0007', 'ac', 'Admin', '2024-01-02 18:05:06'),
(3, 'GJ45FH4646', 'nonac', 'Far', '2024-02-12 17:23:18'),
(4, 'GJ20DH0007', 'ac', 'Jugdu', '2024-02-13 18:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_price` float NOT NULL,
  `category_code` varchar(50) NOT NULL,
  `category_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`category_id`, `category_name`, `category_price`, `category_code`, `category_datetime`) VALUES
(1, 'demo', 100, 'DF456', '2024-01-10 14:55:37'),
(2, 'Deo', 50, 'DEo1', '2024-01-10 14:56:30'),
(3, 'den', 10.5, '7899', '2024-01-10 14:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `checkdata`
--

CREATE TABLE `checkdata` (
  `check_id` int(11) NOT NULL,
  `check_option` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkdata`
--

INSERT INTO `checkdata` (`check_id`, `check_option`) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 1),
(5, 1),
(6, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `customer_id` int(11) NOT NULL,
  `admin_id` int(50) NOT NULL,
  `customer_fullname` text NOT NULL,
  `customer_email` text NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_password` text NOT NULL,
  `customer_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`customer_id`, `admin_id`, `customer_fullname`, `customer_email`, `customer_phone`, `customer_address`, `customer_password`, `customer_datetime`) VALUES
(1, 1, 'admin', 'admin@gmail.com', '9898989898', 'This is a Demo address.', '123', '2024-01-01 10:52:25'),
(11, 15, 'Manager', 'manager@gmail.com', '9898989898', 'This is demo.', '123', '2024-01-02 16:23:36'),
(13, 17, 'demo', 'demo@gmail.com', '123', 'demo address.', '123', '2024-01-02 17:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `diver_master`
--

CREATE TABLE `diver_master` (
  `diver_id` int(11) NOT NULL,
  `diver_name` varchar(50) NOT NULL,
  `diver_phone` int(11) NOT NULL,
  `diver_licenseno` varchar(50) NOT NULL,
  `diver_vehicalno` varchar(50) NOT NULL,
  `diver_vehicaltype` varchar(50) NOT NULL,
  `diver_vehicalmode` varchar(50) NOT NULL,
  `diver_license` text NOT NULL,
  `diver_rc` text NOT NULL,
  `diver_bus` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `diver_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diver_master`
--

INSERT INTO `diver_master` (`diver_id`, `diver_name`, `diver_phone`, `diver_licenseno`, `diver_vehicalno`, `diver_vehicaltype`, `diver_vehicalmode`, `diver_license`, `diver_rc`, `diver_bus`, `admin_id`, `diver_datetime`) VALUES
(2, 'dfgdfg', 0, 'dfgfdgf', 'fgdgd', 'AC', 'Sleeper', 'uploads/ds.JPG', 'uploads/aa.JPG', 'uploads/ds.JPG', 4, '2024-02-19 18:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

CREATE TABLE `payment_master` (
  `payment_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `tourbooking_id` int(11) NOT NULL,
  `payment_card` int(20) NOT NULL,
  `payment_edate` text NOT NULL,
  `payment_cvv` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `payment_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_master`
--

INSERT INTO `payment_master` (`payment_id`, `tour_id`, `tourbooking_id`, `payment_card`, `payment_edate`, `payment_cvv`, `payment_name`, `payment_status`, `admin_id`, `payment_datetime`) VALUES
(1, 0, 1, 2147483647, '687', 897, 'fgdfgdsgdf', 'Booked', 17, '2024-02-15 15:52:42'),
(2, 0, 1, 654654654, '65465', 54, 'lkfj', 'Booked', 17, '2024-02-16 10:19:30'),
(3, 0, 2, 46546, '65465', 658746, 'dfgdfg', 'Booked', 4, '2024-02-16 10:20:36'),
(4, 0, 3, 465464, '654', 65, 'dfgfghf', 'Booked', 15, '2024-02-16 10:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `tourbooking_master`
--

CREATE TABLE `tourbooking_master` (
  `tourbooking_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `tourbooking_pnrnumber` varchar(50) NOT NULL,
  `tourbooking_name` text NOT NULL,
  `tourbooking_number` text NOT NULL,
  `tourbooking_email` text NOT NULL,
  `tourbooking_address` text NOT NULL,
  `tourbooking_date` date NOT NULL,
  `tourbooking_place` text NOT NULL,
  `tourbooking_daynight` text NOT NULL,
  `tourbooking_price` text NOT NULL,
  `tourbooking_description` text NOT NULL,
  `tourbooking_status` varchar(25) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `tourbooking_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourbooking_master`
--

INSERT INTO `tourbooking_master` (`tourbooking_id`, `tour_id`, `bus_id`, `tourbooking_pnrnumber`, `tourbooking_name`, `tourbooking_number`, `tourbooking_email`, `tourbooking_address`, `tourbooking_date`, `tourbooking_place`, `tourbooking_daynight`, `tourbooking_price`, `tourbooking_description`, `tourbooking_status`, `admin_id`, `tourbooking_datetime`) VALUES
(1, 2, 3, 'SMJU629424', 'sdfdfd', 'sdsfdsfsdf', 'sdfdsf', 'sdfdsfd', '2024-02-17', 'Statue of Unity', '2', '2000', 'asdfas asd asdas a', 'Canceled', 17, '2024-02-16 10:19:30'),
(2, 2, 3, 'SMJU865393', 'dfgdfgdfg', 'dfgfdgdfg', 'dfgdfg', 'dfgfdg', '2024-02-17', 'Statue of Unity', '2', '2000', 'asdfas asd asdas a', 'Canceled', 17, '2024-02-16 10:20:36'),
(3, 2, 3, 'SMJU94663', 'dfgdfgfdg', 'fgfdgfdg', 'dfgfdgfd', 'gfd', '2024-02-17', 'Statue of Unity', '2', '2000', 'asdfas asd asdas a', 'Booked', 15, '2024-02-16 10:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `tour_master`
--

CREATE TABLE `tour_master` (
  `tour_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `tour_date` date NOT NULL,
  `tour_from` varchar(50) NOT NULL,
  `tour_to` varchar(50) NOT NULL,
  `tour_daynight` text NOT NULL,
  `tour_price` text NOT NULL,
  `tour_description` text NOT NULL,
  `tour_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_master`
--

INSERT INTO `tour_master` (`tour_id`, `bus_id`, `tour_date`, `tour_from`, `tour_to`, `tour_daynight`, `tour_price`, `tour_description`, `tour_datetime`) VALUES
(1, 3, '2024-02-20', 'Ahmedabad', 'Kanya Kumari', '2 days 1 Night', '800', 'asdfsaada', '2024-02-19 11:08:49'),
(2, 1, '2024-02-21', 'Varanasi', 'Manali', '1 Day 1 Night', '1200', 'sdfsdf', '2024-02-19 11:09:54'),
(3, 4, '2024-02-22', 'Karnatak', 'Vijayvada', '1 Night', '800', 'dsfsdf', '2024-02-19 11:10:32'),
(4, 1, '2024-02-20', 'Ahmedabad', 'Mumbai', '1 Night', '1200', 'dfsdf', '2024-02-19 11:11:09'),
(5, 4, '2024-02-21', 'Mumbai', 'Karnatak', '1 Day 1 Night', '1500', 'sdafdsfd', '2024-02-19 11:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `busseats_master`
--
ALTER TABLE `busseats_master`
  ADD PRIMARY KEY (`busseats_id`);

--
-- Indexes for table `bus_master`
--
ALTER TABLE `bus_master`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `checkdata`
--
ALTER TABLE `checkdata`
  ADD PRIMARY KEY (`check_id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `diver_master`
--
ALTER TABLE `diver_master`
  ADD PRIMARY KEY (`diver_id`);

--
-- Indexes for table `payment_master`
--
ALTER TABLE `payment_master`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tourbooking_master`
--
ALTER TABLE `tourbooking_master`
  ADD PRIMARY KEY (`tourbooking_id`);

--
-- Indexes for table `tour_master`
--
ALTER TABLE `tour_master`
  ADD PRIMARY KEY (`tour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `busseats_master`
--
ALTER TABLE `busseats_master`
  MODIFY `busseats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bus_master`
--
ALTER TABLE `bus_master`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkdata`
--
ALTER TABLE `checkdata`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `diver_master`
--
ALTER TABLE `diver_master`
  MODIFY `diver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_master`
--
ALTER TABLE `payment_master`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tourbooking_master`
--
ALTER TABLE `tourbooking_master`
  MODIFY `tourbooking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour_master`
--
ALTER TABLE `tour_master`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
