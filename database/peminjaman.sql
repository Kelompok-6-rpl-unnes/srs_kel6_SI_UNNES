-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2020 pada 03.40
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

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
-- Struktur dari tabel `peminjaman`
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
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `kode_peminjaman`, `nama_peminjaman`, `kode`, `nama_alat`, `nama_bahan`, `jumlah`, `tgl_pinjam`, `tanggal_kembali`, `status`, `status_pengembalian`) VALUES
(41, 'P2006300001', 'Erika Noor Dianti', 'MK04', 'Gunting', 'Asam Sulfat', 2, '2020-06-30 07:21:53', '2020-07-02 03:36:00', 'Disetujui', 'Sudah Dikembalikan'),
(42, 'P2006300002', 'Erika Noor Dianti', 'MK06', 'Mikroskop', 'Alkolhol', 4, '2020-06-30 07:21:53', '2020-07-07 03:37:00', 'Disetujui', 'Sudah Dikembalikan'),
(45, 'P2006300005', 'Erika Noor Dianti', 'MK06', 'Gunting', 'Alkolhol', 2, '2020-06-30 07:21:53', '2020-07-02 04:15:00', 'Disetujui', 'Belum Dikembalikan'),
(57, 'P2006300008', 'Erika Noor Dianti', 'MK06', 'Gunting', 'Alkolhol', 4, '2020-06-30 07:22:00', '2020-07-03 07:22:00', 'Belum Dikembalikan', 'Belum Dikembalikan'),
(62, 'P2006300011', 'Erika Noor Dianti', 'MK06', 'Gunting', 'Alkolhol', 2, '2020-06-01 09:30:00', '2020-07-09 09:30:00', 'Menunggu Persetujuan', 'Sudah Dikembalikan'),
(63, 'P2007010001', 'Erika Noor Dianti', 'MK06', 'Gunting', 'Alkolhol', 3, '2020-07-08 17:28:00', '2020-07-21 17:28:00', 'Belum Dikembalikan', 'Sudah Dikembalikan'),
(64, 'P2007010002', 'Erika Noor Dianti', 'MK06', 'Gunting', 'Alkolhol', 2, '2020-06-30 17:39:00', '2020-07-02 17:39:00', 'Menunggu Persetujuan', 'Belum Dikembalikan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
