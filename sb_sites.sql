-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2018 at 04:02 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb_sites`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(18) NOT NULL,
  `password` varchar(56) NOT NULL,
  `email` varchar(56) NOT NULL,
  `nama_depan` varchar(32) NOT NULL,
  `nama_tengah` varchar(32) NOT NULL,
  `nama_belakang` varchar(32) NOT NULL,
  `tentang` text,
  `photo` text,
  `isAdmin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `nama_depan`, `nama_tengah`, `nama_belakang`, `tentang`, `photo`, `isAdmin`) VALUES
('bimo', 'bimo123', 'bimo@bagus.bimbag', 'bimo', 'fre$h', 'bagus', 'apakek', NULL, 0),
('sam', 'sam123', 'sam@sam.samosir', 'Samuel', 'Dwi', 'Bramantya', 'APAKEK', NULL, 0),
('wowotek', 'tekoajaib', 'erlanggaibr2@gmail.com', 'Erlangga', 'Martono', 'Ibrahim', 'Apa aja boleh yang penting oke, yang penting dosen senang, asdos senang, kelompok senang, semua senang,\r\n\r\nsaya doang yang tidak senang.', NULL, 1);

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
