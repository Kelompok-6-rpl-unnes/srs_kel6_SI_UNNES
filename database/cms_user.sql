-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 12:55 PM
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
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `gambar`, `username`, `email`, `jenis_kelamin`, `password`, `level`, `status`, `no_hp`, `last_login`) VALUES
(1, 'Erika Noor Dianti', '', '1243140001', 'erikanoordianti@gmail.com', 'Perempuan', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, '2020-06-26 17:49:07'),
(2, 'Dadang', 'files/2020/06/a9a6c10dc174b92ca9b40b41194671cb.jpg', '2356850007', 'Dadang@gmail.com', 'Laki-Laki', '*99A48EE3E5C6CF531A99449253112D8D1AF9F1D5', 2, 1, '081233', '2020-06-19 06:46:04'),
(3, 'Sasa', 'files/2020/06/49020755deec6e05d30cccec2a0b2d2b.jpg', '3241670001', 'Kepala Lab', 'Perempuan', '*ABBCE0DC21270E1E75ECB04E678AFED41A07753D', 3, 1, '081234', '2020-06-19 18:24:11'),
(4, 'Susi', 'files/2020/06/9475bcff51f687a821143981c6281da3.jpeg', '4982160001', 'susi@gmail.com', 'Perempuan', '*84ADF8879B84C93C88731516C75DE0CB7CB9A35D', 4, 1, '081231', '2020-06-19 06:47:39'),
(5, 'Suciningtyas P', '', '5863730001', 'suciningtyas@gmail.com', 'Perempuan', '*7956DEFCBCCE7F72E923CDB001D2D099AD066460', 5, 1, '085812562', '2020-06-19 06:42:24'),
(6, 'Deddy Sudrajat', '', '6121980001', 'Deddy@gmail.com', 'Laki-Laki', '*A6FC7D53CD15051B4D30AE2A9343C34663D5BF78', 6, 1, '0876215381263', '2020-06-19 06:49:30'),
(7, 'Kevin Hugo', '', '7871260001', 'kepin@gmail.com', 'Laki-Laki', '*76AE24F68F2829BB483C9CB61A3CBBD66CA40FE0', 7, 1, '086235251732', '2020-06-20 11:24:44'),
(8, 'Diva Kratya', '', '8112690001', 'Divakratya@gmail.com', 'Perempuan', '*27B72806A6C98B72EA854A29BC018848729C7CE6', 8, 1, '085376513613', '2020-06-19 18:37:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
