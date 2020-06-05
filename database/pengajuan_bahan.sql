-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 04:11 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(15) NOT NULL,
  `seri` varchar(10) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `satuan_grosir` int(10) NOT NULL,
  `jumlah_grosir` int(5) NOT NULL,
  `harga_grosir` int(10) NOT NULL,
  `estimasi_jumlah` int(10) NOT NULL,
  `harga_dasar` int(10) NOT NULL,
  `nama_lab` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `nama_bahan`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`, `harga_dasar`, `nama_lab`, `status`) VALUES
(3, 'Tanaman', 'Baru', '-', 0, 3, 20000, 0, 25000, 'Lab Biologi', ''),
(4, 'Pelarut', 'Baru', '-', 10, 10, 30000, 0, 35000, 'Lab Biologi', '-'),
(5, 'Larutan Basa', 'Baru', '-', 15, 15, 10000, 15, 12000, 'Lab Biologi', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
