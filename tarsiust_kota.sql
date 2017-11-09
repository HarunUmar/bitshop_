-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2017 at 12:15 PM
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
-- Database: `tarsiust_kota`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(10) UNSIGNED NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `ket` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `info`, `ket`, `created_at`, `updated_at`) VALUES
(3, 'Sejarah Kota Bitung', '<p style=\"text-align: justify;\">Menurut cerita sejarah, nama Bitung diambil dari nama sebuah pohon yang banyak tumbuh di daerah utara Jazirah Pulau Sulawesi. Penduduk yang pertama yang memberikan nama Bitung adalah Dotu Hermanus Sompotan yang dalam bahasa daerah disebut dengan Tundu\'an atau pemimpin. <br /><br />Dotu Hermanus Sompotan tidak sendirian tetapi pada saat itu dia datang bersama dengan Dotu Rotti, Dotu Wullur, Dotu Ganda, Dotu Katuuk, Dotu Lengkong. Pengertian kata Dotu adalah orang yang dituakan atau juga bisa disebut sebagai gelar kepemimpinan pada saat itu, sama seperti penggunaan kata Datuk bagi orang kepulauan Sumatera. <br /><br />Mereka semua dikenal dengan sebutan 6 Dotu Tumani Bitung, mereka membuka serta menggarap daerah tersebut agar menjadi daerah yang layak untuk ditempati, mereka semua berasal dari Suku Minahasa, etnis Tonsea. Makam dan Prasasti dari Dotu Hermanus Sompotan dapat kita temui di pusat Kota Bitung yang merupakan bagian dari peninggalan sejarah berdirinya Kota Bitung yang tidak dapat dilupakan sepanjang masa. Seiring sejalan, kini para anak dan keturunannya banyak berdomisili di daerah yang disebut Aer Tembaga.<br /><br />Daerah pantai yang baru ini ternyata banyak menarik minat orang untuk datang dan tinggal menetap sehingga lama kelamaan penduduk Bitung mulai bertambah. Sebelum menjadi kota, Bitung hanyalah sebuah desa yang dipimpin oleh Arklaus Sompotan sebagai Hukum Tua (Lurah) pertama desa Bitung dan memimpin selama kurang lebih 25 tahun, yang pada saat itu Desa Bitung adalah termasuk dalam Kecamatan Kauditan. Arklaus Sompotan sendiri dimakamkan di desa Karegesan Minawerot, Kecamatan Kauditan.<br /><br />Seiring sejalan dengan perkembangan Bitung sebagai suatu kawasan yang strategis serta jumlah penduduk yang semakin bertambah dengan pesatnya maka pada tahun 70-an Bapak Jack J Sompotan yang pada saat itu merupakan Assisten Pribadi Khusus dari Gubernur H.V Worang memberikan masukan kepada Gubernur H. V. Worang bahwa sudah saatnya Bitung itu dijadikan sebuah Kota dan kemudian sekitar akhir tahun 1970-an Bitung dijadikan Kota Administratif yang kemudian diangkatlah Walikota Pertama yaitu Wempie Worang Yang merupakan adik dari Gubernur H. V. Worang.<br /><br />Dari Sekitar tahun 1940-an, para pengusaha perikanan yang mengusahakan Laut Sulawesi tertarik dengan keberadaan Bitung dibandingkan Kema (di wilayah Kabupaten Minahasa)yang dulunya merupakan pelabuhan perdagangan, karena menurut pandangan mereka Bitung lebih strategis dan bisa dijadikan pelabuhan pengganti Kema.<br /><br />Bitung memiliki Gunung Dua Sudara yang terletak di pinggiran dalam Kota Bitung. Dan juga Bitung memiliki Pulau Lembeh yang merupakan salah satu pulau terbesar di Sulawesi Utara yang merupakan milik dari Dotu Xavier Dotulong, yang pada perkembangannya bisa dijadikan sebagai penahan ombak alamiah yang dapat melindungi Pelabuhan Bitung sepanjang tahun dari terpaan angin dan gelombang yang besar.</p>', '2017-03-13 14:41:18', '2017-03-13 14:41:18'),
(5, 'Geografis', '<p><span style=\"font-size: 10pt;\">Kota Bitung terletak pada posisi geografis di antara 1&deg; 23\' 23\" - 1&deg; 35\' 39\" LU dan 125&deg; 1\' 43\" -1 25&deg; 18\' 13\" BT dan luas wilayah daratan 304&nbsp;km&sup2;.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"font-size: 10pt;\">Batas wilayah</span> </strong>&nbsp;</p>\r\n<p><span style=\"font-size: 10pt;\">Batas wilayah Kota Bitung adalah sebagai berikut:</span></p>\r\n<table class=\"wikitable\">\r\n<tbody>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"height: 16px;\" bgcolor=\"#F2F2F2\"><span style=\"font-size: 10pt;\">Utara</span></td>\r\n<td style=\"height: 16px;\"><span style=\"font-size: 10pt;\">Kabupaten Minahasa Utara</span></td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"height: 16px;\" bgcolor=\"#F2F2F2\"><span style=\"font-size: 10pt;\">Selatan</span></td>\r\n<td style=\"height: 16px;\"><span style=\"font-size: 10pt;\">Laut Maluku</span></td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"height: 16px;\" bgcolor=\"#F2F2F2\"><span style=\"font-size: 10pt;\">Barat</span></td>\r\n<td style=\"height: 16px;\"><span style=\"font-size: 10pt;\">Kabupaten Minahasa Utara</span></td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"height: 16px;\" bgcolor=\"#F2F2F2\"><span style=\"font-size: 10pt;\">Timur</span></td>\r\n<td style=\"height: 16px;\"><span style=\"font-size: 10pt;\">Laut Maluku</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h3><span id=\"Topografi_dan_Iklim\" class=\"mw-headline\">Topografi dan Iklim</span></h3>\r\n<p style=\"text-align: justify;\">Dari aspek topografis, sebagian besar daratan Kota Bitung berombak berbukit 45,06%, bergunung 32,73%, daratan landai 4,18% dan berombak 18,03%. Di bagian timur mulai dari pesisir pantai Aertembaga sampai dengan Tanjung Merah di bagian barat, merupakan daratan yang relatif cukup datar dengan kemiringan 0-150, sehingga secara fisik dapat dikembangkan sebagai wilayah perkotaan, industri, perdagangan dan jasa.</p>\r\n<p style=\"text-align: justify;\">Di bagian utara keadaan topografi semakin bergelombang dan berbukit-bukit yang merupakan kawasan pertanian, perkebunan, hutan lindung, taman margasatwa dan cagar alam. Di bagian selatan terdapat Pulau Lembeh yang keadaan tanahnya pada umumnya kasar ditutupi oleh tanaman kelapa, hortikultura dan palawija. Disamping itu memiliki pesisir pantai yang indah sebagai potensi yang dapat dikembangkan menjadi daerah wisata bahari.</p>', '2017-03-13 16:04:50', '2017-03-13 16:07:09'),
(6, 'Penduduk', '<p>&nbsp;</p>\r\n<h2><span id=\"Penduduk\" class=\"mw-headline\">Penduduk</span></h2>\r\n<h3><strong>Jumlah Penduduk Kota Bitung per Kecematan Tahun 2010-2015</strong></h3>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<table style=\"width: 458.5px; height: 217px; float: left;\">\r\n<tbody>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 123px; text-align: center; height: 26px;\" colspan=\"2\" rowspan=\"2\"><strong>&nbsp;</strong><strong>&nbsp;</strong><strong>Kecamatan</strong><strong>&nbsp;</strong></td>\r\n<td style=\"width: 319px; height: 13px; text-align: center;\" colspan=\"6\"><strong>Jumlah Penduduk (Ribu)</strong></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 52px; text-align: center; height: 13px;\"><strong>2010</strong></td>\r\n<td style=\"width: 43px; text-align: center; height: 13px;\"><strong>2011</strong></td>\r\n<td style=\"width: 45px; text-align: center; height: 13px;\"><strong>2012</strong></td>\r\n<td style=\"width: 45px; text-align: center; height: 13px;\"><strong>2013</strong></td>\r\n<td style=\"width: 52px; text-align: center; height: 13px;\"><strong>2014</strong></td>\r\n<td style=\"width: 52px; text-align: center; height: 13px;\"><strong>2015</strong></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">1</td>\r\n<td style=\"width: 109px; height: 13px;\">Madidir</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">33.482</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">34.228</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">&nbsp;34.253</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">2</td>\r\n<td style=\"width: 109px; height: 13px;\">Matuari</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">27.180</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">39.634</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">43.266</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">3</td>\r\n<td style=\"width: 109px; height: 13px;\">Girian</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">27.862</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">30.104</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">30.537</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">4</td>\r\n<td style=\"width: 109px; height: 13px;\">Lembeh Selatan</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">&nbsp;9.120</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">9.028</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">8.963</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">5</td>\r\n<td style=\"width: 109px; height: 13px;\">Lembeh Utara</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">8.509&nbsp;</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">7.891</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">7.710</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">6</td>\r\n<td style=\"width: 109px; height: 13px;\">Aertembaga</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">28.262</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">26.860</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">26.403</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">7</td>\r\n<td style=\"width: 109px; height: 13px;\">Maesa</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">36.007</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">35.140</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">34.767</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">8</td>\r\n<td style=\"width: 109px; height: 13px;\">Ranowulu&nbsp;</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">17.230</td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\">-</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">19.319</td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\">19.776</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 8px; height: 13px; text-align: center;\">&nbsp;</td>\r\n<td style=\"width: 109px; height: 13px;\"><strong>JUMLAH</strong></td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\"><strong>187.652</strong></td>\r\n<td style=\"width: 43px; height: 13px; text-align: right;\"><strong>-</strong></td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\"><strong>-</strong></td>\r\n<td style=\"width: 45px; height: 13px; text-align: right;\"><strong>-</strong></td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\"><strong>202.204</strong></td>\r\n<td style=\"width: 52px; height: 13px; text-align: right;\"><strong>205.675</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>&nbsp;</h2>\r\n<h2>&nbsp;</h2>\r\n<h2>&nbsp;</h2>\r\n<h2>&nbsp;</h2>\r\n<h2>&nbsp;</h2>\r\n<h2>&nbsp;</h2>\r\n<h2><span id=\"Penduduk\" class=\"mw-headline\">&nbsp;</span></h2>\r\n<h3>&nbsp;</h3>\r\n<h3><span id=\"Etnis\" class=\"mw-headline\">Etnis</span></h3>\r\n<p style=\"text-align: justify;\">Sebagian besar penduduk Kota Bitung berasal dari suku Minahasa dan suku Sangihe. Terdapat juga komunitas etnis Tionghoa yang besar di Bitung. Para pendatang yang berasal dari suku Jawa dan suku Gorontalo, Suku Minangkabau, Suku Aceh juga banyak ditemui di Bitung, di mana sebagian besar dari mereka berprofesi sebagai pedagang. Ada juga pendatang dari tanah Maluku yang mengungsi dikota Bitung akibat bergolaknya kerusuhan di Halmahera.</p>\r\n<h3 style=\"text-align: justify;\"><span id=\"Agama\" class=\"mw-headline\">Agama</span></h3>\r\n<p style=\"text-align: justify;\">Sebagian besar penduduk Kota Bitung memeluk agama Kristen Protestan. Sebagian besar penduduk Kota Bitung yang berasal dari etnis Jawa dan Gorontalo memeluk agama Islam. Agama Katolik juga banyak dianut oleh penduduk Kota Bitung, sementara agama Konghucu dan Buddha banyak dianut oleh penduduk yang berasal dari etnis Tionghoa.</p>\r\n<h3 style=\"text-align: justify;\"><span id=\"Bahasa\" class=\"mw-headline\">Bahasa</span></h3>\r\n<p style=\"text-align: justify;\">Bahasa yang sering digunakan oleh masyarakat Kota Bitung adalah bahasa Manado sebagai bahasa ibu dari sebagian besar penduduk Kota Bitung. Bahasa Sangihe juga sering digunakan oleh masyarakat suku Sangir yang ada di Kota Bitung.</p>', '2017-03-13 16:09:57', '2017-03-13 16:17:35'),
(7, 'Kebudayaan', '<h2><span id=\"Kebudayaan\" class=\"mw-headline\" style=\"font-size: 10pt;\">Kebudayaan</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Kebudayaan yang ada di Kota Bitung banyak dipengaruhi oleh budaya Sangihe dan Talaud, karena banyaknya penduduk yang berasal dari etnis Sangir. Contoh dari budaya Sangir dan Talaud yang ada di Bitung yaitu Masamper. Masamper merupakan gabungan antara nyanyian dan sedikit tarian yang berisi tentang nasihat, petuah, juga kata-kata pujian kepada Tuhan. Budaya Sangir lainnya yang bisa ditemui di Bitung yaitu TULUDE/Menulude. Tulude berasal dari kata <em>Suhude</em> yang berarti tolak. Maksud Acara Adat <em>menulude</em> ialah memuji <em>Duata</em>/<em>Ruata</em> (Tuhan), mengucap syukur atas perlindungan-Nya.</span></p>', '2017-03-13 16:19:54', '2017-03-13 16:19:54'),
(8, 'Pariwisata', '<h2 style=\"text-align: justify;\"><span id=\"Pariwisata\" class=\"mw-headline\" style=\"font-size: 10pt;\">Pariwisata</span></h2>\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Objek wisata di Bitung, Sulawesi Utara:</span></p>\n<ul>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Air Hujan di Kel. Danowudu, Kecamatan Ranowulu, 9 Km dari Pusat Kota Bitung.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Air Perempuan dan Air Laki-Laki di Kel. Pinokalan, Kecamatan Ranowulu, 8 Km dari Pusat Kota Bitung</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Airprang di Kel. Makawidey, Kecamatan Aertembaga Bitung, 1 Jam Dengan Motor Boat dari Ruko Pateten, dengan 396 anak tangga</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Bakri Cono Marine di Kel. Mawali, Kecamatan Lembeh Utara, &plusmn; 30 menit dengan Motor Boat dari Ruko Pateten, berupa Cottage dan Diving.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Bastianus Diving Center Resort di Kel. Mawali, Lembeh Utara, &plusmn; 30 menit dengan Motor Boat Dari Ruko Pateten, berupa Cottage dan Diving.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Benteng Resort di Kel. Batuputih 2, Ranowulu, 24 Km dari Pusat Kota Bitung, Pantai Cottage, Diving dan Rekreasi</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Dermaga Ruko Pateten di belakang Ruko Pateten yang digunakan penumpang yang mengunjungi sekitar Selat Lembeh.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Divers Lodge Lembeh di Kel.Paudean, Lembeh Selatan, &plusmn; 1 Jam dengan Motor Boat dDari Ruko Pateten, berupa Cottage dan Diving</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Kelenteng Seng Bo Kiong di Jl. Kadoodan, berupa kelenteng Tao dengan ornamen khas kelenteng Cina yang indah.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Lembeh Marina Resort di Kel. Pintu Kota Bitung, &plusmn; 45 Menit dengan Motor Boat dari Ruko Pateten, berupa Cottage dan Diving.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Lokasi Perang Dunia II di Kecamatan Madidir Bitung, &plusmn; 1 Jam dengan Motor Boat dari Ruko Pateten, berupa Wisata Bawah Laut (Kapal Karamnya).</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Lokasi Perang Dunia II di Laut Kelurahan Mawali, Kecamatan Lembeh Utara Bitung, &plusmn; 30 menit dengan Motor Boat dari Ruko Pateten, berupa Wisata Bawah Laut (Kapal Karamnya)</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Millennium Bitung di Kel. Tanjung Merah, Kecamatan Matuari, 7 Km dari Pusat Kota Bitung, berupa Wisata Pantai dan Rekreasi Keluarga.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Monumen Jepang di Kel. Manembo-Nembo Bawah, Kecamatan Matuari, 7 Km dari Pusat Kota Bitung, berupa Tugu Bersejarah</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Monumen Jepang Winenet di Kel. Winenet, Aertembaga, 3 Km dari Pusat Kota Bitung, berupa Kuburan Tentara Jepang.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Monumen Trikora Mandala Sakti di Batu Lubang, tepian Pulau Lembeh, yang merupakan wisata sejarah.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Pantai Batuputih di Kel. Batu Putih 1, Kecamatan Ranowulu, 22 Km dari Pusat Kota Bitung, berupa Wisata Pantai dan Rekreasi Keluarga.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Pantai Langi di Kel. Waturirir Bitung, &plusmn; 1 Jam Dengan Motor Boat Dari Ruko Pateten, berupa Wisata Pantai dan Rekreasi Keluarga.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Pantai Tanjung Merah di Kel. Tanjung Merah, Kecamatan Matuari, 9 Km Dari Pusat Kota Bitung, berupa Wisata Pantai Dan Rekreasi Keluarga.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Pelabuhan Bitung di Pelabuhan alam terbesar Sulawesi Utara yang disinggahi kapal antar pulau.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Sea View Resort di Kel. Tanjung Merah, Kecamatan Matuari, 8 Km dari Pusat Kota Bitung, berupa Wisata Pantai dan Rekreasi Keluarga</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Sulawesi Diving Quest di Kel.Waturirir Bitung, &plusmn; 1 Jam dengan Motor Boat dari Ruko Pateten, berupa Cottage dan Diving</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Sumber Air Panas Alam Rumesung di Kel. Makawidey, Kecamatan Aertembaga Bitung, &plusmn; 2 Jam dengan Motor Boat dari Ruko Pateten, berupa Sumber Air Panas</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Taman Koleksi Satwa Naemundung di Kel. Aertembaga, Kecamatan Aertembaga, 5 Km dari Pusat Kota Bitung, Kebun Binatang</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Taman Laut Batukapal di Kel. Lirang Bitung, &plusmn; 2 Jam dengan Motor Boat dari Ruko Pateten, berupa Taman Laut.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Teluk Kasuari di Kel. Makawidey, Kecamatan Aertembaga Bitung, &plusmn; 1,5 Jam dengan Motor Boat dari Ruko Pateten, berupa Wisata Pantai dan Rekreasi Keluarga, Snorkling dan Diving.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Teluk Kungkungan di Kel. Tandurusa, Kecamatan Aertembaga, 7 Km dari Pusat Kota Bitung</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Teluk Walenekoko di Kel. Pasir Panjang, Kecamatan Lembeh Selatan Bitung, &plusmn; 1 Jam dengan Motor Boat dari Ruko Pateten, berupa Danau Pantai</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">The Pier To Ferry di Kel.Pateten, Kecamatan Aertembaga, 2,5 Km dari Pusat Kota Bitung, berupa Jembatan Penyeberangan antar Pulau Kecil.</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Two Fish Diving Center Mawali di Kel. Mawali, Kecamatan Lembeh Utara Bitung, &plusmn; 30 menit dengan Motor Boat dari Ruko Pateten, berupa Cottage dan Diving</span></li>\n<li style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Wisata Hutan Alam Bitung di Kel. Danowudu, Kecamatan Ranowulu, 10 Km dari Pusat Kota Bitung, berupa Hutan Wisata.</span></li>\n</ul>', '2017-03-13 16:32:34', '2017-03-13 16:32:34'),
(9, 'Perekonomian', '<h2 style=\"text-align: justify;\"><span id=\"Perekonomian\" class=\"mw-headline\" style=\"font-size: 10pt;\">Perekonomian</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Perekonomian Kota Bitung di dominasi oleh sektor pertanian dan perkebunan. Namun dalam perkembangannya sektor industri ternyata berkembang cukup pesat dan mencapai nilai tertinggi. Bertumbuhnya sektor industri sangat membantu perekonomian terutama dengan meluasnya kesempatan kerja. Bertambahnya perusahaan industri juga meningkatkan kesejahteraan penduduk terutama dengan terserapnya tenaga kerja sebanyak 21.755 orang, meningkat dari tahun sebelumnya yang daya serapnya mencapai 21.290 tenaga kerja. Begitu juga dari sisi kapital di mana peningkatan jumlah perusahaan ini diikuti pula dengan peningkatan nilai investasi menjadi 541,67 miliar rupiah atau meningkat 23,47 persen dibandingkan tahun sebelumnya.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Pada Tahun 2004 sektor angkutan dan komunikasi memberikan kontribusi paling besar dalam perekonomian di Kota Bitung. Industri di Kota bitung di dominasi oleh industri perikanan, galangan kapal dan industri minyak kelapa. Disamping itu juga ada industri transportasi laut, makanan, baja, industri menengah dan kecil.</span></p>', '2017-03-13 16:36:58', '2017-03-13 16:36:58'),
(10, 'Transportasi', '<h2 style=\"text-align: justify;\"><span id=\"Transportasi\" class=\"mw-headline\" style=\"font-size: 10pt;\">Transportasi</span></h2>\r\n<h3 style=\"text-align: justify;\"><span id=\"Darat\" class=\"mw-headline\" style=\"font-size: 10pt;\">Darat</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Sarana tranportasi darat yang ada di Kota Bitung adalah mikro sebagai angkutan kota dan bus sebagai angkutan antar kota, seperti bus trayek Bitung-Manado, Bitung-Tondano, Bitung-Gorontalo, Bitung-Tolitoli dan Bitung-Palu.</span></p>\r\n<h3 style=\"text-align: justify;\"><span id=\"Laut\" class=\"mw-headline\" style=\"font-size: 10pt;\">Laut</span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Sebagai kota pelabuhan, sarana transportasi di Kota Bitung cukup memadai. Sarana transportasi laut di Bitung menghubungkan daerah daratan dan Pulau Lembeh.Pelabuhan Bitung terdiri dari pelabuhan penumpang dan Pelabuhan Peti Kemas. Adanya PT.Pelindo IV membuat kota Bitung lebih maju pesat perekonomiannya karena direncanakan akan dibuka sebagai Gerbang Timur Internasional. Pelabuhan Bitung merupakan satu-satunya pelabuhan di Sulawesi Utara yang disinggahi dan dilabuhi oleh kapal-kapal penumpang antar kota-kota besar di Indonesia dan Internasional.</span></p>', '2017-03-13 16:38:26', '2017-03-13 16:39:05'),
(11, 'Walikota', '<h2>&nbsp;</h2>\n<h2><span id=\"Walikota_Bitung\" class=\"mw-headline\">Walikota Bitung</span></h2>\n<p>Kota Bitung dipimpin oleh seorang Walikota yang memiliki masa jabatan 5 tahun. Nama-nama Walikota yang pernah menjabat sebagai Kepala Pemerintahan di Kota Bitung sebagai berikut&nbsp;:</p>\n<table class=\"wikitable\" style=\"width: 483px;\" border=\"2\" cellspacing=\"0\" cellpadding=\"1\" align=\"centre\">\n<tbody>\n<tr>\n<th style=\"width: 43px;\">Nomor</th>\n<th style=\"width: 153px;\">Walikota</th>\n<th style=\"width: 157px;\">Wakil Walikota</th>\n<th style=\"width: 260px;\">Tahun</th>\n</tr>\n<tr>\n<td style=\"width: 43px;\">1</td>\n<td style=\"width: 153px;\">W. A. Worang</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">1975-1979</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">2</td>\n<td style=\"width: 153px;\">Drs. K. L. Senduk</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">1979-1986</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">3</td>\n<td style=\"width: 153px;\">Drs. S. H. Sarundayang</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">1985-1992</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">4</td>\n<td style=\"width: 153px;\">Drs. S. H. Sarundayang</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">1992-1997</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">5</td>\n<td style=\"width: 153px;\">Drs. S. H. Sarundayang</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">1997-2000</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">6</td>\n<td style=\"width: 153px;\">Drs. Is. L.A. Gobel</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">Pejabat Walikota April-Agustus 2000</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">7</td>\n<td style=\"width: 153px;\">Milton Kansil, SE</td>\n<td style=\"width: 157px;\">F.Supit</td>\n<td style=\"width: 260px;\">2000-2005</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">8</td>\n<td style=\"width: 153px;\">Drs. Max Lumintang</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">Pejabat Walikota Agustus 2005-Feb 2006</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">9</td>\n<td style=\"width: 153px;\">Hanny Sondakh</td>\n<td style=\"width: 157px;\">Robert Lahindo, SH, M.Si.</td>\n<td style=\"width: 260px;\">2006-2011</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">10</td>\n<td style=\"width: 153px;\">Hanny Sondakh</td>\n<td style=\"width: 157px;\">Max M J. Lomban, SE, M.Si.</td>\n<td style=\"width: 260px;\">2011-2015</td>\n<td style=\"width: 4px;\">&nbsp;</td>\n<td style=\"width: 130px;\" colspan=\"13\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">11</td>\n<td style=\"width: 153px;\">Drs. Jhon Palandung</td>\n<td style=\"width: 157px;\">&nbsp;</td>\n<td style=\"width: 260px;\">Pejabat Walikota Desember 2015-Maret 2016</td>\n</tr>\n<tr>\n<td style=\"width: 43px;\">12</td>\n<td style=\"width: 153px;\">Max M. J. Lomban,SE, M.Si</td>\n<td style=\"width: 157px;\">Ir. Maurits Mantiri</td>\n<td style=\"width: 260px;\">2016-Sekarang</td>\n</tr>\n</tbody>\n</table>', '2017-03-13 16:46:36', '2017-03-14 13:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `info_publik`
--

CREATE TABLE `info_publik` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_spd` int(10) UNSIGNED NOT NULL,
  `judul` text COLLATE utf8_unicode_ci NOT NULL,
  `ket` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info_publik`
--

INSERT INTO `info_publik` (`id`, `id_spd`, `judul`, `ket`, `created_at`, `updated_at`) VALUES
(4, 6, 'Persyaratan memperoleh KK bagi WNI', '<ol style=\"list-style-type: lower-alpha;\">\r\n<li>Surat Pengantar Lurah</li>\r\n<li>KK Lama yang sudah ada NIK atau SPMP/SPD bagi penduduk dari luar daerah</li>\r\n<li>Akta Perkawinan/Buku Nikah</li>\r\n<li>Akta Perceraian/Surat Putusan Cerai</li>\r\n<li>Akta Kelahiran</li>\r\n<li>Akta Kematian</li>\r\n<li>Bukti kepemilikan/penguasaan/penempatan atas tanah dan bangunan atau persil yang sah</li>\r\n<li>SKDLN/SKPLN (bagi WNI yang dating atau pindah)</li>\r\n</ol>', '2017-03-13 14:17:10', '2017-03-13 14:17:10'),
(5, 6, 'Persyaratan memperoleh KK bagi Orang Asing Tinggal Tetap', '', '2017-03-13 14:18:45', '2017-03-13 14:18:45'),
(6, 6, 'Persyaratan memperoleh KK bagi Orang Asing Tinggal Tetap', '<ol style=\"list-style-type: lower-alpha;\">\r\n<li>Surat Pengantar Lurah</li>\r\n<li>Akta Perkawinan/Buku Nikah</li>\r\n<li>Akta Perceraian/Surat Putusan cerai</li>\r\n<li>Akta Kelahiran</li>\r\n<li>Akta Kematian</li>\r\n<li>Bukti kepemilikan/penguasaan/penempatan atas tanah dan bangunan atau persil yang sah</li>\r\n<li>SKDLN/SKPLN (bagi WNI yang datang atau pindah)</li>\r\n<li>Paspor</li>\r\n<li>Kartu Izin Tinggal Tetap (KITAP) dari Kantor imigrasi</li>\r\n<li>Surat Tanda Lapor Diri (STDL) dari Kepolisian</li>\r\n<li>Surat Keterangan Tempat Tinggal (SKTT)</li>\r\n<li>SKPD OA (bagi orang asing yang pindah dan domisili)</li>\r\n</ol>', '2017-03-13 14:22:24', '2017-03-13 14:22:24'),
(7, 6, 'Syarat Pembuatan KTP', '', '2017-03-13 14:23:46', '2017-03-13 14:23:46'),
(8, 6, 'Syarat Pembuatan KTP', '<ol style=\"list-style-type: lower-alpha;\">\r\n<li>Surat Pengantar Lurah</li>\r\n<li>Kartu Keluarga</li>\r\n<li>KTP yang telah habis masa berlakunya (untuk perpanjang)</li>\r\n<li>KTP yang rusak (untuk penggantian KTP yang rusak)</li>\r\n<li>Surat Keterangan kehilangan dari kepolisian (untuk penggantian KTP yang hilang)</li>\r\n<li>Akta Kelahiran</li>\r\n<li>Akta nikah/Akta Kawin bagi penduduk yang belum berumur 17 tahun dan sudah/pernah kawin</li>\r\n<li>Dokumen imigrasi (paspor,izin tinggal tetap) bagi orang asing tinggal tetap</li>\r\n</ol>', '2017-03-13 14:32:57', '2017-03-13 14:32:57'),
(9, 1, 'contoh', '<p>dadad<img src=\"http://tarsiustech.com/bitung/public/source/citymart1.jpg?1489557379117\" alt=\"citymart1\" width=\"640\" height=\"480\" /></p>', '2017-03-14 15:58:16', '2017-03-14 15:58:16'),
(10, 1, 'wa', '<p><img src=\"/bitung/public/source/agro.jpg?1489557730666\" alt=\"agro\" /></p>', '2017-03-14 16:03:22', '2017-03-14 16:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `katagori`
--

CREATE TABLE `katagori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `katagori`
--

INSERT INTO `katagori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Masjid', NULL, NULL),
(2, 'gereja', NULL, NULL),
(3, 'Kuil', NULL, NULL),
(4, 'Candi', NULL, NULL),
(5, 'Pendidikan', NULL, NULL),
(6, 'Perbelanjaan', NULL, NULL),
(7, 'Pariwisata', NULL, NULL),
(8, 'Perusahaan', NULL, NULL),
(9, 'Tampa Makang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Aertembaga', NULL, NULL),
(2, 'Maesa', NULL, NULL),
(3, 'Madidir', NULL, NULL),
(4, 'Girian', NULL, NULL),
(5, 'Matuari', NULL, NULL),
(6, 'Ranowulu', NULL, NULL),
(7, 'Lembe Utara', NULL, NULL),
(8, 'lembe Selatan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `id` int(10) UNSIGNED NOT NULL,
  `jumlah` text COLLATE utf8_unicode_ci NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_24_005902_create_table_kat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `panic`
--

CREATE TABLE `panic` (
  `id` int(11) NOT NULL,
  `nama` varchar(220) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panic`
--

INSERT INTO `panic` (`id`, `nama`, `status`, `updated_at`) VALUES
(1, 'Kepolisian', 1, '2017-03-22 06:26:13'),
(2, 'Kebakaran', 1, '2017-03-20 06:01:36'),
(3, 'Medis', 0, '2017-03-20 12:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `id_spd` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `persen` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `war` varchar(210) COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` text COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `acc` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `text`, `id_users`, `id_spd`, `tanggal`, `filex`, `persen`, `war`, `lat`, `lang`, `alamat`, `acc`, `created_at`, `updated_at`) VALUES
(42, 'Kepanasan ', 12, 9, '2017-03-20 13:42:18', '2017-03-20-05-42-18.jpg', '0', '0', '1.4546342', '125.1936746', 'Unnamed Road, Pateten Dua, Aertembaga', '-', '2017-03-19 22:42:18', '2017-03-19 22:42:18'),
(44, 'Anak yg hilang', 13, 2, '2017-03-20 13:50:55', '2017-03-20-05-50-55.jpg', '100', '0', '1.4522466', '125.1934944', 'Jl. Raya Pateten, Pateten Tiga, Maesa', 'olland', '2017-03-19 22:50:55', '2017-03-19 23:10:07'),
(46, 'Tower rubuh', 12, 2, '2017-03-20 15:17:22', '2017-03-20-07-17-22.jpg', '50', '0', '1.4356506', '125.1174228', 'Jl. Stadion 2 Saudara, Girian Weru Dua, Girian', 'olland', '2017-03-20 00:17:22', '2017-03-20 00:36:55'),
(50, 'Tax amnesti', 12, 1, '2017-03-20 20:34:18', '2017-03-20-12-34-18.jpg', '0', '0', '1.4455818', '125.1838021', 'Jl. Martadinata, Bitung Tengah, Maesa', '-', '2017-03-20 05:34:18', '2017-03-20 05:34:18'),
(51, 'Kebakaran ', 12, 2, '2017-03-20 20:52:52', '2017-03-20-12-52-52.jpg', '100', '0', '1.4455196', '125.1838021', 'Jl. R. E. Martadinata, Bitung Tengah, Maesa', 'olland', '2017-03-20 05:52:52', '2017-03-20 22:43:50'),
(53, 'Portal bitung', 15, 2, '2017-03-28 20:41:43', '2017-03-28-12-41-43.jpg', '0', '0', '1.4587899', '124.8258753', 'Jl. Kampus Barat, Bahu, Malalayang', '-', '2017-03-28 05:41:43', '2017-03-28 05:41:43'),
(54, 'Terbalik', 15, 2, '2017-03-29 19:21:55', '2017-03-29-11-21-55.jpg', '0', '0', '1.4356248', '125.1171219', 'Jl. Stadion 2 Saudara, Girian Weru Dua, Girian', '-', '2017-03-29 04:21:55', '2017-03-29 04:21:55'),
(55, 'CARI channel', 20, 2, '2017-04-01 22:48:41', '2017-04-01-02-48-41.jpg', '0', '0', '1.4481579', '125.1841027', 'Jl. R. E. Martadinata, Bitung Tengah, Maesa', '-', '2017-04-01 07:48:41', '2017-04-01 07:48:41'),
(56, 'Pisang ini berani tampil sendirian tanpa di temani oleh dabu2', 15, 1, '2017-05-22 09:35:25', '2017-05-22-01-35-25.jpg', '0', '0', '1.4453664', '125.1836733', 'Jl. Sam Ratulangi, Bitung Tengah, Maesa', '-', '2017-05-21 18:35:25', '2017-05-21 18:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `harga` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pungli`
--

CREATE TABLE `pungli` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `kasus` text COLLATE utf8_unicode_ci NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spd`
--

CREATE TABLE `spd` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `singkatan` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `fungsi` text COLLATE utf8_unicode_ci NOT NULL,
  `struktur` text COLLATE utf8_unicode_ci NOT NULL,
  `rencana` text COLLATE utf8_unicode_ci NOT NULL,
  `presentase` text COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spd`
--

INSERT INTO `spd` (`id`, `nama`, `singkatan`, `fungsi`, `struktur`, `rencana`, `presentase`, `alamat`, `filex`, `lat`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Warga', 'Warga', '-', '', '-', '-', '-', '-', '', '', NULL, NULL),
(2, 'Dinas Komunikasi Dan Informatika', 'DISKOMINFO', '-', '', '-', '-', '-', '-', '', '', NULL, '2017-03-22 18:53:46'),
(3, 'Dinas Lingkungan Hidup', 'DLH', '-', '-', '-', '-', '-', '-', '', '', NULL, '2017-03-22 18:48:12'),
(6, 'Dinas Kependudukan dan Pencatatan Sipil', 'DISKEPENCAPIL', '-', '', '', '-', '1.447824,125.1752809', 'capil.jpg', '1.447824', '125.1752809', '2017-03-12 16:17:03', '2017-03-12 16:17:03'),
(7, 'Dinas Pariwisata', 'DISPAR', '-', '', '', '-', '1.4454192,125.1814342,17z', '-', '', '', '2017-03-13 13:17:14', '2017-03-13 13:17:14'),
(8, 'Dinas Tenaga Kerja', 'DISNAKER', '-', '', '-', '-', '1.4353189,125.1172927', '-', '', '', '2017-03-14 09:40:58', '2017-03-14 09:40:58'),
(9, 'Dinas Penanaman Modal Dan Pelayanan Terpadu Satu Pintu', 'DPMPTSP', '-', '', '-', '-', '1.4453495,125.1818526', '-', '', '', '2017-03-14 09:45:56', '2017-03-14 09:45:56'),
(11, 'Sekretariat DPRD', 'SETONE', '', '', '', '', '', '', '', '', NULL, NULL),
(12, 'Inspektorat', 'INSPEKTORAT', '', '', '', '', '', '', '', '', NULL, NULL),
(13, 'Dinas Kepemudaan dan Olahraga', 'DISPORA', '', '', '', '', '', '', '', '', NULL, NULL),
(14, 'Dinas Ketahanan Pangan dan Pertanian', 'DISPANGTAN', '', '', '', '', '', '', '', '', NULL, NULL),
(15, 'Dinas Sosial', 'DINSOS', '', '', '', '', '', '', '', '', NULL, NULL),
(16, 'Satuan Polisi Pamong Praja', 'SATPOL PP', '', '', '', '', '', '', '', '', NULL, NULL),
(17, 'Dinas Perdagangan', 'DISPERINDAG', '', '', '', '', '', '', '', '', NULL, NULL),
(18, 'Dinas Pendidikan', 'DISPENDIK', '', '', '', '', '', '', '', '', NULL, NULL),
(19, 'Dinas Perikanan', 'DINAS PERIKANAN', '', '', '', '', '', '', '', '', NULL, NULL),
(20, 'Dinas Kesehatan', 'DINKES', '', '', '', '', '', '', '', '', NULL, NULL),
(21, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak', 'DP3A', '', '', '', '', '', '', '', '', NULL, NULL),
(22, 'Dinas Pengendalian Penduduk dan Keluarga  Berencana', 'DPPKB', '', '', '', '', '', '', '', '', NULL, NULL),
(23, 'Dinas Perhubungan', 'DISHUB', '', '', '', '', '', '', '', '', NULL, NULL),
(24, 'Dinas Pekerjaan Umum dan Penataan Ruang', 'DPUTR', '', '', '', '', '', '', '', '', NULL, NULL),
(25, 'Dinas Perumahan Rakyat dan Kawasan Permukinman', 'DISPERKIM', '', '', '', '', '', '', '', '', NULL, NULL),
(26, 'Dinas Koperasi Usaha Kecil Dan Menengah', 'DINAS KOPERASI & UKM', '', '', '', '', '', '', '', '', NULL, NULL),
(27, 'Dinas Perpustakaan', 'DINAS PERPUSTAKAAN', '', '', '', '', '', '', '', '', NULL, NULL),
(28, 'Badan Perencanaan Daerah', 'BAPEDA', '', '', '', '', '', '', '', '', NULL, NULL),
(29, 'Badan Pengelola Keuangan dan Aset Daerah', 'BPKAD', '', '', '', '', '', '', '', '', NULL, NULL),
(30, 'Badan Pengelola Pajak dan Retribusi Daerah', 'BPPRD', '', '', '', '', '', '', '', '', NULL, NULL),
(31, 'Badan Kepegawaian, Pendidikan dan Pelatihan Daerah', 'BKPPD', '', '', '', '', '', '', '', '', NULL, NULL),
(32, 'Badan Penanggulangan Bencana Daerah', 'BPBD', '', '', '', '', '', '', '', '', NULL, NULL),
(33, 'Badan Kesatuan Bangsa Dan Politik', 'BKBP', '', '', '', '', '', '', '', '', NULL, NULL),
(34, 'Kecamatan Ranowulu', 'Kecamatan Ranowulu', '', '', '', '', '', '', '', '', NULL, NULL),
(35, 'Kecamatan Matuari', 'Kecamatan Matuari', '', '', '', '', '', '', '', '', NULL, NULL),
(36, 'Kecamatan Girian', 'Kecamatan Girian', '', '', '', '', '', '', '', '', NULL, NULL),
(37, 'Kecamatan Madidir', 'Kecamatan Madidir', '', '', '', '', '', '', '', '', NULL, NULL),
(38, 'Kecamatan Maesa', 'Kecamatan Maesa', '', '', '', '', '', '', '', '', NULL, NULL),
(39, 'Kecamatan Aertembaga', 'Kecamatan Aertembaga', '', '', '', '', '', '', '', '', NULL, NULL),
(40, 'Kecamatan Lembeh Utara', 'Kecamatan Lembeh Utara', '', '', '', '', '', '', '', '', NULL, NULL),
(41, 'Kecamatan Lembeh Selatan', 'Kecamatan Lembeh Selatan', '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `filex` text COLLATE utf8_unicode_ci NOT NULL,
  `bg_font` text COLLATE utf8_unicode_ci NOT NULL,
  `bg` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `text`, `id_users`, `tanggal`, `filex`, `bg_font`, `bg`, `created_at`, `updated_at`) VALUES
(40, 'Manganto', 12, '2017-03-20 03:26:49', '-', '17', '-', '2017-03-19 12:26:49', '2017-03-19 12:26:49'),
(42, 'coba test', 12, '2017-03-20 03:29:07', '-', '17', '-', '2017-03-19 12:29:07', '2017-03-19 12:29:07'),
(43, 'test', 12, '2017-03-20 03:29:43', '-', '17', '-', '2017-03-19 12:29:43', '2017-03-19 12:29:43'),
(46, 'Debug app', 12, '2017-03-20 10:18:30', '-', '17', '-', '2017-03-19 19:18:30', '2017-03-19 19:18:30'),
(47, 'Tessstt fix', 12, '2017-03-20 13:29:29', '-', '17', '-', '2017-03-19 22:29:29', '2017-03-19 22:29:29'),
(49, 'Test', 13, '2017-03-20 13:48:13', '-', '17', '-', '2017-03-19 22:48:13', '2017-03-19 22:48:13'),
(50, 'Lagi di kominfo ', 12, '2017-03-20 15:06:56', '-', '17', '-', '2017-03-20 00:06:56', '2017-03-20 00:06:56'),
(53, 'Lagi bwrsama sekot', 12, '2017-03-20 20:43:10', '-', '17', '-', '2017-03-20 05:43:10', '2017-03-20 05:43:10'),
(55, 'Lagi bersama tim', 23, '2017-03-22 20:15:57', '-', '17', '-', '2017-03-22 05:15:57', '2017-03-22 05:15:57'),
(56, 'Lagi bersama pak kadis kominfo', 25, '2017-03-22 20:45:25', '-', '17', '-', '2017-03-22 05:45:25', '2017-03-22 05:45:25'),
(57, 'Test', 23, '2017-03-22 21:05:26', '-', '17', '-', '2017-03-22 06:05:26', '2017-03-22 06:05:26'),
(58, 'Test', 23, '2017-03-22 21:06:28', '-', '17', '-', '2017-03-22 06:06:28', '2017-03-22 06:06:28'),
(59, 'zZzZzZz', 25, '2017-03-23 14:43:30', '-', '17', '-', '2017-03-22 23:43:30', '2017-03-22 23:43:30'),
(60, 'tidor ', 25, '2017-03-24 14:21:32', '-', '17', '-', '2017-03-23 23:21:32', '2017-03-23 23:21:32'),
(61, 'wahhha', 25, '2017-03-24 14:21:41', '-', '17', '-', '2017-03-23 23:21:41', '2017-03-23 23:21:41'),
(62, 'Dindaku', 21, '2017-03-29 08:50:18', '-', '17', '-', '2017-03-28 17:50:18', '2017-03-28 17:50:18'),
(63, 'test', 21, '2017-03-29 09:50:37', '-', '17', '#6bc407', '2017-03-28 18:50:37', '2017-03-28 18:50:37'),
(64, 'hallo bitung', 21, '2017-03-29 09:51:23', '-', '17', '#22f5f5', '2017-03-28 18:51:23', '2017-03-28 18:51:23'),
(65, 'Nsndnd.xnxksk', 26, '2017-03-29 14:57:33', '-', '17', '#846ad4', '2017-03-28 23:57:33', '2017-03-28 23:57:33'),
(66, 'Lagi menunggu', 26, '2017-03-29 15:24:59', '-', '17', '#22f5f5', '2017-03-29 00:24:59', '2017-03-29 00:24:59'),
(67, '\nWe are Tarsius Tech !', 27, '2017-03-29 16:21:43', '-', '17', '#846ad4', '2017-03-29 01:21:43', '2017-03-29 01:21:43'),
(68, 'Manjo main mobile legend', 20, '2017-03-29 16:23:08', '-', '17', '#de1745', '2017-03-29 01:23:08', '2017-03-29 01:23:08'),
(69, 'Laparx', 21, '2017-03-29 18:03:24', '-', '17', '#846ad4', '2017-03-29 03:03:24', '2017-03-29 03:03:24'),
(70, 'Samaaaa lapaaarrr', 20, '2017-03-29 18:28:57', '-', '17', '#846ad4', '2017-03-29 03:28:57', '2017-03-29 03:28:57'),
(71, 'Hallo apa kabar..', 28, '2017-03-29 18:46:35', '-', '17', '#de1745', '2017-03-29 03:46:35', '2017-03-29 03:46:35'),
(72, 'Keren....', 29, '2017-03-29 18:50:56', '-', '17', '#846ad4', '2017-03-29 03:50:56', '2017-03-29 03:50:56'),
(73, 'Halo m2', 15, '2017-03-29 19:20:30', '-', '17', '#6bc407', '2017-03-29 04:20:30', '2017-03-29 04:20:30'),
(74, 'Selamat ya...buat kominfo', 29, '2017-03-29 19:23:21', '-', '17', '#de1745', '2017-03-29 04:23:21', '2017-03-29 04:23:21'),
(75, 'Pak yorri surat ket dri kominfo dnk?  Qt p gaji di dinas drg potong ksiang :(', 20, '2017-03-29 19:57:02', '-', '17', '#f718db', '2017-03-29 04:57:02', '2017-03-29 04:57:02'),
(76, 'M2-Smart Mantap', 20, '2017-03-29 19:59:55', '-', '17', '#22f5f5', '2017-03-29 04:59:55', '2017-03-29 04:59:55'),
(77, 'Selamat pagi bitung. . .', 27, '2017-03-30 07:07:36', '-', '17', '#22f5f5', '2017-03-29 16:07:36', '2017-03-29 16:07:36'),
(78, 'Selamat Pagi M2', 20, '2017-03-30 09:28:01', '-', '17', '#f718db', '2017-03-29 18:28:01', '2017-03-29 18:28:01'),
(79, 'You Guys.. Numero Uno..', 33, '2017-03-30 21:35:12', '-', '17', '#846ad4', '2017-03-30 06:35:12', '2017-03-30 06:35:12'),
(80, 'Selamat Ulang Tahun atas kepemimpinan pemerintahan walikota Kota Bitung, Bpk.Maximilian Jonas Lomban,SE,MSi dan Wakil Walikota Bpk  Ir.Maurits Mantiri  yg ke 1 tahun. Semoga ditahun yg baru ini lebih baik dan lebih bijaksana, tegas dalam memimpin Kota Bitung tercinta ini,serta lebih memperhatikan kesejahteraan rakyat dengan adil, tulus, dan ikhlas . Dan semoga kota bitung ditahun ini menjadi kota yg tidak kalah dalam persaingan teknologi dalam hal ini adalah bidang IT, Saya mewakili komunitas \"Tarsius Tech\" yg berkecimpung dalam bidang IT untuk Kota Bitung kami Mempersembahkan Aplikasi \"M2-Smart\" sebagai hadiah di ulangtahun kepemimpinan ini secara ikhlas tanpa pamrih dgn Tujuan  Membantu pembangunan kota bitung dalam pemanfaatanTeknologi IT yg memudahkan untuk melayani masyarakat kota bitung. semoga karya ini dapat bermanfaat bagi Kota Bitung tercinta ini. \nSalam bitung hebat !\n\n#TarsiusTech', 27, '2017-03-31 00:23:20', '-', '17', '#22f5f5', '2017-03-30 09:23:20', '2017-03-30 09:23:20'),
(81, 'Baru..', 31, '2017-03-31 16:31:30', '-', '17', '#f718db', '2017-03-31 01:31:30', '2017-03-31 01:31:30'),
(82, 'Ngopi', 21, '2017-03-31 21:27:07', '-', '17', '#846ad4', '2017-03-31 06:27:07', '2017-03-31 06:27:07'),
(83, 'Selamat Ulang Tahun buat Rolad Pesik, programer berbakat di Tarsius Tech Bitung...panjang umur sehat selalu dan diberkati Tuhan Yesus..\nTeruslah berkaya....! Tunjukkan bahwa programer anak-2 Bitung tak kalah dgn daerah terkenal lainnya.', 29, '2017-04-01 04:57:53', '-', '17', '#22f5f5', '2017-03-31 13:57:53', '2017-03-31 13:57:53'),
(84, 'Next job !', 27, '2017-04-02 06:56:15', '-', '17', '#6bc407', '2017-04-01 15:56:15', '2017-04-01 15:56:15'),
(85, 'Nda bisa kirim foto ????', 15, '2017-04-02 09:34:16', '-', '17', '#6bc407', '2017-04-01 18:34:16', '2017-04-01 18:34:16'),
(86, 'Selamat pagi ', 20, '2017-04-03 09:39:31', '-', '17', '#6bc407', '2017-04-02 18:39:31', '2017-04-02 18:39:31'),
(87, 'Absen dlu :D', 20, '2017-04-05 17:30:43', '-', '17', '#f7a613', '2017-04-05 02:30:43', '2017-04-05 02:30:43'),
(88, 'Sepi', 31, '2017-04-08 20:40:00', '-', '17', '#6bc407', '2017-04-08 05:40:00', '2017-04-08 05:40:00'),
(89, 'Blm bisa upload foto', 15, '2017-04-19 17:09:51', '-', '17', '#f7a613', '2017-04-19 02:09:51', '2017-04-19 02:09:51'),
(90, 'Ngopi yuuk', 27, '2017-04-22 11:33:57', '-', '17', '#6bc407', '2017-04-21 20:33:57', '2017-04-21 20:33:57'),
(91, 'Slmt sore', 23, '2017-04-23 15:08:17', '-', '17', '#de1745', '2017-04-23 00:08:17', '2017-04-23 00:08:17'),
(92, 'Upacara Otonomi Daerah Ke 21 !', 27, '2017-04-25 08:29:51', '-', '17', '#22f5f5', '2017-04-24 17:29:51', '2017-04-24 17:29:51'),
(93, 'Wellcome Super Shuttel RoRo 12', 15, '2017-05-02 18:00:02', '-', '17', '#22f5f5', '2017-05-02 03:00:02', '2017-05-02 03:00:02'),
(94, 'RIP Bpk HANNY SONDAKH,   Mantan Walikota Bitung', 23, '2017-05-10 17:44:32', '-', '17', '#f7a613', '2017-05-10 02:44:32', '2017-05-10 02:44:32'),
(95, 'Nah', 21, '2017-05-13 16:47:37', '-', '17', '#22f5f5', '2017-05-13 01:47:37', '2017-05-13 01:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` text COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `id_katagori` int(10) UNSIGNED NOT NULL,
  `id_kecamatan` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `nama`, `keterangan`, `file`, `lat`, `lang`, `alamat`, `id_katagori`, `id_kecamatan`, `id_users`, `created_at`, `updated_at`) VALUES
(7, 'Gereja dekat kominfo', 'Tempat ibadah ', '2017-03-20-07-32-40.jpg', '1.4356506', '125.1174228', 'Jl. Stadion 2 Saudara, Girian Weru Dua, Girian, Kota Bitung, Sulawesi Utara, Indonesia', 2, 5, 12, '2017-03-20 00:32:40', '2017-03-20 00:32:40'),
(8, 'Sentrum', 'Tempat ibadah ', '2017-03-20-12-57-34.jpg', '1.4455196', '125.1838021', 'Jl. R. E. Martadinata, Bitung Tengah, Maesa, Kota Bitung, Sulawesi Utara, Indonesia', 2, 2, 12, '2017-03-20 05:57:34', '2017-03-20 05:57:34'),
(9, 'nznsnab', 'Nsbsbab', '2017-03-25-01-04-41.jpg', '', '', 'nzbzb', 2, 2, 25, '2017-03-25 06:04:41', '2017-03-25 06:04:41'),
(10, 'Citymart', 'Sbahhah', '2017-03-25-01-06-23.jpg', '', '', 'Dekat terminal pompa', 6, 2, 25, '2017-03-25 06:06:23', '2017-03-25 06:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_spd` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `id_device` text COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `foto_pic` text COLLATE utf8_unicode_ci NOT NULL,
  `foto_cover` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `id_spd`, `email`, `no_hp`, `id_device`, `alamat`, `foto_pic`, `foto_cover`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Arun', 1, 'arun@gmail.com', '0852', 'elx4o_wj_hk:APA91bFj1C4xNql3mjIdCjsEVLzIaXy21MRX-v3dxYPZeT-fbRhiFx2v49UdfDGDRQtRFFgFukCh9tmWaqB5ne2EMMtZ6fXEOP3mPgkT63-qEGPRlABIGfE85Yq4ny4WgcvZmuSH-MVx', 'alamat', '2017-03-20-05-40-25.jpg', 'img/n.jpg', '$2y$10$BS9SG0c8JvL6yKWsZYOVwezkWYSV5VUCT5gttCmoRgruvr2D3MFRm', NULL, '2017-03-19 11:47:20', '2017-03-19 22:40:25'),
(13, 'Randy', 1, 'flashfish92@gmail.com', '082189071417', 'fQcaVtn15d4:APA91bE-BRMoa7NerGLWNg5m4yOAXlwe7aBYF1gUbGK9wjJalaumoTOe4yZr7isEFpwFX2zFTndje06kQgVefm-QpBV6d6fXK9JO9fXdv9PsbJGAtxLTaKAxryDrfUwDLcUWyn8PKpWz', 'alamat', '2017-03-20-05-47-41.jpg', 'img/n.jpg', '$2y$10$4gEDGeu.ikWiPTRxWLEd8O03XSb7cq4P1HWCd1ZxUnGtJID20W1IK', NULL, '2017-03-19 22:36:11', '2017-03-19 22:47:41'),
(14, 'Billy', 1, 'billypusung87@gmail.com', '089659566370', 'cLKTHZ2LXtA:APA91bGLclf1-qG7EEclabZ6T26NI21RQxgdB9Qa6LK0O20ZLIbvRQEheVpy1wKKpgRBP7YN50sxx74GuWYuRnnuTzZ6KIBnrD3yXBGHc48OiHI8WQ3Qe0V37DbCxS2fEGgYSiN1kPc_', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$0LIvXyIWmImewz3o3FwA6.eMFornaqoKMOjVnWFqBXn/jce4Qnad.', NULL, '2017-03-20 00:14:56', '2017-03-20 00:14:56'),
(15, 'Yorry', 2, 'yorrykansil@ymail.com', '08114317021', '-', 'alamat', '2017-03-29-11-23-05.jpg', 'img/n.jpg', '$2y$10$OLqWOHu3feQTSwRBlPfRi.X4yuAFWRsHGhH./QZiJU2JmQbTrUU/C', NULL, '2017-03-20 01:00:55', '2017-03-29 04:23:05'),
(16, 'Semuel Muhaling', 2, 'muhaling@yahoo.com', '085240504484', '-', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$mqai5zslwejPpK8a/sPHluaKluSBsXIqRkbJ7O/lz5QeZ/ho.qK3G', NULL, '2017-03-20 01:02:03', '2017-03-20 01:02:03'),
(20, 'olland', 1, 'olland_christian@yahoo.com', '089696220567', 'egSixuT70qA:APA91bEZU6ntSXJsnusG4XYZ6ee6KDolHM_wPw_1gNubeeulBSDK7PL4TqmjPNhBZLTrfISev--nKRaK5rPzRWmuDEwqSRvcdx6GxA0jmTCkTMV-TvL0uIkWLvTM8Vo99H6xPnMwenUz', 'alamat', '2017-03-29-08-21-09.jpg', 'img/n.jpg', '$2y$10$i9OMHURb/FxpViJWELxakO96tzaPaATiRdPZrskZMb6z3bQkoBKy6', NULL, '2017-03-20 23:09:33', '2017-03-29 01:21:09'),
(21, 'Winda', 1, 'winda@gmail.com', '02343965747', 'cVGRQw6n8T8:APA91bE0F3JDPQsSUZDYEg_RF2vdfGBJg_0iSPGQLPBjiiAxqRObIJVy-kLSwYUc8wXaI4TDUKK6vzPiiinDuwDGQgybCLxu3I1hrvSoIVsZi6t2Tkq3Eb0qKvmPFC0JLN2xKyFGLpGB', 'alamat', '2017-03-29-03-11-24.jpg', 'img/n.jpg', '$2y$10$WnpBepHqTvDIYXcdhc/qmetVFYjYZBLePhCwVYDCeOr8nIVZeTHQi', NULL, '2017-03-21 19:58:42', '2017-03-28 20:11:24'),
(23, 'Robert Wongkar', 2, 'robert.raymon.wongkar@pnsmail.go.id', '08114337169', '-', 'alamat', '2017-03-22-01-04-00.jpg', 'img/n.jpg', '$2y$10$Nbty.lh35g7MmBOzc.Lh4eOidE1D7f7I9apeyF1yl3./J2Anj4h9.', NULL, '2017-03-22 05:07:36', '2017-03-22 06:04:00'),
(25, 'Roland', 1, 'bodotpatrisia@gmail.com', '08972000039', 'eYzGM90udf4:APA91bEYMVenOoVUQYTtSC05HltNlHMNYkokLTuxkB3mkUCRP-5Uu1uDeoZGqrm8EPFdckMR36kxV_MYUagoQb99K1Kqb2I81Puh4EeAqBw2o5vIssxNsX2WGR0O0fa3qOUqKCpfda8K', 'alamat', '2017-03-23-06-43-45.jpg', 'img/n.jpg', '$2y$10$XukgpPt5SmoNqc49zwOdm.emBH73VRdryoOU/I0Hw4N0euZ5ugekq', NULL, '2017-03-22 05:11:02', '2017-03-22 23:43:45'),
(26, 'Nato', 1, 'nato@gmail.com', '085298941994', 'fgftLz6zzHA:APA91bHw0OA_8e44u4-zggw0C3sFdJ08XJwNaN9SVjgz9dN2XRKRoO6Iupk6SP1nzKiA2S-DZKRgUIsC0FXKPYNvbj1Si43JV7V6wV41Jo3hQ5CEfSFxAeHqpusK7ukL-r-eVMZZXCZt', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$nhkE/3ZOZ.s/20.2zLo1YOHPFT4Wn3D5rROV1CLcOaUiKAb1.74Du', NULL, '2017-03-28 23:11:18', '2017-03-28 23:11:18'),
(27, 'chaerul', 1, 'tuanmudaart@gmail.com', '08514631111', 'cRHI0ecogN0:APA91bG26SNb-Oe-667RLby8sdyKdw-iCCr8-usvkVHlrnpLXEH-TdtcUa1PspHn_jrtqP07-D8WuEWifhJYZ3_iLSYs81bFJsudlbVXImngcUurLWyDzVDS8aBeDKY-TYrWZuFrcCLA', 'alamat', '2017-03-29-08-19-39.jpg', 'img/n.jpg', '$2y$10$sdLN.Z4H7DEcPQJLb82a6uxbgDEt/OBGHB9kHHs/zIj2C8fOazIDy', NULL, '2017-03-29 01:18:12', '2017-03-29 01:19:39'),
(28, 'Santy', 1, 'susanty.pandene@gmail.com', '081321314304', 'cIMfq24fgz0:APA91bHx38TtY1hJvwA3PwoLS9pYVMqWwqZi6JHO6NjB-luKKcxZnp4JuNmb_SIRlv_yPr9vfahFDP8UFGg_CQ0leojFg_BJTarzs1wHCTFcVKUgdMINYvwuYjTfO8nc9NMEArN-3VBx', 'alamat', '2017-03-29-11-38-06.jpg', 'img/n.jpg', '$2y$10$um1yVv/TGOshGy3kpm9TSeaPE55Bh3NkcnmIK6CK.C5XQmTRGif2G', NULL, '2017-03-29 03:44:23', '2017-03-29 04:38:06'),
(29, 'Adolf. Sumual', 1, 'sumual.adolof@gmail.com', '0811434378', 'ffuHLbQ-F64:APA91bE5Qlg2v376H474FST-V1S3qJE42vUsVLKRHw2Y5wd9B09JHDc9jYZz80GO9XKhmphm6de0TKy2csDlFV_MvteuacG7SRMw_MDuxYBSECtDo3XZkHp9Dc77F1rE6pylzCmcKQO6', 'alamat', '2017-03-29-11-18-59.jpg', 'img/n.jpg', '$2y$10$OSCUYjSJiG2OeOsaOuhD6.5pvpRwd9FjgzbufKb9jnGXsKTmLsrOu', NULL, '2017-03-29 03:44:41', '2017-03-29 04:18:59'),
(30, 'M2', 1, 'M2@gmail.com', '082343965747', 'fjY6zwUt0Oo:APA91bGsANdhP8MAT1llXjgrM3x2-5MrolFcE8j_UlmqDTCtbKgaqrMdM0arLGZjIth8AfUZZXQn1SDrGMMFv0TNoVOKzPCNqJ-O9TKGMg1srotnr1-WhqcSuyJBox_Wj1hcWVgmB20r', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$d9iNeVt.NhFByuALNgaVqO89GpHLNpoFmhob4Dg0kclHD0irTH.HO', NULL, '2017-03-29 04:00:32', '2017-03-29 04:00:32'),
(31, 'Alfian Chrisye', 1, 'alfianfrantinezra@gmail.com', '085757665555', 'fN1mJ0RlBpY:APA91bFITVloITBXUzoje6vR_L-Kxym3mupyLqKivmzpsFpYLSApV6RXbBcyNFGLlFt5TToCnBqBgmd0rX5AqLAU5t5b5AMhUsEo0-8pJmYBS2PtbLVvkdj_yT36osxLWLid1IecLkfN', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$rFB/c3iiqM2omyCEgXjbG.te05X8oD4PakHXlECRUrA6fQCYOvFZC', NULL, '2017-03-29 08:31:10', '2017-03-29 08:31:10'),
(32, 'Teddy ', 1, 'teddy_ganbate@yahoo.com', '089698518856', 'fl2SOvNepBY:APA91bFKgo8umLBQv0TE5nLnIFz9Mk7FOLHV2xeXprgeTnhtXyxpjkFRqwwGYTH_b1t_hGhsvTtBvzWeEJsUKAIUhv1pTvlY8cRLcufNtOgLxuwCQK0DYFYfyb0AKv3tWvo_b8G8pytc', 'alamat', '2017-03-30-09-08-23.jpg', 'img/n.jpg', '$2y$10$INGtWDFZ6ih7jOGn9y8Peuw1pE3u7tcit/nH3nvLGwF.gYz62wfuy', NULL, '2017-03-30 02:05:29', '2017-03-30 02:08:23'),
(33, 'Yustus N. Janis', 1, 'jmuntuan@gmail.com', '085242205728', 'dlINEfRG-ek:APA91bEalDwbPHo9sNACdGP-fliTMADPuIBsRfTcMKbwyek0LA3meFQc-8ZmEdOgMb2s4cJXAD47uE11z5ybo7hMbLuWErO0LZy4lF7dqIuaz0V4C5ke0GouLZDG4uPVUre70xaH6ZLJ', 'alamat', '2017-03-30-01-38-10.jpg', 'img/n.jpg', '$2y$10$KW/LxUt6FsVVimlBWSTieuLRQfdjR5kIRwWP4Bo59CFDGY6ouGQde', NULL, '2017-03-30 06:07:31', '2017-03-30 06:38:10'),
(35, 'Bitung', 1, 'manado.mantos23@gmail.com', '08114311105', 'd7qZ9m-sNqo:APA91bGN9HF1fK0oMJIqdaeHs7w-9iR6yx6XPw8YAmeSthaGlIDRVxmNjTce18vcT2_mwS1zen81zzWfKF6QS-0A_l0bDedCxFNTcqEMY2sPdBkMhNrOW1qZrJryjRCwxPJqKCSuzbAX', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$a5Jedtr4zpSXwbOnQ9BwQu6JCk04WxHidk2nIv1LHcLI9u9RWY3x2', NULL, '2017-04-07 00:35:24', '2017-04-07 00:35:24'),
(38, 'BudS', 1, 'buds2008@ymail.com', '08114308071', 'f0k3iYV4Ux8:APA91bHC3veeRxe18s29vrTIddqCN8rLp10mNZ4f3qmYRqKlRynjVMYtj0jidBVGaYQgsohyAIPrbHiS2xug2XKVnJNOC9Ta71dQI57Zmb1HVZIG0Ltcr4md8XyYbCmf6lJXGxvinx_K', 'alamat', '2017-04-11-03-02-38.jpg', 'img/n.jpg', '$2y$10$W3cPy6wsgunDBxFpsMXcVed/NXdH/Hw7L57nynvC.wop2yToomx4e', NULL, '2017-04-10 19:57:09', '2017-04-10 20:02:38'),
(39, 'MRX', 1, 'mrx@user.com', '000000000000', '', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$yZyCTcUB1AfxZDNzW.180u7crXT0p0erP08TCFOPKTQaQgNeV9O3K', NULL, '2017-05-07 08:43:03', '2017-05-07 08:43:03'),
(43, 'Brenda Lumenta', 1, 'brendakumenta@gmaik.com', '087845266123', 'cwJiwOiZ0TM:APA91bHN8YSZN9xOSymxn-SFG2nsomDL0pBAMx3wW61zVi0XAAgwB9l4MqAFKi5eoK-w7Bj_fZtK7m3RZg7Rx8lsNKh9S6dprhJndE_6Wsw-B118vcjbp6cSPOjJvUvZ6U02iNB-nTif', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$g3oUU.FNY7vyReKqySGRWe7ha8/EMSS6wQa51KfaHMai9emePq76a', NULL, '2017-05-11 15:39:13', '2017-05-11 15:39:13'),
(44, 'Command Room Bitung', 1, 'commandroombitung@gmail.com', '085657099466', 'cJE0dguTCgM:APA91bFB1kf9LmxRQwtLiwyz5oPx88qjhhlIz7CfZxPXZyHmtXhmGILF3pEkVgOIgAad7hm9yWe53v3rYdOSVTXcEfKf13VqtgpVsVBK05Xg8d037uv7zkGu4ZGu3QP30FwEl_YlSIR9', 'alamat', 'user.ico', 'img/n.jpg', '$2y$10$biYJRcfaaYTvsC.iO.h5jeQ5.z/Yk3EZs3RvpPtpmy/npPAwoU2Vu', NULL, '2017-05-18 19:09:15', '2017-05-18 19:09:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_publik`
--
ALTER TABLE `info_publik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pungli_id_spd_foreign` (`id_spd`);

--
-- Indexes for table `katagori`
--
ALTER TABLE `katagori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_id_users_foreign` (`id_users`),
  ADD KEY `komentar_id_status_foreign` (`id_status`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_id_users_foreign` (`id_users`),
  ADD KEY `like_id_status_foreign` (`id_status`);

--
-- Indexes for table `panic`
--
ALTER TABLE `panic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengaduan_id_users_foreign` (`id_users`),
  ADD KEY `pengaduan_id_spd_foreign` (`id_spd`);

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promosi_id_users_foreign` (`id_users`);

--
-- Indexes for table `pungli`
--
ALTER TABLE `pungli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pungli_id_user_foreign` (`id_user`);

--
-- Indexes for table `spd`
--
ALTER TABLE `spd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id_users_foreign` (`id_users`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_id_katagori_foreign` (`id_katagori`),
  ADD KEY `tempat_id_kecamatan_foreign` (`id_kecamatan`),
  ADD KEY `tempat_id_users_foreign` (`id_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_no_hp_unique` (`no_hp`),
  ADD KEY `users_id_spd_foreign` (`id_spd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `info_publik`
--
ALTER TABLE `info_publik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `katagori`
--
ALTER TABLE `katagori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panic`
--
ALTER TABLE `panic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pungli`
--
ALTER TABLE `pungli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd`
--
ALTER TABLE `spd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `info_publik`
--
ALTER TABLE `info_publik`
  ADD CONSTRAINT `pungli_id_spd_foreign` FOREIGN KEY (`id_spd`) REFERENCES `spd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_id_spd_foreign` FOREIGN KEY (`id_spd`) REFERENCES `spd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengaduan_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promosi`
--
ALTER TABLE `promosi`
  ADD CONSTRAINT `promosi_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pungli`
--
ALTER TABLE `pungli`
  ADD CONSTRAINT `pungli_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempat`
--
ALTER TABLE `tempat`
  ADD CONSTRAINT `tempat_id_katagori_foreign` FOREIGN KEY (`id_katagori`) REFERENCES `katagori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tempat_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tempat_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_spd_foreign` FOREIGN KEY (`id_spd`) REFERENCES `spd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
