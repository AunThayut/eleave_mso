-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 07:14 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ileaveloei`
--

-- --------------------------------------------------------

--
-- Table structure for table `ileave_type`
--

CREATE TABLE `ileave_type` (
  `type_id` int(2) NOT NULL,
  `type_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_day` int(3) NOT NULL,
  `type_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_department`
--

CREATE TABLE `mso_department` (
  `dep_id` int(2) NOT NULL,
  `dep_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_ileave_status`
--

CREATE TABLE `mso_ileave_status` (
  `ile_id` int(2) NOT NULL,
  `ile_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ile_active` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_position`
--

CREATE TABLE `mso_position` (
  `ps_id` int(2) NOT NULL,
  `ps_neme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ps_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_status`
--

CREATE TABLE `mso_status` (
  `sta_id` int(2) NOT NULL,
  `sta_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sta_activet` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sta_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_user`
--

CREATE TABLE `mso_user` (
  `ms_idcard` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_prefix` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_position` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_group` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_department` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_active` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_connect` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_subdistrict` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_distract` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_province` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_line_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_timeline` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `us_id` int(2) NOT NULL,
  `us_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_active` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ileave_type`
--
ALTER TABLE `ileave_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `mso_department`
--
ALTER TABLE `mso_department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `mso_ileave_status`
--
ALTER TABLE `mso_ileave_status`
  ADD PRIMARY KEY (`ile_id`);

--
-- Indexes for table `mso_position`
--
ALTER TABLE `mso_position`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `mso_status`
--
ALTER TABLE `mso_status`
  ADD PRIMARY KEY (`sta_id`);

--
-- Indexes for table `mso_user`
--
ALTER TABLE `mso_user`
  ADD PRIMARY KEY (`ms_idcard`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ileave_type`
--
ALTER TABLE `ileave_type`
  MODIFY `type_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_department`
--
ALTER TABLE `mso_department`
  MODIFY `dep_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_ileave_status`
--
ALTER TABLE `mso_ileave_status`
  MODIFY `ile_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_position`
--
ALTER TABLE `mso_position`
  MODIFY `ps_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_status`
--
ALTER TABLE `mso_status`
  MODIFY `sta_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `us_id` int(2) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
