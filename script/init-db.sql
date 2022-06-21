# Granting privileges for debezium to connect
CREATE USER IF NOT EXISTS'debezium'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'debezium'@'%';
FLUSH PRIVILEGES;

# Creating demo database and granting privileges
CREATE DATABASE IF NOT EXISTS demo;
GRANT ALL PRIVILEGES ON demo.* TO 'debezium'@'%';

USE `demo`;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`customerNumber`,`customerName`,`contactLastName`,`contactFirstName`,`phone`,`addressLine1`,`addressLine2`,`city`,`state`,`postalCode`,`country`,`salesRepEmployeeNumber`,`creditLimit`) values 

(103,'Atelier graphique','Schmitt','Carine ','40.32.2555','54, rue Royale',NULL,'Nantes',NULL,'44000','France',1370,'21000.00'),

(112,'Signal Gift Stores','King','Jean','7025551838','8489 Strong St.',NULL,'Las Vegas','NV','83030','USA',1166,'71800.00'),

(114,'Australian Collectors, Co.','Ferguson','Peter','03 9520 4555','636 St Kilda Road','Level 3','Melbourne','Victoria','3004','Australia',1611,'117300.00'),

(119,'La Rochelle Gifts','Labrune','Janine ','40.67.8555','67, rue des Cinquante Otages',NULL,'Nantes',NULL,'44000','France',1370,'118200.00'),

(121,'Baane Mini Imports','Bergulfsen','Jonas ','07-98 9555','Erling Skakkes gate 78',NULL,'Stavern',NULL,'4110','Norway',1504,'81700.00'),

(124,'Mini Gifts Distributors Ltd.','Nelson','Susan','4155551450','5677 Strong St.',NULL,'San Rafael','CA','97562','USA',1165,'210500.00'),

(125,'Havel & Zbyszek Co','Piestrzeniewicz','Zbyszek ','(26) 642-7555','ul. Filtrowa 68',NULL,'Warszawa',NULL,'01-012','Poland',NULL,'0.00'),

(128,'Blauer See Auto, Co.','Keitel','Roland','+49 69 66 90 2555','Lyonerstr. 34',NULL,'Frankfurt',NULL,'60528','Germany',1504,'59700.00'),

(129,'Mini Wheels Co.','Murphy','Julie','6505555787','5557 North Pendale Street',NULL,'San Francisco','CA','94217','USA',1165,'64600.00'),

(131,'Land of Toys Inc.','Lee','Kwai','2125557818','897 Long Airport Avenue',NULL,'NYC','NY','10022','USA',1323,'114900.00'),

(141,'Euro+ Shopping Channel','Freyre','Diego ','(91) 555 94 44','C/ Moralzarzal, 86',NULL,'Madrid',NULL,'28034','Spain',1370,'227600.00'),

(144,'Volvo Model Replicas, Co','Berglund','Christina ','0921-12 3555','Berguvsvägen  8',NULL,'Luleå',NULL,'S-958 22','Sweden',1504,'53100.00'),

(145,'Danish Wholesale Imports','Petersen','Jytte ','31 12 3555','Vinbæltet 34',NULL,'Kobenhavn',NULL,'1734','Denmark',1401,'83400.00'),

(146,'Saveley & Henriot, Co.','Saveley','Mary ','78.32.5555','2, rue du Commerce',NULL,'Lyon',NULL,'69004','France',1337,'123900.00'),

(148,'Dragon Souveniers, Ltd.','Natividad','Eric','+65 221 7555','Bronz Sok.','Bronz Apt. 3/6 Tesvikiye','Singapore',NULL,'079903','Singapore',1621,'103800.00'),

(151,'Muscle Machine Inc','Young','Jeff','2125557413','4092 Furth Circle','Suite 400','NYC','NY','10022','USA',1286,'138500.00'),

(157,'Diecast Classics Inc.','Leong','Kelvin','2155551555','7586 Pompton St.',NULL,'Allentown','PA','70267','USA',1216,'100600.00'),

(161,'Technics Stores Inc.','Hashimoto','Juri','6505556809','9408 Furth Circle',NULL,'Burlingame','CA','94217','USA',1165,'84600.00'),

(166,'Handji Gifts& Co','Victorino','Wendy','+65 224 1555','106 Linden Road Sandown','2nd Floor','Singapore',NULL,'069045','Singapore',1612,'97900.00'),

(167,'Herkku Gifts','Oeztan','Veysel','+47 2267 3215','Brehmen St. 121','PR 334 Sentrum','Bergen',NULL,'N 5804','Norway  ',1504,'96800.00'),

(168,'American Souvenirs Inc','Franco','Keith','2035557845','149 Spinnaker Dr.','Suite 101','New Haven','CT','97823','USA',1286,'0.00'),

(169,'Porto Imports Co.','de Castro','Isabel ','(1) 356-5555','Estrada da saúde n. 58',NULL,'Lisboa',NULL,'1756','Portugal',NULL,'0.00'),

(171,'Daedalus Designs Imports','Rancé','Martine ','20.16.1555','184, chaussée de Tournai',NULL,'Lille',NULL,'59000','France',1370,'82900.00'),

(172,'La Corne D\'abondance, Co.','Bertrand','Marie','(1) 42.34.2555','265, boulevard Charonne',NULL,'Paris',NULL,'75012','France',1337,'84300.00'),

(173,'Cambridge Collectables Co.','Tseng','Jerry','6175555555','4658 Baden Av.',NULL,'Cambridge','MA','51247','USA',1188,'43400.00'),

(175,'Gift Depot Inc.','King','Julie','2035552570','25593 South Bay Ln.',NULL,'Bridgewater','CT','97562','USA',1323,'84300.00'),

(177,'Osaka Souveniers Co.','Kentary','Mory','+81 06 6342 5555','1-6-20 Dojima',NULL,'Kita-ku','Osaka',' 530-0003','Japan',1621,'81200.00'),

(181,'Vitachrome Inc.','Frick','Michael','2125551500','2678 Kingston Rd.','Suite 101','NYC','NY','10022','USA',1286,'76400.00'),

(186,'Toys of Finland, Co.','Karttunen','Matti','90-224 8555','Keskuskatu 45',NULL,'Helsinki',NULL,'21240','Finland',1501,'96500.00'),

(187,'AV Stores, Co.','Ashworth','Rachel','(171) 555-1555','Fauntleroy Circus',NULL,'Manchester',NULL,'EC2 5NT','UK',1501,'136800.00'),

(189,'Clover Collections, Co.','Cassidy','Dean','+353 1862 1555','25 Maiden Lane','Floor No. 4','Dublin',NULL,'2','Ireland',1504,'69400.00'),

(198,'Auto-Moto Classics Inc.','Taylor','Leslie','6175558428','16780 Pompton St.',NULL,'Brickhaven','MA','58339','USA',1216,'23000.00'),

(201,'UK Collectables, Ltd.','Devon','Elizabeth','(171) 555-2282','12, Berkeley Gardens Blvd',NULL,'Liverpool',NULL,'WX1 6LT','UK',1501,'92700.00'),

(202,'Canadian Gift Exchange Network','Tamuri','Yoshi ','(604) 555-3392','1900 Oak St.',NULL,'Vancouver','BC','V3F 2K1','Canada',1323,'90300.00'),

(204,'Online Mini Collectables','Barajas','Miguel','6175557555','7635 Spinnaker Dr.',NULL,'Brickhaven','MA','58339','USA',1188,'68700.00'),

(205,'Toys4GrownUps.com','Young','Julie','6265557265','78934 Hillside Dr.',NULL,'Pasadena','CA','90003','USA',1166,'90700.00'),

(206,'Asian Shopping Network, Co','Walker','Brydey','+612 9411 1555','Suntec Tower Three','8 Temasek','Singapore',NULL,'038988','Singapore',NULL,'0.00'),

(209,'Mini Caravy','Citeaux','Frédérique ','88.60.1555','24, place Kléber',NULL,'Strasbourg',NULL,'67000','France',1370,'53800.00'),

(211,'King Kong Collectables, Co.','Gao','Mike','+852 2251 1555','Bank of China Tower','1 Garden Road','Central Hong Kong',NULL,NULL,'Hong Kong',1621,'58600.00'),

(216,'Enaco Distributors','Saavedra','Eduardo ','(93) 203 4555','Rambla de Cataluña, 23',NULL,'Barcelona',NULL,'08022','Spain',1702,'60300.00'),

(219,'Boards & Toys Co.','Young','Mary','3105552373','4097 Douglas Av.',NULL,'Glendale','CA','92561','USA',1166,'11000.00'),

(223,'Natürlich Autos','Kloss','Horst ','0372-555188','Taucherstraße 10',NULL,'Cunewalde',NULL,'01307','Germany',NULL,'0.00'),

(227,'Heintze Collectables','Ibsen','Palle','86 21 3555','Smagsloget 45',NULL,'Århus',NULL,'8200','Denmark',1401,'120800.00'),

(233,'Québec Home Shopping Network','Fresnière','Jean ','(514) 555-8054','43 rue St. Laurent',NULL,'Montréal','Québec','H1J 1C3','Canada',1286,'48700.00'),

(237,'ANG Resellers','Camino','Alejandra ','(91) 745 6555','Gran Vía, 1',NULL,'Madrid',NULL,'28001','Spain',NULL,'0.00'),

(239,'Collectable Mini Designs Co.','Thompson','Valarie','7605558146','361 Furth Circle',NULL,'San Diego','CA','91217','USA',1166,'105000.00'),

(240,'giftsbymail.co.uk','Bennett','Helen ','(198) 555-8888','Garden House','Crowther Way 23','Cowes','Isle of Wight','PO31 7PJ','UK',1501,'93900.00'),

(242,'Alpha Cognac','Roulet','Annette ','61.77.6555','1 rue Alsace-Lorraine',NULL,'Toulouse',NULL,'31000','France',1370,'61100.00'),

(247,'Messner Shopping Network','Messner','Renate ','069-0555984','Magazinweg 7',NULL,'Frankfurt',NULL,'60528','Germany',NULL,'0.00'),

(249,'Amica Models & Co.','Accorti','Paolo ','011-4988555','Via Monte Bianco 34',NULL,'Torino',NULL,'10100','Italy',1401,'113000.00'),

(250,'Lyon Souveniers','Da Silva','Daniel','+33 1 46 62 7555','27 rue du Colonel Pierre Avia',NULL,'Paris',NULL,'75508','France',1337,'68100.00'),

(256,'Auto Associés & Cie.','Tonini','Daniel ','30.59.8555','67, avenue de l\'Europe',NULL,'Versailles',NULL,'78000','France',1370,'77900.00'),

(259,'Toms Spezialitäten, Ltd','Pfalzheim','Henriette ','0221-5554327','Mehrheimerstr. 369',NULL,'Köln',NULL,'50739','Germany',1504,'120400.00'),

(260,'Royal Canadian Collectables, Ltd.','Lincoln','Elizabeth ','(604) 555-4555','23 Tsawassen Blvd.',NULL,'Tsawassen','BC','T2F 8M4','Canada',1323,'89600.00'),

(273,'Franken Gifts, Co','Franken','Peter ','089-0877555','Berliner Platz 43',NULL,'München',NULL,'80805','Germany',NULL,'0.00'),

(276,'Anna\'s Decorations, Ltd','O\'Hara','Anna','02 9936 8555','201 Miller Street','Level 15','North Sydney','NSW','2060','Australia',1611,'107800.00'),

(278,'Rovelli Gifts','Rovelli','Giovanni ','035-640555','Via Ludovico il Moro 22',NULL,'Bergamo',NULL,'24100','Italy',1401,'119600.00'),

(282,'Souveniers And Things Co.','Huxley','Adrian','+61 2 9495 8555','Monitor Money Building','815 Pacific Hwy','Chatswood','NSW','2067','Australia',1611,'93300.00'),

(286,'Marta\'s Replicas Co.','Hernandez','Marta','6175558555','39323 Spinnaker Dr.',NULL,'Cambridge','MA','51247','USA',1216,'123700.00'),

(293,'BG&E Collectables','Harrison','Ed','+41 26 425 50 01','Rte des Arsenaux 41 ',NULL,'Fribourg',NULL,'1700','Switzerland',NULL,'0.00'),

(298,'Vida Sport, Ltd','Holz','Mihael','0897-034555','Grenzacherweg 237',NULL,'Genève',NULL,'1203','Switzerland',1702,'141300.00'),

(299,'Norway Gifts By Mail, Co.','Klaeboe','Jan','+47 2212 1555','Drammensveien 126A','PB 211 Sentrum','Oslo',NULL,'N 0106','Norway  ',1504,'95100.00'),

(303,'Schuyler Imports','Schuyler','Bradley','+31 20 491 9555','Kingsfordweg 151',NULL,'Amsterdam',NULL,'1043 GR','Netherlands',NULL,'0.00'),

(307,'Der Hund Imports','Andersen','Mel','030-0074555','Obere Str. 57',NULL,'Berlin',NULL,'12209','Germany',NULL,'0.00'),

(311,'Oulu Toy Supplies, Inc.','Koskitalo','Pirkko','981-443655','Torikatu 38',NULL,'Oulu',NULL,'90110','Finland',1501,'90500.00'),

(314,'Petit Auto','Dewey','Catherine ','(02) 5554 67','Rue Joseph-Bens 532',NULL,'Bruxelles',NULL,'B-1180','Belgium',1401,'79900.00'),

(319,'Mini Classics','Frick','Steve','9145554562','3758 North Pendale Street',NULL,'White Plains','NY','24067','USA',1323,'102700.00'),

(320,'Mini Creations Ltd.','Huang','Wing','5085559555','4575 Hillside Dr.',NULL,'New Bedford','MA','50553','USA',1188,'94500.00'),

(321,'Corporate Gift Ideas Co.','Brown','Julie','6505551386','7734 Strong St.',NULL,'San Francisco','CA','94217','USA',1165,'105000.00'),

(323,'Down Under Souveniers, Inc','Graham','Mike','+64 9 312 5555','162-164 Grafton Road','Level 2','Auckland  ',NULL,NULL,'New Zealand',1612,'88000.00'),

(324,'Stylish Desk Decors, Co.','Brown','Ann ','(171) 555-0297','35 King George',NULL,'London',NULL,'WX3 6FW','UK',1501,'77000.00'),

(328,'Tekni Collectables Inc.','Brown','William','2015559350','7476 Moss Rd.',NULL,'Newark','NJ','94019','USA',1323,'43000.00'),

(333,'Australian Gift Network, Co','Calaghan','Ben','61-7-3844-6555','31 Duncan St. West End',NULL,'South Brisbane','Queensland','4101','Australia',1611,'51600.00'),

(334,'Suominen Souveniers','Suominen','Kalle','+358 9 8045 555','Software Engineering Center','SEC Oy','Espoo',NULL,'FIN-02271','Finland',1501,'98800.00'),

(335,'Cramer Spezialitäten, Ltd','Cramer','Philip ','0555-09555','Maubelstr. 90',NULL,'Brandenburg',NULL,'14776','Germany',NULL,'0.00'),

(339,'Classic Gift Ideas, Inc','Cervantes','Francisca','2155554695','782 First Street',NULL,'Philadelphia','PA','71270','USA',1188,'81100.00'),

(344,'CAF Imports','Fernandez','Jesus','+34 913 728 555','Merchants House','27-30 Merchant\'s Quay','Madrid',NULL,'28023','Spain',1702,'59600.00'),

(347,'Men \'R\' US Retailers, Ltd.','Chandler','Brian','2155554369','6047 Douglas Av.',NULL,'Los Angeles','CA','91003','USA',1166,'57700.00'),

(348,'Asian Treasures, Inc.','McKenna','Patricia ','2967 555','8 Johnstown Road',NULL,'Cork','Co. Cork',NULL,'Ireland',NULL,'0.00'),

(350,'Marseille Mini Autos','Lebihan','Laurence ','91.24.4555','12, rue des Bouchers',NULL,'Marseille',NULL,'13008','France',1337,'65000.00'),

(353,'Reims Collectables','Henriot','Paul ','26.47.1555','59 rue de l\'Abbaye',NULL,'Reims',NULL,'51100','France',1337,'81100.00'),

(356,'SAR Distributors, Co','Kuger','Armand','+27 21 550 3555','1250 Pretorius Street',NULL,'Hatfield','Pretoria','0028','South Africa',NULL,'0.00'),

(357,'GiftsForHim.com','MacKinlay','Wales','64-9-3763555','199 Great North Road',NULL,'Auckland',NULL,NULL,'New Zealand',1612,'77700.00'),

(361,'Kommission Auto','Josephs','Karin','0251-555259','Luisenstr. 48',NULL,'Münster',NULL,'44087','Germany',NULL,'0.00'),

(362,'Gifts4AllAges.com','Yoshido','Juri','6175559555','8616 Spinnaker Dr.',NULL,'Boston','MA','51003','USA',1216,'41900.00'),

(363,'Online Diecast Creations Co.','Young','Dorothy','6035558647','2304 Long Airport Avenue',NULL,'Nashua','NH','62005','USA',1216,'114200.00'),

(369,'Lisboa Souveniers, Inc','Rodriguez','Lino ','(1) 354-2555','Jardim das rosas n. 32',NULL,'Lisboa',NULL,'1675','Portugal',NULL,'0.00'),

(376,'Precious Collectables','Urs','Braun','0452-076555','Hauptstr. 29',NULL,'Bern',NULL,'3012','Switzerland',1702,'0.00'),

(379,'Collectables For Less Inc.','Nelson','Allen','6175558555','7825 Douglas Av.',NULL,'Brickhaven','MA','58339','USA',1188,'70700.00'),

(381,'Royale Belge','Cartrain','Pascale ','(071) 23 67 2555','Boulevard Tirou, 255',NULL,'Charleroi',NULL,'B-6000','Belgium',1401,'23500.00'),

(382,'Salzburg Collectables','Pipps','Georg ','6562-9555','Geislweg 14',NULL,'Salzburg',NULL,'5020','Austria',1401,'71700.00'),

(385,'Cruz & Sons Co.','Cruz','Arnold','+63 2 555 3587','15 McCallum Street','NatWest Center #13-03','Makati City',NULL,'1227 MM','Philippines',1621,'81500.00'),

(386,'L\'ordine Souveniers','Moroni','Maurizio ','0522-556555','Strada Provinciale 124',NULL,'Reggio Emilia',NULL,'42100','Italy',1401,'121400.00'),

(398,'Tokyo Collectables, Ltd','Shimamura','Akiko','+81 3 3584 0555','2-2-8 Roppongi',NULL,'Minato-ku','Tokyo','106-0032','Japan',1621,'94400.00'),

(406,'Auto Canal+ Petit','Perrier','Dominique','(1) 47.55.6555','25, rue Lauriston',NULL,'Paris',NULL,'75016','France',1337,'95000.00'),

(409,'Stuttgart Collectable Exchange','Müller','Rita ','0711-555361','Adenauerallee 900',NULL,'Stuttgart',NULL,'70563','Germany',NULL,'0.00'),

(412,'Extreme Desk Decorations, Ltd','McRoy','Sarah','04 499 9555','101 Lambton Quay','Level 11','Wellington',NULL,NULL,'New Zealand',1612,'86800.00'),

(415,'Bavarian Collectables Imports, Co.','Donnermeyer','Michael',' +49 89 61 08 9555','Hansastr. 15',NULL,'Munich',NULL,'80686','Germany',1504,'77000.00'),

(424,'Classic Legends Inc.','Hernandez','Maria','2125558493','5905 Pompton St.','Suite 750','NYC','NY','10022','USA',1286,'67500.00'),

(443,'Feuer Online Stores, Inc','Feuer','Alexander ','0342-555176','Heerstr. 22',NULL,'Leipzig',NULL,'04179','Germany',NULL,'0.00'),

(447,'Gift Ideas Corp.','Lewis','Dan','2035554407','2440 Pompton St.',NULL,'Glendale','CT','97561','USA',1323,'49700.00'),

(448,'Scandinavian Gift Ideas','Larsson','Martha','0695-34 6555','Åkergatan 24',NULL,'Bräcke',NULL,'S-844 67','Sweden',1504,'116400.00'),

(450,'The Sharp Gifts Warehouse','Frick','Sue','4085553659','3086 Ingle Ln.',NULL,'San Jose','CA','94217','USA',1165,'77600.00'),

(452,'Mini Auto Werke','Mendel','Roland ','7675-3555','Kirchgasse 6',NULL,'Graz',NULL,'8010','Austria',1401,'45300.00'),

(455,'Super Scale Inc.','Murphy','Leslie','2035559545','567 North Pendale Street',NULL,'New Haven','CT','97823','USA',1286,'95400.00'),

(456,'Microscale Inc.','Choi','Yu','2125551957','5290 North Pendale Street','Suite 200','NYC','NY','10022','USA',1286,'39800.00'),

(458,'Corrida Auto Replicas, Ltd','Sommer','Martín ','(91) 555 22 82','C/ Araquil, 67',NULL,'Madrid',NULL,'28023','Spain',1702,'104600.00'),

(459,'Warburg Exchange','Ottlieb','Sven ','0241-039123','Walserweg 21',NULL,'Aachen',NULL,'52066','Germany',NULL,'0.00'),

(462,'FunGiftIdeas.com','Benitez','Violeta','5085552555','1785 First Street',NULL,'New Bedford','MA','50553','USA',1216,'85800.00'),

(465,'Anton Designs, Ltd.','Anton','Carmen','+34 913 728555','c/ Gobelas, 19-1 Urb. La Florida',NULL,'Madrid',NULL,'28023','Spain',NULL,'0.00'),

(471,'Australian Collectables, Ltd','Clenahan','Sean','61-9-3844-6555','7 Allen Street',NULL,'Glen Waverly','Victoria','3150','Australia',1611,'60300.00'),

(473,'Frau da Collezione','Ricotti','Franco','+39 022515555','20093 Cologno Monzese','Alessandro Volta 16','Milan',NULL,NULL,'Italy',1401,'34800.00'),

(475,'West Coast Collectables Co.','Thompson','Steve','3105553722','3675 Furth Circle',NULL,'Burbank','CA','94019','USA',1166,'55400.00'),

(477,'Mit Vergnügen & Co.','Moos','Hanna ','0621-08555','Forsterstr. 57',NULL,'Mannheim',NULL,'68306','Germany',NULL,'0.00'),

(480,'Kremlin Collectables, Co.','Semenov','Alexander ','+7 812 293 0521','2 Pobedy Square',NULL,'Saint Petersburg',NULL,'196143','Russia',NULL,'0.00'),

(481,'Raanan Stores, Inc','Altagar,G M','Raanan','+ 972 9 959 8555','3 Hagalim Blv.',NULL,'Herzlia',NULL,'47625','Israel',NULL,'0.00'),

(484,'Iberia Gift Imports, Corp.','Roel','José Pedro ','(95) 555 82 82','C/ Romero, 33',NULL,'Sevilla',NULL,'41101','Spain',1702,'65700.00'),

(486,'Motor Mint Distributors Inc.','Salazar','Rosa','2155559857','11328 Douglas Av.',NULL,'Philadelphia','PA','71270','USA',1323,'72600.00'),

(487,'Signal Collectibles Ltd.','Taylor','Sue','4155554312','2793 Furth Circle',NULL,'Brisbane','CA','94217','USA',1165,'60300.00'),

(489,'Double Decker Gift Stores, Ltd','Smith','Thomas ','(171) 555-7555','120 Hanover Sq.',NULL,'London',NULL,'WA1 1DP','UK',1501,'43300.00'),

(495,'Diecast Collectables','Franco','Valarie','6175552555','6251 Ingle Ln.',NULL,'Boston','MA','51003','USA',1188,'85100.00'),

(496,'Kelly\'s Gift Shop','Snowden','Tony','+64 9 5555500','Arenales 1938 3\'A\'',NULL,'Auckland  ',NULL,NULL,'New Zealand',1612,'110000.00');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `customerNumber` (`customerNumber`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`orderNumber`,`orderDate`,`requiredDate`,`shippedDate`,`status`,`comments`,`customerNumber`) values 

(10100,'2003-01-06','2003-01-13','2003-01-10','Shipped',NULL,363),

(10101,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128),

(10102,'2003-01-10','2003-01-18','2003-01-14','Shipped',NULL,181),

(10103,'2003-01-29','2003-02-07','2003-02-02','Shipped',NULL,121),

(10104,'2003-01-31','2003-02-09','2003-02-01','Shipped',NULL,141),

(10105,'2003-02-11','2003-02-21','2003-02-12','Shipped',NULL,145),

(10106,'2003-02-17','2003-02-24','2003-02-21','Shipped',NULL,278),

(10107,'2003-02-24','2003-03-03','2003-02-26','Shipped','Difficult to negotiate with customer. We need more marketing materials',131),

(10108,'2003-03-03','2003-03-12','2003-03-08','Shipped',NULL,385),

(10109,'2003-03-10','2003-03-19','2003-03-11','Shipped','Customer requested that FedEx Ground is used for this shipping',486),

(10110,'2003-03-18','2003-03-24','2003-03-20','Shipped',NULL,187),

(10111,'2003-03-25','2003-03-31','2003-03-30','Shipped',NULL,129),

(10112,'2003-03-24','2003-04-03','2003-03-29','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',144),

(10113,'2003-03-26','2003-04-02','2003-03-27','Shipped',NULL,124),

(10114,'2003-04-01','2003-04-07','2003-04-02','Shipped',NULL,172),

(10115,'2003-04-04','2003-04-12','2003-04-07','Shipped',NULL,424),

(10116,'2003-04-11','2003-04-19','2003-04-13','Shipped',NULL,381),

(10117,'2003-04-16','2003-04-24','2003-04-17','Shipped',NULL,148),

(10118,'2003-04-21','2003-04-29','2003-04-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',216),

(10119,'2003-04-28','2003-05-05','2003-05-02','Shipped',NULL,382),

(10120,'2003-04-29','2003-05-08','2003-05-01','Shipped',NULL,114),

(10121,'2003-05-07','2003-05-13','2003-05-13','Shipped',NULL,353),

(10122,'2003-05-08','2003-05-16','2003-05-13','Shipped',NULL,350),

(10123,'2003-05-20','2003-05-29','2003-05-22','Shipped',NULL,103),

(10124,'2003-05-21','2003-05-29','2003-05-25','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',112),

(10125,'2003-05-21','2003-05-27','2003-05-24','Shipped',NULL,114),

(10126,'2003-05-28','2003-06-07','2003-06-02','Shipped',NULL,458),

(10127,'2003-06-03','2003-06-09','2003-06-06','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',151),

(10128,'2003-06-06','2003-06-12','2003-06-11','Shipped',NULL,141),

(10129,'2003-06-12','2003-06-18','2003-06-14','Shipped',NULL,324),

(10130,'2003-06-16','2003-06-24','2003-06-21','Shipped',NULL,198),

(10131,'2003-06-16','2003-06-25','2003-06-21','Shipped',NULL,447),

(10132,'2003-06-25','2003-07-01','2003-06-28','Shipped',NULL,323),

(10133,'2003-06-27','2003-07-04','2003-07-03','Shipped',NULL,141),

(10134,'2003-07-01','2003-07-10','2003-07-05','Shipped',NULL,250),

(10135,'2003-07-02','2003-07-12','2003-07-03','Shipped',NULL,124),

(10136,'2003-07-04','2003-07-14','2003-07-06','Shipped','Customer is interested in buying more Ferrari models',242),

(10137,'2003-07-10','2003-07-20','2003-07-14','Shipped',NULL,353),

(10138,'2003-07-07','2003-07-16','2003-07-13','Shipped',NULL,496),

(10139,'2003-07-16','2003-07-23','2003-07-21','Shipped',NULL,282),

(10140,'2003-07-24','2003-08-02','2003-07-30','Shipped',NULL,161),

(10141,'2003-08-01','2003-08-09','2003-08-04','Shipped',NULL,334),

(10142,'2003-08-08','2003-08-16','2003-08-13','Shipped',NULL,124),

(10143,'2003-08-10','2003-08-18','2003-08-12','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',320),

(10144,'2003-08-13','2003-08-21','2003-08-14','Shipped',NULL,381),

(10145,'2003-08-25','2003-09-02','2003-08-31','Shipped',NULL,205),

(10146,'2003-09-03','2003-09-13','2003-09-06','Shipped',NULL,447),

(10147,'2003-09-05','2003-09-12','2003-09-09','Shipped',NULL,379),

(10148,'2003-09-11','2003-09-21','2003-09-15','Shipped','They want to reevaluate their terms agreement with Finance.',276),

(10149,'2003-09-12','2003-09-18','2003-09-17','Shipped',NULL,487),

(10150,'2003-09-19','2003-09-27','2003-09-21','Shipped','They want to reevaluate their terms agreement with Finance.',148),

(10151,'2003-09-21','2003-09-30','2003-09-24','Shipped',NULL,311),

(10152,'2003-09-25','2003-10-03','2003-10-01','Shipped',NULL,333),

(10153,'2003-09-28','2003-10-05','2003-10-03','Shipped',NULL,141),

(10154,'2003-10-02','2003-10-12','2003-10-08','Shipped',NULL,219),

(10155,'2003-10-06','2003-10-13','2003-10-07','Shipped',NULL,186),

(10156,'2003-10-08','2003-10-17','2003-10-11','Shipped',NULL,141),

(10157,'2003-10-09','2003-10-15','2003-10-14','Shipped',NULL,473),

(10158,'2003-10-10','2003-10-18','2003-10-15','Shipped',NULL,121),

(10159,'2003-10-10','2003-10-19','2003-10-16','Shipped',NULL,321),

(10160,'2003-10-11','2003-10-17','2003-10-17','Shipped',NULL,347),

(10161,'2003-10-17','2003-10-25','2003-10-20','Shipped',NULL,227),

(10162,'2003-10-18','2003-10-26','2003-10-19','Shipped',NULL,321),

(10163,'2003-10-20','2003-10-27','2003-10-24','Shipped',NULL,424),

(10164,'2003-10-21','2003-10-30','2003-10-23','Resolved','This order was disputed, but resolved on 11/1/2003; Customer doesn\'t like the colors and precision of the models.',452),

(10165,'2003-10-22','2003-10-31','2003-12-26','Shipped','This order was on hold because customers\'s credit limit had been exceeded. Order will ship when payment is received',148),

(10166,'2003-10-21','2003-10-30','2003-10-27','Shipped',NULL,462),

(10167,'2003-10-23','2003-10-30',NULL,'Cancelled','Customer called to cancel. The warehouse was notified in time and the order didn\'t ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.',448),

(10168,'2003-10-28','2003-11-03','2003-11-01','Shipped',NULL,161),

(10169,'2003-11-04','2003-11-14','2003-11-09','Shipped',NULL,276),

(10170,'2003-11-04','2003-11-12','2003-11-07','Shipped',NULL,452),

(10171,'2003-11-05','2003-11-13','2003-11-07','Shipped',NULL,233),

(10172,'2003-11-05','2003-11-14','2003-11-11','Shipped',NULL,175),

(10173,'2003-11-05','2003-11-15','2003-11-09','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',278),

(10174,'2003-11-06','2003-11-15','2003-11-10','Shipped',NULL,333),

(10175,'2003-11-06','2003-11-14','2003-11-09','Shipped',NULL,324),

(10176,'2003-11-06','2003-11-15','2003-11-12','Shipped',NULL,386),

(10177,'2003-11-07','2003-11-17','2003-11-12','Shipped',NULL,344),

(10178,'2003-11-08','2003-11-16','2003-11-10','Shipped','Custom shipping instructions sent to warehouse',242),

(10179,'2003-11-11','2003-11-17','2003-11-13','Cancelled','Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.',496),

(10180,'2003-11-11','2003-11-19','2003-11-14','Shipped',NULL,171),

(10181,'2003-11-12','2003-11-19','2003-11-15','Shipped',NULL,167),

(10182,'2003-11-12','2003-11-21','2003-11-18','Shipped',NULL,124),

(10183,'2003-11-13','2003-11-22','2003-11-15','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',339),

(10184,'2003-11-14','2003-11-22','2003-11-20','Shipped',NULL,484),

(10185,'2003-11-14','2003-11-21','2003-11-20','Shipped',NULL,320),

(10186,'2003-11-14','2003-11-20','2003-11-18','Shipped','They want to reevaluate their terms agreement with the VP of Sales',489),

(10187,'2003-11-15','2003-11-24','2003-11-16','Shipped',NULL,211),

(10188,'2003-11-18','2003-11-26','2003-11-24','Shipped',NULL,167),

(10189,'2003-11-18','2003-11-25','2003-11-24','Shipped','They want to reevaluate their terms agreement with Finance.',205),

(10190,'2003-11-19','2003-11-29','2003-11-20','Shipped',NULL,141),

(10191,'2003-11-20','2003-11-30','2003-11-24','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',259),

(10192,'2003-11-20','2003-11-29','2003-11-25','Shipped',NULL,363),

(10193,'2003-11-21','2003-11-28','2003-11-27','Shipped',NULL,471),

(10194,'2003-11-25','2003-12-02','2003-11-26','Shipped',NULL,146),

(10195,'2003-11-25','2003-12-01','2003-11-28','Shipped',NULL,319),

(10196,'2003-11-26','2003-12-03','2003-12-01','Shipped',NULL,455),

(10197,'2003-11-26','2003-12-02','2003-12-01','Shipped','Customer inquired about remote controlled models and gold models.',216),

(10198,'2003-11-27','2003-12-06','2003-12-03','Shipped',NULL,385),

(10199,'2003-12-01','2003-12-10','2003-12-06','Shipped',NULL,475),

(10200,'2003-12-01','2003-12-09','2003-12-06','Shipped',NULL,211),

(10201,'2003-12-01','2003-12-11','2003-12-02','Shipped',NULL,129),

(10202,'2003-12-02','2003-12-09','2003-12-06','Shipped',NULL,357),

(10203,'2003-12-02','2003-12-11','2003-12-07','Shipped',NULL,141),

(10204,'2003-12-02','2003-12-10','2003-12-04','Shipped',NULL,151),

(10205,'2003-12-03','2003-12-09','2003-12-07','Shipped',' I need all the information I can get on our competitors.',141),

(10206,'2003-12-05','2003-12-13','2003-12-08','Shipped','Can we renegotiate this one?',202),

(10207,'2003-12-09','2003-12-17','2003-12-11','Shipped','Check on availability.',495),

(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',NULL,146),

(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',NULL,347),

(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',NULL,177),

(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',NULL,406),

(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',NULL,141),

(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped','Difficult to negotiate with customer. We need more marketing materials',489),

(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',NULL,458),

(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped','Customer requested that FedEx Ground is used for this shipping',475),

(10216,'2004-02-02','2004-02-10','2004-02-04','Shipped',NULL,256),

(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',NULL,166),

(10218,'2004-02-09','2004-02-16','2004-02-11','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',473),

(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',NULL,487),

(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',NULL,189),

(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',NULL,314),

(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',NULL,239),

(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',NULL,114),

(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',171),

(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',NULL,298),

(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',NULL,239),

(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',NULL,146),

(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',NULL,173),

(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',NULL,124),

(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',128),

(10231,'2004-03-19','2004-03-26','2004-03-25','Shipped',NULL,344),

(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',NULL,240),

(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',328),

(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',NULL,412),

(10235,'2004-04-02','2004-04-12','2004-04-06','Shipped',NULL,260),

(10236,'2004-04-03','2004-04-11','2004-04-08','Shipped',NULL,486),

(10237,'2004-04-05','2004-04-12','2004-04-10','Shipped',NULL,181),

(10238,'2004-04-09','2004-04-16','2004-04-10','Shipped',NULL,145),

(10239,'2004-04-12','2004-04-21','2004-04-17','Shipped',NULL,311),

(10240,'2004-04-13','2004-04-20','2004-04-20','Shipped',NULL,177),

(10241,'2004-04-13','2004-04-20','2004-04-19','Shipped',NULL,209),

(10242,'2004-04-20','2004-04-28','2004-04-25','Shipped','Customer is interested in buying more Ferrari models',456),

(10243,'2004-04-26','2004-05-03','2004-04-28','Shipped',NULL,495),

(10244,'2004-04-29','2004-05-09','2004-05-04','Shipped',NULL,141),

(10245,'2004-05-04','2004-05-12','2004-05-09','Shipped',NULL,455),

(10246,'2004-05-05','2004-05-13','2004-05-06','Shipped',NULL,141),

(10247,'2004-05-05','2004-05-11','2004-05-08','Shipped',NULL,334),

(10248,'2004-05-07','2004-05-14',NULL,'Cancelled','Order was mistakenly placed. The warehouse noticed the lack of documentation.',131),

(10249,'2004-05-08','2004-05-17','2004-05-11','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',173),

(10250,'2004-05-11','2004-05-19','2004-05-15','Shipped',NULL,450),

(10251,'2004-05-18','2004-05-24','2004-05-24','Shipped',NULL,328),

(10252,'2004-05-26','2004-06-04','2004-05-29','Shipped',NULL,406),

(10253,'2004-06-01','2004-06-09','2004-06-02','Cancelled','Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.',201),

(10254,'2004-06-03','2004-06-13','2004-06-04','Shipped','Customer requested that DHL is used for this shipping',323),

(10255,'2004-06-04','2004-06-12','2004-06-09','Shipped',NULL,209),

(10256,'2004-06-08','2004-06-16','2004-06-10','Shipped',NULL,145),

(10257,'2004-06-14','2004-06-24','2004-06-15','Shipped',NULL,450),

(10258,'2004-06-15','2004-06-25','2004-06-23','Shipped',NULL,398),

(10259,'2004-06-15','2004-06-22','2004-06-17','Shipped',NULL,166),

(10260,'2004-06-16','2004-06-22',NULL,'Cancelled','Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',357),

(10261,'2004-06-17','2004-06-25','2004-06-22','Shipped',NULL,233),

(10262,'2004-06-24','2004-07-01',NULL,'Cancelled','This customer found a better offer from one of our competitors. Will call back to renegotiate.',141),

(10263,'2004-06-28','2004-07-04','2004-07-02','Shipped',NULL,175),

(10264,'2004-06-30','2004-07-06','2004-07-01','Shipped','Customer will send a truck to our local warehouse on 7/1/2004',362),

(10265,'2004-07-02','2004-07-09','2004-07-07','Shipped',NULL,471),

(10266,'2004-07-06','2004-07-14','2004-07-10','Shipped',NULL,386),

(10267,'2004-07-07','2004-07-17','2004-07-09','Shipped',NULL,151),

(10268,'2004-07-12','2004-07-18','2004-07-14','Shipped',NULL,412),

(10269,'2004-07-16','2004-07-22','2004-07-18','Shipped',NULL,382),

(10270,'2004-07-19','2004-07-27','2004-07-24','Shipped','Can we renegotiate this one?',282),

(10271,'2004-07-20','2004-07-29','2004-07-23','Shipped',NULL,124),

(10272,'2004-07-20','2004-07-26','2004-07-22','Shipped',NULL,157),

(10273,'2004-07-21','2004-07-28','2004-07-22','Shipped',NULL,314),

(10274,'2004-07-21','2004-07-29','2004-07-22','Shipped',NULL,379),

(10275,'2004-07-23','2004-08-02','2004-07-29','Shipped',NULL,119),

(10276,'2004-08-02','2004-08-11','2004-08-08','Shipped',NULL,204),

(10277,'2004-08-04','2004-08-12','2004-08-05','Shipped',NULL,148),

(10278,'2004-08-06','2004-08-16','2004-08-09','Shipped',NULL,112),

(10279,'2004-08-09','2004-08-19','2004-08-15','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',141),

(10280,'2004-08-17','2004-08-27','2004-08-19','Shipped',NULL,249),

(10281,'2004-08-19','2004-08-28','2004-08-23','Shipped',NULL,157),

(10282,'2004-08-20','2004-08-26','2004-08-22','Shipped',NULL,124),

(10283,'2004-08-20','2004-08-30','2004-08-23','Shipped',NULL,260),

(10284,'2004-08-21','2004-08-29','2004-08-26','Shipped','Custom shipping instructions sent to warehouse',299),

(10285,'2004-08-27','2004-09-04','2004-08-31','Shipped',NULL,286),

(10286,'2004-08-28','2004-09-06','2004-09-01','Shipped',NULL,172),

(10287,'2004-08-30','2004-09-06','2004-09-01','Shipped',NULL,298),

(10288,'2004-09-01','2004-09-11','2004-09-05','Shipped',NULL,166),

(10289,'2004-09-03','2004-09-13','2004-09-04','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',167),

(10290,'2004-09-07','2004-09-15','2004-09-13','Shipped',NULL,198),

(10291,'2004-09-08','2004-09-17','2004-09-14','Shipped',NULL,448),

(10292,'2004-09-08','2004-09-18','2004-09-11','Shipped','They want to reevaluate their terms agreement with Finance.',131),

(10293,'2004-09-09','2004-09-18','2004-09-14','Shipped',NULL,249),

(10294,'2004-09-10','2004-09-17','2004-09-14','Shipped',NULL,204),

(10295,'2004-09-10','2004-09-17','2004-09-14','Shipped','They want to reevaluate their terms agreement with Finance.',362),

(10296,'2004-09-15','2004-09-22','2004-09-16','Shipped',NULL,415),

(10297,'2004-09-16','2004-09-22','2004-09-21','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',189),

(10298,'2004-09-27','2004-10-05','2004-10-01','Shipped',NULL,103),

(10299,'2004-09-30','2004-10-10','2004-10-01','Shipped',NULL,186),

(10300,'2003-10-04','2003-10-13','2003-10-09','Shipped',NULL,128),

(10301,'2003-10-05','2003-10-15','2003-10-08','Shipped',NULL,299),

(10302,'2003-10-06','2003-10-16','2003-10-07','Shipped',NULL,201),

(10303,'2004-10-06','2004-10-14','2004-10-09','Shipped','Customer inquired about remote controlled models and gold models.',484),

(10304,'2004-10-11','2004-10-20','2004-10-17','Shipped',NULL,256),

(10305,'2004-10-13','2004-10-22','2004-10-15','Shipped','Check on availability.',286),

(10306,'2004-10-14','2004-10-21','2004-10-17','Shipped',NULL,187),

(10307,'2004-10-14','2004-10-23','2004-10-20','Shipped',NULL,339),

(10308,'2004-10-15','2004-10-24','2004-10-20','Shipped','Customer requested that FedEx Ground is used for this shipping',319),

(10309,'2004-10-15','2004-10-24','2004-10-18','Shipped',NULL,121),

(10310,'2004-10-16','2004-10-24','2004-10-18','Shipped',NULL,259),

(10311,'2004-10-16','2004-10-23','2004-10-20','Shipped','Difficult to negotiate with customer. We need more marketing materials',141),

(10312,'2004-10-21','2004-10-27','2004-10-23','Shipped',NULL,124),

(10313,'2004-10-22','2004-10-28','2004-10-25','Shipped','Customer requested that FedEx Ground is used for this shipping',202),

(10314,'2004-10-22','2004-11-01','2004-10-23','Shipped',NULL,227),

(10315,'2004-10-29','2004-11-08','2004-10-30','Shipped',NULL,119),

(10316,'2004-11-01','2004-11-09','2004-11-07','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',240),

(10317,'2004-11-02','2004-11-12','2004-11-08','Shipped',NULL,161),

(10318,'2004-11-02','2004-11-09','2004-11-07','Shipped',NULL,157),

(10319,'2004-11-03','2004-11-11','2004-11-06','Shipped','Customer requested that DHL is used for this shipping',456),

(10320,'2004-11-03','2004-11-13','2004-11-07','Shipped',NULL,144),

(10321,'2004-11-04','2004-11-12','2004-11-07','Shipped',NULL,462),

(10322,'2004-11-04','2004-11-12','2004-11-10','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',363),

(10323,'2004-11-05','2004-11-12','2004-11-09','Shipped',NULL,128),

(10324,'2004-11-05','2004-11-11','2004-11-08','Shipped',NULL,181),

(10325,'2004-11-05','2004-11-13','2004-11-08','Shipped',NULL,121),

(10326,'2004-11-09','2004-11-16','2004-11-10','Shipped',NULL,144),

(10327,'2004-11-10','2004-11-19','2004-11-13','Resolved','Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don\'t match what was discussed.',145),

(10328,'2004-11-12','2004-11-21','2004-11-18','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',278),

(10329,'2004-11-15','2004-11-24','2004-11-16','Shipped',NULL,131),

(10330,'2004-11-16','2004-11-25','2004-11-21','Shipped',NULL,385),

(10331,'2004-11-17','2004-11-23','2004-11-23','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',486),

(10332,'2004-11-17','2004-11-25','2004-11-18','Shipped',NULL,187),

(10333,'2004-11-18','2004-11-27','2004-11-20','Shipped',NULL,129),

(10334,'2004-11-19','2004-11-28',NULL,'On Hold','The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',144),

(10335,'2004-11-19','2004-11-29','2004-11-23','Shipped',NULL,124),

(10336,'2004-11-20','2004-11-26','2004-11-24','Shipped','Customer requested that DHL is used for this shipping',172),

(10337,'2004-11-21','2004-11-30','2004-11-26','Shipped',NULL,424),

(10338,'2004-11-22','2004-12-02','2004-11-27','Shipped',NULL,381),

(10339,'2004-11-23','2004-11-30','2004-11-30','Shipped',NULL,398),

(10340,'2004-11-24','2004-12-01','2004-11-25','Shipped','Customer is interested in buying more Ferrari models',216),

(10341,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,382),

(10342,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,114),

(10343,'2004-11-24','2004-12-01','2004-11-26','Shipped',NULL,353),

(10344,'2004-11-25','2004-12-02','2004-11-29','Shipped',NULL,350),

(10345,'2004-11-25','2004-12-01','2004-11-26','Shipped',NULL,103),

(10346,'2004-11-29','2004-12-05','2004-11-30','Shipped',NULL,112),

(10347,'2004-11-29','2004-12-07','2004-11-30','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',114),

(10348,'2004-11-01','2004-11-08','2004-11-05','Shipped',NULL,458),

(10349,'2004-12-01','2004-12-07','2004-12-03','Shipped',NULL,151),

(10350,'2004-12-02','2004-12-08','2004-12-05','Shipped',NULL,141),

(10351,'2004-12-03','2004-12-11','2004-12-07','Shipped',NULL,324),

(10352,'2004-12-03','2004-12-12','2004-12-09','Shipped',NULL,198),

(10353,'2004-12-04','2004-12-11','2004-12-05','Shipped',NULL,447),

(10354,'2004-12-04','2004-12-10','2004-12-05','Shipped',NULL,323),

(10355,'2004-12-07','2004-12-14','2004-12-13','Shipped',NULL,141),

(10356,'2004-12-09','2004-12-15','2004-12-12','Shipped',NULL,250),

(10357,'2004-12-10','2004-12-16','2004-12-14','Shipped',NULL,124),

(10358,'2004-12-10','2004-12-16','2004-12-16','Shipped','Customer requested that DHL is used for this shipping',141),

(10359,'2004-12-15','2004-12-23','2004-12-18','Shipped',NULL,353),

(10360,'2004-12-16','2004-12-22','2004-12-18','Shipped',NULL,496),

(10361,'2004-12-17','2004-12-24','2004-12-20','Shipped',NULL,282),

(10362,'2005-01-05','2005-01-16','2005-01-10','Shipped',NULL,161),

(10363,'2005-01-06','2005-01-12','2005-01-10','Shipped',NULL,334),

(10364,'2005-01-06','2005-01-17','2005-01-09','Shipped',NULL,350),

(10365,'2005-01-07','2005-01-18','2005-01-11','Shipped',NULL,320),

(10366,'2005-01-10','2005-01-19','2005-01-12','Shipped',NULL,381),

(10367,'2005-01-12','2005-01-21','2005-01-16','Resolved','This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx\'s investigation proved this wrong.',205),

(10368,'2005-01-19','2005-01-27','2005-01-24','Shipped','Can we renegotiate this one?',124),

(10369,'2005-01-20','2005-01-28','2005-01-24','Shipped',NULL,379),

(10370,'2005-01-20','2005-02-01','2005-01-25','Shipped',NULL,276),

(10371,'2005-01-23','2005-02-03','2005-01-25','Shipped',NULL,124),

(10372,'2005-01-26','2005-02-05','2005-01-28','Shipped',NULL,398),

(10373,'2005-01-31','2005-02-08','2005-02-06','Shipped',NULL,311),

(10374,'2005-02-02','2005-02-09','2005-02-03','Shipped',NULL,333),

(10375,'2005-02-03','2005-02-10','2005-02-06','Shipped',NULL,119),

(10376,'2005-02-08','2005-02-18','2005-02-13','Shipped',NULL,219),

(10377,'2005-02-09','2005-02-21','2005-02-12','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',186),

(10378,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),

(10379,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),

(10380,'2005-02-16','2005-02-24','2005-02-18','Shipped',NULL,141),

(10381,'2005-02-17','2005-02-25','2005-02-18','Shipped',NULL,321),

(10382,'2005-02-17','2005-02-23','2005-02-18','Shipped','Custom shipping instructions sent to warehouse',124),

(10383,'2005-02-22','2005-03-02','2005-02-25','Shipped',NULL,141),

(10384,'2005-02-23','2005-03-06','2005-02-27','Shipped',NULL,321),

(10385,'2005-02-28','2005-03-09','2005-03-01','Shipped',NULL,124),

(10386,'2005-03-01','2005-03-09','2005-03-06','Resolved','Disputed then Resolved on 3/15/2005. Customer doesn\'t like the craftsmaship of the models.',141),

(10387,'2005-03-02','2005-03-09','2005-03-06','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',148),

(10388,'2005-03-03','2005-03-11','2005-03-09','Shipped',NULL,462),

(10389,'2005-03-03','2005-03-09','2005-03-08','Shipped',NULL,448),

(10390,'2005-03-04','2005-03-11','2005-03-07','Shipped','They want to reevaluate their terms agreement with Finance.',124),

(10391,'2005-03-09','2005-03-20','2005-03-15','Shipped',NULL,276),

(10392,'2005-03-10','2005-03-18','2005-03-12','Shipped',NULL,452),

(10393,'2005-03-11','2005-03-22','2005-03-14','Shipped','They want to reevaluate their terms agreement with Finance.',323),

(10394,'2005-03-15','2005-03-25','2005-03-19','Shipped',NULL,141),

(10395,'2005-03-17','2005-03-24','2005-03-23','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',250),

(10396,'2005-03-23','2005-04-02','2005-03-28','Shipped',NULL,124),

(10397,'2005-03-28','2005-04-09','2005-04-01','Shipped',NULL,242),

(10398,'2005-03-30','2005-04-09','2005-03-31','Shipped',NULL,353),

(10399,'2005-04-01','2005-04-12','2005-04-03','Shipped',NULL,496),

(10400,'2005-04-01','2005-04-11','2005-04-04','Shipped','Customer requested that DHL is used for this shipping',450),

(10401,'2005-04-03','2005-04-14',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',328),

(10402,'2005-04-07','2005-04-14','2005-04-12','Shipped',NULL,406),

(10403,'2005-04-08','2005-04-18','2005-04-11','Shipped',NULL,201),

(10404,'2005-04-08','2005-04-14','2005-04-11','Shipped',NULL,323),

(10405,'2005-04-14','2005-04-24','2005-04-20','Shipped',NULL,209),

(10406,'2005-04-15','2005-04-25','2005-04-21','Disputed','Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.',145),

(10407,'2005-04-22','2005-05-04',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',450),

(10408,'2005-04-22','2005-04-29','2005-04-27','Shipped',NULL,398),

(10409,'2005-04-23','2005-05-05','2005-04-24','Shipped',NULL,166),

(10410,'2005-04-29','2005-05-10','2005-04-30','Shipped',NULL,357),

(10411,'2005-05-01','2005-05-08','2005-05-06','Shipped',NULL,233),

(10412,'2005-05-03','2005-05-13','2005-05-05','Shipped',NULL,141),

(10413,'2005-05-05','2005-05-14','2005-05-09','Shipped','Customer requested that DHL is used for this shipping',175),

(10414,'2005-05-06','2005-05-13',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',362),

(10415,'2005-05-09','2005-05-20','2005-05-12','Disputed','Customer claims the scales of the models don\'t match what was discussed. I keep all the paperwork though to prove otherwise',471),

(10416,'2005-05-10','2005-05-16','2005-05-14','Shipped',NULL,386),

(10417,'2005-05-13','2005-05-19','2005-05-19','Disputed','Customer doesn\'t like the colors and precision of the models.',141),

(10418,'2005-05-16','2005-05-24','2005-05-20','Shipped',NULL,412),

(10419,'2005-05-17','2005-05-28','2005-05-19','Shipped',NULL,382),

(10420,'2005-05-29','2005-06-07',NULL,'In Process',NULL,282),

(10421,'2005-05-29','2005-06-06',NULL,'In Process','Custom shipping instructions were sent to warehouse',124),

(10422,'2005-05-30','2005-06-11',NULL,'In Process',NULL,157),

(10423,'2005-05-30','2005-06-05',NULL,'In Process',NULL,314),

(10424,'2005-05-31','2005-06-08',NULL,'In Process',NULL,141),

(10425,'2005-05-31','2005-06-07',NULL,'In Process',NULL,119);