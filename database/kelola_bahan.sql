-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 01:11 PM
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
-- Table structure for table `kelola_bahan`
--

CREATE TABLE `kelola_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(150) NOT NULL,
  `satuan_bahan` varchar(100) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimal` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `pendanaan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelola_bahan`
--

INSERT INTO `kelola_bahan` (`id`, `nama_bahan`, `satuan_bahan`, `kategori`, `stock`, `stock_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`) VALUES
(1, '1', '1', '1', 2, 3, '4', '3', 10000, 'baik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
