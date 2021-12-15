/* INSERT STATEMENTS */




/* Insert Queries for Driver Table */

insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (101, 'Peter', 'Joseph', 102746, '5/25/1996', '857437123');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (102, 'Floyd', 'Biggin', 102846, '5/25/1992', '857437023');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (103, 'Edward', 'Firks', 104876, '1/21/1191', '867345723');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (104, 'Arron', 'Vearncombe', 106435, '5/22/1197', '898703123');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (105, 'Fara', 'Dukes', 108086, '9/6/1997', '812567864');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (106, 'Sollie', 'Whetland', 110456, '7/8/1996', '857437165');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (107, 'Goran', 'Beamish', 112634, '9/22/1193', '256839127');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (108, 'Joycelin', 'Ridoutt', 114534, '8/24/1994', '57091969');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (109, 'Salvatore', 'Mompesson', 116976, '7/23/1995', '352501805');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (110, 'Edouard', 'Glassard', 118975, '8/20/1995', '744808619');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (111, 'Nike', 'Penright', 120456, '7/28/1997', '336708419');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (112, 'Diandra', 'Jochens', 122123, '4/7/1998', '645722254');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (113, 'Tasia', 'Drillingcourt', 124086, '6/14/2000', '285924888');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (114, 'Alvin', 'Chantree', 126678, '7/13/1997', '825701102');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (115, 'Jeffrey', 'MacPaden', 1286354, '8/31/1996', '202741262');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (116, 'Obadiah', 'Stonebridge', 130097, '3/20/1991', '911516257');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (117, 'Felic', 'Huws', 132129, '1/7/1996', '79115879');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (118, 'Caye', 'Crowcum', 134187 , '5/21/1998', '707233538');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (119, 'Andrei', 'Senescall', 136007, '12/9/1996', '171907501');
insert into Driver
    (DriverID , DriverFName, DriverLName, Licence , DateOfBirth , DriverContact )
values
    (120, 'Gelya', 'Ferris', 138897, '1/8/1998', '151910677');


/* Select Driver Table to see if all records are inserted */

select *
from Driver





/* Insert Queries for Shift Table */

INSERT INTO Shift
VALUES
    (1, 'Morning Shift', '08:00', '14:00');
INSERT INTO Shift
VALUES
    (2, 'Afternoon Shift', '14:00', '20:00');
INSERT INTO Shift
VALUES
    (3, 'Evening Shift', '20:00', '02:00');
INSERT INTO Shift
VALUES
    (4, 'Midnight Shift', '02:00', '08:00');


/* Select Shift Table to see if all records are inserted */

select *
from Shift





/* Insert Queries for DriverShift Table */

insert into DriverShift
    (DriverID , ShiftID )
values
    (101, 1);
insert into DriverShift
    (DriverID , ShiftID )
values
    (102, 2);
insert into DriverShift
    (DriverID , ShiftID )
values
    (103, 3);
insert into DriverShift
    (DriverID , ShiftID )
values
    (104, 4);
insert into DriverShift
    (DriverID , ShiftID )
values
    (105, 1);
insert into DriverShift
    (DriverID , ShiftID )
values
    (106, 2);
insert into DriverShift
    (DriverID , ShiftID )
values
    (107, 3);
insert into DriverShift
    (DriverID , ShiftID )
values
    (108, 4);
insert into DriverShift
    (DriverID , ShiftID )
values
    (109, 1);
insert into DriverShift
    (DriverID , ShiftID )
values
    (110, 2);
insert into DriverShift
    (DriverID , ShiftID )
values
    (111, 3);
insert into DriverShift
    (DriverID , ShiftID )
values
    (112, 4);
insert into DriverShift
    (DriverID , ShiftID )
values
    (113, 1);
insert into DriverShift
    (DriverID , ShiftID )
values
    (114, 1);
insert into DriverShift
    (DriverID , ShiftID )
values
    (115, 2);
insert into DriverShift
    (DriverID , ShiftID )
values
    (116, 2);
insert into DriverShift
    (DriverID , ShiftID )
values
    (117, 3);
insert into DriverShift
    (DriverID , ShiftID )
values
    (118, 3);
insert into DriverShift
    (DriverID , ShiftID )
values
    (119, 4);
insert into DriverShift
    (DriverID , ShiftID )
values
    (120, 4);


/* Select DriverShift Table to see if all records are inserted */

select *
from DriverShift






/* Insert Queries for Cab Table */

INSERT INTO Cab
VALUES
    ('ISO-1010', 101, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1011', 102, 'Sedan');
INSERT INTO Cab
VALUES
    ('ISO-1012', 103, 'Hatchback');
INSERT INTO Cab
VALUES
    ('ISO-1013', 104, 'Coupe');
INSERT INTO Cab
VALUES
    ('ISO-1014', 105, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1015', 106, 'Van');
INSERT INTO Cab
VALUES
    ('ISO-1016', 107, 'Hatchback');
INSERT INTO Cab
VALUES
    ('ISO-1017', 108, 'Sedan');
INSERT INTO Cab
VALUES
    ('ISO-1018', 109, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1019', 110, 'Van');
INSERT INTO Cab
VALUES
    ('ISO-1020', 111, 'Sedan');
INSERT INTO Cab
VALUES
    ('ISO-1021', 112, 'Hatchback');
INSERT INTO Cab
VALUES
    ('ISO-1022', 113, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1023', 114, 'Maruti');
INSERT INTO Cab
VALUES
    ('ISO-1024', 115, 'Sedan');
INSERT INTO Cab
VALUES
    ('ISO-1025', 116, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1026', 117, 'SUV');
INSERT INTO Cab
VALUES
    ('ISO-1027', 118, 'Van');
INSERT INTO Cab
VALUES
    ('ISO-1028', 119, 'Sedan');
INSERT INTO Cab
VALUES
    ('ISO-1029', 120, 'SUV');


/* Select Cab Table to see if all records are inserted */

select *
from Cab






/* Insert Queries for Customer Table */

INSERT INTO Customer
VALUES
    (2121, 'JACKSON', 'ALEXANDER', 01, '78 Lakeland Avenue', 'BOSTON', 'MA', 02215, '1994-11-04', 9123123423, 'jackson@gmail.com');
INSERT INTO Customer
VALUES
    (2122, 'Rosamond', 'Rodnight', 21, '41 Huntington Avenue', 'BOSTON', 'MA', 02120, '1987-01-24', 9123123423, 'rrodnight0@discovery.com');
INSERT INTO Customer
VALUES
    (2123, 'Gunar', 'Gunar', 11, '12 Redwood St', 'BOSTON', 'MA', 02123, '1998-06-22', 9123123423, 'gmelonby1@hao123.com');
INSERT INTO Customer
VALUES
    (2124, 'Derrik', 'Oak', 345, '7 Bayside Drive', 'BOSTON', 'MA', 02123, '1994-11-04', 9123123423, 'derrickoak@gmail.com');
INSERT INTO Customer
VALUES
    (2125, 'Moina', 'Grcic', 43, '8819 Clove Hill Eastwood', 'BOSTON', 'MA', 02312, '1994-08-16', 8123673423, 'mgrcic5@people.com.cn');
INSERT INTO Customer
VALUES
    (2126, 'Elbertine', 'McMarquis', 89, '92 Shelley Place Tomscot', 'BOSTON', 'MA', 02142, '1997-11-03', 9123773234, 'emcmarquis6@vistaprint.com');
INSERT INTO Customer
VALUES
    (2127, 'Fritz', 'Hlavecek', 55, '47688 Derek Avenue Sundown', 'BOSTON', 'MA', 02215, '1999-09-08', 712333423, 'fhlavecek7@pen.io');
INSERT INTO Customer
VALUES
    (2128, 'Cameron', 'Dunckley', 69, '1075 Cambridge Street', 'BOSTON', 'MA', 02215, '1998-01-12', 892367323, 'cdunckley8@wikimedia.org');
INSERT INTO Customer
VALUES
    (2129, 'Kassi', 'Cruddace', 99, '79401 Lighthouse Bay Court', 'BOSTON', 'MA', 02221, '1997-02-15', '712367423', 'kcruddace9@imageshack.us');
INSERT INTO Customer
VALUES
    (2130, 'Lorrayne', 'Bour', 53, '36 Monica Alley', 'BOSTON', 'MA', 02120, '1996-03-19', 617894536, 'lboura@vistaprint.com');
INSERT INTO Customer
VALUES
    (2131, 'Rebekkah', 'Whitwood', 72, '20 Wayridge Plaza ', 'BOSTON', 'MA', 02128, '1997-11-03', 9213673234, 'rwhitwoodb@shop-pro.jp');
INSERT INTO Customer
VALUES
    (2132, 'Husain', 'Ellit', 84, '85 St Alphonsus St Park ', 'BOSTON', 'MA', 02215, '1999-09-08', 714233423, 'hellitc@yellowbook.com');
INSERT INTO Customer
VALUES
    (2133, 'Kitty', 'Chivrall', 67, '5295 Graceland Hill ', 'BOSTON', 'MA', 02323, '1998-01-12', 899657323, 'kchivralld@nba.com');
INSERT INTO Customer
VALUES
    (2134, 'Waldo', 'Abrahamson', 04, '79401 JVU Bay', 'BOSTON', 'MA', 02215, '1997-02-15', 73367729, 'wabrahamsone@ebay.com');
INSERT INTO Customer
VALUES
    (2135, 'Johnath', 'McAulay', 03, '54452 Rusk Way ', 'BOSTON', 'MA', 02142, '1996-03-19', 623894871, 'johnathmc@gmail.com');
INSERT INTO Customer
VALUES
    (2136, 'Kora', 'Bjorkan', 02, '54 Ridgeway Circle ', 'New York', 'NY', 03758, '1999-01-14', 9167385621, 'korabjorkan@gmail.com');
INSERT INTO Customer
VALUES
    (2137, 'Marlene', 'Pisculli', 15, '85 Pine View Park', 'BOSTON', 'MA', 02532, '1999-09-08', 714298423, 'jmcaulayf@youtu.be');
INSERT INTO Customer
VALUES
    (2138, 'Morgun', 'Pfeifer', 691, '87048 Ridge Oak Hill ', 'BOSTON', 'MA', 02221, '1998-01-12', 897657323, 'mpfeiferh@shinystat.com');
INSERT INTO Customer
VALUES
    (2139, 'Ambrose', 'Trasler', 32, '745 BPT Road ', 'BOSTON', 'MA', 02524, '1997-02-15', 6573365723, 'atrasleri@feedburner.com');
INSERT INTO Customer
VALUES
    (2140, 'Mendel', 'Dabling', 77, '73 Hoepker Avenue', 'BOSTON', 'MA', 02215, '1996-03-19', 623674871, 'mdablingj@reuters.com');

/* Insert Queries for Trip Table */

INSERT INTO Trip
VALUES
    (1001, 2121, 101, '848 Stage St', '775 113rd Rte', '12:05', '13:00', '20', '55', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1002, 2122, 102, 'Passaconway Rd', '3113 Lincoln Hwy E', '19:09', '19:49', '12', '40', 'Completed', 'SAVE15' );
INSERT INTO Trip
VALUES
    (1003, 2123, 103, '175 County Rd #106', ' 400 Lee St', '20:05', '20:45', '12', '40', 'Completed', 'SAVE15' );
INSERT INTO Trip
VALUES
    (1004, 2124, 104, '950 N Bend Dr', '361 Babbitt Rd', '02:15', '2:45', '10', '30', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1005, 2125, 105, '138 Broad St', '17 Lake Shore Dr', '8:15', '8:25', '5', '10', 'Completed', 'THANKS7');
INSERT INTO Trip
VALUES
    (1006, 2126, 106, '2 Santa Clara Drive', '9002 Tanglewood Ave', '15:12', '15:28', '13', '16', 'Completed', 0 );
INSERT INTO Trip
VALUES
    (1007, 2127, 107, '9076 Vine Street ', '911 Redwood Drive ', '01:10', '02:00', '15', '50', 'Completed', 'NEWYEAR13' );
INSERT INTO Trip
VALUES
    (1008, 2128, 108, '922 Lyme Ave', '696 Vale Drive ', '15:12', '15:28', '13', '16', 'Completed', 'NEWYEAR13');
INSERT INTO Trip
VALUES
    (1009, 2129, 109, '9424 Deerfield Court', '719 Creek St.', '10:12', '10:32', '9', '20', 'Completed', 0 );
INSERT INTO Trip
VALUES
    (1010, 2130, 110, '28 High Ridge Lane', '8 Garden St', '16:16', '16:48', '15', '32', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1011, 2131, 111, '7701 Peachtree St', '49 Myers Dr.' , '23:00', '23:37', '17', '37', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1012, 2132, 112, '9664 Westport St', '725 Trout Dr', '07:12', '07:59', '20', '47', 'Completed', 'RIDE3' );
INSERT INTO Trip
VALUES
    (1013, 2133, 113, '9044 Country Club Street ', '276 Oklahoma Lane ', '09:09', '09:28', '9', '19', 'Completed', 'RIDE3' );
INSERT INTO Trip
VALUES
    (1014, 2134, 114, '93 NE. Shady Lane ', '48 N. Hawthorne Road', '10:12', '10:28', '13', '16', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1015, 2135, 115, '8016 E. Lincoln St. ', '876 North Street', '17:19', '17:49', '10', '30', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1016, 2136, 116, '360 Saxton Street', '911 Crescent St.', '18:03', '18:28', '8', '25', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1017, 2137, 117, '248 8th Ave.', '18 Mayflower Street ', '23:23', '23:47', '7', '24', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1018, 2138, 118, '22 Big Rock Cove Dr', '49 Plymouth St.', '21:20', '21:56', '12', '36', 'Completed', 'NEWUSER' );
INSERT INTO Trip
VALUES
    (1019, 2139, 119, '8705 Jackson Ave. ', '6 Arch St.', '05:34', '05:55', '9', '21', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1020, 2140, 120, '364 Indian Spring St.', '170 Lake Drive ', '03:21', '03:58', '13', '37', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1021, 2123, 101, 'ITI Avenue', 'Mahalakshmi RaceCourse', '08:55', '9:20', '17', '25', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1063, 2140, 101, 'Termont St', '551 Mass Ave ', '11:15', '12:14', '29', '59', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1064, 2139, 102, 'Passaconway Rd', '3113 Lincoln Hwy E', '18:18', '18:52', '26', '43', 'Completed', 'SAVE15' );
INSERT INTO Trip
VALUES
    (1065, 2138, 103, '175 County Rd #106', ' 400 Lee St', '22:15', '22:59', '22', '44', 'Completed', 'SAVE15' );
INSERT INTO Trip
VALUES
    (1066, 2137, 104, '950 N Bend Dr', '361 Babbitt Rd', '04:15', '04:52', '16', '27', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1067, 2136, 105, '138 Broad St', '17 Lake Shore Dr', '10:25', '10:43', '7', '18', 'Completed', 'THANKS7');
INSERT INTO Trip
VALUES
    (1068, 2135, 106, '2 Santa Clara Drive', '9002 Tanglewood Ave', '17:12', '17:36', '29', '24', 'Completed', 0 );
INSERT INTO Trip
VALUES
    (1069, 2134, 107, '9076 Vine Street ', '911 Redwood Drive ', '00:10', '01:10', '22', '60', 'Completed', 'NEWYEAR13' );
INSERT INTO Trip
VALUES
    (1070, 2133, 108, '922 Lyme Ave', '696 Vale Drive ', '18:12', '18:24', '20', '12', 'Completed', 'NEWYEAR13');
INSERT INTO Trip
VALUES
    (1071, 2132, 109, '9424 Deerfield Court', '719 Creek St.', '11:12', '11:48', '14', '26', 'Completed', 0 );
INSERT INTO Trip
VALUES
    (1072, 2131, 110, '28 High Ridge Lane', '8 Garden St', '18:16', '18:40', '27', '24', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1073, 2130, 111, '7701 Peachtree St', '49 Myers Dr.' , '23:00', '23:52', '28', '52', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1074, 2129, 112, '9664 Westport St', '725 Trout Dr', '06:12', '07:06', '25', '54', 'Completed', 'RIDE3' );
INSERT INTO Trip
VALUES
    (1075, 2128, 113, '9044 Country Club Street ', '276 Oklahoma Lane ', '08:05', '08:28', '16', '23', 'Completed', 'RIDE3' );
INSERT INTO Trip
VALUES
    (1076, 2127, 114, '93 NE. Shady Lane ', '48 N. Hawthorne Road', '11:18', '11:28', '09', '10', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1077, 2126, 115, '8016 E. Lincoln St. ', '876 North Street', '18:27', '17:49', '16', '22', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1078, 2125, 116, '360 Saxton Street', '911 Crescent St.', '19:03', '19:35', '12', '32', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1079, 2124, 117, '248 8th Ave.', '18 Mayflower Street ', '22:25', '23:51', '14', '26', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1080, 2123, 118, '22 Big Rock Cove Dr', '49 Plymouth St.', '20:20', '20:51', '18', '31', 'Completed', 'NEWUSER' );
INSERT INTO Trip
VALUES
    (1081, 2122, 119, '8705 Jackson Ave. ', '6 Arch St.', '03:34', '04:04', '15', '30', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1082, 2121, 120, '364 Indian Spring St.', '170 Lake Drive ', '02:26', '03:05', '18', '39', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1083, 2135, 108, 'ITI Avenue', 'Mahalakshmi RaceCourse', '10:55', '11:26', '27', '31', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1022, 2121, 107, '550 York Dr', 'La Porte', '20:05', '21:00', '17', '55', 'Completed', 'SAVE15' );

INSERT INTO Trip
VALUES
    (1023, 2123, 107, '115 Cambridge Ave', '26 Bridgeton Dr', '20:15', '20:30', '20', '15', 'Completed', 'REFERCAB' );

INSERT INTO Trip
VALUES
    (1024, 2125, 107, '7970 Newcastle Lane ', '87 Sunset St', '22:00', '22:10', '10', '10', 'Completed', 'NEWYEAR13' );

INSERT INTO Trip
VALUES
    (1025, 2127, 107, '7378 Walnutwood Street', '9865 Oak Valley Lane ', '22:45', '22:50', '12', '5', 'Completed', 'MIDNIGHT12' )

INSERT INTO Trip
VALUES
    (1026, 2129, 107, '72 Lake Forest St', '5 NW. Green Ave', '00:15', '1:15', '40', '60', 'Completed', 'THANKS7' );

INSERT INTO Trip
VALUES
    (1027, 2131, 107, '699 NE. Elizabeth Court ', '9 Glenholme Dr.', '1:30', '1:45', '28', '30', 'Completed', 'HAPPYHOURS' );

INSERT INTO Trip
VALUES
    (1028, 2131, 108, '702 Princess St. ', '65 West High Ridge Street ', '02:00', '02:34', '34', '40', 'Completed', 'NEWYEAR13' );

INSERT INTO Trip
VALUES
    (1029, 2132, 108, '7689 Ivy Drive ', '8222 South  Drive ', '03:30', '04:01', '31', '40', 'Completed', 'MIDNIGHT12' );

INSERT INTO Trip
VALUES
    (1030, 2126, 108, '91 Grand St.' , '7812 Lincoln Street ' , '06:00', '06:43', '43', '40', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1031, 2124, 109, '81 Illinois Ave. ', '236 Illinois Drive ', '08:00', '08:40', '29', '40', 'Completed', 'SAVE15' );

INSERT INTO Trip
VALUES
    (1032, 2133, 109, '196 Marsh St. ', '9192 West Circle St.', '09:30', '09:40', '13', '40', 'Completed', 'NEWYEAR13' );

INSERT INTO Trip
VALUES
    (1033, 2139, 109, '614 Jennings Court ', '7574 Wellington Ave. ', '12:00', '12:40', '53', '40', 'Completed', 'THANKS7' );

INSERT INTO Trip
VALUES
    (1034, 2140, 110, '8571 Clark Ave. ', '7842 West Miles Ave.', '19:09', '19:40', '14', '40', 'Completed', 'MIDNIGHT12' );

INSERT INTO Trip
VALUES
    (1035, 2130, 110, '770 Holly Court ', '549 School St. ', '14:00', '14:40', '41', '40', 'Completed', 'REFERCAB' );

INSERT INTO Trip
VALUES
    (1036, 2132, 110, '11 Sherman Road ', '90 Oakwood Drive ', '16:00', '16:40', '13', '40', 'Completed', 'NEWUSER' );

INSERT INTO Trip
VALUES
    (1037, 2123, 111, '655 Young Drive ', '8560 Tower Ave.', '20:00', '20:40', '28', '40', 'Completed', 'SAVE15' );

INSERT INTO Trip
VALUES
    (1038, 2125, 111, '65 James Lane ', '25 Marsh Rd.' , '21:55', '22:35', '17', '40', 'Completed', 'NEWYEAR13' );

INSERT INTO Trip
VALUES
    (1039, 2128, 111, '97 Gonzales Dr. ', '7144 Glen Creek Street' , '22:15', '22:55', '34', '40', 'Completed', 'THANKS7' );

INSERT INTO Trip
VALUES
    (1040, 2132, 112, '761 Westport Lane ', '674 Jefferson Ave.' , '02:00', '02:40', '45', '40', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1041, 2134, 112, '7925 Middle River Drive ', '6 Columbia St. ', '07:15', '07:14', '23', '14', 'Completed', 'THANKS7' );

INSERT INTO Trip
VALUES
    (1042, 2133, 112, '8191 Mechanic Dr. ', '8746 Lake St. ', '05:45', '06:30', '35', '45', 'Completed', 'SAVE15' );

INSERT INTO Trip
VALUES
    (1043, 2136, 113, '676 Mountainview Ave. ', '8214 North Rock Road ', '08:09', '08:45', '20', '45', 'Completed', 'REFERCAB' );

INSERT INTO Trip
VALUES
    (1044, 2135, 113, '41 East Division Street ', '508 Strawberry Drive ', '10:09', '10:30', '25', '30', 'Completed', 'NEWUSER' );

INSERT INTO Trip
VALUES
    (1045, 2139, 113, '359 Harvard Ave. ', '656 Heritage St. ', '12:09', '12:24', '26', '15', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1046, 2140, 114, '808 Cedar Swamp St. ', '9109 Grove St. ', '09:00', '09:50', '28', '50', 'Completed', 'THANKS7' );

INSERT INTO Trip
VALUES
    (1047, 2121, 114, '337 Hill Ave.' , '9853 E. Valley Ave.', '11:00', '11:10', '34', '10', 'Completed', 'NEWUSER' );

INSERT INTO Trip
VALUES
    (1048, 2127, 114, '657 Jennings St.', '982 Spruce Avenue ', '12:00', '12:04', '3', '4', 'Completed', 'NEWYEAR13' );

INSERT INTO Trip
VALUES
    (1049, 2134, 111, '9076 Vine Street ', '911 Redwood Drive ', '20:10', '21:00', '27', '50', 'Completed', 'NEWYEAR13' );
INSERT INTO Trip
VALUES
    (1050, 2133, 114, '922 Lyme Ave', '696 Vale Drive', '11:12', '11:28', '25', '16', 'Completed', 'NEWYEAR13');
INSERT INTO Trip
VALUES
    (1051, 2132, 117, '9424 Deerfield Court', '719 Creek St.', '00:12', '00:32', '19', '20', 'Completed', 0 );
INSERT INTO Trip
VALUES
    (1052, 2131, 103, '28 High Ridge Lane', '8 Garden St', '23:16', '23:48', '29', '32', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1053, 2130, 102, '9664 Westport St', '725 Trout Dr', '15:12', '15:59', '31', '47', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1054, 2129, 101, '9044 Country Club Street', '276 Oklahoma Lane', '10:09', '10:28', '13', '19', 'Completed', 'RIDE3' );
INSERT INTO Trip
VALUES
    (1055, 2126, 113, '369 West Spring St.', '48 N.Hawthorne Road', '09:12', '09:28', '17', '16', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1056, 2140, 105, '8016 E. Lincoln St. ', '876 North Street', '08:19', '08:49', '12', '30', 'Completed', 'REFERCAB' );
INSERT INTO Trip
VALUES
    (1057, 2138, 110, '360 Saxton Street', '911 Crescent St.', '19:03', '19:32', '10', '29', 'Completed', 'XMAS2' );
INSERT INTO Trip
VALUES
    (1058, 2127, 106, '248 8th Ave.', '18 Mayflower Street ', '19:23', '19:49', '18', '26', 'Completed', 'HAPPYHOURS' );
INSERT INTO Trip
VALUES
    (1059, 2124, 107, '22 Big Rock Cove Dr', '49 Plymouth St.', '23:20', '23:59', '17', '39', 'Completed', 'NEWUSER' );
INSERT INTO Trip
VALUES
    (1060, 2129, 112, '8705 Jackson Ave. ', '6 Arch St.', '04:34', '04:59', '19', '25', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1061, 2129, 119, '364 Indian Spring St.', '170 Lake Drive ', '02:21', '03:04', '27', '43', 'Completed', 'MIDNIGHT12' );
INSERT INTO Trip
VALUES
    (1062, 2123, 120, 'ITI Avenue', 'Mahalakshmi RaceCourse', '04:55', '5:29', '17', '34', 'Completed', 'RIDE3' );

INSERT INTO Trip
VALUES
    (1084, 2131, 111, '175 E. Manchester Street ', '459 Kingston Drive ', '20:00', '20:30', '12', '30', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1085, 2132, 111, '890 George Court ', '26 Goldfield Lane ', '21:15', '21:30', '13', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1112, 2135, 111, '46 Sage Ave. ', '143 Hill Field Street ', '22:15', '22:31', '14', '16', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1086, 2135, 112, '39 Marvon Street ', '499 Cemetery Avenue ', '02:15', '02:30', '15', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1087, 2133, 112, '9996 Brickell Lane ', '9953 Poor House St. ', '03:15', '03:30', '16', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1088, 2137, 113, '9144 Princess Street ', '9801 Linda Street ', '08:15', '08:25', '11', '10', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1089, 2134, 113, '7676 York Court ', '228 Gates St. ', '10:15', '10:30', '15', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1090, 2138, 114, '9738 Applegate St. ', '316 Willow Ave. ', '12:15', '12:45', '21', '30', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1091, 2139, 115, '274C Greenview Rd. ', '9467 Gainsway Street ', '14:15', '14:30', '18', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1092, 2140, 115, '770 Proctor St. ', '733 Lees Creek Rd. ', '15:15', '15:45', '34', '30', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1103, 2137, 115, '9610 Rockland St. ', '8697 Old Ridgeview Court ', '16:15', '17:15', '50', '60', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1113, 2139, 115, '7678 North Lawrence Ave. ', '95 Pilgrim Ave', '17:15', '17:45', '34', '30', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1104, 2132, 115, '70 Yukon Street', '85 Birchpond Lane', '18:15', '18:25', '20', '10', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1093, 2136, 116, '7135 Helen St', '9626 Pineknoll Dr', '14:15', '14:45', '36', '30', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1105, 2136, 116, '519 Wall St', '1 York St', '15:15', '15:25', '14', '10', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1106, 2135, 116, '8093 Broad Street', '359 Gainsway Street', '16:15', '16:30', '16', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1094, 2131, 116, '21 NW. High Point Drive', '7 Honey Creek St', '17:15', '17:23', '20', '8', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1095, 2132, 117, '79 Lantern St', '8806 Bellevue Ave', '20:15', '20:25', '21', '10', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1096, 2133, 117, '23 Woodland Street', '504 Elm Ave', '22:15', '22:35', '27', '20', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1107, 2133, 117, '40 Brickell St', '8 West Peachtree Dr.', '23:15', '23:30', '28', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1108, 2133, 117, '9313 North Road', '352 North Wentworth Ave', '00:15', '00:27', '25', '12', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1097, 2134, 118, '9727 Mechanic Street ', '69 College Road ', '20:15', '20:30', '30', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1109, 2136, 118, '70 Poplar St.', '7231 Grandrose Lane ', '21:15', '21:25', '32', '10', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1098, 2132, 118, '7785 Rockaway Drive ', '84 John Ave. ', '22:15', '21:28', '36', '18', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1099, 2134, 119, '37 W. Fremont St. ', '8020 Saxton Avenue ', '02:15', '02:31', '21', '11', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1100, 2136, 119, '55 Glendale St. ', '638 Kent Dr. ', '03:15', '03:48', '29', '33', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1110, 2138, 119, '223 San Carlos Street ', '272 Yukon Street ', '06:15', '06:30', '20', '15', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1101, 2133, 120, '47 St Louis Ave. ', '8125 San Juan Rd. ', '04:15', '04:34', '30', '19', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1102, 2135, 120, '8474 Windfall St. ', '6 Park Drive ', '05:15', '05:19', '10', '4', 'Cancelled', 0 );

INSERT INTO Trip
VALUES
    (1111, 2134, 120, '9743 Bay Meadows St. ', '454 West Squaw Creek Rd. ', '07:15', '07:25', '17', '10', 'Cancelled', 0 );




/* Select Trip Table to see if all records are inserted */

select *
from Trip





/* Insert Queries for Rating Table */

INSERT INTO Rating
VALUES
    (9, 2121, 101, 1001, 4, '2020-01-04');
INSERT INTO Rating
VALUES
    (10, 2122, 102, 1002, 3, '2021-02-05');
INSERT INTO Rating
VALUES
    (8, 2123, 103, 1003, 2, '2020-03-06');
INSERT INTO Rating
VALUES
    (2, 2124, 104, 1004, 1, '2021-10-07');
INSERT INTO Rating
VALUES
    (1, 2125, 105, 1005, 5, '2020-04-08');
INSERT INTO Rating
VALUES
    (11, 2126, 106, 1006, 3, '2020-11-18');
INSERT INTO Rating
VALUES
    (12, 2127, 107, 1007, 2, '2021-02-12');
INSERT INTO Rating
VALUES
    (13, 2128, 108, 1008, 5, '2020-11-09');
INSERT INTO Rating
VALUES
    (6, 2129, 109, 1009, 4, '2020-12-10');
INSERT INTO Rating
VALUES
    (5, 2130, 110, 1010, 1, '2020-03-11');
INSERT INTO Rating
VALUES
    (14, 2131, 111, 1011, 3, '2020-01-04');
INSERT INTO Rating
VALUES
    (15, 2132, 112, 1012, 2, '2021-03-24');
INSERT INTO Rating
VALUES
    (16, 2133, 113, 1013, 1, '2020-11-04');
INSERT INTO Rating
VALUES
    (17, 2134, 114, 1014, 4, '2020-11-10');
INSERT INTO Rating
VALUES
    (18, 2135, 115, 1015, 5, '2021-05-13');
INSERT INTO Rating
VALUES
    (19, 2136, 116, 1016, 4, '2020-11-16');
INSERT INTO Rating
VALUES
    (20, 2137, 117, 1017, 5, '2020-06-24');
INSERT INTO Rating
VALUES
    (21, 2138, 118, 1018, 4, '2021-08-18');
INSERT INTO Rating
VALUES
    (22, 2139, 119, 1019, 2, '2020-09-19');
INSERT INTO Rating
VALUES
    (23, 2140, 120, 1020, 3, '2021-07-20');


/* Select Rating Table to see if all records are inserted */

select *
from Rating






/* Insert Queries for Destination Table */


INSERT INTO Destination
VALUES
    (1001, 2121);
INSERT INTO Destination
VALUES
    (1002, 2122);
INSERT INTO Destination
VALUES
    (1003, 2123);
INSERT INTO Destination
VALUES
    (1004, 2124);
INSERT INTO Destination
VALUES
    (1005, 2125);
INSERT INTO Destination
VALUES
    (1006, 2126);
INSERT INTO Destination
VALUES
    (1007, 2127);
INSERT INTO Destination
VALUES
    (1008, 2128);
INSERT INTO Destination
VALUES
    (1009, 2129);
INSERT INTO Destination
VALUES
    (1010, 2130);
INSERT INTO Destination
VALUES
    (1011, 2131);
INSERT INTO Destination
VALUES
    (1012, 2132);
INSERT INTO Destination
VALUES
    (1013, 2133);
INSERT INTO Destination
VALUES
    (1014, 2134);
INSERT INTO Destination
VALUES
    (1015, 2135);
INSERT INTO Destination
VALUES
    (1016, 2136);
INSERT INTO Destination
VALUES
    (1017, 2137);
INSERT INTO Destination
VALUES
    (1018, 2138);
INSERT INTO Destination
VALUES
    (1019, 2139);
INSERT INTO Destination
VALUES
    (1020, 2140);


/* Select Destination Table to see if all records are inserted */

select *
from Destination





/* Insert Queries for PaymentType Table */

INSERT INTO PaymentType
VALUES
    (5001, 'Cash');
INSERT INTO PaymentType
VALUES
    (5002, 'Credit/Debit');
INSERT INTO PaymentType
VALUES
    (5003, 'Paypal');
INSERT INTO PaymentType
VALUES
    (5004, 'GooglePay');


/* Select Payment Type Table to see if all records are inserted */

select *
from PaymentType






/* Insert Queries for Promotion Table */


INSERT INTO Promotion
VALUES
    ('HAPPYHOURS', 'Happy Hours', 20);
INSERT INTO Promotion
VALUES
    ('SAVE15', 'Save 15% Off', 15);
INSERT INTO Promotion
VALUES
    ('TIME2RIDE', 'Save 5% Off', 5);
INSERT INTO Promotion
VALUES
    ('NEWUSER', 'New User', 50);
INSERT INTO Promotion
VALUES
    ('MIDNIGHT12', 'Midnight offers', 12);
INSERT INTO Promotion
VALUES
    ('REFERCAB', 'Refer a friend', 10);
INSERT INTO Promotion
VALUES
    ('RIDE3', 'Save 3% Off', 3);
INSERT INTO Promotion
VALUES
    ('THANKS7', 'Thanksgiving', 7);
INSERT INTO Promotion
VALUES
    ('NEWYEAR13', 'New Year Off', 13);
INSERT INTO Promotion
VALUES
    ('XMAS2', 'Christmas Off', 20);


/* Select Promotion Table to see if all records are inserted */

select *
from Promotion





/* Insert Queries for Payment Table */

INSERT INTO Payment
VALUES
    (10001, 1001, 5001);
INSERT INTO Payment
VALUES
    (10002, 1002, 5004);
INSERT INTO Payment
VALUES
    (10003, 1003, 5002);
INSERT INTO Payment
VALUES
    (10004, 1004, 5003);
INSERT INTO Payment
VALUES
    (10005, 1005, 5002);
INSERT INTO Payment
VALUES
    (10006, 1006, 5001);
INSERT INTO Payment
VALUES
    (10007, 1007, 5003);
INSERT INTO Payment
VALUES
    (10008, 1008, 5001);
INSERT INTO Payment
VALUES
    (10009, 1009, 5002);
INSERT INTO Payment
VALUES
    (10010, 1010, 5001);
INSERT INTO Payment
VALUES
    (10011, 1011, 5002);
INSERT INTO Payment
VALUES
    (10012, 1012, 5001);
INSERT INTO Payment
VALUES
    (10013, 1013, 5004);
INSERT INTO Payment
VALUES
    (10014, 1014, 5003);
INSERT INTO Payment
VALUES
    (10015, 1015, 5001);
INSERT INTO Payment
VALUES
    (10016, 1016, 5003);
INSERT INTO Payment
VALUES
    (10017, 1017, 5001);
INSERT INTO Payment
VALUES
    (10018, 1018, 5002);
INSERT INTO Payment
VALUES
    (10019, 1019, 5002);
INSERT INTO Payment
VALUES
    (10020, 1020, 5002);
INSERT INTO Payment
VALUES
    (10021, 1021, 5003);
INSERT INTO Payment
VALUES
    (10022, 1022, 5004);
INSERT INTO Payment
VALUES
    (10023, 1023, 5002);
INSERT INTO Payment
VALUES
    (10024, 1024, 5003);
INSERT INTO Payment
VALUES
    (10025, 1025, 5002);
INSERT INTO Payment
VALUES
    (10026, 1026, 5001);
INSERT INTO Payment
VALUES
    (10027, 1027, 5003);
INSERT INTO Payment
VALUES
    (10028, 1028, 5001);
INSERT INTO Payment
VALUES
    (10029, 1029, 5004);
INSERT INTO Payment
VALUES
    (10030, 1030, 5003);
INSERT INTO Payment
VALUES
    (10031, 1031, 5002);
INSERT INTO Payment
VALUES
    (10032, 1032, 5002);
INSERT INTO Payment
VALUES
    (10033, 1033, 5004);
INSERT INTO Payment
VALUES
    (10034, 1034, 5003);
INSERT INTO Payment
VALUES
    (10035, 1035, 5001);
INSERT INTO Payment
VALUES
    (10036, 1036, 5003);
INSERT INTO Payment
VALUES
    (10037, 1037, 5001);
INSERT INTO Payment
VALUES
    (10038, 1038, 5002);
INSERT INTO Payment
VALUES
    (10039, 1039, 5002);
INSERT INTO Payment
VALUES
    (10040, 1040, 5004);
INSERT INTO Payment
VALUES
    (10041, 1041, 5003);
INSERT INTO Payment
VALUES
    (10042, 1042, 5004);
INSERT INTO Payment
VALUES
    (10043, 1043, 5003);
INSERT INTO Payment
VALUES
    (10044, 1044, 5003);
INSERT INTO Payment
VALUES
    (10045, 1045, 5002);
INSERT INTO Payment
VALUES
    (10046, 1046, 5002);
INSERT INTO Payment
VALUES
    (10047, 1047, 5003);
INSERT INTO Payment
VALUES
    (10048, 1048, 5001);
INSERT INTO Payment
VALUES
    (10049, 1049, 5002);
INSERT INTO Payment
VALUES
    (10050, 1050, 5001);
INSERT INTO Payment
VALUES
    (10051, 1051, 5003);
INSERT INTO Payment
VALUES
    (10052, 1052, 5001);
INSERT INTO Payment
VALUES
    (10053, 1053, 5004);
INSERT INTO Payment
VALUES
    (10054, 1054, 5003);
INSERT INTO Payment
VALUES
    (10055, 1055, 5002);
INSERT INTO Payment
VALUES
    (10056, 1056, 5003);
INSERT INTO Payment
VALUES
    (10057, 1057, 5001);
INSERT INTO Payment
VALUES
    (10058, 1058, 5002);
INSERT INTO Payment
VALUES
    (10059, 1059, 5002);
INSERT INTO Payment
VALUES
    (10060, 1060, 5004);
INSERT INTO Payment
VALUES
    (10061, 1061, 5002);
INSERT INTO Payment
VALUES
    (10062, 1062, 5003);
INSERT INTO Payment
VALUES
    (10063, 1063, 5002);
INSERT INTO Payment
VALUES
    (10064, 1064, 5001);
INSERT INTO Payment
VALUES
    (10065, 1065, 5002);
INSERT INTO Payment
VALUES
    (10066, 1066, 5004);
INSERT INTO Payment
VALUES
    (10067, 1067, 5003);
INSERT INTO Payment
VALUES
    (10068, 1068, 5004);
INSERT INTO Payment
VALUES
    (10069, 1069, 5002);
INSERT INTO Payment
VALUES
    (10070, 1070, 5001);
INSERT INTO Payment
VALUES
    (10071, 1071, 5002);
INSERT INTO Payment
VALUES
    (10072, 1072, 5001);
INSERT INTO Payment
VALUES
    (10073, 1073, 5004);
INSERT INTO Payment
VALUES
    (10074, 1074, 5003);
INSERT INTO Payment
VALUES
    (10075, 1075, 5001);
INSERT INTO Payment
VALUES
    (10076, 1076, 5003);
INSERT INTO Payment
VALUES
    (10077, 1077, 5001);
INSERT INTO Payment
VALUES
    (10078, 1078, 5002);
INSERT INTO Payment
VALUES
    (10079, 1079, 5004);
INSERT INTO Payment
VALUES
    (10080, 1080, 5004);
INSERT INTO Payment
VALUES
    (10081, 1081, 5002);
INSERT INTO Payment
VALUES
    (10082, 1082, 5001);
INSERT INTO Payment
VALUES
    (10083, 1083, 5004);


/* Select Payment Table to see if all records are inserted */

SELECT *
FROM Payment