SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `User` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(35),
  `email` varchar(35),
  `user_photo` blob,
  `status` int(1) NOT NULL DEFAULT 1,
  CONSTRAINT `UK_user` UNIQUE (`username`, `email`, `idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Follow` (
  `idU1` int(11) NOT NULL,
  `idU2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Review` (
  `idReview` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `desc` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idBag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Review_Value` (
  `review_value` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `value_desc` varchar(35) NOT NULL,
  CONSTRAINT `UK_review_value` UNIQUE (`review_value`, `value_desc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Bag` (
  `idBag` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `bag_name` varchar(20) NOT NULL,
  `bag_photo` blob,
  `length` float(11) NOT NULL,
  `width` float(11) NOT NULL,
  `height` float(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `idSubCat` int(11) NOT NULL,
  `idBrand` int(11) NOT NULL,
  `idDes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Category` (
  `idCat` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cat_name` varchar(20) NOT NULL,
  CONSTRAINT `UK_category` UNIQUE (`idCat`, `cat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Sub_category`(
	`idSubCat` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `subCat_name` varchar(20) NOT NULL,
  `idCat` int(11) NOT NULL,
  CONSTRAINT `UK_sub_category` UNIQUE (`idSubCat`, `subCat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Brand` (
  `idBrand` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `brand_name` varchar(20) NOT NULL,
  CONSTRAINT `UK_brand` UNIQUE (`idBrand`, `brand_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Designer` (
  `idDes` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `des_name` varchar(20) NOT NULL,
  CONSTRAINT `UK_des` UNIQUE (`idDes`, `des_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `Review`
  ADD CONSTRAINT `fk_review_value` FOREIGN KEY (`value`) REFERENCES `Review_Value` (`review_value`),
  ADD CONSTRAINT `fk_user_review` FOREIGN KEY (`idUser`) REFERENCES `User` (`idUser`),
  ADD CONSTRAINT `fk_bag_review` FOREIGN KEY (`idBag`) REFERENCES `Bag` (`idBag`);


ALTER TABLE `Follow`
  ADD CONSTRAINT `fk_following` FOREIGN KEY (`idU1`) REFERENCES `User` (`idUser`),
  ADD CONSTRAINT `fk_followed` FOREIGN KEY (`idU2`) REFERENCES `User` (`idUser`);

ALTER TABLE `Sub_category`
  ADD CONSTRAINT `fk_sc_c` FOREIGN KEY (`idCat`) REFERENCES `Category` (`idCat`);


ALTER TABLE `Bag`
  ADD CONSTRAINT `fk_sc_bag` FOREIGN KEY (`idSubCat`) REFERENCES `Sub_category` (`idSubCat`),
  ADD CONSTRAINT `fk_brand_bag` FOREIGN KEY (`idBrand`) REFERENCES `Brand` (`idBrand`),
  ADD CONSTRAINT `fk_des_brand` FOREIGN KEY (`idDes`) REFERENCES `Designer` (`idDes`);






