-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2024 pada 14.48
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

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `id_user`, `activity`, `timestamp`) VALUES
(1840, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:28:58'),
(1841, 1, 'Mengakses halaman setting', '2024-10-31 01:29:01'),
(1842, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:29:03'),
(1843, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:29:04'),
(1844, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:29:06'),
(1845, 1, 'Mengakses halaman manajemen pengumuman', '2024-10-31 01:29:14'),
(1846, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:29:16'),
(1847, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:31:27'),
(1848, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:31:35'),
(1849, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:31:37'),
(1850, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:32:37'),
(1851, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:32:55'),
(1852, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:33:01'),
(1853, 1, 'Mengakses halaman restore user', '2024-10-31 01:33:10'),
(1854, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:33:15'),
(1855, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:33:18'),
(1856, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:33:24'),
(1857, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:33:56'),
(1858, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:34:14'),
(1859, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:42:21'),
(1860, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:42:28'),
(1861, 1, 'Mengakses halaman user', '2024-10-31 01:42:34'),
(1862, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:43:23'),
(1863, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:43:41'),
(1864, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:43:57'),
(1865, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:44:02'),
(1866, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:44:16'),
(1867, 1, 'Mengakses halaman setting', '2024-10-31 01:44:20'),
(1868, 1, 'Mengakses halaman setting', '2024-10-31 01:44:33'),
(1869, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:44:34'),
(1870, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:44:48'),
(1871, 1, 'Mengakses halaman restore user', '2024-10-31 01:45:45'),
(1872, 1, 'Mengakses halaman setting', '2024-10-31 01:45:53'),
(1873, 1, 'Mengakses halaman setting', '2024-10-31 01:46:07'),
(1874, 1, 'Mengakses halaman profile', '2024-10-31 01:46:41'),
(1875, 1, 'Mengakses halaman profile', '2024-10-31 01:46:51'),
(1876, 1, 'Mengakses halaman profile', '2024-10-31 01:47:16'),
(1877, 1, 'Mengakses halaman setting', '2024-10-31 01:47:38'),
(1878, 1, 'Mengakses halaman dashboard', '2024-10-31 01:47:45'),
(1879, 1, 'Mengakses halaman user', '2024-10-31 01:47:47'),
(1880, 1, 'Mengakses halaman kelas', '2024-10-31 01:47:52'),
(1881, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:47:54'),
(1882, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 01:47:57'),
(1883, 1, 'Mengakses halaman setting', '2024-10-31 01:48:06'),
(1884, 1, 'Mengakses halaman log aktivitas', '2024-10-31 01:48:07'),
(1885, 1, 'Mengakses halaman restore user', '2024-10-31 01:48:11'),
(1886, 1, 'Mengakses halaman restore kelas', '2024-10-31 01:48:13'),
(1887, 1, 'Mengakses halaman restore user', '2024-10-31 01:48:17'),
(1888, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 01:48:19'),
(1889, 1, 'Mengakses halaman pengumuman', '2024-10-31 01:48:34'),
(1890, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:04:22'),
(1891, 1, 'Membagikan pengumuman', '2024-10-31 02:04:42'),
(1892, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:04:45'),
(1893, 1, 'Membagikan pengumuman', '2024-10-31 02:05:17'),
(1894, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:05:22'),
(1895, 1, 'Membagikan pengumuman', '2024-10-31 02:07:16'),
(1896, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:07:26'),
(1897, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:10:29'),
(1898, 1, 'Membagikan pengumuman', '2024-10-31 02:10:37'),
(1899, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:10:41'),
(1900, 1, 'Membagikan pengumuman', '2024-10-31 02:12:17'),
(1901, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:12:22'),
(1902, 1, 'Membagikan pengumuman', '2024-10-31 02:16:09'),
(1903, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:16:15'),
(1904, 1, 'Membagikan pengumuman', '2024-10-31 02:18:09'),
(1905, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:18:14'),
(1906, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:18:50'),
(1907, 1, 'Membagikan pengumuman', '2024-10-31 02:18:57'),
(1908, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:19:24'),
(1909, 1, 'Membagikan pengumuman', '2024-10-31 02:19:31'),
(1910, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:19:37'),
(1911, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:22:04'),
(1912, 1, 'Membagikan pengumuman', '2024-10-31 02:22:11'),
(1913, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:22:18'),
(1914, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:30:17'),
(1915, 1, 'Membagikan pengumuman', '2024-10-31 02:31:07'),
(1916, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:31:11'),
(1917, 1, 'Membagikan pengumuman', '2024-10-31 02:33:29'),
(1918, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:33:34'),
(1919, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:40:25'),
(1920, 1, 'Membagikan pengumuman', '2024-10-31 02:40:31'),
(1921, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:40:35'),
(1922, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:43:45'),
(1923, 1, 'Membagikan pengumuman', '2024-10-31 02:43:52'),
(1924, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:43:57'),
(1925, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:48:33'),
(1926, 1, 'Membagikan pengumuman', '2024-10-31 02:48:40'),
(1927, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:48:43'),
(1928, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:52:38'),
(1929, 1, 'Membagikan pengumuman', '2024-10-31 02:52:44'),
(1930, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:52:48'),
(1931, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:54:37'),
(1932, 1, 'Membagikan pengumuman', '2024-10-31 02:54:44'),
(1933, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:54:47'),
(1934, 1, 'Membagikan pengumuman', '2024-10-31 02:57:51'),
(1935, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:58:04'),
(1936, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:59:33'),
(1937, 1, 'Membagikan pengumuman', '2024-10-31 02:59:44'),
(1938, 1, 'Mengakses halaman pengumuman', '2024-10-31 02:59:50'),
(1939, 1, 'Mengakses halaman dashboard', '2024-10-31 03:35:36'),
(1940, 1, 'Mengakses halaman user', '2024-10-31 03:36:42'),
(1941, 1, 'Mengakses halaman kelas', '2024-10-31 03:37:08'),
(1942, 1, 'Mengakses halaman pengumuman', '2024-10-31 03:37:37'),
(1943, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 03:37:53'),
(1944, 1, 'Mengakses halaman setting', '2024-10-31 03:38:24'),
(1945, 1, 'Mengakses halaman log aktivitas', '2024-10-31 03:38:45'),
(1946, 1, 'Mengakses halaman restore user', '2024-10-31 03:39:07'),
(1947, 1, 'Mengakses halaman dashboard', '2024-10-31 03:52:16'),
(1948, 23, 'Mengakses halaman dashboard', '2024-10-31 03:53:21'),
(1949, 23, 'Mengakses halaman pemberitahuan', '2024-10-31 03:55:00'),
(1950, 23, 'Mengakses halaman pengumuman', '2024-10-31 03:55:04'),
(1951, 23, 'Mengakses halaman pemberitahuan', '2024-10-31 03:55:13'),
(1952, 27, 'Mengakses halaman dashboard', '2024-10-31 03:56:07'),
(1953, 27, 'Mengakses halaman pemberitahuan', '2024-10-31 03:56:11'),
(1954, 27, 'Mengakses halaman dashboard', '2024-10-31 03:56:12'),
(1955, 1, 'Mengakses halaman dashboard', '2024-10-31 03:56:55'),
(1956, 1, 'Mengakses halaman profile', '2024-10-31 03:58:04'),
(1957, 1, 'Mengakses halaman user', '2024-10-31 03:59:42'),
(1958, 1, 'Mengakses halaman profile', '2024-10-31 03:59:50'),
(1959, 1, 'Mengakses halaman profile', '2024-10-31 04:03:30'),
(1960, 1, 'mengubah password profile', '2024-10-31 04:03:36'),
(1961, 1, 'Mengakses halaman profile', '2024-10-31 04:03:37'),
(1962, 1, 'mengubah password profile', '2024-10-31 04:04:01'),
(1963, 1, 'Mengakses halaman profile', '2024-10-31 04:04:01'),
(1964, 1, 'mengubah password profile', '2024-10-31 04:04:11'),
(1965, 1, 'Mengakses halaman profile', '2024-10-31 04:04:12'),
(1966, 1, 'mengubah password profile', '2024-10-31 04:04:21'),
(1967, 1, 'Mengakses halaman profile', '2024-10-31 04:04:22'),
(1968, 1, 'Mengakses halaman user', '2024-10-31 04:05:08'),
(1969, 1, 'Mengubah data user', '2024-10-31 04:06:38'),
(1970, 1, 'Mengakses halaman user', '2024-10-31 04:06:39'),
(1971, 1, 'Merestore user yang diedit', '2024-10-31 04:06:50'),
(1972, 1, 'Mengakses halaman user', '2024-10-31 04:06:51'),
(1973, 1, 'Mengakses halaman kelas', '2024-10-31 04:07:15'),
(1974, 1, 'Mengubah data kelas', '2024-10-31 04:08:35'),
(1975, 1, 'Mengakses halaman kelas', '2024-10-31 04:08:36'),
(1976, 1, 'Merestore kelas yang diedit', '2024-10-31 04:08:46'),
(1977, 1, 'Mengakses halaman kelas', '2024-10-31 04:08:47'),
(1978, 1, 'Mengakses halaman pengumuman', '2024-10-31 04:09:07'),
(1979, 1, 'Mengubah data pengumuman', '2024-10-31 04:10:14'),
(1980, 1, 'Mengakses halaman pengumuman', '2024-10-31 04:10:14'),
(1981, 1, 'Merestore pengumuman yang diedit', '2024-10-31 04:10:25'),
(1982, 1, 'Mengakses halaman pengumuman', '2024-10-31 04:10:25'),
(1983, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 04:10:51'),
(1984, 1, 'Mengakses halaman setting', '2024-10-31 04:12:20'),
(1985, 1, 'Mengakses halaman log aktivitas', '2024-10-31 04:12:49'),
(1986, 1, 'Mengakses halaman user', '2024-10-31 04:13:53'),
(1987, 1, 'Menghapus data user', '2024-10-31 04:13:57'),
(1988, 1, 'Mengakses halaman user', '2024-10-31 04:13:58'),
(1989, 1, 'Mengakses halaman kelas', '2024-10-31 04:13:59'),
(1990, 1, 'Menghapus data kelas', '2024-10-31 04:14:02'),
(1991, 1, 'Mengakses halaman kelas', '2024-10-31 04:14:03'),
(1992, 1, 'Mengakses halaman pengumuman', '2024-10-31 04:14:04'),
(1993, 1, 'Menghapus data pengumuman', '2024-10-31 04:14:08'),
(1994, 1, 'Mengakses halaman pengumuman', '2024-10-31 04:14:09'),
(1995, 1, 'Mengakses halaman restore user', '2024-10-31 04:14:12'),
(1996, 1, 'Merestore user', '2024-10-31 04:14:29'),
(1997, 1, 'Mengakses halaman restore user', '2024-10-31 04:14:30'),
(1998, 1, 'Mengakses halaman restore kelas', '2024-10-31 04:14:32'),
(1999, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 04:14:45'),
(2000, 1, 'Merestore pengumuman', '2024-10-31 04:15:02'),
(2001, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 04:15:03'),
(2002, 1, 'Mengakses halaman restore kelas', '2024-10-31 04:15:05'),
(2003, 1, 'Merestore kelas', '2024-10-31 04:15:08'),
(2004, 1, 'Mengakses halaman restore kelas', '2024-10-31 04:15:08'),
(2005, 1, 'Mengakses halaman dashboard', '2024-11-01 17:55:03'),
(2006, 1, 'Mengakses halaman dashboard', '2024-11-01 17:55:56'),
(2007, 1, 'Mengakses halaman user', '2024-11-01 17:56:05'),
(2008, 1, 'Menambah user', '2024-11-01 17:56:58'),
(2009, 1, 'Mengakses halaman user', '2024-11-01 17:56:59'),
(2010, 1, 'Mengubah data user', '2024-11-01 17:57:37'),
(2011, 1, 'Mengakses halaman user', '2024-11-01 17:57:38'),
(2012, 1, 'Merestore user yang diedit', '2024-11-01 17:58:06'),
(2013, 1, 'Mengakses halaman user', '2024-11-01 17:58:07'),
(2014, 1, 'Mengubah data user', '2024-11-01 17:58:15'),
(2015, 1, 'Mengakses halaman user', '2024-11-01 17:58:16'),
(2016, 1, 'Mengubah data user', '2024-11-01 17:58:24'),
(2017, 1, 'Mengakses halaman user', '2024-11-01 17:58:25'),
(2018, 1, 'Merestore user yang diedit', '2024-11-01 17:58:30'),
(2019, 1, 'Mengakses halaman user', '2024-11-01 17:58:31'),
(2020, 1, 'Mereset password user', '2024-11-01 17:58:37'),
(2021, 1, 'Mengakses halaman user', '2024-11-01 17:58:38'),
(2022, 1, 'Menghapus data user', '2024-11-01 17:58:53'),
(2023, 1, 'Mengakses halaman user', '2024-11-01 17:58:58'),
(2024, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:04'),
(2025, 1, 'Menambah data kelas', '2024-11-01 17:59:20'),
(2026, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:21'),
(2027, 1, 'Mengubah data kelas', '2024-11-01 17:59:29'),
(2028, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:30'),
(2029, 1, 'Merestore kelas yang diedit', '2024-11-01 17:59:36'),
(2030, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:37'),
(2031, 1, 'Mengubah data kelas', '2024-11-01 17:59:45'),
(2032, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:46'),
(2033, 1, 'Menghapus data kelas', '2024-11-01 17:59:52'),
(2034, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:54'),
(2035, 1, 'Mengakses halaman pengumuman', '2024-11-01 17:59:56'),
(2036, 1, 'Mengakses halaman kelas', '2024-11-01 17:59:59'),
(2037, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:00:10'),
(2038, 1, 'Menambah data pengumuman', '2024-11-01 18:00:29'),
(2039, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:00:30'),
(2040, 1, 'Mengubah data pengumuman', '2024-11-01 18:00:53'),
(2041, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:00:54'),
(2042, 1, 'Membagikan pengumuman', '2024-11-01 18:01:40'),
(2043, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:01:49'),
(2044, 1, 'Membagikan pengumuman', '2024-11-01 18:02:39'),
(2045, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:02:45'),
(2046, 1, 'Mengakses halaman pemberitahuan', '2024-11-01 18:03:46'),
(2047, 1, 'Mengakses halaman setting', '2024-11-01 18:03:59'),
(2048, 1, 'Mengubah data setting', '2024-11-01 18:04:04'),
(2049, 1, 'Mengakses halaman setting', '2024-11-01 18:04:05'),
(2050, 1, 'Mengubah data setting', '2024-11-01 18:04:08'),
(2051, 1, 'Mengakses halaman setting', '2024-11-01 18:04:09'),
(2052, 1, 'Mengakses halaman log aktivitas', '2024-11-01 18:04:12'),
(2053, 1, 'Mengakses halaman restore user', '2024-11-01 18:04:17'),
(2054, 1, 'Merestore user', '2024-11-01 18:04:21'),
(2055, 1, 'Mengakses halaman restore user', '2024-11-01 18:04:22'),
(2056, 1, 'Mengakses halaman restore kelas', '2024-11-01 18:04:25'),
(2057, 1, 'Merestore kelas', '2024-11-01 18:04:28'),
(2058, 1, 'Mengakses halaman restore kelas', '2024-11-01 18:04:29'),
(2059, 1, 'Mengakses halaman restore pengumuman', '2024-11-01 18:04:32'),
(2060, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:04:38'),
(2061, 1, 'Mengakses halaman profile', '2024-11-01 18:04:42'),
(2062, 1, 'Mengubah data profile', '2024-11-01 18:04:50'),
(2063, 1, 'Mengakses halaman profile', '2024-11-01 18:04:51'),
(2064, 1, 'Mengubah data profile', '2024-11-01 18:05:00'),
(2065, 1, 'Mengakses halaman profile', '2024-11-01 18:05:01'),
(2066, 1, 'Mengakses halaman user', '2024-11-01 18:05:12'),
(2067, 1, 'Mengakses halaman kelas', '2024-11-01 18:05:42'),
(2068, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:06:06'),
(2069, 1, 'Membagikan pengumuman', '2024-11-01 18:06:16'),
(2070, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:06:25'),
(2071, 1, 'Membagikan pengumuman', '2024-11-01 18:06:57'),
(2072, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:07:03'),
(2073, 1, 'Membagikan pengumuman', '2024-11-01 18:07:30'),
(2074, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:07:42'),
(2075, 1, 'Membagikan pengumuman', '2024-11-01 18:08:23'),
(2076, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:08:24'),
(2077, 1, 'Membagikan pengumuman', '2024-11-01 18:08:59'),
(2078, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:09:05'),
(2079, 1, 'Membagikan pengumuman', '2024-11-01 18:09:25'),
(2080, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:09:31'),
(2081, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:12:54'),
(2082, 1, 'Membagikan pengumuman', '2024-11-01 18:13:57'),
(2083, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:14:07'),
(2084, 1, 'Membagikan pengumuman', '2024-11-01 18:14:18'),
(2085, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:14:25'),
(2086, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:15:15'),
(2087, 1, 'Membagikan pengumuman', '2024-11-01 18:15:24'),
(2088, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:15:31'),
(2089, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:20:57'),
(2090, 1, 'Membagikan pengumuman', '2024-11-01 18:21:10'),
(2091, 1, 'Mengakses halaman pengumuman', '2024-11-01 18:21:15'),
(2092, 25, 'Mengakses halaman dashboard', '2024-11-01 18:22:19'),
(2093, 25, 'Mengakses halaman dashboard', '2024-11-01 18:22:22'),
(2094, 25, 'Mengakses halaman pengumuman', '2024-11-01 18:22:24'),
(2095, 25, 'Mengakses halaman pengumuman', '2024-11-01 18:22:25'),
(2096, 25, 'Mengakses halaman pemberitahuan', '2024-11-01 18:22:32'),
(2097, 25, 'Mengakses halaman pengumuman', '2024-11-01 18:22:35'),
(2098, 27, 'Mengakses halaman dashboard', '2024-11-01 18:23:35'),
(2099, 27, 'Mengakses halaman pemberitahuan', '2024-11-01 18:24:05'),
(2100, 27, 'Mengakses halaman profile', '2024-11-01 18:24:26'),
(2101, 27, 'Mengakses halaman dashboard', '2024-11-01 18:24:32'),
(2102, 27, 'Mengakses halaman pemberitahuan', '2024-11-01 18:24:37'),
(2103, 27, 'Mengakses halaman dashboard', '2024-11-01 18:25:09'),
(2104, 26, 'Mengakses halaman dashboard', '2024-11-01 18:26:46'),
(2105, 26, 'Mengakses halaman pemberitahuan', '2024-11-01 18:26:49'),
(2106, 26, 'Mengakses halaman pengumuman', '2024-11-01 18:27:38'),
(2107, 26, 'Menambah data pengumuman', '2024-11-01 18:27:55'),
(2108, 26, 'Mengakses halaman pengumuman', '2024-11-01 18:27:56'),
(2109, 26, 'Membagikan pengumuman', '2024-11-01 18:29:31'),
(2110, 26, 'Mengakses halaman pengumuman', '2024-11-01 18:29:36'),
(2111, 26, 'Membagikan pengumuman', '2024-11-01 18:30:06'),
(2112, 26, 'Mengakses halaman pengumuman', '2024-11-01 18:30:10'),
(2113, 1, 'Mengakses halaman dashboard', '2024-11-02 00:17:26'),
(2114, 1, 'Mengakses halaman profile', '2024-11-02 00:17:50'),
(2115, 1, 'Mengubah data profile', '2024-11-02 00:18:06'),
(2116, 1, 'Mengakses halaman profile', '2024-11-02 00:18:07'),
(2117, 1, 'Mengakses halaman user', '2024-11-02 00:18:32'),
(2118, 1, 'Mengubah data user', '2024-11-02 00:19:26'),
(2119, 1, 'Mengakses halaman user', '2024-11-02 00:19:26'),
(2120, 1, 'Merestore user yang diedit', '2024-11-02 00:19:37'),
(2121, 1, 'Mengakses halaman user', '2024-11-02 00:19:38'),
(2122, 1, 'Mengakses halaman kelas', '2024-11-02 00:19:55'),
(2123, 1, 'Mengakses halaman pengumuman', '2024-11-02 00:20:23'),
(2124, 1, 'Mengakses halaman pemberitahuan', '2024-11-02 00:21:54'),
(2125, 1, 'Mengakses halaman setting', '2024-11-02 00:22:09'),
(2126, 1, 'Mengakses halaman log aktivitas', '2024-11-02 00:22:28'),
(2127, 1, 'Mengakses halaman restore user', '2024-11-02 00:22:49'),
(2128, 1, 'Mengakses halaman pengumuman', '2024-11-02 00:23:00'),
(2129, 1, 'Menghapus data pengumuman', '2024-11-02 00:23:04'),
(2130, 1, 'Mengakses halaman pengumuman', '2024-11-02 00:23:05'),
(2131, 1, 'Mengakses halaman restore pengumuman', '2024-11-02 00:23:08'),
(2132, 1, 'Merestore pengumuman', '2024-11-02 00:23:22'),
(2133, 1, 'Mengakses halaman restore pengumuman', '2024-11-02 00:23:23'),
(2134, 1, 'Mengakses halaman pengumuman', '2024-11-02 00:23:26'),
(2135, 1, 'Mengakses halaman restore user', '2024-11-02 00:23:31'),
(2136, 1, 'Mengakses halaman restore kelas', '2024-11-02 00:23:34'),
(2137, 23, 'Mengakses halaman dashboard', '2024-11-02 00:23:50'),
(2138, 23, 'Mengakses halaman dashboard', '2024-11-02 00:23:59'),
(2139, 23, 'Mengakses halaman pengumuman', '2024-11-02 00:24:02'),
(2140, 23, 'Mengakses halaman pemberitahuan', '2024-11-02 00:24:05'),
(2141, 23, 'Mengakses halaman dashboard', '2024-11-02 00:24:19'),
(2142, 26, 'Mengakses halaman dashboard', '2024-11-02 00:24:33'),
(2143, 26, 'Mengakses halaman pengumuman', '2024-11-02 00:24:41'),
(2144, 26, 'Menambah data pengumuman', '2024-11-02 00:24:59'),
(2145, 26, 'Mengakses halaman pengumuman', '2024-11-02 00:25:00'),
(2146, 26, 'Mengakses halaman pemberitahuan', '2024-11-02 00:25:55'),
(2147, 27, 'Mengakses halaman dashboard', '2024-11-02 00:26:07'),
(2148, 27, 'Mengakses halaman dashboard', '2024-11-02 00:26:16'),
(2149, 27, 'Mengakses halaman pemberitahuan', '2024-11-02 00:26:18'),
(2150, 26, 'Mengakses halaman dashboard', '2024-11-02 00:27:02'),
(2151, 26, 'Mengakses halaman pengumuman', '2024-11-02 00:27:04'),
(2152, 26, 'Menghapus data pengumuman', '2024-11-02 00:27:12'),
(2153, 26, 'Mengakses halaman pengumuman', '2024-11-02 00:27:13'),
(2154, 26, 'Mengakses halaman pemberitahuan', '2024-11-02 00:27:15'),
(2155, 1, 'Mengakses halaman dashboard', '2024-11-18 18:46:51'),
(2156, 1, 'Mengakses halaman dashboard', '2024-11-18 20:14:09'),
(2157, 1, 'Mengakses halaman dashboard', '2024-11-18 20:14:40'),
(2158, 1, 'Mengakses halaman dashboard', '2024-11-18 20:15:21'),
(2159, 1, 'Mengakses halaman dashboard', '2024-11-18 20:16:09'),
(2160, 1, 'Mengakses halaman dashboard', '2024-11-18 20:16:47'),
(2161, 1, 'Mengakses halaman user', '2024-11-18 20:17:23'),
(2162, 1, 'Mengakses halaman user', '2024-11-18 20:17:48'),
(2163, 1, 'Mengubah data user', '2024-11-18 20:18:31'),
(2164, 1, 'Mengakses halaman user', '2024-11-18 20:18:31'),
(2165, 1, 'Mengubah data user', '2024-11-18 20:18:54'),
(2166, 1, 'Mengakses halaman user', '2024-11-18 20:18:55'),
(2167, 1, 'Mengubah data user', '2024-11-18 20:19:26'),
(2168, 1, 'Mengakses halaman user', '2024-11-18 20:19:26'),
(2169, 1, 'Mengakses halaman user', '2024-11-18 20:26:19'),
(2170, 1, 'Mengakses halaman user', '2024-11-18 20:27:35'),
(2171, 1, 'Mengakses halaman kelas', '2024-11-18 20:27:41'),
(2172, 1, 'Menambah data kelas', '2024-11-18 20:28:59'),
(2173, 1, 'Mengakses halaman kelas', '2024-11-18 20:29:00'),
(2174, 1, 'Mengubah data kelas', '2024-11-18 20:29:08'),
(2175, 1, 'Mengakses halaman kelas', '2024-11-18 20:29:09'),
(2176, 1, 'Merestore kelas yang diedit', '2024-11-18 20:29:17'),
(2177, 1, 'Mengakses halaman kelas', '2024-11-18 20:29:17'),
(2178, 1, 'Mengakses halaman setting', '2024-11-18 20:29:39'),
(2179, 1, 'Mengakses halaman log aktivitas', '2024-11-18 20:29:41'),
(2180, 1, 'Mengakses halaman restore user', '2024-11-18 20:29:48'),
(2181, 1, 'Mengakses halaman restore kelas', '2024-11-18 20:29:54'),
(2182, 1, 'Mengakses halaman dashboard', '2024-11-18 20:29:58'),
(2183, 1, 'Mengakses halaman profile', '2024-11-18 20:31:32'),
(2184, 1, 'Mengubah data profile', '2024-11-18 20:31:47'),
(2185, 1, 'Mengakses halaman profile', '2024-11-18 20:31:47'),
(2186, 1, 'Mengakses halaman dashboard', '2024-11-18 20:31:50'),
(2187, NULL, 'Mengakses halaman produk', '2024-11-18 23:11:35'),
(2188, 1, 'Mengakses halaman dashboard', '2024-11-18 23:12:01'),
(2189, 1, 'Mengakses halaman kelas', '2024-11-18 23:13:28'),
(2190, 1, 'Mengakses halaman kelas', '2024-11-18 23:13:48'),
(2191, 1, 'Mengakses halaman kelas', '2024-11-18 23:13:52'),
(2192, 1, 'Mengakses halaman kelas', '2024-11-18 23:14:20'),
(2193, 1, 'Mengakses halaman kelas', '2024-11-18 23:14:21'),
(2194, 1, 'Mengakses halaman setting', '2024-11-18 23:14:26'),
(2195, 1, 'Mengakses halaman dashboard', '2024-11-18 23:14:28'),
(2196, 1, 'Mengakses halaman user', '2024-11-18 23:14:29'),
(2197, 1, 'Mengakses halaman user', '2024-11-18 23:14:29'),
(2198, 1, 'Mengakses halaman user', '2024-11-18 23:14:59'),
(2199, 1, 'Mengakses halaman user', '2024-11-18 23:15:12'),
(2200, 1, 'Mengakses halaman user', '2024-11-18 23:15:13'),
(2201, 1, 'Mengakses halaman user', '2024-11-18 23:15:43'),
(2202, 1, 'Mengakses halaman produk', '2024-11-18 23:15:48'),
(2203, 1, 'Mengakses halaman produk', '2024-11-18 23:17:11'),
(2204, 1, 'Mengakses halaman produk', '2024-11-18 23:17:43'),
(2205, 1, 'Mengakses halaman produk', '2024-11-18 23:17:58'),
(2206, 1, 'Mengakses halaman produk', '2024-11-18 23:19:03'),
(2207, 1, 'Menambah catatan kasus murid', '2024-11-18 23:24:28'),
(2208, 1, 'Mengakses halaman produk', '2024-11-18 23:24:28'),
(2209, 1, 'Mengakses halaman produk', '2024-11-18 23:27:30'),
(2210, 1, 'Mengakses halaman produk', '2024-11-18 23:27:41'),
(2211, 1, 'Mengakses halaman produk', '2024-11-18 23:29:33'),
(2212, 1, 'Mengakses halaman produk', '2024-11-18 23:33:59'),
(2213, 1, 'Mengakses halaman produk', '2024-11-18 23:35:36'),
(2214, 1, 'Mengakses halaman produk', '2024-11-18 23:36:02'),
(2215, 1, 'Mengakses halaman produk', '2024-11-18 23:36:56'),
(2216, 1, 'Mengakses halaman produk', '2024-11-18 23:39:38'),
(2217, 1, 'Menambah catatan kasus murid', '2024-11-18 23:39:56'),
(2218, 1, 'Mengakses halaman produk', '2024-11-18 23:39:57'),
(2219, 1, 'Mengakses halaman produk', '2024-11-18 23:41:21'),
(2220, 1, 'Mengakses halaman produk', '2024-11-18 23:41:42'),
(2221, 1, 'Mengakses halaman produk', '2024-11-18 23:42:48'),
(2222, 1, 'Mengakses halaman produk', '2024-11-18 23:44:47'),
(2223, 1, 'Mengakses halaman produk', '2024-11-18 23:45:01'),
(2224, 1, 'Mengakses halaman produk', '2024-11-18 23:45:09'),
(2225, 1, 'Mengakses halaman produk', '2024-11-18 23:45:50'),
(2226, 1, 'Mengakses halaman produk', '2024-11-18 23:46:15'),
(2227, 1, 'Mengakses halaman produk', '2024-11-18 23:46:45'),
(2228, 1, 'Mengakses halaman produk', '2024-11-18 23:47:52'),
(2229, 1, 'Mengakses halaman produk', '2024-11-18 23:51:34'),
(2230, 1, 'Mengakses halaman produk', '2024-11-18 23:52:12'),
(2231, 1, 'Mengakses halaman produk', '2024-11-19 00:00:12'),
(2232, 1, 'Mengakses halaman produk', '2024-11-19 00:01:09'),
(2233, 1, 'Mengakses halaman produk', '2024-11-19 00:03:33'),
(2234, 1, 'Mengubah data user', '2024-11-19 00:03:38'),
(2235, 1, 'Mengakses halaman user', '2024-11-19 00:03:39'),
(2236, 1, 'Mengakses halaman produk', '2024-11-19 00:03:49'),
(2237, 1, 'Mengakses halaman produk', '2024-11-19 00:03:49'),
(2238, 1, 'Mengakses halaman produk', '2024-11-19 00:06:15'),
(2239, 1, 'Mengubah data catatan kasus', '2024-11-19 00:06:41'),
(2240, 1, 'Mengakses halaman produk', '2024-11-19 00:06:42'),
(2241, 1, 'Mengakses halaman produk', '2024-11-19 00:07:50'),
(2242, 1, 'Mengakses halaman produk', '2024-11-19 00:12:53'),
(2243, 1, 'Mengakses halaman produk', '2024-11-19 00:14:52'),
(2244, 1, 'Mengakses halaman produk', '2024-11-19 00:15:30'),
(2245, 1, 'Mengakses halaman produk', '2024-11-19 00:17:44'),
(2246, 1, 'Undo edit catatan kasus', '2024-11-19 00:17:54'),
(2247, 1, 'Mengakses halaman produk', '2024-11-19 00:18:18'),
(2248, 1, 'Undo edit catatan kasus', '2024-11-19 00:18:23'),
(2249, 1, 'Mengakses halaman produk', '2024-11-19 00:18:24'),
(2250, 1, 'Mengakses halaman produk', '2024-11-19 00:19:34'),
(2251, 1, 'Menghapus data catatan kasus', '2024-11-19 00:19:40'),
(2252, 1, 'Mengakses halaman produk', '2024-11-19 00:19:40'),
(2253, 1, 'Mengakses halaman produk', '2024-11-19 00:19:57'),
(2254, 1, 'Menambah catatan kasus murid', '2024-11-19 00:20:25'),
(2255, 1, 'Mengakses halaman produk', '2024-11-19 00:20:25'),
(2256, 1, 'Mengakses halaman produk', '2024-11-19 00:26:13'),
(2257, 1, 'Mengakses halaman produk', '2024-11-19 00:31:52'),
(2258, 1, 'Mengakses halaman restore user', '2024-11-19 00:32:02'),
(2259, 1, 'Mengakses halaman restore kelas', '2024-11-19 00:32:06'),
(2260, 1, 'Mengakses halaman restore catatan kasus', '2024-11-19 00:35:25'),
(2261, 1, 'Mengakses halaman restore catatan kasus', '2024-11-19 00:36:21'),
(2262, 1, 'Merestore catatan kasus', '2024-11-19 00:36:26'),
(2263, 1, 'Mengakses halaman restore catatan kasus', '2024-11-19 00:36:26'),
(2264, 1, 'Mengakses halaman produk', '2024-11-19 00:36:32'),
(2265, 1, 'Mengakses halaman dashboard', '2024-11-19 00:39:50'),
(2266, 1, 'Mengakses halaman dashboard', '2024-11-19 00:40:46'),
(2267, 1, 'Mengakses halaman dashboard', '2024-11-19 00:50:24'),
(2268, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 00:50:46'),
(2269, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 00:52:03'),
(2270, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 00:52:20'),
(2271, 1, 'Menambah data tahun ajaran', '2024-11-19 00:55:06'),
(2272, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 00:55:06'),
(2273, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:01:42'),
(2274, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:03:16'),
(2275, 1, 'mengubah data tahun ajaran', '2024-11-19 01:03:32'),
(2276, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:03:58'),
(2277, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:04:00'),
(2278, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:04:01'),
(2279, 1, 'mengubah data tahun ajaran', '2024-11-19 01:04:10'),
(2280, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:04:10'),
(2281, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:07:02'),
(2282, 1, 'Mengubah data tahun ajaran', '2024-11-19 01:07:09'),
(2283, 1, 'Mengubah data tahun ajaran', '2024-11-19 01:07:29'),
(2284, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:07:30'),
(2285, 1, 'Mengubah data tahun ajaran', '2024-11-19 01:07:36'),
(2286, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:07:37'),
(2287, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:12:20'),
(2288, 1, 'Menambah data tahun ajaran', '2024-11-19 01:12:25'),
(2289, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:12:25'),
(2290, 1, 'Mengubah data tahun ajaran', '2024-11-19 01:12:32'),
(2291, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:12:33'),
(2292, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:14:13'),
(2293, 1, 'Undo edit data tahun ajaran', '2024-11-19 01:14:18'),
(2294, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:14:18'),
(2295, 1, 'Mengakses halaman produk', '2024-11-19 01:17:01'),
(2296, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:22:51'),
(2297, 1, 'Menghapus data tahun ajaran', '2024-11-19 01:22:56'),
(2298, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:22:57'),
(2299, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:23:45'),
(2300, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-19 01:23:49'),
(2301, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-19 01:24:16'),
(2302, 1, 'Mengakses halaman setting', '2024-11-19 01:24:21'),
(2303, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-19 01:24:25'),
(2304, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-19 01:24:38'),
(2305, 1, 'Merestore tahun ajaran', '2024-11-19 01:24:42'),
(2306, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-19 01:24:42'),
(2307, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:24:44'),
(2308, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 01:28:25'),
(2309, 1, 'Mengakses halaman produk', '2024-11-19 01:28:26'),
(2310, 1, 'Mengakses halaman produk', '2024-11-19 01:28:59'),
(2311, 1, 'Mengakses halaman produk', '2024-11-19 01:30:21'),
(2312, 1, 'Menambah catatan kasus murid', '2024-11-19 01:30:39'),
(2313, 1, 'Mengakses halaman produk', '2024-11-19 01:30:40'),
(2314, 1, 'Mengakses halaman produk', '2024-11-19 01:31:50'),
(2315, 1, 'Menghapus data catatan kasus', '2024-11-19 01:31:54'),
(2316, 1, 'Mengakses halaman produk', '2024-11-19 01:31:54'),
(2317, 1, 'Mengakses halaman produk', '2024-11-19 01:32:06'),
(2318, 1, 'Mengakses halaman produk', '2024-11-19 01:32:07'),
(2319, 1, 'Mengubah data catatan kasus', '2024-11-19 01:32:56'),
(2320, 1, 'Mengakses halaman produk', '2024-11-19 01:32:56'),
(2321, 1, 'Mengakses halaman produk', '2024-11-19 01:35:21'),
(2322, 1, 'Mengakses halaman produk', '2024-11-19 01:37:27'),
(2323, 1, 'Mengakses halaman produk', '2024-11-19 01:37:46'),
(2324, 1, 'Mengakses halaman produk', '2024-11-19 01:38:01'),
(2325, 1, 'Menambah catatan kasus murid', '2024-11-19 01:38:16'),
(2326, 1, 'Mengakses halaman produk', '2024-11-19 01:38:16'),
(2327, 1, 'Mengakses halaman produk', '2024-11-19 01:39:51'),
(2328, 1, 'Menambah catatan kasus murid', '2024-11-19 01:40:05'),
(2329, 1, 'Mengakses halaman produk', '2024-11-19 01:40:06'),
(2330, 1, 'Menambah catatan kasus murid', '2024-11-19 01:40:21'),
(2331, 1, 'Mengakses halaman produk', '2024-11-19 01:40:22'),
(2332, 1, 'Mengakses halaman produk', '2024-11-19 01:41:43'),
(2333, 1, 'Menambah catatan kasus murid', '2024-11-19 01:41:54'),
(2334, 1, 'Mengakses halaman produk', '2024-11-19 01:41:55'),
(2335, 1, 'Mengubah data catatan kasus', '2024-11-19 01:42:15'),
(2336, 1, 'Mengakses halaman produk', '2024-11-19 01:42:15'),
(2337, 1, 'Undo edit catatan kasus', '2024-11-19 01:42:22'),
(2338, 1, 'Mengakses halaman produk', '2024-11-19 01:42:23'),
(2339, 1, 'Mengakses halaman dashboard', '2024-11-19 01:53:29'),
(2340, 1, 'Mengakses halaman dashboard', '2024-11-19 02:25:37'),
(2341, 1, 'Mengakses halaman dashboard', '2024-11-19 02:25:54'),
(2342, 1, 'Mengakses halaman dashboard', '2024-11-19 02:26:17'),
(2343, 1, 'Mengakses halaman dashboard', '2024-11-19 02:26:41'),
(2344, 1, 'Mengakses halaman dashboard', '2024-11-19 02:26:48'),
(2345, 1, 'Mengakses halaman dashboard', '2024-11-19 02:27:20'),
(2346, 1, 'Mengakses halaman dashboard', '2024-11-19 02:28:06'),
(2347, 1, 'Mengakses halaman dashboard', '2024-11-19 02:31:10'),
(2348, 1, 'Mengakses halaman dashboard', '2024-11-19 02:31:18'),
(2349, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:31:22'),
(2350, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:31:40'),
(2351, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:31:50'),
(2352, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:31:57'),
(2353, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:32:03'),
(2354, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:32:10'),
(2355, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:46:26'),
(2356, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:47:01'),
(2357, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:48:58'),
(2358, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:50:59'),
(2359, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:51:24'),
(2360, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:51:41'),
(2361, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:51:49'),
(2362, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:52:01'),
(2363, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:52:30'),
(2364, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:52:46'),
(2365, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:53:14'),
(2366, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:53:25'),
(2367, 1, 'Mengakses halaman user', '2024-11-19 02:55:06'),
(2368, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 02:55:10'),
(2369, 1, 'Mengakses halaman produk', '2024-11-19 02:55:15'),
(2370, 1, 'Mengakses halaman produk', '2024-11-19 02:59:13'),
(2371, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 02:59:30'),
(2372, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 03:01:47'),
(2373, 1, 'Mengakses halaman dashboard', '2024-11-19 14:38:17'),
(2374, 1, 'Mengakses halaman dashboard', '2024-11-19 14:58:20'),
(2375, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 14:58:22'),
(2376, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 14:58:33'),
(2377, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 14:59:22'),
(2378, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 14:59:31'),
(2379, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:00:59'),
(2380, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:02:04'),
(2381, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:02:30'),
(2382, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:03:07'),
(2383, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:07:15'),
(2384, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:09:55'),
(2385, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:10:13'),
(2386, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:17:48'),
(2387, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:18:07'),
(2388, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:27:11'),
(2389, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:29:58'),
(2390, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:30:28'),
(2391, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:33:02'),
(2392, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 15:34:49'),
(2393, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 15:41:23'),
(2394, 1, 'Mengakses halaman produk', '2024-11-19 15:41:24'),
(2395, 1, 'Mengakses halaman produk', '2024-11-19 15:47:38'),
(2396, 1, 'Mengakses halaman produk', '2024-11-19 15:47:54'),
(2397, 1, 'Mengakses halaman produk', '2024-11-19 15:48:05'),
(2398, 1, 'Mengakses halaman produk', '2024-11-19 15:48:17'),
(2399, 1, 'Mengakses halaman produk', '2024-11-19 15:48:45'),
(2400, 1, 'Mengakses halaman produk', '2024-11-19 15:48:57'),
(2401, 1, 'Mengakses halaman produk', '2024-11-19 15:49:06'),
(2402, 1, 'Mengakses halaman produk', '2024-11-19 15:49:17'),
(2403, 1, 'Mengakses halaman produk', '2024-11-19 15:49:52'),
(2404, 1, 'Mengakses halaman produk', '2024-11-19 15:50:01'),
(2405, 1, 'Mengakses halaman produk', '2024-11-19 15:52:12'),
(2406, 1, 'Mengakses halaman produk', '2024-11-19 15:52:26'),
(2407, 1, 'Mengakses halaman produk', '2024-11-19 15:52:56'),
(2408, 1, 'Mengakses halaman produk', '2024-11-19 15:53:07'),
(2409, 1, 'Mengakses halaman produk', '2024-11-19 15:53:20'),
(2410, 1, 'Mengakses halaman produk', '2024-11-19 15:53:49'),
(2411, 1, 'Mengakses halaman produk', '2024-11-19 15:54:04'),
(2412, 1, 'Mengakses halaman produk', '2024-11-19 15:55:12'),
(2413, 1, 'Mengakses halaman produk', '2024-11-19 15:55:59'),
(2414, 1, 'Mengakses halaman produk', '2024-11-19 15:56:56'),
(2415, 1, 'Mengakses halaman produk', '2024-11-19 15:59:21'),
(2416, 1, 'Mengakses halaman dashboard', '2024-11-19 19:41:24'),
(2417, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 19:41:26'),
(2418, 1, 'Mengakses halaman produk', '2024-11-19 19:41:42'),
(2419, 1, 'Mengakses halaman produk', '2024-11-19 19:46:59'),
(2420, 1, 'Mengakses halaman produk', '2024-11-19 20:01:51'),
(2421, 1, 'Mengakses halaman produk', '2024-11-19 20:03:08'),
(2422, 1, 'Mengakses halaman produk', '2024-11-19 20:03:21'),
(2423, 1, 'Mengakses halaman produk', '2024-11-19 20:03:53'),
(2424, 1, 'Mengakses halaman produk', '2024-11-19 20:03:59'),
(2425, 1, 'Mengakses halaman produk', '2024-11-19 20:04:11'),
(2426, 1, 'Mengakses halaman produk', '2024-11-19 20:04:21'),
(2427, 1, 'Mengakses halaman produk', '2024-11-19 20:04:50'),
(2428, 1, 'Mengakses halaman produk', '2024-11-19 20:05:04'),
(2429, 1, 'Mengakses halaman produk', '2024-11-19 20:05:10'),
(2430, 1, 'Mengakses halaman produk', '2024-11-19 20:05:21'),
(2431, 1, 'Mengakses halaman produk', '2024-11-19 20:05:29'),
(2432, 1, 'Mengakses halaman produk', '2024-11-19 20:05:37'),
(2433, 1, 'Mengakses halaman produk', '2024-11-19 20:06:05'),
(2434, 1, 'Mengakses halaman produk', '2024-11-19 20:07:14'),
(2435, 1, 'Mengakses halaman dashboard', '2024-11-19 20:07:53'),
(2436, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 20:07:55'),
(2437, 1, 'Mengakses halaman user', '2024-11-19 20:07:57'),
(2438, 1, 'Mengakses halaman kelas', '2024-11-19 20:07:59'),
(2439, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 20:08:12'),
(2440, 1, 'Mengakses halaman produk', '2024-11-19 20:08:14'),
(2441, 1, 'Mengakses halaman setting', '2024-11-19 20:08:16'),
(2442, 1, 'Mengakses halaman log aktivitas', '2024-11-19 20:08:18'),
(2443, 1, 'Mengakses halaman tahun ajaran', '2024-11-19 20:08:23'),
(2444, 1, 'Mengakses halaman produk', '2024-11-19 20:15:50'),
(2445, 1, 'Mengubah data catatan kasus', '2024-11-19 20:16:03'),
(2446, 1, 'Mengakses halaman produk', '2024-11-19 20:16:03'),
(2447, 1, 'Mengakses halaman produk', '2024-11-19 20:19:32'),
(2448, 1, 'Mengakses halaman produk', '2024-11-19 20:23:26'),
(2449, 1, 'Mengakses halaman produk', '2024-11-19 20:23:56'),
(2450, 1, 'Mengubah data catatan kasus', '2024-11-19 20:24:13'),
(2451, 1, 'Mengakses halaman produk', '2024-11-19 20:24:14'),
(2452, 1, 'Mengakses halaman produk', '2024-11-19 20:33:34'),
(2453, 1, 'Mengakses halaman produk', '2024-11-19 20:34:06'),
(2454, 1, 'Mengakses halaman produk', '2024-11-19 20:34:48'),
(2455, 1, 'Mengakses halaman produk', '2024-11-19 20:36:17'),
(2456, 1, 'Mengakses halaman produk', '2024-11-19 20:59:41'),
(2457, 1, 'Mengakses halaman produk', '2024-11-19 21:00:54'),
(2458, 1, 'Mengakses halaman produk', '2024-11-19 21:01:15'),
(2459, 1, 'Menambah catatan kasus murid', '2024-11-19 21:01:34'),
(2460, 1, 'Mengakses halaman produk', '2024-11-19 21:01:34'),
(2461, 1, 'Mengakses halaman produk', '2024-11-19 21:02:47'),
(2462, 1, 'Mengakses halaman produk', '2024-11-19 21:03:10'),
(2463, 1, 'Mengakses halaman produk', '2024-11-19 21:04:48'),
(2464, 1, 'Mengakses halaman produk', '2024-11-19 21:06:43'),
(2465, 1, 'Mengakses halaman produk', '2024-11-19 21:07:54'),
(2466, 1, 'Mengubah data catatan kasus', '2024-11-19 21:08:00'),
(2467, 1, 'Mengakses halaman produk', '2024-11-19 21:08:00'),
(2468, 1, 'Mengakses halaman produk', '2024-11-19 21:08:46'),
(2469, 1, 'Mengakses halaman produk', '2024-11-19 21:10:16'),
(2470, 1, 'Mengakses halaman produk', '2024-11-19 21:10:37'),
(2471, 1, 'Mengakses halaman produk', '2024-11-19 21:20:51'),
(2472, 1, 'Mengakses halaman produk', '2024-11-19 21:26:22'),
(2473, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 21:28:18'),
(2474, 1, 'Mengakses halaman produk', '2024-11-19 23:07:43'),
(2475, 1, 'Mengakses halaman produk', '2024-11-19 23:08:55'),
(2476, 1, 'Mengakses halaman produk', '2024-11-19 23:09:28'),
(2477, 1, 'Mengakses halaman produk', '2024-11-19 23:10:10'),
(2478, 1, 'Mengakses halaman produk', '2024-11-19 23:10:47'),
(2479, 27, 'Mengakses halaman dashboard', '2024-11-19 23:19:20'),
(2480, 27, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:19:22'),
(2481, 27, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:19:52'),
(2482, 27, 'Mengakses halaman produk', '2024-11-19 23:19:54'),
(2483, 28, 'Mengakses halaman dashboard', '2024-11-19 23:21:28'),
(2484, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:21:30'),
(2485, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:22:04'),
(2486, 28, 'Mengakses halaman dashboard', '2024-11-19 23:22:23'),
(2487, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:22:25'),
(2488, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:23:50'),
(2489, 28, 'Mengakses halaman dashboard', '2024-11-19 23:24:30'),
(2490, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:24:32'),
(2491, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:28:00'),
(2492, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:28:48'),
(2493, 28, 'Mengakses halaman dashboard', '2024-11-19 23:29:22'),
(2494, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:29:24'),
(2495, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:30:18'),
(2496, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:30:51'),
(2497, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:30:54'),
(2498, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:32:52'),
(2499, 28, 'Mengakses halaman profile', '2024-11-19 23:33:54'),
(2500, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:33:58'),
(2501, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:34:30'),
(2502, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:35:16'),
(2503, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:38:13'),
(2504, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:38:33'),
(2505, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:42:27'),
(2506, 28, 'Mengakses halaman dashboard', '2024-11-19 23:42:41'),
(2507, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:42:52'),
(2508, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:43:09'),
(2509, 1, 'Mengakses halaman dashboard', '2024-11-19 23:43:46'),
(2510, 1, 'Mengakses halaman produk', '2024-11-19 23:43:50'),
(2511, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:43:53'),
(2512, 28, 'Mengakses halaman dashboard', '2024-11-19 23:44:11'),
(2513, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:44:29'),
(2514, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:44:50'),
(2515, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:45:07'),
(2516, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:46:35'),
(2517, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:48:19'),
(2518, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:58:45'),
(2519, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:58:51'),
(2520, 28, 'Mengakses halaman dashboard', '2024-11-19 23:59:38'),
(2521, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-19 23:59:40'),
(2522, 28, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:00:10'),
(2523, 1, 'Mengakses halaman dashboard', '2024-11-20 00:00:30'),
(2524, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:00:37'),
(2525, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:03:19'),
(2526, 1, 'Mengakses halaman user', '2024-11-20 00:03:24'),
(2527, 1, 'Mengakses halaman kelas', '2024-11-20 00:03:27'),
(2528, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:03:31'),
(2529, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:03:44'),
(2530, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:04:12'),
(2531, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:04:25'),
(2532, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:04:44'),
(2533, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:05:04'),
(2534, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:05:56'),
(2535, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-20 00:05:58'),
(2536, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-20 00:06:23'),
(2537, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:06:29'),
(2538, 1, 'Menghapus data tahun ajaran', '2024-11-20 00:06:34'),
(2539, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 00:06:35'),
(2540, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-20 00:06:37'),
(2541, 1, 'Merestore tahun ajaran', '2024-11-20 00:06:38'),
(2542, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-20 00:06:39'),
(2543, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:06:40'),
(2544, 1, 'Mengakses halaman dashboard', '2024-11-20 00:06:41'),
(2545, 1, 'Mengakses halaman user', '2024-11-20 00:06:44'),
(2546, 1, 'Mengakses halaman produk', '2024-11-20 00:06:52'),
(2547, 1, 'Mengubah data catatan kasus', '2024-11-20 00:07:01'),
(2548, 1, 'Mengakses halaman produk', '2024-11-20 00:07:02'),
(2549, 1, 'Mengubah data catatan kasus', '2024-11-20 00:07:16'),
(2550, 1, 'Mengakses halaman produk', '2024-11-20 00:07:17'),
(2551, 1, 'Mengakses halaman setting', '2024-11-20 00:07:23'),
(2552, 1, 'Mengakses halaman produk', '2024-11-20 00:07:28'),
(2553, 26, 'Mengakses halaman dashboard', '2024-11-20 00:15:58'),
(2554, 26, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:16:00'),
(2555, 26, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:17:39'),
(2556, 26, 'Mengakses halaman kasus pelanggaran', '2024-11-20 00:17:53'),
(2557, 1, 'Mengakses halaman dashboard', '2024-11-20 00:18:08'),
(2558, 1, 'Mengakses halaman dashboard', '2024-11-20 01:00:07'),
(2559, 1, 'Mengakses halaman produk', '2024-11-20 01:02:37'),
(2560, 1, 'Mengakses halaman produk', '2024-11-20 01:02:49'),
(2561, 1, 'Mengakses halaman produk', '2024-11-20 01:03:44'),
(2562, 1, 'Mengakses halaman produk', '2024-11-20 01:06:52'),
(2563, 1, 'Mengakses halaman produk', '2024-11-20 01:09:27'),
(2564, 1, 'Mengakses halaman produk', '2024-11-20 01:13:51'),
(2565, 1, 'Mengakses halaman produk', '2024-11-20 01:14:06'),
(2566, 1, 'Mengakses halaman produk', '2024-11-20 01:22:20'),
(2567, 1, 'Mengakses halaman produk', '2024-11-20 01:33:19'),
(2568, 1, 'Mengakses halaman user', '2024-11-20 01:33:21'),
(2569, 1, 'Mengakses halaman kelas', '2024-11-20 01:33:34'),
(2570, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 01:33:57'),
(2571, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 01:34:11'),
(2572, 1, 'Mengakses halaman dashboard', '2024-11-20 12:33:12'),
(2573, 1, 'Mengakses halaman produk', '2024-11-20 12:33:22'),
(2574, 1, 'Mengakses halaman produk', '2024-11-20 12:46:54'),
(2575, 1, 'Mengakses halaman produk', '2024-11-20 12:47:45'),
(2576, 1, 'Mengakses halaman produk', '2024-11-20 12:48:10'),
(2577, 1, 'Mengakses halaman user', '2024-11-20 12:49:35'),
(2578, 1, 'Mengakses halaman user', '2024-11-20 12:50:36'),
(2579, 1, 'Mengakses halaman kelas', '2024-11-20 12:51:02'),
(2580, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 12:51:49'),
(2581, 1, 'Mengakses halaman tahun ajaran', '2024-11-20 13:02:38'),
(2582, 1, 'Mengakses halaman produk', '2024-11-20 13:02:48'),
(2583, 1, 'Mengakses halaman dashboard', '2024-11-21 01:09:00'),
(2584, 1, 'Mengakses halaman dashboard', '2024-11-21 01:09:02'),
(2585, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-21 01:09:03'),
(2586, 1, 'Mengakses halaman user', '2024-11-21 01:09:05'),
(2587, 1, 'Mengakses halaman kelas', '2024-11-21 01:10:06'),
(2588, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:10:14'),
(2589, 1, 'Mengakses halaman produk', '2024-11-21 01:10:17'),
(2590, 1, 'Menambah catatan kasus murid', '2024-11-21 01:11:19'),
(2591, 1, 'Mengakses halaman produk', '2024-11-21 01:11:20'),
(2592, 1, 'Mengakses halaman dashboard', '2024-11-21 01:11:44'),
(2593, 1, 'Mengakses halaman user', '2024-11-21 01:12:05'),
(2594, 1, 'Mengakses halaman kelas', '2024-11-21 01:12:59'),
(2595, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:13:14'),
(2596, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:13:23'),
(2597, 1, 'Mengakses halaman produk', '2024-11-21 01:13:55'),
(2598, 1, 'Mengakses halaman setting', '2024-11-21 01:14:22'),
(2599, 1, 'Mengakses halaman log aktivitas', '2024-11-21 01:14:47'),
(2600, 1, 'Mengakses halaman restore user', '2024-11-21 01:15:04'),
(2601, 1, 'Mengakses halaman restore kelas', '2024-11-21 01:15:08'),
(2602, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 01:15:11'),
(2603, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 01:15:42'),
(2604, 1, 'Mengakses halaman restore user', '2024-11-21 01:15:45'),
(2605, 1, 'Mengakses halaman dashboard', '2024-11-21 01:17:08'),
(2606, 27, 'Mengakses halaman dashboard', '2024-11-21 01:18:43'),
(2607, 27, 'Mengakses halaman dashboard', '2024-11-21 01:18:53'),
(2608, 27, 'Mengakses halaman kasus pelanggaran', '2024-11-21 01:18:57'),
(2609, 27, 'Mengakses halaman produk', '2024-11-21 01:18:59'),
(2610, 27, 'Mengakses halaman dashboard', '2024-11-21 01:19:46'),
(2611, 1, 'Mengakses halaman dashboard', '2024-11-21 01:20:27'),
(2612, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-21 01:20:40'),
(2613, 1, 'Mengakses halaman dashboard', '2024-11-21 01:21:51'),
(2614, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-21 01:21:53'),
(2615, 1, 'Mengakses halaman dashboard', '2024-11-21 01:22:02'),
(2616, 1, 'Mengakses halaman dashboard', '2024-11-21 01:23:07'),
(2617, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-21 01:23:19'),
(2618, 1, 'Mengakses halaman dashboard', '2024-11-21 01:23:37'),
(2619, 27, 'Mengakses halaman dashboard', '2024-11-21 01:25:38'),
(2620, 26, 'Mengakses halaman dashboard', '2024-11-21 01:27:36'),
(2621, 1, 'Mengakses halaman dashboard', '2024-11-21 01:27:59'),
(2622, 1, 'Mengakses halaman profile', '2024-11-21 01:28:04'),
(2623, 1, 'Mengakses halaman user', '2024-11-21 01:31:04'),
(2624, 1, 'Mengubah data user', '2024-11-21 01:33:09'),
(2625, 1, 'Mengakses halaman user', '2024-11-21 01:33:10'),
(2626, 1, 'Mengakses halaman user', '2024-11-21 01:34:35'),
(2627, 1, 'Mengakses halaman kelas', '2024-11-21 01:35:08'),
(2628, 1, 'Mengubah data kelas', '2024-11-21 01:35:52'),
(2629, 1, 'Mengakses halaman kelas', '2024-11-21 01:35:53'),
(2630, 1, 'Undo edit data kelas', '2024-11-21 01:36:09'),
(2631, 1, 'Mengakses halaman kelas', '2024-11-21 01:36:10'),
(2632, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:36:12');
INSERT INTO `activity_log` (`id`, `id_user`, `activity`, `timestamp`) VALUES
(2633, 1, 'Mengubah data tahun ajaran', '2024-11-21 01:40:50'),
(2634, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:40:50'),
(2635, 1, 'Undo edit data tahun ajaran', '2024-11-21 01:40:58'),
(2636, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:40:58'),
(2637, 1, 'Mengakses halaman produk', '2024-11-21 01:41:43'),
(2638, 1, 'Mengubah data catatan kasus', '2024-11-21 01:51:46'),
(2639, 1, 'Mengakses halaman produk', '2024-11-21 01:51:47'),
(2640, 1, 'Mengakses halaman setting', '2024-11-21 01:57:36'),
(2641, 1, 'Mengakses halaman log aktivitas', '2024-11-21 01:57:51'),
(2642, 1, 'Mengakses halaman user', '2024-11-21 01:58:09'),
(2643, 1, 'Merestore user yang diedit', '2024-11-21 01:58:17'),
(2644, 1, 'Mengakses halaman user', '2024-11-21 01:58:17'),
(2645, 1, 'Menghapus data user', '2024-11-21 01:58:20'),
(2646, 1, 'Mengakses halaman user', '2024-11-21 01:58:20'),
(2647, 1, 'Mengakses halaman kelas', '2024-11-21 01:58:23'),
(2648, 1, 'Menghapus data kelas', '2024-11-21 01:58:25'),
(2649, 1, 'Mengakses halaman kelas', '2024-11-21 01:58:26'),
(2650, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:58:28'),
(2651, 1, 'Menghapus data tahun ajaran', '2024-11-21 01:58:31'),
(2652, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:58:32'),
(2653, 1, 'Mengakses halaman tahun ajaran', '2024-11-21 01:58:36'),
(2654, 1, 'Mengakses halaman produk', '2024-11-21 01:58:37'),
(2655, 1, 'Mengakses halaman restore user', '2024-11-21 01:58:41'),
(2656, 1, 'Merestore user', '2024-11-21 01:58:52'),
(2657, 1, 'Mengakses halaman restore user', '2024-11-21 01:58:52'),
(2658, 1, 'Mengakses halaman restore kelas', '2024-11-21 01:59:01'),
(2659, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 01:59:13'),
(2660, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-21 01:59:22'),
(2661, 1, 'Mengakses halaman restore user', '2024-11-21 01:59:29'),
(2662, 1, 'Mengakses halaman restore kelas', '2024-11-21 01:59:34'),
(2663, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 01:59:36'),
(2664, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 02:00:16'),
(2665, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-21 02:00:21'),
(2666, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-21 02:01:30'),
(2667, 1, 'Merestore tahun ajaran', '2024-11-21 02:01:37'),
(2668, 1, 'Mengakses halaman restore tahun ajaran', '2024-11-21 02:01:37'),
(2669, 1, 'Mengakses halaman produk', '2024-11-21 02:01:48'),
(2670, 1, 'Mengakses halaman produk', '2024-11-21 02:02:07'),
(2671, 1, 'Mengakses halaman user', '2024-11-21 02:02:11'),
(2672, 1, 'Mengakses halaman kelas', '2024-11-21 02:02:16'),
(2673, 1, 'Mengakses halaman restore kelas', '2024-11-21 02:02:21'),
(2674, 1, 'Merestore kelas', '2024-11-21 02:02:23'),
(2675, 1, 'Mengakses halaman restore kelas', '2024-11-21 02:02:23'),
(2676, 1, 'Mengakses halaman kelas', '2024-11-21 02:02:25'),
(2677, 1, 'Mengakses halaman produk', '2024-11-21 02:02:34'),
(2678, 1, 'Menghapus data catatan kasus', '2024-11-21 02:02:38'),
(2679, 1, 'Mengakses halaman produk', '2024-11-21 02:02:38'),
(2680, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 02:02:41'),
(2681, 1, 'Merestore catatan kasus', '2024-11-21 02:02:48'),
(2682, 1, 'Mengakses halaman restore catatan kasus', '2024-11-21 02:02:48'),
(2683, 1, 'Mengakses halaman dashboard', '2024-11-21 02:03:20'),
(2684, 1, 'Mengakses halaman dashboard', '2024-11-22 00:01:36'),
(2685, 1, 'Mengakses halaman profile', '2024-11-22 00:01:50'),
(2686, 1, 'Mengakses halaman kasus pelanggaran', '2024-11-22 00:02:38'),
(2687, 1, 'Mengakses halaman user', '2024-11-22 00:02:56'),
(2688, 1, 'Mengubah data user', '2024-11-22 00:03:43'),
(2689, 1, 'Mengakses halaman user', '2024-11-22 00:03:43'),
(2690, 1, 'Merestore user yang diedit', '2024-11-22 00:04:01'),
(2691, 1, 'Mengakses halaman user', '2024-11-22 00:04:02'),
(2692, 1, 'Mengakses halaman kelas', '2024-11-22 00:04:06'),
(2693, 1, 'Mengakses halaman tahun ajaran', '2024-11-22 00:04:20'),
(2694, 1, 'Mengakses halaman produk', '2024-11-22 00:04:28'),
(2695, 1, 'Mengakses halaman setting', '2024-11-22 00:05:03'),
(2696, 1, 'Mengakses halaman log aktivitas', '2024-11-22 00:05:14'),
(2697, 1, 'Mengakses halaman user', '2024-11-22 00:05:34'),
(2698, 1, 'Menghapus data user', '2024-11-22 00:05:44'),
(2699, 1, 'Mengakses halaman user', '2024-11-22 00:05:45'),
(2700, 1, 'Mengakses halaman restore user', '2024-11-22 00:05:47'),
(2701, 1, 'Merestore user', '2024-11-22 00:05:57'),
(2702, 1, 'Mengakses halaman restore user', '2024-11-22 00:05:58'),
(2703, 27, 'Mengakses halaman dashboard', '2024-11-22 00:06:28'),
(2704, 27, 'Mengakses halaman profile', '2024-11-22 00:06:39'),
(2705, 27, 'Mengakses halaman kasus pelanggaran', '2024-11-22 00:06:43'),
(2706, 27, 'Mengakses halaman produk', '2024-11-22 00:06:52'),
(2707, 23, 'Mengakses halaman dashboard', '2024-11-22 00:07:46'),
(2708, 23, 'Mengakses halaman kasus pelanggaran', '2024-11-22 00:07:52'),
(2709, 23, 'Mengakses halaman profile', '2024-11-22 00:07:58'),
(2710, 23, 'Mengakses halaman dashboard', '2024-11-22 00:08:04'),
(2711, 24, 'Mengakses halaman dashboard', '2024-11-22 00:45:33'),
(2712, 25, 'Mengakses halaman dashboard', '2024-11-22 00:46:01'),
(2713, 26, 'Mengakses halaman dashboard', '2024-11-22 00:46:15'),
(2714, 28, 'Mengakses halaman dashboard', '2024-11-22 00:46:26'),
(2715, 1, 'Mengakses halaman dashboard', '2024-11-22 00:46:56'),
(2716, 1, 'Mengakses halaman produk', '2024-11-22 00:47:03'),
(2717, 1, 'Menambah catatan kasus murid', '2024-11-22 00:47:10'),
(2718, 1, 'Mengakses halaman produk', '2024-11-22 00:47:10'),
(2719, 1, 'Mengakses halaman user', '2024-11-22 00:47:23'),
(2720, 1, 'Menambah user', '2024-11-22 00:47:31'),
(2721, 1, 'Mengakses halaman user', '2024-11-22 00:47:32'),
(2722, 1, 'Mengakses halaman produk', '2024-11-22 00:47:33');

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

INSERT INTO `backup_kasus_pelanggaran` (`id_kasus`, `id_user`, `bentuk_pelanggaran`, `tindak_lanjut`, `catatan`, `tgl_kejadian`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`, `id_tahun`) VALUES
(4, 28, 'terlambat', 'terlambat', 'terlambat', '2024-11-19', 0, '2024-11-19 08:31:54', 1, NULL, NULL, '2024-11-19', 1, 0),
(6, NULL, ' \'tahun\' => $f,', ' \'tahun\' => $f,', ' \'tahun\' => $f,', '2024-11-20', 0, NULL, NULL, '2024-11-20 03:16:03', 1, '2024-11-19', 1, 1),
(7, 28, 'tes', 'tes', 'tes', '2024-11-20', 0, NULL, NULL, '2024-11-20 07:07:01', 1, '2024-11-20', 1, 1);

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

--
-- Dumping data untuk tabel `backup_kelas`
--

INSERT INTO `backup_kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `isdelete`, `jenjang`, `id_user`) VALUES
(16, 'XII B', 'RPL', '2024-10-21 09:42:11', NULL, NULL, 1, NULL, NULL, 0, 'SMK', 15),
(22, 'XI', 'RPL', '2024-10-22 01:01:32', '2024-10-22 01:02:27', NULL, 1, 1, NULL, 0, 'SMK', 15),
(23, 'X', '', '2024-10-22 01:04:42', NULL, NULL, 1, NULL, NULL, 0, 'SMK', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_tahun_ajaran`
--

CREATE TABLE `backup_tahun_ajaran` (
  `id_tahun` int(11) NOT NULL,
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
  `nik` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `backup_user`
--

INSERT INTO `backup_user` (`id_user`, `nama_user`, `email`, `password`, `level`, `id_kelas`, `nohp`, `jk`, `tgl_lhr`, `foto`, `isdelete`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nis`, `nisn`, `nuptk`, `nik`) VALUES
(1, 'admin', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, '628888', NULL, NULL, 'default.jpg', 0, NULL, NULL, 1, '2024-11-02 07:18:06', NULL, NULL, NULL, NULL, '', ''),
(14, 'pak dedi', 'ellygou1223@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 5, 1, '62895340404752', 'Laki-laki', '2024-10-21', 'default.jpg', 0, NULL, '2024-10-21 07:58:24', 1, '2024-10-21 08:33:04', NULL, NULL, NULL, NULL, '', ''),
(16, 'bu sim', '', 'd41d8cd98f00b204e9800998ecf8427e', 5, NULL, '62', '', '0000-00-00', 'default.jpg', 0, 1, '2024-10-21 09:54:11', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(17, 'rpl', 'ellygou1223@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 6, 16, '62', '', '0000-00-00', 'default.jpg', 0, 1, '2024-10-22 00:41:58', 1, '2024-10-22 01:11:39', NULL, NULL, NULL, NULL, '', ''),
(19, 'siswa2', 'Dinaoktapia76@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 6, 17, '62', '', '0000-00-00', 'default.jpg', 0, 1, '2024-10-22 01:10:11', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(20, 'siswa3', 'Imjeno0042@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 6, 24, '62', '', '0000-00-00', 'default.jpg', 0, 1, '2024-10-22 01:10:37', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(27, 'bk', 'bk@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 6, NULL, '6282171810404', 'Perempuan', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:58', 1, '2024-11-19 03:18:31', NULL, NULL, NULL, NULL, '', ''),
(29, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 6, 1, '62', '', '0000-00-00', 'default.jpg', 0, 1, '2024-10-28 01:15:50', NULL, NULL, NULL, NULL, '', '', '', '');

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

INSERT INTO `kasus_pelanggaran` (`id_kasus`, `id_user`, `bentuk_pelanggaran`, `tindak_lanjut`, `catatan`, `tgl_kejadian`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`, `id_tahun`) VALUES
(8, 28, 'TERLAMBAT KE SEKOLAH', 'DIBERI SANKSI DAN DIPANGGIL ORANG TUA', 'terlambat\r\n', '2024-11-21', 0, NULL, NULL, '2024-11-21 08:51:46', 1, '2024-11-21', 1, 2);

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
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_setting`, `logo`, `alamat`, `nama_sekolah`, `nohp`, `updated_by`, `updated_at`) VALUES
(1, 'PENCATATAN KASUS MURID', 'logo_sph.png', 'Komp.Batu Batam Mas, Jl. Gajah Mada Blok D & E No.1,2,3, Baloi Indah, Kec. Lubuk Baja, Kota Batam, Kepulauan Riau 29444', 'SEKOLAH PERMATA HARAPAN', '(0778) 431318', 1, '2024-11-02 01:04:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun` int(11) NOT NULL,
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

INSERT INTO `tahun_ajaran` (`id_tahun`, `tahun`, `isdelete`, `deleted_at`, `deleted_by`, `updated_at`, `updated_by`, `created_at`, `created_by`) VALUES
(1, '2023/2024', 0, NULL, NULL, NULL, NULL, '2024-11-19 07:55:06', 1),
(2, '2024/2025', 0, NULL, NULL, NULL, NULL, '2024-11-19 08:12:25', 1);

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
  `nik` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `id_kelas`, `nohp`, `jk`, `tgl_lhr`, `foto`, `isdelete`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nis`, `nisn`, `nuptk`, `nik`) VALUES
(1, 'admin', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, '628888', NULL, NULL, '1732008707_17a0b47620ddbeae9640.png', 0, NULL, NULL, 1, '2024-11-19 03:31:47', NULL, NULL, NULL, NULL, '', ''),
(23, 'kepala sekolah', 'kepalasekolah@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, NULL, '62111111111111', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:53:02', NULL, NULL, NULL, NULL, '', '', '1', '1'),
(24, 'wakil kepala sekolah', 'wakilkepalasekolah@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 3, NULL, '62222222222222', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:53:35', NULL, NULL, NULL, NULL, '', '', '1', '1'),
(25, 'kesiswaan', 'kesiswaan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 4, NULL, '62333333333333', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:03', NULL, NULL, NULL, NULL, '', '', '1', '1'),
(26, 'guru', 'guru@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 5, NULL, '62444444444444', 'Laki-laki', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:30', NULL, NULL, NULL, NULL, '', '', '1', '1'),
(27, 'bk', 'bk@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 6, NULL, '6282171810404', 'Perempuan', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:54:58', 1, '2024-11-19 03:19:26', NULL, NULL, NULL, NULL, '1', '1'),
(28, 'murid', 'murid@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 7, 1, '62895340404752', 'Perempuan', '2024-10-25', 'default.jpg', 0, 1, '2024-10-25 10:55:26', 1, '2024-11-19 03:18:54', NULL, NULL, '1', '1', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2723;

--
-- AUTO_INCREMENT untuk tabel `backup_kasus_pelanggaran`
--
ALTER TABLE `backup_kasus_pelanggaran`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `backup_kelas`
--
ALTER TABLE `backup_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `backup_tahun_ajaran`
--
ALTER TABLE `backup_tahun_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `backup_user`
--
ALTER TABLE `backup_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kasus_pelanggaran`
--
ALTER TABLE `kasus_pelanggaran`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
