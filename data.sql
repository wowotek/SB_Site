-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2018 at 04:06 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(18) NOT NULL,
  `password` varchar(18) NOT NULL,
  `email` varchar(32) NOT NULL,
  `nama_depan` varchar(32) NOT NULL,
  `nama_tengah` varchar(32) NOT NULL,
  `nama_belakang` varchar(32) NOT NULL,
  `tentang` varchar(1024) NOT NULL,
  `photo` varchar(32) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `nama_depan`, `nama_tengah`, `nama_belakang`, `tentang`, `photo`, `isAdmin`) VALUES
('sam', 'sam123', 'sam@sam.sam', 'sam', 'sam', 'sam', '', '', 0),
('wowotek', 'tekoajaib123', 'erlanggaibr2@gmail.com', 'erlangga', 'martono', 'ibrahim', 'apa aja boleh yang penting oke, asalkan kita oke, kita semua oke', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
