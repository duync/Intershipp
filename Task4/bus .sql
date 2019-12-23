-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2019 at 05:24 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `idBus` int(11) NOT NULL,
  `departure` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `destination` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `time` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`idBus`, `departure`, `destination`, `time`, `price`) VALUES
(1, 'TPHCM', 'Hà Nội', '8:00', 1500000),
(2, 'TPHCM', 'Đà Lạt', '6:00', 500000),
(3, 'TPHCM', 'Buôn Mê Thuột', '21:00', 700000);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `idSeat` int(11) NOT NULL,
  `seatNum` varchar(45) DEFAULT NULL,
  `idBus` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`idSeat`, `seatNum`, `idBus`, `status`) VALUES
(1, '1A', 1, 0),
(2, '2A', 1, 0),
(3, '3A', 1, 0),
(4, '4A', 1, 0),
(5, '5A', 1, 0),
(6, '6A', 1, 0),
(7, '7A', 1, 0),
(8, '8A', 1, 0),
(9, '9A', 1, 0),
(10, '1B', 1, 0),
(11, '2B', 1, 0),
(12, '3B', 1, 0),
(13, '4B', 1, 0),
(14, '5B', 1, 0),
(15, '6B', 1, 0),
(16, '7B', 1, 0),
(17, '8B', 1, 0),
(18, '9B', 1, 0),
(19, '1C', 1, 0),
(20, '2C', 1, 0),
(21, '3C', 1, 0),
(22, '4C', 1, 1),
(23, '5C', 1, 0),
(24, '6C', 1, 0),
(25, '7C', 1, 0),
(26, '8C', 1, 0),
(27, '9C', 1, 0),
(28, '1D', 1, 0),
(29, '2D', 1, 0),
(30, '3D', 1, 0),
(31, '4D', 1, 0),
(32, '5D', 1, 0),
(33, '6D', 1, 0),
(34, '7D', 1, 0),
(35, '8D', 1, 0),
(36, '9D', 1, 0),
(37, '1A', 2, 0),
(38, '2A', 2, 0),
(39, '3A', 2, 0),
(40, '4A', 2, 0),
(41, '5A', 2, 0),
(42, '6A', 2, 0),
(43, '7A', 2, 0),
(44, '8A', 2, 0),
(45, '9A', 2, 0),
(46, '1B', 2, 0),
(47, '2B', 2, 0),
(48, '3B', 2, 0),
(49, '4B', 2, 0),
(50, '5B', 2, 0),
(51, '6B', 2, 0),
(52, '7B', 2, 0),
(53, '8B', 2, 0),
(54, '9B', 2, 0),
(55, '1C', 2, 0),
(56, '2C', 2, 0),
(57, '3C', 2, 0),
(58, '4C', 2, 0),
(59, '5C', 2, 0),
(60, '6C', 2, 0),
(61, '7C', 2, 0),
(62, '8C', 2, 0),
(63, '9C', 2, 0),
(64, '1D', 2, 0),
(65, '2D', 2, 0),
(66, '3D', 2, 0),
(67, '4D', 2, 0),
(68, '5D', 2, 0),
(69, '6D', 2, 0),
(70, '7D', 2, 0),
(71, '8D', 2, 0),
(72, '9D', 2, 0),
(73, '1A', 3, 0),
(74, '2A', 3, 0),
(75, '3A', 3, 0),
(76, '4A', 3, 0),
(77, '5A', 3, 0),
(78, '6A', 3, 0),
(79, '7A', 3, 0),
(80, '8A', 3, 0),
(81, '9A', 3, 0),
(82, '1B', 3, 0),
(83, '2B', 3, 0),
(84, '3B', 3, 0),
(85, '4B', 3, 0),
(86, '5B', 3, 0),
(87, '6B', 3, 0),
(88, '7B', 3, 0),
(89, '8B', 3, 0),
(90, '9B', 3, 0),
(91, '1C', 3, 0),
(92, '2C', 3, 0),
(93, '3C', 3, 0),
(94, '4C', 3, 0),
(95, '5C', 3, 0),
(96, '6C', 3, 0),
(97, '7C', 3, 0),
(98, '8C', 3, 0),
(99, '9C', 3, 0),
(100, '1D', 3, 0),
(101, '2D', 3, 0),
(102, '3D', 3, 0),
(103, '4D', 3, 0),
(104, '5D', 3, 0),
(105, '6D', 3, 0),
(106, '7D', 3, 0),
(107, '8D', 3, 0),
(108, '9D', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL,
  `idBus` int(11) NOT NULL,
  `idSeat` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`idTicket`, `idBus`, `idSeat`, `idUser`, `date`, `status`) VALUES
(78, 1, 12, 23, '2019-11-13', 0),
(76, 1, 14, 23, '2019-11-13', 1),
(79, 1, 1, 23, '2019-11-13', 1),
(77, 1, 5, 23, '2019-11-13', 1),
(74, 1, 14, 23, '2019-11-13', 1),
(75, 1, 14, 23, '2019-11-13', 1),
(80, 1, 10, 23, '2019-11-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullName` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `address` text CHARACTER SET utf8mb4 NOT NULL,
  `phoneNum` varchar(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `fullName`, `gender`, `address`, `phoneNum`, `role`, `email`) VALUES
(1, 'admin', 'admin', 'Phùng Trọng Đức', 'Nam', 'Lầu 8', '09312345678', 'Admin', 'admin@gmail.com'),
(2, 'seller', 'seller', 'Nguyễn Công Duy', 'Nam', 'Lầu 7', '1231234', 'Seller', 'seller@gmail.com'),
(3, 'customer', '123', 'Nguyá»n VÄn B', 'Nam', 'Lầu 11', '09112345678', 'Customer', 'customer@gmail.com'),
(25, 'seller002', '12345', 'NgÃ´ BÃ¡ KhÃ¡', 'Nam', '10/06', '0909312', 'Seller', 'seller02@gmail.com'),
(23, 'cus01', '12345', 'nguyen van tu', 'Ná»­', '123/456', '0909213', 'Customer', 'cus001@gmail.com'),
(24, 'seller001', '123456', 'ong phuoc trong', 'Ná»­', '123/456/321', '099321', 'Seller', 'seller01@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`idBus`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`idSeat`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idTicket`),
  ADD KEY `fk_idBus_ticket_idx` (`idBus`),
  ADD KEY `fk_idUsers_ticket_idx` (`idUser`),
  ADD KEY `fk_idSeat_ticket_idx` (`idSeat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `fk_idRoles_idx` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `idBus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `idSeat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
