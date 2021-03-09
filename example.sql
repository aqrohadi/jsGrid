-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Mar 2021 pada 11.29
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sample_data`
--

CREATE TABLE `sample_data` (
  `id` int(10) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `total` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sample_data`
--

INSERT INTO `sample_data` (`id`, `buyer`, `dept`, `total`) VALUES
(3, 'Tiny', 'Statistic', 19),
(4, 'Dolores', 'Data analyst', 29),
(5, 'Cindy', 'Statistic', 24),
(6, 'George', 'Programmer', 30),
(7, 'Chelsea', 'Statistics', 18),
(8, 'Wayne', 'Designer', 27),
(9, 'Keith', 'Data analyst', 26),
(10, 'Eric', 'Videographer', 31),
(11, 'Robert', 'Programmer', 42),
(12, 'Candace', 'Designer', 27),
(13, 'Hortencia', 'Videographer', 30),
(14, 'William', 'Programmer', 36),
(15, 'Patricia', 'Data analyst', 23),
(17, 'Nancy', 'Data analyst', 21);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sample_data`
--
ALTER TABLE `sample_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sample_data`
--
ALTER TABLE `sample_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
