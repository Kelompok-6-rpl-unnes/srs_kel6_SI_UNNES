-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 02:35 AM
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
  `kode` varchar(100) DEFAULT NULL,
  `pinjam_alat_bahan` varchar(100) DEFAULT NULL,
  `kategori_pinjam` varchar(100) DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `keperluan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam_alat_bahan`
--

INSERT INTO `pinjam_alat_bahan` (`id`, `kode`, `pinjam_alat_bahan`, `kategori_pinjam`, `jumlah`, `tanggal`, `tgl_kembali`, `keterangan`, `keperluan`) VALUES
(1, '234234', 'wef', 'Alat', 1, '2020-01-01', '2020-01-02', 'Menunggu Persetujuan', 'sdfv'),
(2, '234', 'fsv', 'Alat', 2, '0000-00-00', '0000-00-00', 'Menunggu Persetujuan', 'wefve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pinjam_alat_bahan`
--
ALTER TABLE `pinjam_alat_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjam_alat_bahan`
--
ALTER TABLE `pinjam_alat_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
