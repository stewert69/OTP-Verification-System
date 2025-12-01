-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2025 at 12:10 AM
-- Server version: 10.6.22-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `email` varchar(512) DEFAULT NULL,
  `passcode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `otp`
  ADD UNIQUE KEY `email` (`email`);

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Email` varchar(512) NOT NULL,
  `FirstName` varchar(128) NOT NULL,
  `LastName` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



ALTER TABLE `student`
  ADD PRIMARY KEY (`Email`);

COMMIT;
