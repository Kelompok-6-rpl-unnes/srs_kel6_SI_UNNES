-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 09:29 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

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
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `kode_peminjaman` varchar(100) NOT NULL,
  `nama_peminjaman` varchar(20) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `nama_bahan` varchar(150) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_pinjam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal_kembali` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(30) NOT NULL,
  `status_pengembalian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `kode_peminjaman`, `nama_peminjaman`, `kode`, `nama_alat`, `nama_bahan`, `jumlah`, `tgl_pinjam`, `tanggal_kembali`, `status`, `status_pengembalian`) VALUES
(66, 'P2007010001', 'Erika Noor Dianti', 'MK06', '3', '5', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Menunggu Persetujuan', 'Belum Dikembalikan');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `stok` BEFORE INSERT ON `peminjaman` FOR EACH ROW UPDATE `kelola_bahan`, `kelola_alat`
SET `kelola_bahan`.`stok` = `kelola_bahan`.`stok` - NEW.jumlah,
`kelola_alat`.`stok` = `kelola_alat`.`stok` - NEW.jumlah
WHERE `kelola_bahan`.`id_nama_bahan` = NEW.nama_bahan
AND `kelola_alat`.`id_nama_alat` = NEW.nama_alat
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
