<?xml version="1.0" encoding="UTF-8"?>
<schemadesigner version="6.5">
<source>
<database charset="latin1" collation="latin1_swedish_ci">cemilme</database>
</source>
<canvas zoom="100">
<tables>
<table name="admin" view="colnames">
<left>335</left>
<top>17</top>
<width>106</width>
<height>146</height>
<sql_create_table>CREATE TABLE `admin` (
  `a_ID` varchar(20) NOT NULL,
  `a_username` varchar(20) NOT NULL,
  `a_passwords` varchar(20) NOT NULL,
  `a_status` varchar(20) NOT NULL,
  PRIMARY KEY (`a_ID`),
  KEY `FK_admin` (`a_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1</sql_create_table>
</table>
<table name="feedback" view="colnames">
<left>55</left>
<top>277</top>
<width>112</width>
<height>146</height>
<sql_create_table>CREATE TABLE `feedback` (
  `f_ID` varchar(20) NOT NULL,
  `m_ID` int(11) DEFAULT NULL,
  `f_rating` float NOT NULL,
  `f_komentar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`f_ID`),
  KEY `FK_feedback` (`m_ID`),
  CONSTRAINT `FK_feedback` FOREIGN KEY (`m_ID`) REFERENCES `menu` (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1</sql_create_table>
</table>
<table name="menu" view="colnames">
<left>252</left>
<top>257</top>
<width>108</width>
<height>197</height>
<sql_create_table>CREATE TABLE `menu` (
  `m_ID` int(11) NOT NULL AUTO_INCREMENT,
  `m_nama` varchar(100) NOT NULL,
  `m_detail` varchar(200) DEFAULT NULL,
  `m_harga` float DEFAULT NULL,
  `m_stock` int(11) DEFAULT NULL,
  `m_rating` float DEFAULT NULL,
  `m_gambar` text,
  PRIMARY KEY (`m_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1</sql_create_table>
</table>
<table name="pembayaran" view="colnames">
<left>748</left>
<top>117</top>
<width>153</width>
<height>231</height>
<sql_create_table>CREATE TABLE `pembayaran` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1</sql_create_table>
</table>
<table name="pemesanan" view="colnames">
<left>502</left>
<top>262</top>
<width>99</width>
<height>163</height>
<sql_create_table>CREATE TABLE `pemesanan` (
  `p_ID` varchar(20) NOT NULL,
  `m_ID` int(11) DEFAULT NULL,
  `p_nama` varchar(100) NOT NULL,
  `p_jumlah` int(11) DEFAULT NULL,
  `p_harga` float DEFAULT NULL,
  PRIMARY KEY (`p_ID`),
  KEY `FK_pemesanan` (`m_ID`),
  CONSTRAINT `FK_pemesanan` FOREIGN KEY (`m_ID`) REFERENCES `menu` (`m_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1</sql_create_table>
</table>
</tables>
</canvas>
</schemadesigner>