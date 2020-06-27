-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 04.21
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
-- Struktur dari tabel `master_kategori_alat`
--

CREATE TABLE `master_kategori_alat` (
  `id` int(10) NOT NULL,
  `Kategori` varchar(30) NOT NULL,
  `nama_alat` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori_alat`
--

INSERT INTO `master_kategori_alat` (`id`, `Kategori`, `nama_alat`, `status`) VALUES
(1, 'Pemotong', 'Gunting', 'Ada'),
(3, 'Praktikum Virus', 'Mikroskop', 'Tidak Ada'),
(4, 'Praktikum Molekul', 'Pipet', 'Ada'),
(5, 'Pelapis', 'Kaca', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_kategori_alat`
--
ALTER TABLE `master_kategori_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master_kategori_alat`
--
ALTER TABLE `master_kategori_alat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
