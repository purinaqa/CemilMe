/*
SQLyog Ultimate v8.6 Beta2
MySQL - 5.5.5-10.1.9-MariaDB : Database - cemilme
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cemilme` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cemilme`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_ID` varchar(20) NOT NULL,
  `a_username` varchar(20) NOT NULL,
  `a_passwords` varchar(20) NOT NULL,
  `a_status` varchar(20) NOT NULL,
  PRIMARY KEY (`a_ID`),
  KEY `FK_admin` (`a_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_ID` varchar(20) NOT NULL,
  `m_ID` int(11) DEFAULT NULL,
  `f_rating` float NOT NULL,
  `f_komentar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`f_ID`),
  KEY `FK_feedback` (`m_ID`),
  CONSTRAINT `FK_feedback` FOREIGN KEY (`m_ID`) REFERENCES `menu` (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `m_ID` int(11) NOT NULL AUTO_INCREMENT,
  `m_nama` varchar(100) NOT NULL,
  `m_detail` varchar(200) DEFAULT NULL,
  `m_harga` float DEFAULT NULL,
  `m_stock` int(11) DEFAULT NULL,
  `m_rating` float DEFAULT NULL,
  `m_gambar` text,
  PRIMARY KEY (`m_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`m_ID`,`m_nama`,`m_detail`,`m_harga`,`m_stock`,`m_rating`,`m_gambar`) values (1,'MOLOR','Molor adalah makaroni telor yang merupakan makanan andalan dari Dapur Emak Pede',8000,100,4,'p1.png'),(2,'SEBLAK BASAH','Merupakan makanan khas Sunda yang bahan utamanya adalah kerupuk. Camilan ini dimasak dengan cara ditumis dan direbus. Dihiasi dengan berbagai topping.',10000,100,4,'p1.png'),(3,'SOSIS BAKAR','Camilan berbahan dasar sosis yang dibakar ini disajikan dengan bumbu rahasia yang memberikan sensasi gurih dan pedas',3000,50,3,'p1.png'),(4,'MOTOR','Motor adalah cemilan yang terbuat dari mie dan tortila. Bentuknya sangat menggugah selera.',10000,20,3.5,'p1.png'),(5,'KUE PUTU','Camilan khas Jawa ini bisa membuat lidah anda bergoyang. Campuran antara tepung beras, kelapa dan gula merah serta siulan asapnya sangaat menggoda.',10000,100,4.5,'p1.png'),(6,'SEMPOL','Jajanan ini terbuat dari aci yang ditusuk menyerupai sate. Lebih nikmat jika disajikan dengan saus kacang.',14000,50,4,'p1.png'),(7,'TELUR GULUNG','Telur diceplok, digoreng, digulung-gulung, nyammm',1500,500,5,'p1.png'),(8,'PIE SUSU','Camilan yang terbuat dari susu perasan asli, susunya tidak main-main!',25000,1000,4.5,'p1.png');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `b_ID` varchar(20) NOT NULL,
  `p_ID` varchar(20) NOT NULL,
  `b_total` float DEFAULT NULL,
  `b_namapembeli` varchar(100) NOT NULL,
  `b_email` varchar(15) DEFAULT NULL,
  `b_nomor_telp` varchar(20) DEFAULT NULL,
  `b_alamat` varchar(200) NOT NULL,
  `b_bukti_pembayaran` text NOT NULL,
  `b_VID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`b_ID`),
  KEY `FK_pembayaran` (`p_ID`),
  CONSTRAINT `FK_pembayaran` FOREIGN KEY (`p_ID`) REFERENCES `pemesanan` (`p_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

/*Table structure for table `pemesanan` */

DROP TABLE IF EXISTS `pemesanan`;

CREATE TABLE `pemesanan` (
  `p_ID` varchar(20) NOT NULL,
  `m_ID` int(11) DEFAULT NULL,
  `p_nama` varchar(100) NOT NULL,
  `p_jumlah` int(11) DEFAULT NULL,
  `p_harga` float DEFAULT NULL,
  PRIMARY KEY (`p_ID`),
  KEY `FK_pemesanan` (`m_ID`),
  CONSTRAINT `FK_pemesanan` FOREIGN KEY (`m_ID`) REFERENCES `menu` (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemesanan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
