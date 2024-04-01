-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `status` enum('tersedia','dipinjam') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `penerbit`, `kategori`, `image`, `status`) VALUES
(1, 'Naruto', 'Masashi Kishimoto', 'Elex Media ', 'Anime', 'C:\\Users\\USER\\Documents\\NetBeansProjects\\perpustakaan\\image\\naruto.jpg', 'tersedia'),
(2, 'Demon Slayer', 'Koyoharu Gotoge', 'Elex Media', 'Anime Shounen', 'C:\\Users\\USER\\Documents\\NetBeansProjects\\perpustakaan\\image\\kimetsu.jpg', 'tersedia'),
(3, 'Attack On TItan', 'Hajime Isayama', 'Kodansha', 'Anime Shounen', 'C:\\Users\\USER\\Documents\\NetBeansProjects\\perpustakaan\\image\\aot.jpg', 'tersedia'),
(5, 'Dr Stone', 'Riichiro Inagaki', 'viz Media', 'Shounen', 'C:\\Users\\USER\\Downloads\\Cover_book\\drstone.jpeg', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman`
--

CREATE TABLE `data_peminjaman` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `judulbuku` varchar(255) NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembali` date NOT NULL,
  `status` enum('dipinjam','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_peminjaman`
--

INSERT INTO `data_peminjaman` (`id`, `username`, `judulbuku`, `tglpinjam`, `tglkembali`, `status`) VALUES
(3, 'dheva', 'Demon Slayer', '2024-03-02', '2024-03-04', 'selesai'),
(4, 'achmad', 'Classroom Of The Elite', '2024-03-02', '2024-03-04', 'selesai'),
(6, 'dheva', 'Classroom Of The Elite', '2024-03-26', '2024-03-28', 'selesai'),
(7, 'achmad', 'Demon Slayer', '2024-03-26', '2024-03-28', 'selesai'),
(8, 'dheva', 'Attack On TItan', '2024-03-26', '2024-03-28', 'selesai'),
(9, 'achmad', 'Dr Stone', '2024-03-26', '2024-03-28', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nis` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `status` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nis`, `username`, `password`, `alamat`, `notelp`, `status`) VALUES
(32212, 'dheva', '123', 'sukomaunggal', '088994107529', 'admin'),
(32241, 'achmad', '777', 'Malang', '088321567', 'user'),
(44443, 'Yoi', '678', 'simo', '1231414', 'user'),
(63217, 'Ardiansyah', '123', 'Simojawar', '0382013', 'user'),
(99999, 'admin', 'password', 'simojawar', '0889941075299', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
