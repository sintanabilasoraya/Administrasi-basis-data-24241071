-- NAMA		: SINTA NABILA SORAYA
-- NIM		: 24241071
-- KELAS	: PTI B
-- MODUL	: 2

-- gunakan database
USE db_mart;

-- Cek Deskripsi table
describe pelanggan;

-- Statement SELECT
-- mengambil satu kolom dalam tabel
SELECT nama_produk FROM produk;

-- mengambil data lebih dari satu kolom
-- ambil data nama produk dan harga
SELECT nama_produk, harga FROM produk;

-- mengambil nama kolom pada tabel
SELECT * FROM produk;

-- PREFIX dan ALIAS
-- Prefix, bagian dari objel database yang hirarki lbh tinggi
-- nama_produk = column,
-- produk = tabel, 
-- db_mart = database
-- kolom ke tabel
SELECT produk.nama_produk FROM  produk;
-- kolom ke tabel ke database
SELECT db_mart.produk.nama_produk FROM produk;

-- Alias, nama sementara dari objek database
-- menggunakan kata kunci 'as'
-- alias pada objek kolom (column)
SELECT nama_produk as np FROM produk;

-- alias pada objek tabel
SELECT nama_produk FROM produk as pr;

-- penggguna Prefix dan alias dalam satu query
SELECT pr.nama_produk FROM produk as pr;

-- Latihan mandiri

-- Case 1
SELECT pl.nama_pelanggan, pl.alamat FROM pelanggan AS pl;

-- Case 2
SELECT pr.nama_produk, pr.harga FROM produk AS pr;