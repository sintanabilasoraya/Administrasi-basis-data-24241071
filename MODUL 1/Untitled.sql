CREATE TABLE `Dokter` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(255),
  `sp` varchar(255),
  `bo_tlpn` vachar,
  `kode_poli` int
);

CREATE TABLE `polinik` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(255)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` vachar(30),
  `alamat` vachar(50),
  `BOD` datatime
);

CREATE TABLE `DAFTAR` (
  `no_antrean` int PRIMARY KEY,
  `tgl_daftar` datatime,
  `NIK` int,
  `kode_poli` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `NIK` int,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255)
);

ALTER TABLE `Dokter` ADD FOREIGN KEY (`kode_poli`) REFERENCES `polinik` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`kode_poli`) REFERENCES `polinik` (`kode_poli`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`NIK`) REFERENCES `DAFTAR` (`NIK`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`kode_obat`) REFERENCES `OBAT` (`kode_obat`);
