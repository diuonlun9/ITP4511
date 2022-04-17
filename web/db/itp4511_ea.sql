-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 03:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itp4511_ea`
--

-- --------------------------------------------------------

--
-- Table structure for table `gym_booking`
--

CREATE TABLE `gym_booking` (
  `gym_booking_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `gym_id` int(100) NOT NULL,
  `gym_booking_price` int(11) NOT NULL,
  `gym_booking_date` date NOT NULL,
  `gym_booking_time` time NOT NULL,
  `gym_booking_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gym_centers`
--

CREATE TABLE `gym_centers` (
  `gym_id` int(100) NOT NULL,
  `gym_name` int(50) NOT NULL,
  `gym_desc` int(50) NOT NULL,
  `gym_status` tinyint(1) NOT NULL,
  `gym_image` varchar(50) NOT NULL,
  `gym_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_id` int(100) NOT NULL,
  `trainer_name` varchar(50) NOT NULL,
  `trainer_desc` varchar(50) NOT NULL,
  `trainer_status` tinyint(1) NOT NULL,
  `trainer_image` varchar(100) NOT NULL,
  `trainer_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainer_booking`
--

CREATE TABLE `trainer_booking` (
  `trainer_booking_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `trainer_id` int(100) NOT NULL,
  `trainer_booking_price` int(11) NOT NULL,
  `trainer_booking_date` date NOT NULL,
  `trainer_booking_time` time NOT NULL,
  `trainer_booking_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gym_booking`
--
ALTER TABLE `gym_booking`
  ADD PRIMARY KEY (`gym_booking_id`);

--
-- Indexes for table `gym_centers`
--
ALTER TABLE `gym_centers`
  ADD PRIMARY KEY (`gym_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `trainer_booking`
--
ALTER TABLE `trainer_booking`
  ADD PRIMARY KEY (`trainer_booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gym_booking`
--
ALTER TABLE `gym_booking`
  MODIFY `gym_booking_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_centers`
--
ALTER TABLE `gym_centers`
  MODIFY `gym_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `trainer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainer_booking`
--
ALTER TABLE `trainer_booking`
  MODIFY `trainer_booking_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
