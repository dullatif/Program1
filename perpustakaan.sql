-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2023 pada 05.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarbuku`
--

CREATE TABLE `daftarbuku` (
  `kode_buku` varchar(100) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `terbit` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftarbuku`
--

INSERT INTO `daftarbuku` (`kode_buku`, `nama_buku`, `pengarang`, `penerbit`, `terbit`) VALUES
('B-01', 'Matematika Linier', 'Randa M', 'Dwi Cahyo', 2009),
('B-02', 'Pend. Agama Islam', 'M. Ahsan', 'N. Suparno', 2001),
('B-03', 'Imu Pengetahuan Alam', 'Paramitha Retno P', 'Yrama Widya', 2009),
('B-04', 'Pendidikan Pancasila', ' Muhamad Taupan & Ine Ariyani S.', 'Yrama Widya', 2010),
('B-05', 'Ilmu Pengetahuan Sosila', 'Jaka Firman P', 'Yrama Widya', 2010),
('B-06', 'Penuntun Belajar Bersama Matematika', 'Sukino', 'Yrama Widya', 2011),
('B-07', 'INFORMATIKA', 'Ade Hodijah', 'Yrama Widya', 2023),
('B-08', 'Pendidikan Jasmani Olahraga Dan Kesehatan', 'Khairul Khadziq', 'Yrama Widya', 2004);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataanggota`
--

CREATE TABLE `dataanggota` (
  `kode_anggota` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `jabatan` varchar(10) NOT NULL,
  `nohp` int(100) NOT NULL,
  `alm` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataanggota`
--

INSERT INTO `dataanggota` (`kode_anggota`, `nama`, `kelas`, `jk`, `jabatan`, `nohp`, `alm`) VALUES
(202304, 'Angga Wijaya', '7', 'Laki-laki', 'Siswa', 812567456, 'Jalan Dewi Sartika No 50 Rt 8/7'),
(202302, 'Diki ', '9', 'Laki-laki', 'Siswa', 988989, 'Jl J Tole Iskandar No12 Rt 9/11'),
(202301, 'Angii', '7', 'perempuan', 'Siswa', 81245676, 'Margonda Raya No90 Blok C'),
(202307, 'Marlina', '8', 'Perempuan', 'Siswa', 857489898, 'Jalan Kartika Raya Blok AC2 No 2B'),
(202305, 'Santika', '8', 'Laki-laki', 'Siswa', 857489898, 'Jalan Kartika Raya Blok AB1 No 80'),
(202309, 'Ririanti', '8', 'perempuan', 'Siswa', 857141332, 'Jalan Muchtar Raya No 2C Rt5/11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapetugas`
--

CREATE TABLE `datapetugas` (
  `no_petugas` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `hp` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datapetugas`
--

INSERT INTO `datapetugas` (`no_petugas`, `nama`, `jk`, `hp`, `alamat`) VALUES
(202322, 'Yoda', 'Laki-laki', 8571413, 'Jl Raya Ciracas Rt 10/11'),
(202326, 'abdul', 'Laki-laki', 82260193, 'Jl Asembaris Raya No 20A'),
(202321, 'Fikri', 'Laki-laki', 89090123, 'Jl Matraman No 40 Rt 9/10'),
(202320, 'Yudi', 'Laki-laki', 822601011, 'Jl Kelapa Gading 1 No 20'),
(202323, 'Tulah', 'Laki-laki', 82156423, 'Jl Kebagusan Raya Blok c1 No9'),
(202324, 'Dimas ', 'Laki-laki', 81260890, 'Jl Depok Raya No 90A'),
(202325, 'Rido', 'Laki-laki', 822609090, 'jl matraman raya 12022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kembali`
--

CREATE TABLE `kembali` (
  `kode_pinjam` varchar(50) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(50) NOT NULL,
  `tgl_kembali` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `denda` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kembali`
--

INSERT INTO `kembali` (`kode_pinjam`, `nama_buku`, `tgl_pinjam`, `tgl_kembali`, `keterangan`, `denda`) VALUES
('2022', 'Matematika Linier', '17-07-2023', '21-07-2023', 'Terlambat', '5000'),
('2005', 'Pend. Agama Islam', '17-07-2023', '19-07-2023', 'Tepat Waktu', '0'),
('2001', 'Ilmu Pengetahuan Sosila', '15-07-2023', '16-07-2023', 'Tepat Waktu', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `level`) VALUES
('petugas', '123', 'petugas'),
('user', '1234', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `kode_data` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kode_buku` varchar(50) NOT NULL,
  `nbuku` varchar(100) NOT NULL,
  `kode_pinjam` varchar(50) NOT NULL,
  `tanggal_pinjam` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`kode_data`, `jabatan`, `kode_buku`, `nbuku`, `kode_pinjam`, `tanggal_pinjam`) VALUES
('202305', 'Siswa', 'B-05', 'Ilmu Pengetahuan Sosila', '2001', '15-07-2023'),
('202302', 'Siswa', 'B-02', 'Pend. Agama Islam', '2005', '17-07-2023'),
('202301', 'Siswa', 'B-01', 'Matematika Linier', '2022', '17-07-2023');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
