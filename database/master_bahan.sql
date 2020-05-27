-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 10:58 AM
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
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel'),
(4, 'A01', 'zat obat a', 'asetosal', 0, NULL),
(5, 'A02', 'zat tambah', 'talkum', 0, NULL),
(6, 'A03', 'bahan kimi', 'asam sulfat', 0, NULL),
(7, 'A04', 'alat prakt', 'gelas ukur', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
