-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2017 at 12:02 PM
-- Server version: 10.0.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tarsiust_sicapil`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` varchar(100) NOT NULL DEFAULT '',
  `id_pengurusan` varchar(50) DEFAULT NULL,
  `id_syarat` varchar(30) DEFAULT NULL,
  `url_file` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `id_pengurusan`, `id_syarat`, `url_file`) VALUES
('idnadadd', 'sicapil000009-P02-K01-20170825035931', 'P02-K01-S03', 'berkas/8gwn8dseazha3v2b5w6k.png'),
('sicapil000001-P02-K01-S01-20170825010408', 'sicapil000001-P02-K01-20170825010408', 'P02-K01-S01', 'berkas/sicapil000001-P02-K01-S01-20170825010408.jpg'),
('sicapil000001-P02-K01-S01-20170825035601', 'sicapil000001-P02-K01-20170825035601', 'P02-K01-S01', 'berkas/sicapil000001-P02-K01-S01-20170825035601.jpg'),
('sicapil000015-P02-K01-S03-20170901112017', 'sicapil000015-P02-K01-20170901112017', 'P02-K01-S03', 'berkas/sicapil000015-P02-K01-S03-20170901112236.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pengurusan`
--

CREATE TABLE `jenis_pengurusan` (
  `id_jenis_pengurusan` varchar(30) NOT NULL DEFAULT '',
  `jenis_pengurusan` varchar(225) DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL,
  `url_icon` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_pengurusan`
--

INSERT INTO `jenis_pengurusan` (`id_jenis_pengurusan`, `jenis_pengurusan`, `status_aktif`, `url_icon`) VALUES
('P01', 'Kartu Keluarga', '1', 'images/kk.png'),
('P02', 'Kartu Tanda Penduduk', '1', 'images/ktp.png'),
('P03', 'Akta Nikah', '1', 'images/buku_nikah.png'),
('P04', 'sds', '1', 'images/P04.png'),
('P05', 'Coba Satu', '1', 'images/P05.png'),
('P06', 'satu lagi', '1', 'images/P06.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengurusan`
--

CREATE TABLE `kategori_pengurusan` (
  `id_kategori` varchar(30) NOT NULL DEFAULT '',
  `id_jenis_pengurusan` varchar(30) DEFAULT NULL,
  `nama_kategori` varchar(225) DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL,
  `url_icon` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_pengurusan`
--

INSERT INTO `kategori_pengurusan` (`id_kategori`, `id_jenis_pengurusan`, `nama_kategori`, `status_aktif`, `url_icon`) VALUES
('P01-K01', 'P01', 'Baru', '1', NULL),
('P02-K01', 'P02', 'Baru', '1', NULL),
('P02-K02', 'P02', 'Perpanjangan', '1', NULL),
('P02-K03', 'P02', 'Hilang', '1', NULL),
('P03-K01', 'P03', 'Baru', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengurusan`
--

CREATE TABLE `pengurusan` (
  `id_pengurusan` varchar(50) NOT NULL DEFAULT '',
  `id_user` varchar(30) DEFAULT NULL,
  `id_kategori_pengurusan` varchar(30) DEFAULT NULL,
  `tgl_pengurusan` datetime DEFAULT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `hubungan` enum('tetangga','kerabat','keluarga','pribadi') DEFAULT NULL,
  `status_pengurusan` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurusan`
--

INSERT INTO `pengurusan` (`id_pengurusan`, `id_user`, `id_kategori_pengurusan`, `tgl_pengurusan`, `nama`, `hubungan`, `status_pengurusan`) VALUES
('sicapil000001-P02-K01-20170825010408', 'sicapil000001', 'P02-K01', '2017-08-25 01:04:08', 'Fajrin Ismail', 'pribadi', '1'),
('sicapil000001-P02-K01-20170825035601', 'sicapil000001', 'P02-K01', '2017-08-25 03:56:01', 'Ungke', 'keluarga', '1'),
('sicapil000001-P02-K01-20170825112712', 'sicapil000001', 'P02-K01', '2017-08-25 11:27:12', 'Fatma', 'keluarga', '1'),
('sicapil000001-P02-K01-20170825230652', 'sicapil000001', 'P02-K01', '2017-08-25 23:06:52', 'Fajrin Ismail', 'pribadi', '1'),
('sicapil000009-P02-K01-20170825010726', 'sicapil000009', 'P02-K01', '2017-08-25 01:07:26', 'Andika Abubakar', 'pribadi', '1'),
('sicapil000009-P02-K01-20170825035931', 'sicapil000009', 'P02-K01', '2017-08-25 03:59:31', 'Tary Sasaja', 'keluarga', '1'),
('sicapil000015-P02-K01-20170901112017', 'sicapil000015', 'P02-K01', '2017-09-01 11:20:17', 'erick steven', 'pribadi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `syarat_pengurusan`
--

CREATE TABLE `syarat_pengurusan` (
  `id_syarat` varchar(30) NOT NULL DEFAULT '',
  `id_kategori` varchar(30) DEFAULT NULL,
  `persyaratan` varchar(225) DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syarat_pengurusan`
--

INSERT INTO `syarat_pengurusan` (`id_syarat`, `id_kategori`, `persyaratan`, `status_aktif`) VALUES
('P02-K01-S01', 'P02-K01', 'Surat Keterangan Kelurahan', '1'),
('P02-K01-S02', 'P02-K01', 'Kartu Keluarga', '1'),
('P02-K01-S03', 'P02-K01', 'Buku Nikah', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(30) NOT NULL DEFAULT '',
  `nama` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `no_hp` int(13) DEFAULT NULL,
  `level` enum('4','3','2','1') DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `tgl_registrasi` datetime DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL,
  `token` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `no_hp`, `level`, `password`, `tgl_registrasi`, `status_aktif`, `token`) VALUES
('sicapil000018', 'arun', 'arunumar21@gmail.com', 2147483647, '1', '5935935342690521530a1e531fdb4155', '2017-10-13 09:59:01', '1', '0'),
('sicapil000020', 'Satu', 'Dua', 2147483647, '1', '436785a4009008d7dd33dbc725e8049c', '2017-11-02 20:26:56', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id_verifikasi` varchar(50) NOT NULL DEFAULT '',
  `id_pengurusan` varchar(50) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `status_verifikasi` enum('1','2','3','4') DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL,
  `tgl_verifikasi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifikasi`
--

INSERT INTO `verifikasi` (`id_verifikasi`, `id_pengurusan`, `id_user`, `status_verifikasi`, `status_aktif`, `tgl_verifikasi`) VALUES
('sicapil000001-P02-K01-20170825010408-V1', 'sicapil000001-P02-K01-20170825010408', 'sicapil000006', '1', '0', '2017-08-27 11:37:48'),
('sicapil000001-P02-K01-20170825010408-V2', 'sicapil000001-P02-K01-20170825010408', 'sicapil000006', '2', '1', '2017-08-25 23:12:01'),
('sicapil000001-P02-K01-20170825035601-V1', 'sicapil000001-P02-K01-20170825035601', 'sicapil000006', '1', '0', '2017-08-26 00:40:17'),
('sicapil000001-P02-K01-20170825035601-V2', 'sicapil000001-P02-K01-20170825035601', 'sicapil000006', '2', '0', '2017-08-26 00:42:37'),
('sicapil000001-P02-K01-20170825035601-V3', 'sicapil000001-P02-K01-20170825035601', 'sicapil000006', '4', '1', '2017-08-26 02:10:32'),
('sicapil000001-P02-K01-20170825230652-V1', 'sicapil000001-P02-K01-20170825230652', 'sicapil000006', '1', '0', '2017-08-25 23:11:46'),
('sicapil000001-P02-K01-20170825230652-V2', 'sicapil000001-P02-K01-20170825230652', 'sicapil000006', '2', '1', '2017-08-25 23:12:06'),
('sicapil000009-P02-K01-20170825010726-V1', 'sicapil000009-P02-K01-20170825010726', 'sicapil000006', '1', '1', '2017-08-26 11:39:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`),
  ADD KEY `id_pengurusan3` (`id_pengurusan`),
  ADD KEY `id_syarat1` (`id_syarat`);

--
-- Indexes for table `jenis_pengurusan`
--
ALTER TABLE `jenis_pengurusan`
  ADD PRIMARY KEY (`id_jenis_pengurusan`);

--
-- Indexes for table `kategori_pengurusan`
--
ALTER TABLE `kategori_pengurusan`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_jenpeng` (`id_jenis_pengurusan`);

--
-- Indexes for table `pengurusan`
--
ALTER TABLE `pengurusan`
  ADD PRIMARY KEY (`id_pengurusan`),
  ADD KEY `id_user5` (`id_user`),
  ADD KEY `id_kategori2` (`id_kategori_pengurusan`);

--
-- Indexes for table `syarat_pengurusan`
--
ALTER TABLE `syarat_pengurusan`
  ADD PRIMARY KEY (`id_syarat`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id_verifikasi`),
  ADD KEY `id_pengurusan2` (`id_pengurusan`),
  ADD KEY `id_user1` (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berkas`
--
ALTER TABLE `berkas`
  ADD CONSTRAINT `id_pengurusan3` FOREIGN KEY (`id_pengurusan`) REFERENCES `pengurusan` (`id_pengurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_syarat1` FOREIGN KEY (`id_syarat`) REFERENCES `syarat_pengurusan` (`id_syarat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kategori_pengurusan`
--
ALTER TABLE `kategori_pengurusan`
  ADD CONSTRAINT `id_jenpeng` FOREIGN KEY (`id_jenis_pengurusan`) REFERENCES `jenis_pengurusan` (`id_jenis_pengurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengurusan`
--
ALTER TABLE `pengurusan`
  ADD CONSTRAINT `id_kategori2` FOREIGN KEY (`id_kategori_pengurusan`) REFERENCES `kategori_pengurusan` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_user5` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `syarat_pengurusan`
--
ALTER TABLE `syarat_pengurusan`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_pengurusan` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD CONSTRAINT `id_pengurusan2` FOREIGN KEY (`id_pengurusan`) REFERENCES `pengurusan` (`id_pengurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
