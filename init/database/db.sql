/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 8.0.11 : Database - fsaas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fsaas` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fsaas`;

/*Table structure for table `allocation` */

CREATE TABLE `allocation` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sid` int(11) DEFAULT NULL COMMENT '座位编号',
  `pname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '乘客姓名',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `allocation` */

insert  into `allocation`(`aid`,`sid`,`pname`) values 
(1,2,'1');

/*Table structure for table `seats` */

CREATE TABLE `seats` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '座位编号',
  `srow` int(11) DEFAULT NULL COMMENT '行',
  `scolumn` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列',
  `v_gate` int(11) DEFAULT NULL COMMENT '登机口',
  `v_aisle` int(11) DEFAULT NULL COMMENT '靠过道',
  `v_window` int(11) DEFAULT NULL COMMENT '靠窗',
  `v_basket` int(11) DEFAULT NULL COMMENT '婴儿挂篮',
  `v_exit` int(11) DEFAULT NULL COMMENT '紧急出口',
  `tid` int(11) DEFAULT NULL COMMENT '机型编号',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

/*Data for the table `seats` */

insert  into `seats`(`sid`,`srow`,`scolumn`,`v_gate`,`v_aisle`,`v_window`,`v_basket`,`v_exit`,`tid`) values 
(1,31,'A',0,0,1,1,0,1),
(2,32,'A',0,0,1,0,0,1),
(3,33,'A',0,0,1,0,0,1),
(4,34,'A',0,0,1,0,0,1),
(5,35,'A',0,0,1,0,0,1),
(6,36,'A',0,0,1,0,0,1),
(7,37,'A',0,0,1,0,0,1),
(8,38,'A',0,0,1,0,0,1),
(9,39,'A',0,0,1,0,0,1),
(10,40,'A',0,0,1,0,0,1),
(11,41,'A',0,0,1,0,0,1),
(12,42,'A',0,0,1,0,0,1),
(13,43,'A',0,0,1,0,0,1),
(14,44,'A',0,0,1,0,0,1),
(15,45,'A',0,0,1,0,0,1),
(16,46,'',0,0,1,0,0,1),
(17,47,'A',0,0,1,0,1,1),
(18,48,'A',0,0,1,0,0,1),
(19,49,'A',0,0,1,0,0,1),
(20,50,'A',0,0,1,0,0,1),
(21,51,'A',0,0,1,0,0,1),
(22,52,'A',0,0,1,0,0,1),
(23,53,'A',0,0,1,0,0,1),
(24,54,'A',0,0,1,0,0,1),
(25,55,'A',0,0,1,0,0,1),
(26,56,'A',0,0,1,0,0,1),
(27,57,'A',0,0,1,0,0,1),
(28,58,'A',0,0,1,0,0,1),
(29,59,'A',0,0,1,0,0,1),
(30,60,'A',0,0,1,0,0,1),
(31,61,'A',0,0,1,0,0,1),
(32,62,'',0,0,1,0,0,1),
(33,31,'C',0,1,0,1,0,1),
(34,32,'C',0,1,0,0,0,1),
(35,33,'C',0,1,0,0,0,1),
(36,34,'C',0,1,0,0,0,1),
(37,35,'C',0,1,0,0,0,1),
(38,36,'C',0,1,0,0,0,1),
(39,37,'C',0,1,0,0,0,1),
(40,38,'C',0,1,0,0,0,1),
(41,39,'C',0,1,0,0,0,1),
(42,40,'C',0,1,0,0,0,1),
(43,41,'C',0,1,0,0,0,1),
(44,42,'C',0,1,0,0,0,1),
(45,43,'C',0,1,0,0,0,1),
(46,44,'C',0,1,0,0,0,1),
(47,45,'C',0,1,0,0,0,1),
(48,46,'',0,1,0,0,0,1),
(49,47,'C',0,1,0,0,1,1),
(50,48,'C',0,1,0,0,0,1),
(51,49,'C',0,1,0,0,0,1),
(52,50,'C',0,1,0,0,0,1),
(53,51,'C',0,1,0,0,0,1),
(54,52,'C',0,1,0,0,0,1),
(55,53,'C',0,1,0,0,0,1),
(56,54,'C',0,1,0,0,0,1),
(57,55,'C',0,1,0,0,0,1),
(58,56,'C',0,1,0,0,0,1),
(59,57,'C',0,1,0,0,0,1),
(60,58,'C',0,1,0,0,0,1),
(61,59,'C',0,1,0,0,0,1),
(62,60,'C',0,1,0,0,0,1),
(63,61,'C',0,1,0,0,0,1),
(64,62,'',0,1,0,0,0,1),
(65,31,'D',0,1,0,1,0,1),
(66,32,'D',0,1,0,0,0,1),
(67,33,'D',0,1,0,0,0,1),
(68,34,'D',0,1,0,0,0,1),
(69,35,'D',0,1,0,0,0,1),
(70,36,'D',0,1,0,0,0,1),
(71,37,'D',0,1,0,0,0,1),
(72,38,'D',0,1,0,0,0,1),
(73,39,'D',0,1,0,0,0,1),
(74,40,'D',0,1,0,0,0,1),
(75,41,'D',0,1,0,0,0,1),
(76,42,'D',0,1,0,0,0,1),
(77,43,'D',0,1,0,0,0,1),
(78,44,'D',0,1,0,0,0,1),
(79,45,'D',0,1,0,0,0,1),
(80,46,'D',0,1,0,0,0,1),
(81,47,'D',0,1,0,1,0,1),
(82,48,'D',0,1,0,0,0,1),
(83,49,'D',0,1,0,0,0,1),
(84,50,'D',0,1,0,0,0,1),
(85,51,'D',0,1,0,0,0,1),
(86,52,'D',0,1,0,0,0,1),
(87,53,'D',0,1,0,0,0,1),
(88,54,'D',0,1,0,0,0,1),
(89,55,'D',0,1,0,0,0,1),
(90,56,'D',0,1,0,0,0,1),
(91,57,'D',0,1,0,0,0,1),
(92,58,'',0,1,0,0,0,1),
(93,59,'',0,1,0,0,0,1),
(94,60,'',0,1,0,0,0,1),
(95,61,'',0,1,0,0,0,1),
(96,62,'',0,1,0,0,0,1),
(97,31,'E',0,0,0,1,0,1),
(98,32,'E',0,0,0,0,0,1),
(99,33,'E',0,0,0,0,0,1),
(100,34,'E',0,0,0,0,0,1),
(101,35,'E',0,0,0,0,0,1),
(102,36,'E',0,0,0,0,0,1),
(103,37,'E',0,0,0,0,0,1),
(104,38,'E',0,0,0,0,0,1),
(105,39,'E',0,0,0,0,0,1),
(106,40,'E',0,0,0,0,0,1),
(107,41,'E',0,0,0,0,0,1),
(108,42,'E',0,0,0,0,0,1),
(109,43,'E',0,0,0,0,0,1),
(110,44,'E',0,0,0,0,0,1),
(111,45,'E',0,0,0,0,0,1),
(112,46,'E',0,0,0,0,0,1),
(113,47,'E',0,0,0,1,0,1),
(114,48,'E',0,0,0,0,0,1),
(115,49,'E',0,0,0,0,0,1),
(116,50,'E',0,0,0,0,0,1),
(117,51,'E',0,0,0,0,0,1),
(118,52,'E',0,0,0,0,0,1),
(119,53,'E',0,0,0,0,0,1),
(120,54,'E',0,0,0,0,0,1),
(121,55,'E',0,0,0,0,0,1),
(122,56,'E',0,0,0,0,0,1),
(123,57,'E',0,0,0,0,0,1),
(124,58,'E',0,1,0,0,0,1),
(125,59,'E',0,1,0,0,0,1),
(126,60,'E',0,1,0,0,0,1),
(127,61,'E',0,1,0,0,0,1),
(128,62,'E',0,1,0,0,0,1),
(129,31,'F',0,0,0,1,0,1),
(130,32,'F',0,0,0,0,0,1),
(131,33,'F',0,0,0,0,0,1),
(132,34,'F',0,0,0,0,0,1),
(133,35,'F',0,0,0,0,0,1),
(134,36,'F',0,0,0,0,0,1),
(135,37,'F',0,0,0,0,0,1),
(136,38,'F',0,0,0,0,0,1),
(137,39,'F',0,0,0,0,0,1),
(138,40,'F',0,0,0,0,0,1),
(139,41,'F',0,0,0,0,0,1),
(140,42,'F',0,0,0,0,0,1),
(141,43,'F',0,0,0,0,0,1),
(142,44,'F',0,0,0,0,0,1),
(143,45,'F',0,0,0,0,0,1),
(144,46,'F',0,0,0,0,0,1),
(145,47,'F',0,0,0,1,0,1),
(146,48,'F',0,0,0,0,0,1),
(147,49,'F',0,0,0,0,0,1),
(148,50,'F',0,0,0,0,0,1),
(149,51,'F',0,0,0,0,0,1),
(150,52,'F',0,0,0,0,0,1),
(151,53,'F',0,0,0,0,0,1),
(152,54,'F',0,0,0,0,0,1),
(153,55,'F',0,0,0,0,0,1),
(154,56,'F',0,0,0,0,0,1),
(155,57,'F',0,0,0,0,0,1),
(156,58,'F',0,0,0,0,0,1),
(157,59,'F',0,0,0,0,0,1),
(158,60,'F',0,0,0,0,0,1),
(159,61,'F',0,0,0,0,0,1),
(160,62,'F',0,0,0,0,0,1),
(161,31,'G',0,1,0,1,0,1),
(162,32,'G',0,1,0,0,0,1),
(163,33,'G',0,1,0,0,0,1),
(164,34,'G',0,1,0,0,0,1),
(165,35,'G',0,1,0,0,0,1),
(166,36,'G',0,1,0,0,0,1),
(167,37,'G',0,1,0,0,0,1),
(168,38,'G',0,1,0,0,0,1),
(169,39,'G',0,1,0,0,0,1),
(170,40,'G',0,1,0,0,0,1),
(171,41,'G',0,1,0,0,0,1),
(172,42,'G',0,1,0,0,0,1),
(173,43,'G',0,1,0,0,0,1),
(174,44,'G',0,1,0,0,0,1),
(175,45,'G',0,1,0,0,0,1),
(176,46,'G',0,1,0,0,0,1),
(177,47,'G',0,1,0,1,0,1),
(178,48,'G',0,1,0,0,0,1),
(179,49,'G',0,1,0,0,0,1),
(180,50,'G',0,1,0,0,0,1),
(181,51,'G',0,1,0,0,0,1),
(182,52,'G',0,1,0,0,0,1),
(183,53,'G',0,1,0,0,0,1),
(184,54,'G',0,1,0,0,0,1),
(185,55,'G',0,1,0,0,0,1),
(186,56,'G',0,1,0,0,0,1),
(187,57,'G',0,1,0,0,0,1),
(188,58,'G',0,1,0,0,0,1),
(189,59,'G',0,1,0,0,0,1),
(190,60,'G',0,1,0,0,0,1),
(191,61,'G',0,1,0,0,0,1),
(192,62,'G',0,1,0,0,0,1),
(193,31,'H',0,1,0,1,0,1),
(194,32,'H',0,1,0,0,0,1),
(195,33,'H',0,1,0,0,0,1),
(196,34,'H',0,1,0,0,0,1),
(197,35,'H',0,1,0,0,0,1),
(198,36,'H',0,1,0,0,0,1),
(199,37,'H',0,1,0,0,0,1),
(200,38,'H',0,1,0,0,0,1),
(201,39,'H',0,1,0,0,0,1),
(202,40,'H',0,1,0,0,0,1),
(203,41,'H',0,1,0,0,0,1),
(204,42,'H',0,1,0,0,0,1),
(205,43,'H',0,1,0,0,0,1),
(206,44,'H',0,1,0,0,0,1),
(207,45,'H',0,1,0,0,0,1),
(208,46,'H',0,1,0,0,0,1),
(209,47,'H',0,1,0,0,1,1),
(210,48,'H',0,1,0,0,0,1),
(211,49,'H',0,1,0,0,0,1),
(212,50,'H',0,1,0,0,0,1),
(213,51,'H',0,1,0,0,0,1),
(214,52,'H',0,1,0,0,0,1),
(215,53,'H',0,1,0,0,0,1),
(216,54,'H',0,1,0,0,0,1),
(217,55,'H',0,1,0,0,0,1),
(218,56,'H',0,1,0,0,0,1),
(219,57,'H',0,1,0,0,0,1),
(220,58,'H',0,1,0,0,0,1),
(221,59,'H',0,1,0,0,0,1),
(222,60,'H',0,1,0,0,0,1),
(223,61,'H',0,1,0,0,0,1),
(224,62,'',0,1,0,0,0,1),
(225,31,'K',0,0,1,1,0,1),
(226,32,'K',0,0,1,0,0,1),
(227,33,'K',0,0,1,0,0,1),
(228,34,'K',0,0,1,0,0,1),
(229,35,'K',0,0,1,0,0,1),
(230,36,'K',0,0,1,0,0,1),
(231,37,'K',0,0,1,0,0,1),
(232,38,'K',0,0,1,0,0,1),
(233,39,'K',0,0,1,0,0,1),
(234,40,'K',0,0,1,0,0,1),
(235,41,'K',0,0,1,0,0,1),
(236,42,'K',0,0,1,0,0,1),
(237,43,'K',0,0,1,0,0,1),
(238,44,'K',0,0,1,0,0,1),
(239,45,'K',0,0,1,0,0,1),
(240,46,'K',0,0,1,0,0,1),
(241,47,'K',0,0,1,0,1,1),
(242,48,'K',0,0,1,0,0,1),
(243,49,'K',0,0,1,0,0,1),
(244,50,'K',0,0,1,0,0,1),
(245,51,'K',0,0,1,0,0,1),
(246,52,'K',0,0,1,0,0,1),
(247,53,'K',0,0,1,0,0,1),
(248,54,'K',0,0,1,0,0,1),
(249,55,'K',0,0,1,0,0,1),
(250,56,'K',0,0,1,0,0,1),
(251,57,'K',0,0,1,0,0,1),
(252,58,'K',0,0,1,0,0,1),
(253,59,'K',0,0,1,0,0,1),
(254,60,'K',0,0,1,0,0,1),
(255,61,'K',0,0,1,0,0,1),
(256,62,'',0,0,1,0,0,1);

/*Table structure for table `type` */

CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tname` varchar(100) DEFAULT NULL COMMENT '机型',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`tid`,`tname`) values 
(1,'南航空客-A33A-国际航班'),
(2,'南航空客-A321');

/* Procedure structure for procedure `insert_passengers` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_passengers`()
BEGIN
	DECLARE surname VARCHAR(4096) default '["刘","王"]';
	DECLARE isurname VARCHAR(10) DEFAULT '';
	DECLARE surnameindex int DEFAULT 0;
	set isurname = surname->>"$["+i+"]";
	select isurname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_A_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_A_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'A';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 1;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  
  WHILE
    srow <= 62
    DO
    
    IF srow = 46 || srow = 62
    then SET scolumn = '';
    else set scolumn = 'A';
    END IF;
    
    IF srow = 47
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 31
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_A_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_A_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'A';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 1;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_B_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_B_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'B';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_C_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_C_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'C';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
    
    IF srow = 46 || srow = 62
    THEN SET scolumn = '';
    else set scolumn = 'C';
    END IF;
    
    IF srow = 47
    THEN SET ve = 1;
    else set ve = 0;
    END IF;
    
    IF srow = 31
    THEN SET vb = 1;
    else set vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_C_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_C_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'C';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_D_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_D_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'D';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
    
    IF srow > 57
    THEN SET scolumn = '';
    else set scolumn = 'D';
    END IF;
    
    IF srow = 31 || srow = 47
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;

    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_E_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_E_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'E';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
    
    IF srow = 31 || srow = 47
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    IF srow >= 58 && srow <= 62
    THEN SET va = 1;
    ELSE SET va = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_F_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_F_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'F';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
   
    
    IF srow = 31 || srow = 47
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_G_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_G_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'G';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    do
    
    
    IF srow = 31 || srow = 47
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_H_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_H_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'H';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
    DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
    
    IF srow > 61
    THEN SET scolumn = '';
    ELSE SET scolumn = 'H';
    END IF;
    
    IF srow = 47
    THEN SET ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 31
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_H_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_H_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'H';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 1;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    IF srow = 46
    THEN SET scolumn = '';
    ELSE SET scolumn = 'H';
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_J_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_J_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'J';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 0;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_K_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_K_t1`()
BEGIN

  DECLARE srow INT DEFAULT 31;
  DECLARE scolumn VARCHAR(2) DEFAULT 'K';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 1;
  DECLARE vb INT DEFAULT 1;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 1;
  
  WHILE
    srow <= 62
    DO
    
    IF srow > 61
    THEN SET scolumn = '';
    ELSE SET scolumn = 'K';
    END IF;
    
    IF srow = 47
    THEN SET ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 31
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seats_column_K_t2` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seats_column_K_t2`()
BEGIN

  DECLARE srow INT DEFAULT 35;
  DECLARE scolumn VARCHAR(2) DEFAULT 'K';
  DECLARE vg INT DEFAULT 0;
  DECLARE va INT DEFAULT 0;
  DECLARE vw INT DEFAULT 1;
  DECLARE vb INT DEFAULT 0;
  DECLARE ve INT DEFAULT 0;
  DECLARE t INT DEFAULT 2;
  
  
  WHILE
    srow <= 58
    DO
    
    IF srow = 45 || srow = 46
    THEN set ve = 1;
    else SET ve = 0;
    END IF;
    
    IF srow = 35 || srow = 58
    THEN SET vg = 1;
    ELSE SET vg = 0;
    END IF;
    
    IF srow = 35
    THEN SET vb = 1;
    else SET vb = 0;
    END IF;
    
    INSERT INTO seats (
      srow,
      scolumn,
      v_gate,
      v_aisle,
      v_window,
      v_basket,
      v_exit,
      tid
    )
    VALUES
      (srow, scolumn, vg, va, vw, vb, ve, t);
   SET srow = srow + 1;
  END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_seat_t1` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_seat_t1`()
BEGIN
		TRUNCATE seats;
		CALL insert_seats_column_A_t1;
		CALL insert_seats_column_C_t1;
		CALL insert_seats_column_D_t1;
		CALL insert_seats_column_E_t1;
		CALL insert_seats_column_F_t1;
		CALL insert_seats_column_G_t1;
		CALL insert_seats_column_H_t1;
		CALL insert_seats_column_K_t1;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `t1_seats` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `t1_seats`()
BEGIN
	DECLARE sr INT default 31;
	DECLARE sql1 MEDIUMTEXT default '';

	while sr  <= 62
	DO
    
	IF sr%2 = 1
	THEN SET sql1 = concat(sql1,' (SELECT s.*,a.aid,a.pname,IF(IFNULL(a.aid, 0) = 0, 1, 0) assigned,CONCAT(s.v_gate,s.v_aisle,s.v_window,s.v_basket,s.v_exit,IF(IFNULL(aid, 0) = 0, 0, 1)) flag FROM(SELECT * FROM seats WHERE tid = 1) s LEFT JOIN allocation a ON s.sid = a.sid WHERE s.srow = ',sr,' ORDER BY s.srow,s.sid LIMIT 0,20) ');
	ELSE SET sql1 = CONCAT(sql1,' (SELECT s.*,a.aid,a.pname,IF(IFNULL(a.aid, 0) = 0, 1, 0) assigned,CONCAT(s.v_gate,s.v_aisle,s.v_window,s.v_basket,s.v_exit,IF(IFNULL(aid, 0) = 0, 0, 1)) flag FROM(SELECT * FROM seats WHERE tid = 1) s LEFT JOIN allocation a ON s.sid = a.sid WHERE s.srow = ',sr,' ORDER BY s.srow,s.sid desc LIMIT 0,20) ');
	END IF;
    
	IF sr != 62
	THEN SET sql1 = CONCAT(sql1,' union all ');
	else set sql1 = CONCAT(sql1,';');
	END IF;
    
	SET sr = sr + 1;
    
	END WHILE;
	
	set @sql1=sql1;
	PREPARE stmt FROM @sql1;
	EXECUTE stmt; 
	DEALLOCATE PREPARE stmt;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
