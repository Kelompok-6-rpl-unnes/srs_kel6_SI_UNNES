-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 06:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_alat_bahan`
--

CREATE TABLE `pinjam_alat_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `pesan_alat_bahan` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam_alat_bahan`
--

INSERT INTO `pinjam_alat_bahan` (`id`, `kode`, `pesan_alat_bahan`, `jumlah`, `tanggal`, `keterangan`) VALUES
(0, '2', 'gunting', '1', '2020-09-08', 'oke'),
(0, '412654', 'wdqd', '2', '2020-09-09', 'ffwqf'),
(0, '6575', ',mnkjnh', '0', '6778', 'kihjuh'),
(0, '3242', 'sdaf', '3', '234', 'safa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
