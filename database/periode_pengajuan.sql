-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2020 pada 08.34
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

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
-- Struktur dari tabel `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` int(11) NOT NULL,
  `periode_pengajuan` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `sumber_pendanaan` varchar(20) NOT NULL,
  `tanggal_pendanaan` date NOT NULL,
  `pajak` int(10) NOT NULL,
  `status_pengajuan` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `periode_pengajuan`, `semester`, `bulan`, `tahun`, `sumber_pendanaan`, `tanggal_pendanaan`, `pajak`, `status_pengajuan`, `status`) VALUES
(1, 'Pa13241', 'Ganjil', 'Februari', 2020, 'Universitas', '2020-06-29', 1, 'Sudah Disetujui', 'Ada'),
(2, 'Pb1435', 'Genap', 'Maret', 2020, 'Fakultas', '2020-06-23', 3, 'Sudah Disetujui', 'Ada'),
(5, 'pa1234676', 'Antara', 'Desember', 2020, 'Jurusan', '2020-06-20', 3, 'Pendanaan Sudah Turu', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
