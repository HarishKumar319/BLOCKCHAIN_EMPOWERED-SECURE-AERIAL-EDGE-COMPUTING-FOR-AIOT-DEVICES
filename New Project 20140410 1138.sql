-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.48-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema boomerang
--

CREATE DATABASE IF NOT EXISTS boomerang;
USE boomerang;

--
-- Definition of table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `sender` varchar(10) DEFAULT NULL,
  `receiver` varchar(10) DEFAULT NULL,
  `msg` text,
  `status` varchar(45) DEFAULT NULL,
  `enckey` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`sender`,`receiver`,`msg`,`status`,`enckey`) VALUES 
 ('A','C','hai','Send','123456'),
 ('A','E','hi','Send','154'),
 ('A','C','hai','Send','123456'),
 ('A','C','hai','Send','123'),
 ('A','C','hgi','Send','125'),
 ('A','C','hiii','Send','125'),
 ('C','B','hai','Send','157'),
 ('E','B','jiko','Send','1456'),
 ('A','C','hi','Send','12345'),
 ('','','ffff','Send','4454'),
 ('A','C','hai','Send','123'),
 ('A','C','hai','Send','1234'),
 ('A','B','HIIII','Pending','152'),
 ('A','B','qw','Send','12345'),
 ('A','B','qqq','Send','12'),
 ('A','F','qqq','Pending','14'),
 ('A','C','qqq','Send','78'),
 ('A','B','HIII','Pending','678'),
 ('A','B','HIII','Send','76'),
 ('A','C','HIII','Pending','98'),
 ('','','','Send','456'),
 ('','','','Send','789'),
 ('','','','Send','486'),
 ('','','','Send','753'),
 ('','','','Send','789'),
 ('','','','Send','789'),
 ('','','','Send','456'),
 ('','','','Send','963'),
 ('','','','Send','63'),
 ('A','C','','Send','153'),
 ('A','B','','Send','159'),
 ('','','','Send','147'),
 ('A','B','Project.txt','Send','159'),
 ('A','B','Project.txt','Pending','null'),
 ('A','B','Project.txt','Send','147');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


--
-- Definition of table `routing`
--

DROP TABLE IF EXISTS `routing`;
CREATE TABLE `routing` (
  `devicenumber` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `pseudonym` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `dtime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routing`
--

/*!40000 ALTER TABLE `routing` DISABLE KEYS */;
INSERT INTO `routing` (`devicenumber`,`speed`,`pseudonym`,`location`,`dtime`) VALUES 
 (1,9,'A','600,326','2014:04:10  11:25:42'),
 (2,1,'B','510,254','2014:04:10  11:25:42'),
 (3,2,'G','880,190','2014:04:10  11:25:42'),
 (4,4,'H','241,260','2014:04:10  11:25:42'),
 (1,4,'E','600,147','2014:04:10  11:25:44'),
 (2,1,'B','510,483','2014:04:10  11:25:44'),
 (3,6,'G','681,190','2014:04:10  11:25:44'),
 (4,9,'H','468,260','2014:04:10  11:25:44'),
 (1,9,'A','600,430','2014:04:10  11:25:46'),
 (2,9,'B','510,266','2014:04:10  11:25:46'),
 (3,3,'C','425,190','2014:04:10  11:25:46'),
 (4,2,'D','727,260','2014:04:10  11:25:46'),
 (1,1,'E','600,199','2014:04:10  11:25:48'),
 (2,8,'B','510,480','2014:04:10  11:25:48'),
 (3,0,'C','199,190','2014:04:10  11:25:48'),
 (4,3,'D','954,260','2014:04:10  11:25:48'),
 (1,9,'A','600,461','2014:04:10  11:25:50'),
 (2,3,'B','510,220','2014:04:10  11:25:50'),
 (3,4,'G','1062,190','2014:04:10  11:25:50'),
 (4,0,'H','91,260','2014:04:10  11:25:50'),
 (1,6,'E','600,200','2014:04:10  11:25:52'),
 (2,2,'B','510,469','2014:04:10  11:25:52'),
 (3,6,'G','818,190','2014:04:10  11:25:52'),
 (4,1,'H','361,260','2014:04:10  11:25:52'),
 (1,6,'A','600,500','2014:04:10  11:25:54'),
 (2,5,'F','510,176','2014:04:10  11:25:54'),
 (3,7,'C','577,190','2014:04:10  11:25:54'),
 (4,2,'H','599,260','2014:04:10  11:25:54'),
 (1,4,'A','600,232','2014:04:10  11:25:56'),
 (2,7,'B','510,407','2014:04:10  11:25:56'),
 (3,6,'C','352,190','2014:04:10  11:25:56'),
 (4,5,'D','801,260','2014:04:10  11:25:56'),
 (1,0,'A','600,462','2014:04:10  11:25:58'),
 (2,5,'F','510,173','2014:04:10  11:25:58'),
 (3,5,'C','111,190','2014:04:10  11:25:58'),
 (4,0,'D','1049,260','2014:04:10  11:25:58'),
 (1,9,'E','600,200','2014:04:10  11:26:00'),
 (2,2,'B','510,414','2014:04:10  11:26:00'),
 (3,8,'G','948,190','2014:04:10  11:26:00'),
 (4,2,'H','199,260','2014:04:10  11:26:00'),
 (1,8,'A','600,480','2014:04:10  11:26:02'),
 (2,2,'F','510,135','2014:04:10  11:26:02'),
 (3,8,'G','735,190','2014:04:10  11:26:02'),
 (4,6,'H','421,260','2014:04:10  11:26:02'),
 (1,2,'A','600,274','2014:04:10  11:26:04'),
 (2,9,'B','510,365','2014:04:10  11:26:04'),
 (3,5,'C','527,190','2014:04:10  11:26:04'),
 (4,0,'D','623,260','2014:04:10  11:26:04'),
 (1,8,'A','600,500','2014:04:10  11:26:06'),
 (2,8,'F','510,146','2014:04:10  11:26:06'),
 (3,5,'C','283,190','2014:04:10  11:26:06'),
 (4,1,'D','846,260','2014:04:10  11:26:06'),
 (1,1,'A','600,273','2014:04:10  11:26:08'),
 (2,3,'B','510,414','2014:04:10  11:26:08'),
 (3,5,'C','24,190','2014:04:10  11:26:08'),
 (4,7,'D','1079,260','2014:04:10  11:26:08'),
 (1,1,'A','600,500','2014:04:10  11:26:10'),
 (2,8,'F','510,157','2014:04:10  11:26:10'),
 (3,0,'G','890,190','2014:04:10  11:26:10'),
 (4,4,'H','229,260','2014:04:10  11:26:10'),
 (1,0,'A','600,282','2014:04:10  11:26:12'),
 (2,7,'B','510,362','2014:04:10  11:26:12'),
 (3,5,'G','632,190','2014:04:10  11:26:12'),
 (4,8,'H','478,260','2014:04:10  11:26:12'),
 (1,3,'E','600,54','2014:04:10  11:26:14'),
 (2,0,'F','510,95','2014:04:10  11:26:14'),
 (3,8,'C','366,190','2014:04:10  11:26:14'),
 (4,4,'D','675,260','2014:04:10  11:26:14'),
 (1,5,'A','600,322','2014:04:10  11:26:16'),
 (2,9,'B','510,332','2014:04:10  11:26:16'),
 (3,5,'C','78,190','2014:04:10  11:26:16'),
 (4,8,'D','904,260','2014:04:10  11:26:16'),
 (1,0,'E','600,75','2014:04:10  11:26:18'),
 (2,2,'F','510,81','2014:04:10  11:26:18'),
 (3,8,'G','920,190','2014:04:10  11:26:18'),
 (4,3,'H','82,260','2014:04:10  11:26:18'),
 (1,2,'A','600,330','2014:04:10  11:26:20'),
 (2,5,'B','510,324','2014:04:10  11:26:20'),
 (3,5,'G','718,190','2014:04:10  11:26:20'),
 (4,5,'H','304,260','2014:04:10  11:26:20'),
 (1,4,'E','600,55','2014:04:10  11:26:22'),
 (2,9,'F','510,93','2014:04:10  11:26:22'),
 (3,2,'C','469,190','2014:04:10  11:26:22'),
 (4,9,'H','517,260','2014:04:10  11:26:22'),
 (1,5,'A','600,329','2014:04:10  11:26:24'),
 (2,1,'B','510,345','2014:04:10  11:26:24'),
 (3,8,'C','233,190','2014:04:10  11:26:24'),
 (4,2,'D','793,260','2014:04:10  11:26:24'),
 (1,8,'E','600,123','2014:04:10  11:26:26'),
 (2,8,'F','510,110','2014:04:10  11:26:26'),
 (3,5,'G','1065,190','2014:04:10  11:26:26'),
 (4,2,'D','1017,260','2014:04:10  11:26:26'),
 (1,0,'A','600,377','2014:04:10  11:26:28'),
 (2,2,'B','510,335','2014:04:10  11:26:28'),
 (3,3,'G','846,190','2014:04:10  11:26:28'),
 (4,9,'H','184,260','2014:04:10  11:26:28'),
 (1,5,'E','600,164','2014:04:10  11:26:30'),
 (2,0,'F','510,65','2014:04:10  11:26:30'),
 (3,4,'G','661,190','2014:04:10  11:26:30'),
 (4,2,'H','407,260','2014:04:10  11:26:30'),
 (1,8,'A','600,426','2014:04:10  11:26:32'),
 (2,5,'B','510,301','2014:04:10  11:26:32'),
 (3,6,'C','407,190','2014:04:10  11:26:32'),
 (4,6,'D','672,260','2014:04:10  11:26:32'),
 (1,7,'E','600,145','2014:04:10  11:26:34'),
 (2,1,'F','510,41','2014:04:10  11:26:34'),
 (3,1,'C','172,190','2014:04:10  11:26:34'),
 (4,9,'D','904,260','2014:04:10  11:26:34'),
 (1,1,'A','600,395','2014:04:10  11:26:36'),
 (2,5,'B','510,272','2014:04:10  11:26:36'),
 (3,5,'G','989,190','2014:04:10  11:26:36'),
 (4,0,'H','55,260','2014:04:10  11:26:36'),
 (1,5,'E','600,179','2014:04:10  11:26:38'),
 (2,2,'F','510,10','2014:04:10  11:26:38'),
 (3,7,'G','736,190','2014:04:10  11:26:38'),
 (4,7,'H','273,260','2014:04:10  11:26:38'),
 (1,8,'A','600,449','2014:04:10  11:26:40'),
 (2,2,'B','510,260','2014:04:10  11:26:40'),
 (3,7,'C','484,190','2014:04:10  11:26:40'),
 (4,3,'H','492,260','2014:04:10  11:26:40'),
 (1,6,'E','600,181','2014:04:10  11:26:42'),
 (2,9,'F','510,11','2014:04:10  11:26:42'),
 (3,4,'C','218,190','2014:04:10  11:26:42'),
 (4,5,'D','730,260','2014:04:10  11:26:42'),
 (1,5,'A','600,418','2014:04:10  11:26:44'),
 (2,8,'B','510,220','2014:04:10  11:26:44'),
 (3,1,'C','14,190','2014:04:10  11:26:44'),
 (4,6,'D','971,260','2014:04:10  11:26:44'),
 (1,9,'E','600,177','2014:04:10  11:26:46'),
 (2,4,'F','510,14','2014:04:10  11:26:46'),
 (3,4,'G','865,190','2014:04:10  11:26:46'),
 (4,0,'H','116,260','2014:04:10  11:26:46'),
 (1,7,'A','600,439','2014:04:10  11:26:48'),
 (2,0,'B','510,252','2014:04:10  11:26:48'),
 (3,9,'G','605,190','2014:04:10  11:26:48'),
 (4,5,'H','354,260','2014:04:10  11:26:48'),
 (1,7,'A','600,263','2014:04:10  11:26:50'),
 (2,5,'F','510,5','2014:04:10  11:26:50'),
 (3,7,'C','344,190','2014:04:10  11:26:50'),
 (4,2,'D','612,260','2014:04:10  11:26:50'),
 (1,0,'E','600,25','2014:04:10  11:26:52'),
 (2,9,'B','510,235','2014:04:10  11:26:52'),
 (3,9,'C','146,190','2014:04:10  11:26:52'),
 (4,4,'D','845,260','2014:04:10  11:26:52'),
 (1,6,'A','600,311','2014:04:10  11:26:54'),
 (2,4,'B','510,483','2014:04:10  11:26:54'),
 (3,4,'G','1021,190','2014:04:10  11:26:54'),
 (4,2,'D','1080,260','2014:04:10  11:26:54'),
 (1,8,'E','600,79','2014:04:10  11:26:56'),
 (2,6,'B','510,211','2014:04:10  11:26:56'),
 (3,6,'G','741,190','2014:04:10  11:26:56'),
 (4,2,'H','223,260','2014:04:10  11:26:56'),
 (1,9,'A','600,329','2014:04:10  11:26:58'),
 (2,7,'B','510,458','2014:04:10  11:26:58'),
 (3,2,'C','477,190','2014:04:10  11:26:58'),
 (4,7,'H','453,260','2014:04:10  11:26:58'),
 (1,4,'E','600,69','2014:04:10  11:27:00'),
 (2,4,'B','510,205','2014:04:10  11:27:00'),
 (3,9,'C','217,190','2014:04:10  11:27:00'),
 (4,8,'D','678,260','2014:04:10  11:27:00'),
 (1,9,'A','600,303','2014:04:10  11:27:02'),
 (2,9,'B','510,479','2014:04:10  11:27:02'),
 (3,4,'G','1053,190','2014:04:10  11:27:02'),
 (4,4,'D','956,260','2014:04:10  11:27:02'),
 (1,9,'E','600,66','2014:04:10  11:27:04'),
 (2,5,'B','510,228','2014:04:10  11:27:04'),
 (3,0,'G','800,190','2014:04:10  11:27:04'),
 (4,5,'H','89,260','2014:04:10  11:27:04'),
 (1,4,'A','600,315','2014:04:10  11:27:06'),
 (2,6,'B','510,499','2014:04:10  11:27:06'),
 (3,7,'C','590,190','2014:04:10  11:27:06'),
 (4,9,'H','368,260','2014:04:10  11:27:06'),
 (1,4,'E','600,104','2014:04:10  11:27:08'),
 (2,4,'B','510,237','2014:04:10  11:27:08'),
 (3,0,'C','373,190','2014:04:10  11:27:08'),
 (4,8,'D','618,260','2014:04:10  11:27:08'),
 (1,5,'A','600,362','2014:04:10  11:27:10'),
 (2,0,'B','510,448','2014:04:10  11:27:10'),
 (3,2,'C','153,190','2014:04:10  11:27:10'),
 (4,7,'D','899,260','2014:04:10  11:27:10'),
 (1,8,'E','600,150','2014:04:10  11:27:12'),
 (2,1,'B','510,212','2014:04:10  11:27:12'),
 (3,2,'G','1011,190','2014:04:10  11:27:12'),
 (4,6,'H','69,260','2014:04:10  11:27:12'),
 (1,1,'A','600,411','2014:04:10  11:27:14'),
 (2,2,'B','510,453','2014:04:10  11:27:14'),
 (3,9,'G','774,190','2014:04:10  11:27:14'),
 (4,7,'H','304,260','2014:04:10  11:27:14'),
 (1,7,'E','600,172','2014:04:10  11:27:16'),
 (2,6,'F','510,199','2014:04:10  11:27:16'),
 (3,2,'C','525,190','2014:04:10  11:27:16'),
 (4,7,'H','556,260','2014:04:10  11:27:16'),
 (1,1,'A','600,420','2014:04:10  11:27:18'),
 (2,8,'B','510,446','2014:04:10  11:27:18'),
 (3,5,'C','262,190','2014:04:10  11:27:18'),
 (4,9,'D','790,260','2014:04:10  11:27:18');
/*!40000 ALTER TABLE `routing` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;