-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2023 pada 10.57
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Edukasi'),
(2, 'Komik'),
(3, 'Biografi'),
(4, 'Majalah'),
(5, 'Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(5) NOT NULL,
  `nama_penerbit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`) VALUES
(1, 'Play Round'),
(2, 'Buah Hati'),
(3, 'Literati Book'),
(4, 'TransMedia Pustaka'),
(5, 'Haru Media'),
(6, 'Media Indonesia'),
(7, 'Quadrant'),
(8, 'Kurniaesa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_penerbit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `tanggal_terbit`, `id_kategori`, `id_penerbit`) VALUES
(1, 'Di penghujung pelukan', 35000, '2017-05-08', 5, 4),
(2, 'Seluas langit biru ', 136000, '2022-10-06', 5, 3),
(3, 'Imaji terindah', 58000, '2022-10-06', 5, 3),
(4, 'Pesan dari bintang', 106000, '2019-05-03', 5, 3),
(5, 'Lukisan hujan', 72000, '2017-05-11', 5, 4),
(6, 'Doa anak muslim', 59000, '2016-02-13', 1, 1),
(7, 'Mendidik anak cinta Al Qur\'an', 33000, '2018-06-08', 1, 1),
(8, 'Materi pendidikan karakter', 76000, '2021-09-09', 1, 2),
(9, 'Belajar bahasa daerah', 29000, '2015-04-18', 1, 2),
(10, 'Anak pintar calistung', 32000, '2013-02-16', 1, 2),
(11, 'Majalah animal minds', 2000, '2016-03-26', 4, 5),
(12, 'Sehat dan bugar dengan diet gm', 24000, '2017-05-07', 4, 6),
(13, 'Majalah rakyat merdeka', 51000, '2012-01-03', 4, 7),
(14, 'Majalah SWA kemilau bisnis', 33000, '2020-10-15', 4, 6),
(15, 'Majalah chery 71', 27000, '2022-04-20', 4, 5),
(16, 'The dragon next door', 60000, '2020-06-26', 2, 7),
(17, 'Misteri negri pakkins', 14000, '2015-10-09', 2, 7),
(18, 'Bang gaber eksis abis', 31000, '2022-05-25', 2, 5),
(19, 'Dari ambarawa ke ibukota', 21000, '2023-05-04', 2, 7),
(20, 'Tarung legenda Vol 02', 25000, '2014-04-16', 2, 5),
(21, 'Takhta raja-raja jawa', 42000, '2014-08-10', 3, 8),
(22, 'Gerilya politik ekonomi', 50000, '2019-01-15', 3, 4),
(23, 'Al-farabi sang filsuf muslim', 67000, '2015-05-25', 3, 8),
(24, 'Catatan najwa 2', 84000, '2022-02-16', 3, 4),
(25, 'Hamka from A to Z', 62000, '2019-09-16', 3, 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_penerbit` (`id_penerbit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
