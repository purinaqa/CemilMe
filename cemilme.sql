/*
SQLyog Ultimate v8.6 Beta2
MySQL - 5.5.5-10.1.21-MariaDB : Database - cemilme
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `cemilme`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `ID_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `ID_bayar` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `ID_feedback` varchar(20) NOT NULL,
  `ID_menu` varchar(20) NOT NULL,
  `rating` float NOT NULL,
  `komentar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_feedback`),
  KEY `ID_menu` (`ID_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `m_ID` char(10) NOT NULL,
  `m_nama` varchar(100) NOT NULL,
  `m_detail` varchar(1000) DEFAULT NULL,
  `m_harga` float DEFAULT NULL,
  `m_stock` int(11) DEFAULT NULL,
  `m_rating` float DEFAULT NULL,
  `m_gambar` text,
  PRIMARY KEY (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`m_ID`,`m_nama`,`m_detail`,`m_harga`,`m_stock`,`m_rating`,`m_gambar`) values ('M01','MOLOR','Molor adalah makaroni telor yang merupakan makanan andalan dari Dapur Emak Pede',8000,100,4,'p1.png'),('M02','SEBLAK BASAH','Merupakan makanan khas Sunda yang bahan utamanya adalah kerupuk. Camilan ini dimasak dengan cara ditumis dan direbus. Dihiasi dengan berbagai topping.',10000,100,4,'p1.png'),('M03','SOSIS BAKAR','Camilan berbahan dasar sosis yang dibakar ini disajikan dengan bumbu rahasia yang memberikan sensasi gurih dan pedas',3000,50,3,'p1.png');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `ID_bayar` varchar(20) NOT NULL,
  `ID_pesanan` varchar(20) NOT NULL,
  `Total_bayar` float DEFAULT NULL,
  `Nama_pembeli` varchar(100) NOT NULL,
  `email` varchar(15) DEFAULT NULL,
  `nomor_telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) NOT NULL,
  `bukti_pembayaran` text NOT NULL,
  `ID_verifikasi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_bayar`),
  KEY `ID_pesanan` (`ID_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

/*Table structure for table `pemesanan` */

DROP TABLE IF EXISTS `pemesanan`;

CREATE TABLE `pemesanan` (
  `ID_pesanan` varchar(20) NOT NULL,
  `ID_menu` varchar(20) NOT NULL,
  `Nama_Pesanan` varchar(100) NOT NULL,
  `Jumlah_Pesanan` int(11) DEFAULT NULL,
  `harga_pesanan` float DEFAULT NULL,
  PRIMARY KEY (`ID_pesanan`),
  KEY `ID_menu` (`ID_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemesanan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
