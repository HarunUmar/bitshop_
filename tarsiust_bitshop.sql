-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2017 at 12:03 PM
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
-- Database: `tarsiust_bitshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar_item`
--

CREATE TABLE `gambar_item` (
  `id_gambar_item` varchar(50) NOT NULL DEFAULT '',
  `id_item` varchar(50) DEFAULT NULL,
  `url_gambar` varchar(225) DEFAULT NULL,
  `tampil_utama` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar_item`
--

INSERT INTO `gambar_item` (`id_gambar_item`, `id_item`, `url_gambar`, `tampil_utama`) VALUES
('gitem000000000000001', 'bitem000000000001', '1507304565-w0mewgq5yh6mk8rcv34y.png', 1),
('gitem000000000000002', 'bitem000000000003', '1507304916-g84zzu96ib0piey37rb2.jpg', 1),
('gitem000000000000003', 'bitem000000000004', '1507305078-x7iqss66b62edwk9zd08.JPG', 1),
('gitem000000000000004', 'bitem000000000005', '1507811313-5d0yn00rvzn30ytmafqh.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` varchar(50) NOT NULL DEFAULT '',
  `id_kategori` varchar(50) DEFAULT NULL,
  `id_lapak` varchar(50) DEFAULT NULL,
  `nama_item` varchar(100) DEFAULT NULL,
  `berat_item` int(15) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `diskon` int(10) DEFAULT NULL,
  `ket_diskon` text,
  `label` varchar(225) NOT NULL,
  `rating` int(5) NOT NULL,
  `status_aktif` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id_item`, `id_kategori`, `id_lapak`, `nama_item`, `berat_item`, `harga`, `diskon`, `ket_diskon`, `label`, `rating`, `status_aktif`) VALUES
('bitem000000000001', 'kat002', 'lapak000000000002', 'Sayur Bayam Hijau - Hayu', 1, 3000, 0, '0', 'baru', 0, '1'),
('bitem000000000003', 'kat002', 'lapak000000000002', 'Bunga Bayam - Hayu', 1, 2500, 0, '1', 'baru', 0, '1'),
('bitem000000000004', 'kat002', 'lapak000000000002', 'Batang Bayam - Hayu', 1, 3000, 0, '0\n                    ', 'baru', 0, '1'),
('bitem000000000005', 'kat004', 'lapak000000000003', 'Besi Tajam skali lee', 10001, 500001, 0, 'Besi Ok ', 'Paling Baru 1', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `id_jenis_kendaraan` varchar(10) NOT NULL DEFAULT '',
  `jenis_kendaraan` varchar(50) DEFAULT NULL,
  `beban_minimal` int(11) DEFAULT NULL,
  `beban_maksimal` int(11) DEFAULT NULL,
  `status_aktif` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`id_jenis_kendaraan`, `jenis_kendaraan`, `beban_minimal`, `beban_maksimal`, `status_aktif`) VALUES
('jen000001', 'Motor', 1, 1, '1'),
('jen000002', 'Mobil', 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(50) NOT NULL DEFAULT '',
  `nama_kategori` varchar(100) DEFAULT NULL,
  `url_icon` text,
  `status_aktif` enum('0','1') DEFAULT NULL,
  `layanan` enum('0','1') NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `url_icon`, `status_aktif`, `layanan`, `updated_at`, `created_at`) VALUES
('kat001', 'dindaz', '', '1', '0', '2017-10-11 07:26:27', '0000-00-00 00:00:00'),
('kat002', 'dindaz', '1507303812-nf3haifswjyr29utusrr.png', '0', '0', '2017-10-12 01:07:53', '0000-00-00 00:00:00'),
('kat003', 'Logam Mulia', '1507770435-uyc841kack8kguvuiuhx.png', '1', '0', '2017-10-12 01:07:15', '0000-00-00 00:00:00'),
('kat004', 'Perkakas', '1507770454-hwqsg73dw44v05q03eme.png', '1', '0', '2017-10-12 01:07:34', '0000-00-00 00:00:00'),
('kat005', 'Baju Wanita', '1507770047-44t9eyf0h8pj8ax5phrd.png', '1', '0', '2017-10-12 01:00:47', '0000-00-00 00:00:00'),
('kat006', 'Kadow', '1507769996-kvgv6hjqw700rcr06sx2.png', '1', '0', '2017-10-12 00:59:56', '0000-00-00 00:00:00'),
('kat007', 'Sepatu Pria', '1507769935-tm729s5wb5najyfmpjge.png', '1', '0', '2017-10-12 00:58:55', '0000-00-00 00:00:00'),
('kat008', 'Aquarium', '1507769869-s0khzsqgxy80gyaiqtjd.png', '1', '0', '2017-10-12 00:57:49', '0000-00-00 00:00:00'),
('kat009', 'Hewan Peliharaan', '1507769837-nzwm4mhsx81j4xu16qvv.png', '1', '0', '2017-10-12 00:57:17', '0000-00-00 00:00:00'),
('kat010', 'Meubel & Furniture', '1507769361-rnc1efv2dvdknrajb9me.png', '1', '1', '2017-10-12 01:49:47', '0000-00-00 00:00:00'),
('kat011', 'Coba ok', '', '0', '0', '2017-10-12 01:07:42', '0000-00-00 00:00:00'),
('kat012', 'Coba ok3', '', '0', '0', '2017-10-12 01:08:26', '0000-00-00 00:00:00'),
('kat013', 'Komputer & Laptop', '1507770667-hc36qwbmn3v4jnrahq5n.png', '1', '1', '2017-10-12 01:11:07', '0000-00-00 00:00:00'),
('kat014', 'Handphone', '1507770778-j16msaw0b4c78972phmp.png', '1', '1', '2017-10-12 01:12:58', '0000-00-00 00:00:00'),
('kat015', 'Elektronik', '1507771489-23yktuy09jwjkn06en4m.png', '1', '1', '2017-10-12 01:24:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_belanja`
--

CREATE TABLE `keranjang_belanja` (
  `id_kb` varchar(50) NOT NULL DEFAULT '',
  `id_transaksi` varchar(50) DEFAULT NULL,
  `id_item` varchar(50) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga_saat_ini` int(10) DEFAULT NULL,
  `lng_lapak` varchar(225) DEFAULT NULL,
  `lti_lapak` varchar(225) DEFAULT NULL,
  `lng_tujuan` varchar(225) DEFAULT NULL,
  `lti_tujuan` varchar(225) DEFAULT NULL,
  `id_kurir` varchar(50) DEFAULT NULL,
  `tarif_berat` int(10) DEFAULT NULL,
  `tarif_jarak` int(10) DEFAULT NULL,
  `diskon` int(10) DEFAULT NULL,
  `total_harga_item` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_item`
--

CREATE TABLE `pembayaran_item` (
  `id_pembayaran_item` varchar(50) NOT NULL DEFAULT '',
  `id_kb` varchar(50) DEFAULT NULL,
  `total_pembayaran` int(10) DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `id_collector` varchar(50) DEFAULT NULL,
  `url_bukti_bayar` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `level` enum('1','2','3','4') DEFAULT NULL,
  `url_foto` varchar(225) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status_aktif` enum('0','1') DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `alamat`, `no_hp`, `level`, `url_foto`, `email`, `password`, `status_aktif`, `updated_at`, `created_at`) VALUES
('bit0000000001', 'dinda', 'n', '08', '1', NULL, 'dinda@gmail.com', NULL, '1', '2017-09-15 04:35:35', '2017-09-15 04:35:35'),
('bit0000000002', 'dinda', 'n', '08', '1', NULL, 'dindax@gmail.com', NULL, '1', '2017-09-15 05:07:47', '2017-09-15 05:07:47'),
('bit0000000003', 'dinda', 'n', '08', '1', NULL, 'dindam@gmail.com', '$2y$10$79nYSI6wIbJsfktnxxenNeh3sTDswgrV76Q.ygLY8hFcKopXeuJg2', '1', '2017-09-15 05:13:23', '2017-09-15 05:13:23'),
('bit0000000004', 'dinda', 'n', '08', '1', NULL, 'dindana@gmail.com', '$2y$10$0xprn/5lX/TE/YOIsM3NRuQ9fEuYYglhudsjYOLd7I8WcpOg/xLLS', '1', '2017-09-15 05:20:00', '2017-09-15 05:20:00'),
('bit0000000005', 'dinda', 'n', '08', '1', NULL, 'arun@gmail.com', '$2y$10$8DkjcouvWlECeEluyOpkM.l1cIOlhdaH1eJuZAUfvfLIxkRh5rGsS', '1', '2017-09-15 05:40:33', '2017-09-15 05:40:33'),
('bit0000000006', 'dinda', 'n', '08', '1', NULL, 'aruns@gmail.com', '$2y$10$uWbSwfj0M0r0fh14.sK.V.2OGve.74i2LehVog7HgVRIe3CY/Zyuu', '1', '2017-09-15 06:07:04', '2017-09-15 06:07:04'),
('bit0000000007', 'dinda', 'n', '08', '1', NULL, 'aru@gmail.com', '$2y$10$f1Rga/3UNT3FYCG7.6N57.Y0Xyj6vWsHOBzyTqeesCyLAyASBth5W', '1', '2017-09-16 08:33:12', '2017-09-16 08:33:12'),
('bit0000000015', 'Fajrin Ismail', 'samping bawah                      \r\n\r\n                    ', '085299663959', '2', NULL, 'fajrin.ismail19@gmail.com', '$2y$10$05453MPeb/Fmqny/ug8MC.r4681O7RK3eVeDXwKdi95niqCQx/3PS', '1', '2017-10-12 05:23:33', '2017-10-08 10:35:06'),
('bit0000000016', 'Fajrin Gaul', 'samping sei                      \n\n                    ', '08833959', '2', NULL, 'gaul46@gmail.com', '$2y$10$GZnrUMJ4ASB38.yymC//h.4I4jW7zSN8biU0OAQqW4S4.NtLZm9T2', '0', '2017-10-08 10:43:48', '2017-10-08 10:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `rating_item`
--

CREATE TABLE `rating_item` (
  `id_rate_item` varchar(50) NOT NULL DEFAULT '',
  `id_item` varchar(50) DEFAULT NULL,
  `id_pelanggan` varchar(50) DEFAULT NULL,
  `rating` enum('5','4','3','2','1') DEFAULT NULL,
  `ulasan` varchar(225) DEFAULT NULL,
  `tgl_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_kurir`
--

CREATE TABLE `rating_kurir` (
  `id_rate_kurir` varchar(50) NOT NULL DEFAULT '',
  `id_kurir` varchar(50) DEFAULT NULL,
  `id_pelanggan` varchar(50) DEFAULT NULL,
  `rating` enum('5','4','3','2','1') DEFAULT NULL,
  `ulasan` varchar(225) DEFAULT NULL,
  `tgl_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set_kurir`
--

CREATE TABLE `set_kurir` (
  `id_kurir` varchar(50) NOT NULL DEFAULT '',
  `id_pengguna` varchar(50) DEFAULT NULL,
  `id_jenis_kendaraan` varchar(50) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `url_foto_kendaraan` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_kurir`
--

INSERT INTO `set_kurir` (`id_kurir`, `id_pengguna`, `id_jenis_kendaraan`, `no_polisi`, `url_foto_kendaraan`) VALUES
('kurir000000000001', 'bit0000000008', 'jen000002', 'DB 008 CD', '1507776770-i03i2bdx7swqe0bzkrpi.jpg'),
('kurir000000000002', 'bit0000000008', 'jen000002', 'DB 666 CX', '1507777424-fqx8cq7g97ye4j98y9fu.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `set_lapak`
--

CREATE TABLE `set_lapak` (
  `id_lapak` varchar(50) NOT NULL DEFAULT '',
  `id_pengguna` varchar(50) DEFAULT NULL,
  `nama_lapak` varchar(100) DEFAULT NULL,
  `deskripsi_lapak` varchar(225) DEFAULT NULL,
  `lng_lapak` varchar(225) DEFAULT NULL,
  `lti_lapak` varchar(225) DEFAULT NULL,
  `alamat_detail_lapak` varchar(225) DEFAULT NULL,
  `jam_buka` time DEFAULT NULL,
  `jam_tutup` time DEFAULT NULL,
  `status_lapak` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_lapak`
--

INSERT INTO `set_lapak` (`id_lapak`, `id_pengguna`, `nama_lapak`, `deskripsi_lapak`, `lng_lapak`, `lti_lapak`, `alamat_detail_lapak`, `jam_buka`, `jam_tutup`, `status_lapak`) VALUES
('lapak000000000001', 'bit0000000001', 'aneka kue', 'kukis terenak ', '872749', '824899', 'bitung sulut', '07:30:00', '22:00:00', '1'),
('lapak000000000002', 'bit0000000010', 'Farm Hayu', 'ini lapak                          ', '125.08365348354494', '1.419350156618935', 'ini lapak ol                          ', '05:15:00', '07:00:00', '1'),
('lapak000000000003', 'bit0000000015', 'Aneka Besi 1', 'Ini Lapak                          ', '125.03455832973634', '1.4274157518047401', 'Samping Bawah', '10:00:00', '20:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_kurir`
--

CREATE TABLE `tabungan_kurir` (
  `id_tabungan` varchar(50) NOT NULL DEFAULT '',
  `id_pengguna` varchar(50) DEFAULT NULL,
  `total_pendapatan` int(11) DEFAULT NULL,
  `pengambilan` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `bukti_img` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tarif_tambahan`
--

CREATE TABLE `tarif_tambahan` (
  `id_tarif_beban` varchar(50) NOT NULL DEFAULT '',
  `tarif_beban` int(10) DEFAULT NULL,
  `ketentuan_beban_diatas` int(10) DEFAULT NULL,
  `tarif_jarak_tiap_km` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE `timeline` (
  `id_timeline` varchar(50) NOT NULL DEFAULT '',
  `id_kb` varchar(50) DEFAULT NULL,
  `status_timeline` enum('0','1','2','3','4') DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `status_aktif` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(50) NOT NULL DEFAULT '',
  `id_pelanggan` varchar(50) DEFAULT NULL,
  `tgl_transaksi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar_item`
--
ALTER TABLE `gambar_item`
  ADD PRIMARY KEY (`id_gambar_item`),
  ADD KEY `gambar_item_id_item` (`id_item`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_kategori_item` (`id_kategori`),
  ADD KEY `id_lapak_item` (`id_lapak`);

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`id_jenis_kendaraan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang_belanja`
--
ALTER TABLE `keranjang_belanja`
  ADD PRIMARY KEY (`id_kb`),
  ADD KEY `id_item_kb` (`id_item`),
  ADD KEY `id_transaksi_kb` (`id_transaksi`),
  ADD KEY `id_kurir_kb` (`id_kurir`);

--
-- Indexes for table `pembayaran_item`
--
ALTER TABLE `pembayaran_item`
  ADD PRIMARY KEY (`id_pembayaran_item`),
  ADD KEY `id_kb_bayar_item` (`id_kb`),
  ADD KEY `id_pengguna` (`id_collector`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `rating_item`
--
ALTER TABLE `rating_item`
  ADD PRIMARY KEY (`id_rate_item`),
  ADD KEY `id_rate_item` (`id_item`),
  ADD KEY `id_rate_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `rating_kurir`
--
ALTER TABLE `rating_kurir`
  ADD PRIMARY KEY (`id_rate_kurir`),
  ADD KEY `id_rating_kurir` (`id_kurir`),
  ADD KEY `id_rating_pk` (`id_pelanggan`);

--
-- Indexes for table `set_kurir`
--
ALTER TABLE `set_kurir`
  ADD PRIMARY KEY (`id_kurir`),
  ADD KEY `id_jk_kurir` (`id_jenis_kendaraan`),
  ADD KEY `id_pengguna_kurir` (`id_pengguna`);

--
-- Indexes for table `set_lapak`
--
ALTER TABLE `set_lapak`
  ADD PRIMARY KEY (`id_lapak`),
  ADD KEY `id_pengguna_lapak` (`id_pengguna`);

--
-- Indexes for table `tabungan_kurir`
--
ALTER TABLE `tabungan_kurir`
  ADD PRIMARY KEY (`id_tabungan`),
  ADD KEY `id_pengguna_tabungan` (`id_pengguna`);

--
-- Indexes for table `tarif_tambahan`
--
ALTER TABLE `tarif_tambahan`
  ADD PRIMARY KEY (`id_tarif_beban`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`id_timeline`),
  ADD KEY `id_kb_timline` (`id_kb`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan_transaksi` (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gambar_item`
--
ALTER TABLE `gambar_item`
  ADD CONSTRAINT `gambar_item_id_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `id_kategori_item` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_lapak_item` FOREIGN KEY (`id_lapak`) REFERENCES `set_lapak` (`id_lapak`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang_belanja`
--
ALTER TABLE `keranjang_belanja`
  ADD CONSTRAINT `id_item_kb` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_kurir_kb` FOREIGN KEY (`id_kurir`) REFERENCES `set_kurir` (`id_kurir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_transaksi_kb` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran_item`
--
ALTER TABLE `pembayaran_item`
  ADD CONSTRAINT `id_kb_bayar_item` FOREIGN KEY (`id_kb`) REFERENCES `keranjang_belanja` (`id_kb`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pengguna` FOREIGN KEY (`id_collector`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_item`
--
ALTER TABLE `rating_item`
  ADD CONSTRAINT `id_rate_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_rate_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_kurir`
--
ALTER TABLE `rating_kurir`
  ADD CONSTRAINT `id_rating_kurir` FOREIGN KEY (`id_kurir`) REFERENCES `set_kurir` (`id_kurir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_rating_pk` FOREIGN KEY (`id_pelanggan`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `set_kurir`
--
ALTER TABLE `set_kurir`
  ADD CONSTRAINT `id_jk_kurir` FOREIGN KEY (`id_jenis_kendaraan`) REFERENCES `jenis_kendaraan` (`id_jenis_kendaraan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pengguna_kurir` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `set_lapak`
--
ALTER TABLE `set_lapak`
  ADD CONSTRAINT `id_pengguna_lapak` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabungan_kurir`
--
ALTER TABLE `tabungan_kurir`
  ADD CONSTRAINT `id_pengguna_tabungan` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timeline`
--
ALTER TABLE `timeline`
  ADD CONSTRAINT `id_kb_timline` FOREIGN KEY (`id_kb`) REFERENCES `keranjang_belanja` (`id_kb`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `id_pelanggan_transaksi` FOREIGN KEY (`id_pelanggan`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
