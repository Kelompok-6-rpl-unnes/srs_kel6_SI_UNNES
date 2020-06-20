-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2020 pada 06.57
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
-- Struktur dari tabel `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(14, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 1, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(11, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 2, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2),
(129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(5, 'kelola_user', 'Kelola User', '-', '+1+2+', 'Kelola/kelola_user', 1, 1, 4),
(8, 'lokasi_penyimpanan', 'Lokasi Penyimpanan', '-', '+1+4+', 'kelola/lokasi_penyimpanan', 1, 4, 4),
(20, 'pengajuan_bahan', 'Pengajuan Bahan', '-', '+1+2+4+5+7+', 'pengajuan/pengajuan_bahan', 1, 3, 5),
(12, 'inven_alat_bahan', 'inventaris ', '-', '+1+4+6+', 'master/inven_alat_bahan', 1, 7, 4),
(13, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(24, 'kelola_bahan', 'Kelola Bahan', '-', '+1+4+', 'kelola/kelola_bahan', 1, 6, 4),
(16, 'periode_pengajuan', 'Periode Pengajuan', '-', '+1+3+', 'pengajuan/periode_pengajuan', 1, 1, 5),
(17, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 8, 2),
(138, 'kelola_alat', 'Kelola Alat', '-', '+1+4+', 'master/kelola_alat', 1, 5, 4),
(137, 'jatuh_tempo', 'Jatuh Tempo', '-', '+1+4+5+6+7+8+', 'master/jatuh_tempo', 1, 2, 6),
(140, 'cek_status', 'Cek Status', '-', '+1+4+5+6+7+8+', 'peminjaman/cek_status', 1, 3, 6),
(18, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+2+4+5+7', 'pengajuan/pengajuan_alat', 1, 2, 5),
(19, 'absen_mahasiswa', 'Absen Mahasiswa', '-', '+1+2+7+8+', 'kelola/absen_mahasiswa', 1, 3, 4),
(22, 'absen_tim_lab', 'Absen Tim Laboratorium', '-', '+1+2+3+4+5+6+', 'kelola/absen_tim_lab', 1, 1, 4),
(21, 'absen_dosen', 'Absen Dosen', '-', '+1+2+7+', 'kelola/absen_dosen', 1, 2, 4),
(142, 'pinjam_alat_bahan', 'Peminjaman Alat dan Bahan', 'membuat peminjaman alat/bahan', '+1+4+5+6+7+8+', 'peminjaman/pinjam_alat_bahan', 1, 1, 6),
(25, 'servis_alat_bahan', 'Inventaris Alat dan Bahan Yang Sudah Di Servis', 'Melihat Inventaris alat atau bahan yang sudah di servis', '+1+4+6+', 'master/servis_alat_bahan', 1, 14, 4),
(26, 'kelola_lab', 'Kelola Laboratorium', '-', '+1+4+', 'kelola/kelola_lab', 1, 9, 4),
(143, 'validasi', 'Validasi Absen Mahasiswa', '-', '+1+8+', 'kelola/validasi', 1, 9, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
