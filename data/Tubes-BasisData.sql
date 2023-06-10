SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `User` (
  `idU` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `fotoU` blob NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Follow` (
  `idU1` int(11) NOT NULL,
  `idU2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Review` (
  `idR` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `teks` varchar(255) NOT NULL,
  `nilai` int(1) NOT NULL,
  `idU` varchar(11) NOT NULL,
  `idT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Nilai_Review` (
  `nilai` int(1) NOT NULL,
  `arti_nilai` varchar(35) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Tas` (
  `idT` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaT` varchar(20) NOT NULL,
  `fotoT` blob NOT NULL,
  `panjang` float(11) NOT NULL,
  `lebar` float(11) NOT NULL,
  `tinggi` float(11) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `idSubK` int(11) NOT NULL,
  `idM` int(11) NOT NULL,
  `idDes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Kategori` (
  `idK` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Sub-kategori`(
	`isSubK` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `namaSubK` varchar(20) NOT NULL,
    `idK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Merk` (
  `idM` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaM` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Designer` (
  `idDes` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaDes` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `User`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `Follow`
  ADD CONSTRAINT `idU1` FOREIGN KEY (`idU1`) REFERENCES `User` (`idU`),
  ADD CONSTRAINT `idU2` FOREIGN KEY (`idU2`) REFERENCES `User` (`idU`);

ALTER TABLE `Review`
  ADD CONSTRAINT `nilai` FOREIGN KEY (`nilai`) REFERENCES `Nilai_Review` (`nilai`),
  ADD CONSTRAINT `idU` FOREIGN KEY (`idU`) REFERENCES `User` (`idU`),
  ADD CONSTRAINT `idT` FOREIGN KEY (`idT`) REFERENCES `Tas` (`idT`);

ALTER TABLE `Nilai_Review`
  ADD UNIQUE KEY `nilai` (`nilai`),
  ADD UNIQUE KEY `arti_nilai` (`arti_nilai`);

ALTER TABLE `Tas`
  ADD CONSTRAINT `idSubK` FOREIGN KEY (`idSubK`) REFERENCES `Sub-kategori` (`idU`),
  ADD CONSTRAINT `idM` FOREIGN KEY (`idM`) REFERENCES `Merk` (`idU`),
  ADD CONSTRAINT `idDes` FOREIGN KEY (`idDes`) REFERENCES `Designer` (`idDes`);

ALTER TABLE `Kategori`
  ADD UNIQUE KEY `namaK` (`namaK`);

ALTER TABLE `Sub-kategori`
  ADD CONSTRAINT `idK` FOREIGN KEY (`idK`) REFERENCES `Kategori` (`idK`);

ALTER TABLE `Sub-kategori`
  ADD UNIQUE KEY `namaSubK` (`namaSubK`);

ALTER TABLE `Merk`
  ADD UNIQUE KEY `namaM` (`namaM`);

ALTER TABLE `Designer`
  ADD UNIQUE KEY `namaD` (`namaD`);

INSERT INTO `User` (`username`, `password`, `nama_lengkap`, `email`) VALUES
(`naomi_elianora`, `naomi123`, `Naomi Elianora`, `naomielianora@gmail.com`),
(`ghabrielg`, `ghabriel123`, `Ghabriel Galyndeo`, `ghabriel@gmail.com`);

--idU1 mengfollow idU2
INSERT INTO `Follow` (`idU1`, `idU2`) VALUES
(1,2);

INSERT INTO `Review` (`teks`, `nilai`, `idU`, `idT`) VALUES
(`bagus banget!`, 4, 1, 1),
(`lumayanlah`, 3, 2, 1);

INSERT INTO `Nilai_Review` (`nilai`, `arti_nilai`) VALUES
(1, `sangat jelek`),
(2, `jelek`),
(3, `biasa saja`),
(4, `bagus`),
(5, `sangat bagus`);

INSERT INTO `Tas` (`nama`, `panjang`, `lebar`, `tinggi`, `warna`, `idSubK`, `idM`, `idDes`) VALUES
(`DAKOTA`, 34.5, 15, 29, `Brown`, 1, 1, 1);

INSERT INTO `Kategori` (`nama`) VALUES
(`Handbag`);

INSERT INTO `Sub-kategori` (`nama`, `idK`) VALUES
(`Bucket`, 1);

INSERT INTO `Merk` (`nama`) VALUES
(`Coach`);





