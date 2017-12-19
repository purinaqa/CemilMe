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
  `a_ID` int(5) NOT NULL,
  `a_uname` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `b_id` int(5) NOT NULL,
  PRIMARY KEY (`a_ID`),
  KEY `FK_admin` (`b_id`),
  CONSTRAINT `FK_admin` FOREIGN KEY (`b_id`) REFERENCES `pembayaran` (`b_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `c_id` smallint(11) DEFAULT NULL,
  `c_nama` varchar(100) DEFAULT NULL,
  `c_harga` float DEFAULT NULL,
  `c_jumlah` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`c_id`,`c_nama`,`c_harga`,`c_jumlah`) values (3,'SOSIS BAKAR',3000,2),(3,'SOSIS BAKAR',3000,2),(3,'SOSIS BAKAR',3000,2),(0,NULL,NULL,2),(0,NULL,NULL,2),(0,NULL,NULL,2),(0,NULL,NULL,2),(0,NULL,NULL,1),(0,NULL,NULL,1),(0,NULL,NULL,1),(0,NULL,NULL,5),(0,NULL,NULL,5),(0,NULL,NULL,4),(0,NULL,NULL,4),(0,NULL,NULL,4),(0,NULL,NULL,4),(0,NULL,NULL,4),(0,NULL,NULL,4),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,3),(2,'SEBLAK BASAH',10000,1),(2,'SEBLAK BASAH',10000,1),(2,'SEBLAK BASAH',10000,4),(2,'SEBLAK BASAH',10000,4),(2,'SEBLAK BASAH',10000,4),(2,'SEBLAK BASAH',10000,4),(2,'SEBLAK BASAH',10000,4),(1,'MOLOR',8000,2),(1,'MOLOR',8000,4),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,0),(1,'MOLOR',8000,3);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_ID` int(5) NOT NULL AUTO_INCREMENT,
  `m_ID` int(11) DEFAULT NULL,
  `f_rating` float NOT NULL,
  `f_komentar` varchar(200) DEFAULT NULL,
  `b_email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`f_ID`),
  KEY `FK_feedback` (`m_ID`),
  KEY `FK_feedback2` (`b_email`),
  CONSTRAINT `FK_feedback` FOREIGN KEY (`m_ID`) REFERENCES `menu` (`m_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`f_ID`,`m_ID`,`f_rating`,`f_komentar`,`b_email`) values (5,4,0,'enak bangettt','purinaqa@gmail.');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `m_ID` int(11) NOT NULL,
  `m_nama` varchar(100) NOT NULL,
  `m_detail` varchar(1000) DEFAULT NULL,
  `m_harga` float DEFAULT NULL,
  `m_stock` int(11) DEFAULT NULL,
  `m_rating` float DEFAULT NULL,
  `m_gambar` text,
  PRIMARY KEY (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`m_ID`,`m_nama`,`m_detail`,`m_harga`,`m_stock`,`m_rating`,`m_gambar`) values (1,'MOLOR','Molor adalah makaroni telor yang merupakan makanan andalan dari Dapur Emak Pede',8000,100,4,'p1.png'),(2,'SEBLAK BASAH','Merupakan makanan khas Sunda yang bahan utamanya adalah kerupuk. Camilan ini dimasak dengan cara ditumis dan direbus. Dihiasi dengan berbagai topping.',10000,100,4,'p1.png'),(3,'SOSIS BAKAR','Camilan berbahan dasar sosis yang dibakar ini disajikan dengan bumbu rahasia yang memberikan sensasi gurih dan pedas',3000,50,3,'p1.png'),(4,'MOTOR','Motor adalah cemilan yang terbuat dari mie dan tortila. Bentuknya sangat menggugah selera.',10000,20,3.5,'p1.png'),(5,'KUE PUTU','Camilan khas Jawa ini bisa membuat lidah anda bergoyang. Campuran antara tepung beras, kelapa dan gula merah serta siulan asapnya sangaat menggoda.',10000,100,4.5,'p1.png'),(6,'SEMPOL','Jajanan ini terbuat dari aci yang ditusuk menyerupai sate. Lebih nikmat jika disajikan dengan saus kacang.',14000,50,4,'p1.png'),(7,'TELUR GULUNG','Telur diceplok, digoreng, digulung-gulung, nyammm',1500,500,5,'p1.png'),(8,'PIE SUSU','Camilan yang terbuat dari susu perasan asli, susunya tidak main-main!',25000,1000,4.5,'p1.png');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `b_ID` int(5) NOT NULL,
  `p_ID` int(5) NOT NULL,
  `b_totalbayar` float DEFAULT NULL,
  `b_nama` varchar(100) NOT NULL,
  `b_email` varchar(40) DEFAULT NULL,
  `b_no_tlp` varchar(20) DEFAULT NULL,
  `b_alamat` varchar(200) NOT NULL,
  `b_bukti` text,
  `v_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`b_ID`),
  KEY `ID_pesanan` (`p_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

insert  into `pembayaran`(`b_ID`,`p_ID`,`b_totalbayar`,`b_nama`,`b_email`,`b_no_tlp`,`b_alamat`,`b_bukti`,`v_id`) values (1,2,8000,'tiar','tiar@gmail.com','081276822','jl. apel no 12 nganjuk',NULL,NULL),(2,0,10000,'rahmat','rahmat@gmail.co','085244367765','perum dian asri no 88 surabaya',NULL,NULL),(3,5,10000,'purina','purinaqa@gmail.','085240894846','keputih gang ic 15',NULL,NULL);

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

insert  into `pemesanan`(`p_ID`,`m_ID`,`p_nama`,`p_jumlah`,`p_harga`) values ('2',1,'MOLOR',1,8000),('3',2,'SEBLAK BASAH',2,10000),('4',1,'MOLOR',10,80000),('5',4,'MOTOR',1,10000);

/* Procedure structure for procedure `hitung_rating` */

/*!50003 DROP PROCEDURE IF EXISTS  `hitung_rating` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_rating`(id_menu INT)
BEGIN
SELECT DISTINCT m.m_rating AS rating_awal,
COUNT(*) AS total_rate,
AVG(f.f_rating)
FROM feedback f, menu m
WHERE id_menu = m.m_ID AND f.m_ID = m.m_ID
GROUP BY m.m_ID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_komen` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_komen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_komen`(
	x_idmenu INT(5),
	x_komen VARCHAR(200),
	x_email VARCHAR(40)
    )
BEGIN
	IF EXISTS(SELECT 1 FROM pembayaran WHERE x_email = b_email) THEN
		insert into feedback (`m_id`, `f_komentar`, `b_email`) VALUES (x_idmenu, x_komen, x_email);
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_subtotal` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_subtotal` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_subtotal`(ps_id VARCHAR(20))
BEGIN
SELECT (p.p_harga*p.p_jumlah) 
FROM pemesanan p
WHERE ps_ID = p.p_ID
GROUP BY p.p_ID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_toCart` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_toCart` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_toCart`(
	p_jumlah int,
	p_id int
    )
BEGIN
	select m_harga from menu where m_id = p_id INTO @harga;
	Select m_nama from menu where m_id = p_id into @nama;
	
	
		INSERT INTO cart (c_id,c_nama,c_harga,c_jumlah)
		VALUES (p_id, @nama, @harga, p_jumlah);
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_totalbayar` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_totalbayar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_totalbayar`(ps_id VARCHAR(20))
BEGIN
SELECT p.p_ID, m.m_ID, (p.p_harga*p.p_jumlah) AS subtotal,
SUM(p.p_harga*p.p_jumlah) AS total_bayar
FROM pemesanan p, menu m
WHERE ps_ID = p.p_ID AND p.m_ID = m.m_ID
GROUP BY m.m_ID;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
