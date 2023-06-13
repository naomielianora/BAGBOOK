SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `User` (
  `idU` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `fotoU` blob,
  `status` int(1) NOT NULL DEFAULT 1,
  CONSTRAINT `UK_user` UNIQUE (`username`, `email`, `idU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Follow` (
  `idU1` int(11) NOT NULL,
  `idU2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Review` (
  `idR` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `teks` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `idT` int(11) NOT NULL,
  CONSTRAINT `UK_Review` UNIQUE (`idR`, `idU`, `idT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Nilai_Review` (
  `nilai_review` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `arti_nilai` varchar(35) NOT NULL,
  CONSTRAINT `UK_nilai_review` UNIQUE (`nilai_review`, `arti_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Tas` (
  `idT` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaT` varchar(20) NOT NULL,
  `fotoT` blob,
  `panjang` float(11) NOT NULL,
  `lebar` float(11) NOT NULL,
  `tinggi` float(11) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `idSubK` int(11) NOT NULL,
  `idM` int(11) NOT NULL,
  `idDes` int(11) DEFAULT NULL,
  CONSTRAINT `UK_tas` UNIQUE (`idT`, `idSubK`, `idM`, `idDes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Kategori` (
  `idK` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaK` varchar(20) NOT NULL,
  CONSTRAINT `UK_kategori` UNIQUE (`idK`, `namaK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Sub-kategori`(
	`idSubK` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `namaSubK` varchar(20) NOT NULL,
    `idK` int(11) NOT NULL,
    CONSTRAINT `UK_sub_kategori` UNIQUE (`idSubK`, `namaSubK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Merk` (
  `idM` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaM` varchar(20) NOT NULL,
  CONSTRAINT `UK_merk` UNIQUE (`idM`, `namaM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Designer` (
  `idDes` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `namaDes` varchar(20) NOT NULL,
  CONSTRAINT `UK_des` UNIQUE (`idDes`, `namaDes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- INSERT INTO `User` (`username`, `password`, `nama_lengkap`, `email`) VALUES
-- ('naomi_elianora', 'naomi123', 'Naomi Elianora', 'naomielianora@gmail.com'),
-- ('ghabrielg', 'ghabs123', 'Ghabriel Galyndeo', 'ghabrielg@gmail.com');

-- INSERT INTO `Follow` (`idU1`, `idU2`) VALUES
-- ('1','2');

INSERT INTO `Nilai_Review` (`nilai_review`, `arti_nilai`) VALUES
('1', 'sangat jelek'),
('2', 'jelek'),
('3', 'biasa saja'),
('4', 'bagus'),
('5', 'sangat bagus');

INSERT INTO `Kategori` (`namaK`) VALUES
('Handbag');

INSERT INTO `Sub-kategori` (`namaSubK`, `idK`) VALUES
('Bucket', '1');

INSERT INTO `Merk` (`namaM`) VALUES
('Coach');


INSERT INTO `Tas` (`namaT`, `panjang`, `lebar`, `tinggi`, `warna`, `idSubK`, `idM`) VALUES
('DAKOTA', '34.5', '15', '29','Brown', '1', '1');

-- INSERT INTO `Review` (`teks`, `nilai`, `idU`, `idT`) VALUES
-- ('bagus banget!', '4', '1', '1'),
-- ('lumayanlah', '3', '2', '1');



ALTER TABLE `Review`
  ADD CONSTRAINT `fk_nilai_review` FOREIGN KEY (`nilai`) REFERENCES `Nilai_Review` (`nilai_review`),
  ADD CONSTRAINT `fk_user_review` FOREIGN KEY (`idU`) REFERENCES `User` (`idU`),
  ADD CONSTRAINT `fk_tas_review` FOREIGN KEY (`idT`) REFERENCES `Tas` (`idT`);


ALTER TABLE `Follow`
  ADD CONSTRAINT `fk_following` FOREIGN KEY (`idU1`) REFERENCES `User` (`idU`),
  ADD CONSTRAINT `fk_followed` FOREIGN KEY (`idU2`) REFERENCES `User` (`idU`);

ALTER TABLE `Sub-kategori`
  ADD CONSTRAINT `fk_sk_k` FOREIGN KEY (`idK`) REFERENCES `Kategori` (`idK`);


ALTER TABLE `Tas`
  ADD CONSTRAINT `fk_sk_tas` FOREIGN KEY (`idSubK`) REFERENCES `Sub-kategori` (`idSubK`),
  ADD CONSTRAINT `fk_merk_tas` FOREIGN KEY (`idM`) REFERENCES `Merk` (`idM`),
  ADD CONSTRAINT `fk_des_tas` FOREIGN KEY (`idDes`) REFERENCES `Designer` (`idDes`);






