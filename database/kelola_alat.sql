-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 08:00 AM
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
-- Table structure for table `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(255) NOT NULL,
  `nama_alat` varchar(100) DEFAULT NULL,
  `satuan_alat` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `stok` int(100) DEFAULT NULL,
  `stok_minimal` int(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `pendanaan` varchar(100) DEFAULT NULL,
  `harga` int(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `nama_alat`, `satuan_alat`, `kategori`, `stok`, `stok_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`) VALUES
(1, '2', '', '3', 5, 2, '3', '1', 2000, 'baryu'),
(4, '1', '2', '2', 4, 2, '2', '1', 2000, 'baru'),
(5, '2', '3', '3', 6, 2, '3', '1', 3000, 'baru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
