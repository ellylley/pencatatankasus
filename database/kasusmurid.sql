-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2024 pada 14.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasusmurid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_kasus_pelanggaran`
--

CREATE TABLE `backup_kasus_pelanggaran` (
  `id_kasus` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `bentuk_pelanggaran` text DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `kasus_ke` int(11) NOT NULL,
  `tgl_pertemuan_wali` date DEFAULT NULL,
  `tgl_kejadian` date DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `backup_kasus_pelanggaran`
--

INSERT INTO `backup_kasus_pelanggaran` (`id_kasus`, `id_user`, `bentuk_pelanggaran`, `tindak_lanjut`, `catatan`, `kasus_ke`, `tgl_pertemuan_wali`, `tgl_kejadian`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`, `id_tahun`) VALUES
(8, 28, 'TERLAMBAT KE SEKOLAH', 'DIBERI SANKSI DAN DIPANGGIL ORANG TUA', 'terlambat\r\n', 3, '2024-12-25', '2024-11-21', 0, NULL, NULL, '2024-12-02 01:21:26', 1, '2024-11-21', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_kelas`
--

CREATE TABLE `backup_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_tahun_ajaran`
--

CREATE TABLE `backup_tahun_ajaran` (
  `id_tahun` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tahun` text DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_user`
--

CREATE TABLE `backup_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nuptk` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nohp_wali` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `backup_user`
--

INSERT INTO `backup_user` (`id_user`, `nama_user`, `email`, `password`, `level`, `id_kelas`, `nohp`, `jk`, `tgl_lhr`, `foto`, `isdelete`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nis`, `nisn`, `nuptk`, `nik`, `nohp_wali`, `nama_wali`) VALUES
(1, 'adminaSa', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, '628888', NULL, NULL, '1732008707_17a0b47620ddbeae9640.png', 0, NULL, NULL, 1, '2024-12-04 06:59:02', NULL, NULL, NULL, NULL, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus_pelanggaran`
--

CREATE TABLE `kasus_pelanggaran` (
  `id_kasus` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `bentuk_pelanggaran` text DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `kasus_ke` int(11) NOT NULL,
  `tgl_pertemuan_wali` date DEFAULT NULL,
  `tgl_kejadian` date DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasus_pelanggaran`
--

INSERT INTO `kasus_pelanggaran` (`id_kasus`, `id_user`, `bentuk_pelanggaran`, `tindak_lanjut`, `catatan`, `kasus_ke`, `tgl_pertemuan_wali`, `tgl_kejadian`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`, `id_tahun`) VALUES
(8, 28, 'SERING TIDAK MASUK SEKOLAH TANPA KETERANGAN', 'DIBERI SANKSI DAN DIPANGGIL ORANG TUA', '\r\n', 3, '2024-12-25', '2024-11-21', 0, NULL, NULL, '2024-12-04 06:24:43', 1, '2024-11-21', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `isdelete`, `jenjang`, `id_user`) VALUES
(1, 'XII A', 'RPL', '2024-10-15 01:34:23', '2024-10-25 11:02:39', NULL, 1, 1, NULL, 0, 'SMK', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_sekolah` text DEFAULT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_setting`, `logo`, `alamat`, `nama_sekolah`, `nohp`, `updated_by`, `updated_at`, `kota`) VALUES
(1, 'PENCATATAN KASUS MURID', 'logo_sph.png', 'Komp.Batu Batam Mas, Jl. Gajah Mada Blok D & E No.1,2,3, Baloi Indah, Kec. Lubuk Baja, Kota Batam, Kepulauan Riau 29444', 'PERMATA HARAPAN', '(0778) 431318', 1, '2024-12-04 07:03:12', 'Batam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_peringatan`
--

CREATE TABLE `surat_peringatan` (
  `id_surat` int(11) NOT NULL,
  `nomor_surat` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `isi_surat` text DEFAULT NULL,
  `id_kasus` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat_peringatan`
--

INSERT INTO `surat_peringatan` (`id_surat`, `nomor_surat`, `lampiran`, `perihal`, `isi_surat`, `id_kasus`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(55, '289/SMKILPPM/X/2024', '1', 'Surat Peringatan', 'Menurut data absensi RPL XII A siswa yang bernama elly pada semester 2 sering tidak masuk sekolah tanpa keterangan, berdasarkan peraturan Sekolah Permata Harapan jika siswa sering tidak masuk sekolah akan dikenakan sanksi dan apabila siswa tersebut tidak megindahkan peraturan yang berlaku di Sekolah Permata Harapan makan kemungkinan siswa atas nama elly akan dipindahkan dari Sekolah Permata Harapan.\r\nDengan pemberitahuan ini kami berharap Bapak/Ibu Wali muird dapat memberikan pemahaman kepada ananda yang bernama elly untuk sering masuk sekolah.', 8, '2024-12-04 07:02:20', 1, '2024-12-04 07:02:20', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tahun` text DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun`, `status`, `tahun`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`) VALUES
(1, '2', '2023/2024', 0, NULL, NULL, '2024-12-04 07:01:33', 1, '2024-11-19 07:55:06', 1),
(2, '1', '2024/2025', 0, NULL, NULL, '2024-11-27 22:36:27', 1, '2024-11-19 08:12:25', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nuptk` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nohp_wali` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `id_kelas`, `nohp`, `jk`, `tgl_lhr`, `foto`, `isdelete`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nis`, `nisn`, `nuptk`, `nik`, `nohp_wali`, `nama_wali`) VALUES
(1, 'admin', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, '628888', NULL, NULL, '1732008707_17a0b47620ddbeae9640.png', 0, NULL, NULL, 1, '2024-12-04 06:59:05', NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(23, 'kepala sekolah', 'kepalasekolah@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, NULL, '62111111111111', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:53:02', NULL, NULL, NULL, NULL, '', '', '9307761656200013', '1', NULL, NULL),
(24, 'wakil kepala sekolah', 'wakilkepalasekolah@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 3, NULL, '62222222222222', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:53:35', NULL, NULL, NULL, NULL, '', '', '1', '1', NULL, NULL),
(25, 'kesiswaan', 'kesiswaan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 4, NULL, '62333333333333', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:03', NULL, NULL, NULL, NULL, '', '', '1', '1', NULL, NULL),
(26, 'pak dedi', 'guru@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 5, NULL, '62444444444444', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:30', NULL, NULL, NULL, NULL, '', '', '7777777', '7777777', NULL, NULL),
(27, 'bk', 'bk@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 6, NULL, '6282171810404', 'Perempuan', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:58', 27, '2024-12-04 01:48:42', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL),
(28, 'elly', 'murid@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 7, 1, '62895340404752', 'Perempuan', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:55:26', 1, '2024-12-02 00:36:37', NULL, NULL, '1', '1', NULL, NULL, '082272727272', 'PAK EDI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `backup_kasus_pelanggaran`
--
ALTER TABLE `backup_kasus_pelanggaran`
  ADD PRIMARY KEY (`id_kasus`);

--
-- Indeks untuk tabel `backup_kelas`
--
ALTER TABLE `backup_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `backup_tahun_ajaran`
--
ALTER TABLE `backup_tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `backup_user`
--
ALTER TABLE `backup_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `kasus_pelanggaran`
--
ALTER TABLE `kasus_pelanggaran`
  ADD PRIMARY KEY (`id_kasus`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3478;

--
-- AUTO_INCREMENT untuk tabel `backup_kasus_pelanggaran`
--
ALTER TABLE `backup_kasus_pelanggaran`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `backup_kelas`
--
ALTER TABLE `backup_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `backup_tahun_ajaran`
--
ALTER TABLE `backup_tahun_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `backup_user`
--
ALTER TABLE `backup_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `kasus_pelanggaran`
--
ALTER TABLE `kasus_pelanggaran`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
