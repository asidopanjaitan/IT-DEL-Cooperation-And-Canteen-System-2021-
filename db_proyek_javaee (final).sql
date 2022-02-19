-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2021 pada 09.21
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_proyek_javaee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_pengiriman`
--

CREATE TABLE `jasa_pengiriman` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `alamat_tujuan` varchar(200) DEFAULT NULL,
  `alamat_pengirim` varchar(200) DEFAULT NULL,
  `nomor_hp_penerima` varchar(20) DEFAULT NULL,
  `deskripsi_paket` varchar(200) DEFAULT NULL,
  `harga_pengiriman` int(11) DEFAULT NULL,
  `status_pengiriman` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jasa_pengiriman`
--

INSERT INTO `jasa_pengiriman` (`id`, `nama_lengkap`, `alamat_tujuan`, `alamat_pengirim`, `nomor_hp_penerima`, `deskripsi_paket`, `harga_pengiriman`, `status_pengiriman`, `tanggal_transaksi`, `user_id`) VALUES
(1, 'Maria Simanungkalit', 'Tarutung', 'balige', '08765432', 'Berisi baju sisa', 20000, 1, '2021-12-31', 1),
(2, 'Debora Natalia', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'balige', '0865432', 'ggstus', 15000, 2, '2021-12-23', 0),
(3, 'buku', 'Tarutung', 'balige', '09876543', 'Buku', 3000, 2, NULL, 0),
(4, 'Muhammad ', 'Tarutung', 'balige', '09876543', 'Buku', 0, 0, '2021-12-23', 0),
(5, 'Sonya Sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', '0865432', 'ggstus', 15000, 2, '2021-12-19', 6),
(6, 'Sislein Manurung', 'Tarutung', 'balige', '09876543', 'Buku', 3000, 1, '2021-12-23', 0),
(7, 'Rosen Pasaribu', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', '098765432134567890', 'hape bagus', 15000, 0, '2021-12-19', 0),
(8, 'Rapika Sianipar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', '0865432', 'pakaian', 15000, 2, NULL, 0),
(9, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', '098765432134567890', 'hap', 15000, 2, NULL, 0),
(10, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Balige', '0865432', 'pakaian', 15000, 2, NULL, 0),
(11, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', '0865432', 'hape bagus', 15000, 1, NULL, 6),
(12, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Balige', '098765465', 'pakaian', 15000, 0, NULL, 6),
(13, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'balige', '098765432134567890', 'pakaian', 15000, 0, NULL, 7),
(14, 'Sonya sipahutar', 'Simpang Perumnas Jalan Balige KM 11, Kec. Sipoholon, Kab. Tapanuli Utara, Sumatera Utara', 'Balige', '0865432', 'pakaian', 15000, 2, NULL, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_kantin`
--

CREATE TABLE `pemesanan_kantin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `produkkantin_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `jenis_pembayaran` varchar(20) DEFAULT NULL CHECK (`jenis_pembayaran` in ('Tunai','Non-Tunai')),
  `status_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_kantin`
--

INSERT INTO `pemesanan_kantin` (`id`, `user_id`, `produkkantin_id`, `tanggal_pemesanan`, `harga`, `jumlah_barang`, `jenis_pembayaran`, `status_pembayaran`) VALUES
(1, 1, 2, '2021-12-14', 2000, 3, 'Tunai', 'Lunas'),
(4, 1, 2, '2021-12-14', 2000, 3, 'Tunai', 'Tidak Lunas'),
(5, 1, 4, '2021-12-14', 500, 5, 'Non-Tunai', 'Lunas'),
(6, 1, 4, '2021-12-14', 500, 5, 'Non-Tunai', 'Tidak Lunas'),
(7, 1, 1, '2021-12-14', 1000, 4, 'Non-Tunai', 'Tidak Lunas'),
(9, 3, 1, '2021-12-14', 1000, 3, 'Tunai', 'Tidak Lunas'),
(13, 6, 5, '2021-12-19', 20000, 2, 'Tunai', 'Lunas'),
(22, 6, 4, '2021-12-19', 500, 2, 'Tunai', 'Lunas'),
(23, 6, 4, '2021-12-19', 500, 2, 'Non-Tunai', 'Lunas'),
(24, 6, 4, '2021-12-19', 500, 1, 'Tunai', 'Lunas'),
(25, 6, 4, '2021-12-19', 500, 1, 'Non-Tunai', 'Lunas'),
(26, 6, 7, '2021-12-22', 1000, 2, 'Tunai', 'Tidak Lunas'),
(27, 6, 6, '2021-12-22', 7000, 2, 'Non-Tunai', 'Tidak Lunas'),
(28, 7, 7, '2021-12-23', 1000, 1, 'Non-Tunai', 'Lunas'),
(29, 7, 1, '2021-12-23', 1500, 2, 'Non-Tunai', 'Tidak Lunas'),
(30, 9, 7, '2021-12-24', 1000, 2, 'Tunai', 'Lunas'),
(31, 9, 6, '2021-12-24', 7000, 1, 'Non-Tunai', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_koperasi`
--

CREATE TABLE `pemesanan_koperasi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `produkkoperasi_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `jenis_pembayaran` varchar(20) DEFAULT NULL CHECK (`jenis_pembayaran` in ('Tunai','Non-Tunai')),
  `status_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_koperasi`
--

INSERT INTO `pemesanan_koperasi` (`id`, `user_id`, `produkkoperasi_id`, `tanggal_pemesanan`, `harga`, `jumlah_barang`, `jenis_pembayaran`, `status_pembayaran`) VALUES
(1, 1, 7, '2021-12-21', 2000, 2, 'Tunai', 'Lunas'),
(3, 1, 7, '2021-12-21', 2000, 2, 'Tunai', 'Tidak Lunas'),
(4, 1, 7, '2021-12-21', 3000, 1, 'Non-Tunai', 'Tidak Lunas'),
(5, 7, 11, '2021-12-23', 1000, 2, 'Tunai', 'Lunas'),
(6, 7, 10, '2021-12-23', 2000, 3, 'Non-Tunai', 'Lunas'),
(7, 7, 6, '2021-12-23', 1000, 2, 'Tunai', 'Lunas'),
(8, 7, 6, '2021-12-23', 1000, 2, 'Non-Tunai', 'Tidak Lunas'),
(9, 9, 11, '2021-12-24', 1000, 2, 'Tunai', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_pulsa`
--

CREATE TABLE `pemesanan_pulsa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `produkpulsa_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jenis_pembayaran` varchar(20) DEFAULT NULL CHECK (`jenis_pembayaran` in ('Tunai','Non-Tunai')),
  `status_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_pulsa`
--

INSERT INTO `pemesanan_pulsa` (`id`, `user_id`, `produkpulsa_id`, `tanggal_pemesanan`, `harga`, `jenis_pembayaran`, `status_pembayaran`) VALUES
(1, 1, 1, '2021-12-21', 10000, 'Non-Tunai', 'Lunas'),
(2, 7, 1, '2021-12-22', 10000, 'Tunai', 'Tidak Lunas'),
(4, 7, 1, '2021-12-22', 10000, 'Non-Tunai', 'Lunas'),
(5, 7, 4, '2021-12-23', 50000, 'Non-Tunai', 'Lunas'),
(6, 9, 5, '2021-12-24', 75000, 'Tunai', 'Tidak Lunas'),
(7, 9, 4, '2021-12-24', 50000, 'Non-Tunai', 'Tidak Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_ruangan`
--

CREATE TABLE `pemesanan_ruangan` (
  `id` int(11) NOT NULL,
  `ruangan_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_ruangan`
--

INSERT INTO `pemesanan_ruangan` (`id`, `ruangan_id`, `tanggal_pemesanan`, `nama_lengkap`, `email`, `no_ktp`, `no_hp`) VALUES
(1, 1, '2021-12-19', 'sojukook', 'sonyasipahutar8@gmail.com', '9876543234567', '086543234567'),
(7, 2, '2021-12-23', 'sonya', 'sonyasipahutar8@gmail.com', '9876543234567', '086543234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_tempat_duduk`
--

CREATE TABLE `pemesanan_tempat_duduk` (
  `id` int(11) NOT NULL,
  `tempat_duduk_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_tempat_duduk`
--

INSERT INTO `pemesanan_tempat_duduk` (`id`, `tempat_duduk_id`, `tanggal_pemesanan`, `nama_lengkap`, `email`, `no_ktp`, `no_hp`) VALUES
(7, 5, '2021-12-22', 'sojukook', 'admin@admin.com', '9876543234567', '086543234567'),
(8, 5, '2021-12-23', 'sonya', 'sonyasipahutar8@gmail.com', '9876543234567', '086543234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_kantin`
--

CREATE TABLE `produk_kantin` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(30) DEFAULT NULL,
  `jenis_produk` varchar(30) DEFAULT NULL CHECK (`jenis_produk` in ('Makanan','Minuman')),
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_kantin`
--

INSERT INTO `produk_kantin` (`id`, `nama_produk`, `jenis_produk`, `harga`) VALUES
(1, 'Ale-ale', 'Minuman', 1500),
(2, 'Nabati Coklat', 'Makanan', 2000),
(4, 'Kerupuk Cinta', 'Makanan', 500),
(6, 'Mogu', 'Makanan', 7000),
(7, 'Choki-choki', 'Makanan', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_koperasi`
--

CREATE TABLE `produk_koperasi` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(30) DEFAULT NULL,
  `jenis_produk` varchar(30) DEFAULT NULL CHECK (`jenis_produk` in ('Barang','Snack')),
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_koperasi`
--

INSERT INTO `produk_koperasi` (`id`, `nama_produk`, `jenis_produk`, `harga`) VALUES
(6, 'Coki-coki', 'Snack', 1000),
(7, 'Slay O Lay', 'Snack', 2000),
(9, 'Kerupuk cinta', 'Snack', 2000),
(10, 'Nabati', 'Snack', 2000),
(11, 'Chocolatos', 'Snack', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulsa`
--

CREATE TABLE `pulsa` (
  `id` int(11) NOT NULL,
  `harga_pulsa` int(11) DEFAULT NULL CHECK (`harga_pulsa` in (10000,20000,50000,75000,100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pulsa`
--

INSERT INTO `pulsa` (`id`, `harga_pulsa`) VALUES
(1, 10000),
(3, 20000),
(4, 50000),
(5, 75000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` in (2,1,0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `lokasi`, `status`) VALUES
(1, 'GD923', 'gedung', 1),
(2, 'GD925', 'gedung 9', 0),
(3, 'GD532', 'Gedung 5', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_duduk`
--

CREATE TABLE `tempat_duduk` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` in (2,1,0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tempat_duduk`
--

INSERT INTO `tempat_duduk` (`id`, `lokasi`, `status`) VALUES
(1, 'GD913 Kursi 1', 0),
(2, 'GD723 Kursi 1', 1),
(5, 'GD546 Kursi 4', 0),
(7, 'GD515', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `email`, `password`, `no_ktp`, `no_hp`, `saldo`) VALUES
(1, 'Asido Agrivo Panjaitan', 'if319002@students.del.ac.id', 'asido123', '11319002', '081314668846', 27500),
(2, 'Loise Michael Lumban Raja', 'if319022@students.del.ac.id', 'loise123', '11319022', '081263224789', 10000),
(3, 'Andre Jaya Siregar', 'if319018@students.del.ac.id', 'andre123', '11319018', '082277746160', 100000),
(4, 'Rahul Stephen Sinaga', 'if319023@students.del.ac.id', 'rahul123', '11319023', '081269299176', 5000),
(5, 'Ribka Widya Ningsih Tambunan', 'if319038@students.del.ac.id', 'ribka123', '11319038', '082275842236', 35000),
(6, 'admin', 'admin@admin.com', 'admin', '-', '-', 0),
(7, 'sonya', 'sonyasipahutar8@gmail.com', 'soju', '9876543234567', '086543234567', 399000),
(8, 'SIslein Manurung', 'sisleinmanurung01@gmail.com', 'aislein', '456787654335', '085654324567', 0),
(9, 'SIslein Manurung', 'sisleinmanurung01@gmail.com', 'sislein', '9876543234567', '086543234567', 4000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jasa_pengiriman`
--
ALTER TABLE `jasa_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan_kantin`
--
ALTER TABLE `pemesanan_kantin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan_koperasi`
--
ALTER TABLE `pemesanan_koperasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan_pulsa`
--
ALTER TABLE `pemesanan_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan_ruangan`
--
ALTER TABLE `pemesanan_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruangan_id` (`ruangan_id`);

--
-- Indeks untuk tabel `pemesanan_tempat_duduk`
--
ALTER TABLE `pemesanan_tempat_duduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempat_duduk_id` (`tempat_duduk_id`);

--
-- Indeks untuk tabel `produk_kantin`
--
ALTER TABLE `produk_kantin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk_koperasi`
--
ALTER TABLE `produk_koperasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pulsa`
--
ALTER TABLE `pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tempat_duduk`
--
ALTER TABLE `tempat_duduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jasa_pengiriman`
--
ALTER TABLE `jasa_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_kantin`
--
ALTER TABLE `pemesanan_kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_koperasi`
--
ALTER TABLE `pemesanan_koperasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_pulsa`
--
ALTER TABLE `pemesanan_pulsa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_ruangan`
--
ALTER TABLE `pemesanan_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_tempat_duduk`
--
ALTER TABLE `pemesanan_tempat_duduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produk_kantin`
--
ALTER TABLE `produk_kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `produk_koperasi`
--
ALTER TABLE `produk_koperasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pulsa`
--
ALTER TABLE `pulsa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tempat_duduk`
--
ALTER TABLE `tempat_duduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan_ruangan`
--
ALTER TABLE `pemesanan_ruangan`
  ADD CONSTRAINT `pemesanan_ruangan_ibfk_1` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangan` (`id`);

--
-- Ketidakleluasaan untuk tabel `pemesanan_tempat_duduk`
--
ALTER TABLE `pemesanan_tempat_duduk`
  ADD CONSTRAINT `pemesanan_tempat_duduk_ibfk_1` FOREIGN KEY (`tempat_duduk_id`) REFERENCES `tempat_duduk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
