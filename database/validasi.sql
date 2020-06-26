-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 12.03
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
-- Struktur dari tabel `validasi`
--

CREATE TABLE `validasi` (
  `id` int(11) NOT NULL,
  `nomor_induk_mahasiswa` varchar(20) NOT NULL,
  `nama_lengkap` text NOT NULL,
  `tanggal` date NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `mata_kuliah` varchar(20) NOT NULL,
  `rombel` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `validasi`
--

INSERT INTO `validasi` (`id`, `nomor_induk_mahasiswa`, `nama_lengkap`, `tanggal`, `prodi`, `mata_kuliah`, `rombel`, `keterangan`) VALUES
(1, '461241', 'Bilal', '2000-06-26', 'Teknik Informatika', 'RPL', '8', 'Masuk'),
(2, '461242', 'Lala', '2000-06-26', 'Teknik Informatika', 'RPL', '8', 'Masuk'),
(3, '461243', 'Rere', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Tidak Masuk'),
(4, '461244', 'Budi', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Ijin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `validasi`
--
ALTER TABLE `validasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
