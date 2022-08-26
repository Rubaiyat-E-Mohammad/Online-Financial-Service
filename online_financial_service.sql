-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 10:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online financial service`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(30) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fname`, `lname`, `address`, `balance`) VALUES
('1001', 'Rubaiyat', 'Tasnia', 'rangpur', 20000),
('1002', 'Moriom', 'Tasnia', 'Mahakhali', 20000),
('1003', 'Tasnia', 'Tonni', 'tikatuli', 33000),
('1004', 'Tehzib', 'Mahra', 'bangladesh', 25000),
('1006', 'Tonmoy', 'Rubaiyat', 'uttara', 25000),
('1007', 'Danob', 'Tonmoy', 'niketon', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(30) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `belongsto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `address`, `belongsto`) VALUES
('1005', 'Tonai', 'Monai', 'dhaka', 'tons2468@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` varchar(30) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `belongsto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `fname`, `lname`, `address`, `belongsto`) VALUES
('1006', 'Tonmoy', 'Rubaiyat', 'uttara', 'tonmoyrubaiyat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `canview`
--

CREATE TABLE `canview` (
  `users` varchar(30) NOT NULL,
  `merchants` varchar(30) NOT NULL,
  `tnx_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cashout`
--

CREATE TABLE `cashout` (
  `users` varchar(30) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashout`
--

INSERT INTO `cashout` (`users`, `agent`, `account`, `date`, `time`) VALUES
('1001', '1006', '1001', '2020-09-20', '06:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `has_viewed`
--

CREATE TABLE `has_viewed` (
  `users` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has_viewed`
--

INSERT INTO `has_viewed` (`users`, `account`) VALUES
('1001', '1001'),
('1002', '1002'),
('1003', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('kafein63@gmail.com', '12345678'),
('moriom.tasnia@g.bracu.ac.bd', '12345678'),
('tasniatonni35@gmail.com', '12345678'),
('tehzib273@gmail.com', '12345678'),
('tonmoyrubaiyat@gmail.com', '12345678'),
('tons2468@gmail.com', '12345678'),
('trubaiyatemohammad@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` varchar(30) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `belongsto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `fname`, `lname`, `address`, `belongsto`) VALUES
('1004', 'Tehzib', 'Mahra', 'bangladesh', 'tehzib273@gmail.com'),
('1007', 'Danob', 'Tonmoy', 'niketon', 'trubaiyatemohammad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `m_contact`
--

CREATE TABLE `m_contact` (
  `id` varchar(30) NOT NULL,
  `contact` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_contact`
--

INSERT INTO `m_contact` (`id`, `contact`) VALUES
('1004', '16215, 8081'),
('1007', '16235, 8071');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `users` varchar(30) NOT NULL,
  `merchants` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`users`, `merchants`) VALUES
('1001', '1004');

-- --------------------------------------------------------

--
-- Table structure for table `put_into`
--

CREATE TABLE `put_into` (
  `users` varchar(30) NOT NULL,
  `agent` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `put_into`
--

INSERT INTO `put_into` (`users`, `agent`, `account`, `date`, `time`) VALUES
('1001', '1006', '1001', '2020-09-20', '07:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `send_money`
--

CREATE TABLE `send_money` (
  `users` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `send_money`
--

INSERT INTO `send_money` (`users`, `account`) VALUES
('1001', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tnx_id` varchar(30) NOT NULL,
  `sender_id` varchar(30) DEFAULT NULL,
  `reciever_id` varchar(30) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `ref_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tnx_id`, `sender_id`, `reciever_id`, `amount`, `ref_no`) VALUES
('t000001', '1006', '1004', '2000', '1'),
('t000002', '1003', '1007', '6000', '1'),
('t000003', '1006', '1007', '3000', '1'),
('t000004', '1001', '1003', '5000', '0'),
('t000005', '1002', '1006', '1000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(10) NOT NULL,
  `fnamae` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `belongsto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fnamae`, `lname`, `address`, `belongsto`) VALUES
('1001', 'Rubaiyat', 'Tasnia', 'rangpur', 'kafein63@gmail.com'),
('1002', 'Moriom', 'Tasnia', 'mahakhali', 'moriom.tasnia@g.bracu.ac.bd'),
('1003', 'Tasnia', 'Tonni', 'tikatuli', 'tasniatonni35@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `u_contact`
--

CREATE TABLE `u_contact` (
  `id` varchar(30) NOT NULL,
  `contact` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_contact`
--

INSERT INTO `u_contact` (`id`, `contact`) VALUES
('1001', '12345, 67890'),
('1002', '23456, 78901'),
('1003', '34567, 89012');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `belongsto` (`belongsto`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `belongsto` (`belongsto`);

--
-- Indexes for table `canview`
--
ALTER TABLE `canview`
  ADD PRIMARY KEY (`users`,`merchants`,`tnx_id`),
  ADD KEY `merchants` (`merchants`),
  ADD KEY `tnx_id` (`tnx_id`);

--
-- Indexes for table `cashout`
--
ALTER TABLE `cashout`
  ADD PRIMARY KEY (`users`,`agent`,`account`),
  ADD KEY `agent` (`agent`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `has_viewed`
--
ALTER TABLE `has_viewed`
  ADD PRIMARY KEY (`users`,`account`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `belongsto` (`belongsto`);

--
-- Indexes for table `m_contact`
--
ALTER TABLE `m_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`users`,`merchants`),
  ADD KEY `merchants` (`merchants`);

--
-- Indexes for table `put_into`
--
ALTER TABLE `put_into`
  ADD PRIMARY KEY (`users`,`agent`,`account`),
  ADD KEY `agent` (`agent`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `send_money`
--
ALTER TABLE `send_money`
  ADD PRIMARY KEY (`users`,`account`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tnx_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `belongsto` (`belongsto`);

--
-- Indexes for table `u_contact`
--
ALTER TABLE `u_contact`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`belongsto`) REFERENCES `login` (`email`);

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`belongsto`) REFERENCES `login` (`email`);

--
-- Constraints for table `canview`
--
ALTER TABLE `canview`
  ADD CONSTRAINT `canview_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `canview_ibfk_2` FOREIGN KEY (`merchants`) REFERENCES `merchants` (`id`),
  ADD CONSTRAINT `canview_ibfk_3` FOREIGN KEY (`tnx_id`) REFERENCES `transaction` (`tnx_id`);

--
-- Constraints for table `cashout`
--
ALTER TABLE `cashout`
  ADD CONSTRAINT `cashout_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cashout_ibfk_2` FOREIGN KEY (`agent`) REFERENCES `agent` (`id`),
  ADD CONSTRAINT `cashout_ibfk_3` FOREIGN KEY (`account`) REFERENCES `account` (`id`);

--
-- Constraints for table `has_viewed`
--
ALTER TABLE `has_viewed`
  ADD CONSTRAINT `has_viewed_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `has_viewed_ibfk_2` FOREIGN KEY (`account`) REFERENCES `account` (`id`);

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_ibfk_1` FOREIGN KEY (`belongsto`) REFERENCES `login` (`email`);

--
-- Constraints for table `m_contact`
--
ALTER TABLE `m_contact`
  ADD CONSTRAINT `m_contact_ibfk_1` FOREIGN KEY (`id`) REFERENCES `merchants` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`merchants`) REFERENCES `merchants` (`id`);

--
-- Constraints for table `put_into`
--
ALTER TABLE `put_into`
  ADD CONSTRAINT `put_into_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `put_into_ibfk_2` FOREIGN KEY (`agent`) REFERENCES `agent` (`id`),
  ADD CONSTRAINT `put_into_ibfk_3` FOREIGN KEY (`account`) REFERENCES `account` (`id`);

--
-- Constraints for table `send_money`
--
ALTER TABLE `send_money`
  ADD CONSTRAINT `send_money_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `send_money_ibfk_2` FOREIGN KEY (`account`) REFERENCES `account` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`belongsto`) REFERENCES `login` (`email`);

--
-- Constraints for table `u_contact`
--
ALTER TABLE `u_contact`
  ADD CONSTRAINT `u_contact_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
