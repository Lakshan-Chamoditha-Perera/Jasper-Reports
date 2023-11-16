DROP DATABASE Thogakade;
CREATE DATABASE Thogakade;
USE Thogakade;

CREATE TABLE Customer(
                         CustID VARCHAR(6) NOT NULL,
                         CustTitle VARCHAR(5),
                         CustName VARCHAR(30) NOT NULL,
                         DOB DATE,
                         salary decimal(10,2) not null,
                         CustAddress VARCHAR(30),
                         City VARCHAR(20),
                         Province VARCHAR(20),
                         PostalCode VARCHAR(9),
                         CONSTRAINT PRIMARY KEY (CustID)
);

CREATE TABLE Orders(
                       OrderID VARCHAR(6) NOT NULL,
                       OrderDate DATE,
                       CustID VARCHAR(6) NOT NULL,
                       CONSTRAINT PRIMARY KEY (OrderID),
                       CONSTRAINT FOREIGN KEY(CustID) REFERENCES Customer(CustID)
                           ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Item(
                     ItemCode VARCHAR(6) NOT NULL,
                     Description VARCHAR(50) NOT NULL,
                     PackSize VARCHAR(20),
                     UnitPrice DECIMAL(6,2) NOT NULL,
                     QtyOnHand INT(5) NOT NULL,
                     CONSTRAINT PRIMARY KEY (ItemCode)
);

CREATE TABLE OrderDetail(
                            OrderID VARCHAR(6) NOT NULL,
                            ItemCode VARCHAR(6) NOT NULL,
                            OrderQTY INT(11) NOT NULL,
                            Discount INT(2),
                            CONSTRAINT PRIMARY KEY (OrderID,ItemCode),
                            CONSTRAINT FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
                                ON UPDATE CASCADE ON DELETE CASCADE,
                            CONSTRAINT FOREIGN KEY (ItemCode) REFERENCES Item(ItemCode)
                                ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO Customer VALUES('C001','Mr','Danapala','1981-2-6',40000,'No.20 Walana','Panadura','Western',12500);
INSERT INTO Customer VALUES('C002','Mr','Gunapala','1982-8-12',40000,'No 200, Thalpitiya','Wadduwa','Western',12500);
INSERT INTO Customer VALUES('C003','Mr','Amarapala','1988-1-2',34000,'No 100, Horawala','Matugama','Western',13400);
INSERT INTO Customer VALUES('C004','Mr','Somapala','1952-1-2',67000,'No .10, Ginigama','Galle','Southern',12213);
INSERT INTO Customer VALUES('C005','Mr','Jinapala','1974-1-8',32000,'N0. 34 Ginthota','Aluthgama','Southern',24333);
INSERT INTO Customer VALUES('C006','Miss','Gnanawathee','1982-1-3',78000,'No. 230, Galle Road','Panadura','Western',12500);
INSERT INTO Customer VALUES('C007','Miss','Amarawathee','1984-5-7',98000,'No, Galle Road','Ambalangoda','Southern',43343);
INSERT INTO Customer VALUES('C008','Ms','Leelawathee','1950-4-8',57000,'No 12, Rathnapura Road','Madampe','Sabaragamuwa',32312);
INSERT INTO Customer VALUES('C009','Ms','Gunawathee','1972-3-9',76000,'No122, Anuradhapura Road','Kurunegala','Wayamba',23233);
INSERT INTO Customer VALUES('C010','Mr','Dayapala','1983-4-9',40000,'No. 234, Attidiya Road','Dehiwala','Western',23434);
INSERT INTO Customer VALUES('C011','Mr','Sangapala','1990-5-9',76000,'No. 43, St Peters Road','Negambo','Western',32313);
INSERT INTO Customer VALUES('C012','Miss','Ariyawathee','1987-8-9',59000,'No. 123, Pamunuwa Road','Maharagama','Western',23123);
INSERT INTO Customer VALUES('C013','Miss','Somawathee','1987-5-3',67000,'No. 345, Matugama Road','Kalutara','Western',23233);
INSERT INTO Customer VALUES('C014','Mr','Somapala','1981-8-9',38000,'No. Ragala Road','Walapane','Central',44332);
INSERT INTO Customer VALUES('C015','Mr','Ariyapala','1986-8-9',76000,'No. Kandy Road','Thrincomalee','Eastern',77867);
INSERT INTO Customer VALUES('C016','Miss','Siriyalatha','1992-2-5',40000,'No. Nawala Road','Nugegoda','Western',122323);
INSERT INTO Customer VALUES('C017','Miss','Premalatha','1980-1-31',76000,'No. Maradan kadawala Road','Thrincomalee','Eastern',24545);
INSERT INTO Customer VALUES('C018','Ms','Chandralatha','1930-12-31',58000,'No. New moor Street','Colombo','Western',45656);
INSERT INTO Customer VALUES('C019','Ms','Karunawathee','1964-1-23',97000,'No. Baddegama Road','Galle','Southern',45455);
INSERT INTO Customer VALUES('C020','Mr','Arunachalam','1983-3-4',58000,'No. Diggala Road','Keselwatta','Western',45545);
INSERT INTO Customer VALUES('C021','Mr','Jinadasa','1980-3-4',65000,'No. Kandy Road','Jaffna','Northern',44432);
INSERT INTO Customer VALUES('C022','Mr','Amaradasa','1993-5-1',40000,'No. Katugastota Road','Kandy','Central',23321);
INSERT INTO Customer VALUES('C023','Mr','Somadasa','1994-1-1',30000,'No. Aranayaka Road','Mawenella','Central',78979);
INSERT INTO Customer VALUES('C024','Ms','Gunalatha','1985-5-6',74000,'No. Yatinuwara Sreet','Kandy','Central',78787);
INSERT INTO Customer VALUES('C025','Ms','Premalatha','1969-3-3',72000,'No. Dambulla Road','Anuradhapura','North Western',23430);
INSERT INTO Customer VALUES('C026','Miss','Gnanalatha','1979-10-15',58000,'No. 23, Dankotuwa Road','Nathathandiya','Wayamba',21212);
INSERT INTO Customer VALUES('C027','Mr','Jayarathne','1978-3-4',40000,'N0.340, Arrawala Road','Pannipitiya','Western',12122);
INSERT INTO Customer VALUES('C028','Mr','Jinasena','1991-3-4',60000,'No.40, Dias place','Panadura','Western',12500);
INSERT INTO Customer VALUES('C029','Mr','Jinadasa','1948-4-3',56000,'No.124, Jaffna Road','Rambawa','North Western',34400);
INSERT INTO Customer VALUES('C030','Mr','Jinasoma','1934-7-8',89000,'No.34, Kandy Road','Matale','Central',12333);
INSERT INTO Customer VALUES('C031','Mr','Amarasena','1981-5-14',58500,'No. Kandy Road','Polonaruwa','Eastern',44432);
INSERT INTO Customer VALUES('C032','Mr','Jinasoma','1988-3-14',67000,'No. Kandy Road','Matugama','Western',12333);


INSERT INTO Item VALUES('P001','Keerisamba Retail','1kg',105.00,3000);
INSERT INTO Item VALUES('P002','Keerisamba 5Kg ','5kg',525.00,200);
INSERT INTO Item VALUES('P003','Keerisamba 10Kg','10kg',995.00,36);
INSERT INTO Item VALUES('P004','Keerisamba 50Kg','50kg',4100.00,36);
INSERT INTO Item VALUES('P005','Red Raw Rice','1kg',60.00,6000);
INSERT INTO Item VALUES('P006','Red Raw Rice 10Kg Pack','10kg',560.00,300);
INSERT INTO Item VALUES('P007','Red Raw Rice 50Kg Pack','50kg',5230.00,80);
INSERT INTO Item VALUES('P008','White Raw Rice 5Kg Pack','5kg',275.00,130);
INSERT INTO Item VALUES('P009','White Raw Rice 50Kg Pack','50kg',2600.00,13);
INSERT INTO Item VALUES('P010','Wattana Dhal 500g','500kg',90.00,83);
INSERT INTO Item VALUES('P011','Wattana Dhal 1Kg','1kg',170.00,40);
INSERT INTO Item VALUES('P012','Mysoor Dhal 500g','500g',90.00,89);
INSERT INTO Item VALUES('P013','Mysoor Dhal 1Kg','1Kg',180.00,59);
INSERT INTO Item VALUES('P014','Orient Green Gram 500g','500g',118.00,39);
INSERT INTO Item VALUES('P015','Orient Green Gram 1Kg','1kg',220.00,12);
INSERT INTO Item VALUES('P016','Anchor F/C Milk powder 450g','450g',220.00,93);
INSERT INTO Item VALUES('P017','Anchor F/C Milk powder 1Kg','1Kg',580.00,40);
INSERT INTO Item VALUES('P018','Anchor N/F Milk powder 1Kg','1Kg',560.00,33);
INSERT INTO Item VALUES('P019','Milo Packet 400g','400g',240.00,33);
INSERT INTO Item VALUES('P020','Lipton Ceylon Tea 100g','100g',107.00,40);
INSERT INTO Item VALUES('P021','Lipton Ceylon Tea 200g','200g',198.00,40);
INSERT INTO Item VALUES('P022','Lipton Ceylon Tea 400g','400g',360.00,20);
INSERT INTO Item VALUES('P023','White Suger 500g','500g',55.00,45);
INSERT INTO Item VALUES('P024','White Suger 1Kg','1kg',109.00,25);
INSERT INTO Item VALUES('P025','Astra Margarine 250g','250g',129.00,25);
INSERT INTO Item VALUES('P026','Astra Margarine 500g','500g',229.00,15);
INSERT INTO Item VALUES('P027','Rice Noodle 200g','200g',65.00,25);
INSERT INTO Item VALUES('P028','Rice Noodle 500g','500g',140.00,35);
INSERT INTO Item VALUES('P029','Red Rice Noodle 500g','500g',150.00,35);
INSERT INTO Item VALUES('P030','Coka Cola 1.5L','1.5L',160.00,30);
INSERT INTO Item VALUES('P031','Coka Cola 500ml','500ml',60.00,30);
INSERT INTO Item VALUES('P032','Pepsi 500ml','500ml',55.00,30);
INSERT INTO Item VALUES('P033','Pepsi 1.5L','1.5L',160.00,30);
INSERT INTO Item VALUES('P034','Sprite 500ml','500ml',55.00,30);
INSERT INTO Item VALUES('P035','Sprite 1.5L','1.5L',160.00,30);
INSERT INTO Item VALUES('P036','Tomato Sauce Bottle','860g',340.00,30);
INSERT INTO Item VALUES('P037','Chillie Sauce Bottle','860g',320.00,30);
INSERT INTO Item VALUES('P038','Raw Chillie 100g','100g',40.00,30);
INSERT INTO Item VALUES('P039','Raw Chillie 250g','250g',95.00,30);
INSERT INTO Item VALUES('P040','Raw Chillie 500g','500g',180.00,30);
INSERT INTO Item VALUES('P041','Goraka 100g','100g',25.00,30);
INSERT INTO Item VALUES('P042','Sinnamon Stick 100g','100g',25.00,30);
INSERT INTO Item VALUES('P043','Anchor 400g','400g',425.00,120);


INSERT INTO Orders VALUES('D001','2008-2-5','C001');
INSERT INTO Orders VALUES('D002','2008-2-15','C001');
INSERT INTO Orders VALUES('D003','2008-2-20','C001');
INSERT INTO Orders VALUES('D004','2008-2-28','C001');
INSERT INTO Orders VALUES('D005','2008-3-20','C001');
INSERT INTO Orders VALUES('D006','2008-4-10','C001');
INSERT INTO Orders VALUES('D007','2008-5-10','C001');
INSERT INTO Orders VALUES('D008','2008-6-20','C001');
INSERT INTO Orders VALUES('D009','2008-8-12','C001');
INSERT INTO Orders VALUES('D010','2008-9-20','C001');
INSERT INTO Orders VALUES('D011','2008-2-6','C002');
INSERT INTO Orders VALUES('D012','2008-2-16','C002');
INSERT INTO Orders VALUES('D013','2008-2-20','C002');
INSERT INTO Orders VALUES('D014','2008-3-16','C002');
INSERT INTO Orders VALUES('D015','2008-4-15','C002');
INSERT INTO Orders VALUES('D016','2008-8-26','C002');
INSERT INTO Orders VALUES('D017','2008-2-16','C003');
INSERT INTO Orders VALUES('D018','2008-3-26','C003');
INSERT INTO Orders VALUES('D019','2008-6-11','C003');
INSERT INTO Orders VALUES('D020','2008-9-26','C003');
INSERT INTO Orders VALUES('D021','2008-11-26','C003');
INSERT INTO Orders VALUES('D022','2008-1-11','C004');
INSERT INTO Orders VALUES('D023','2008-7-21','C004');
INSERT INTO Orders VALUES('D024','2008-9-11','C004');
INSERT INTO Orders VALUES('D025','2008-11-11','C005');
INSERT INTO Orders VALUES('D026','2008-12-14','C005');
INSERT INTO Orders VALUES('D027','2008-12-28','C005');
INSERT INTO Orders VALUES('D028','2008-11-29','C005');
INSERT INTO Orders VALUES('D029','2008-11-30','C005');
INSERT INTO Orders VALUES('D030','2008-1-11','C006');
INSERT INTO Orders VALUES('D031','2008-2-23','C006');
INSERT INTO Orders VALUES('D032','2008-2-27','C006');
INSERT INTO Orders VALUES('D033','2008-2-28','C006');
INSERT INTO Orders VALUES('D034','2008-3-23','C006');
INSERT INTO Orders VALUES('D035','2008-4-17','C006');
INSERT INTO Orders VALUES('D036','2008-5-5','C006');
INSERT INTO Orders VALUES('D037','2008-8-27','C006');
INSERT INTO Orders VALUES('D038','2008-10-27','C006');
INSERT INTO Orders VALUES('D039','2008-12-22','C006');
INSERT INTO Orders VALUES('D040','2008-12-29','C006');
INSERT INTO Orders VALUES('D041','2008-2-21','C007');
INSERT INTO Orders VALUES('D042','2008-3-22','C007');
INSERT INTO Orders VALUES('D043','2008-4-11','C007');
INSERT INTO Orders VALUES('D044','2008-5-12','C007');
INSERT INTO Orders VALUES('D045','2008-6-13','C008');
INSERT INTO Orders VALUES('D046','2008-7-13','C008');
INSERT INTO Orders VALUES('D047','2008-7-11','C008');
INSERT INTO Orders VALUES('D048','2008-7-30','C009');
INSERT INTO Orders VALUES('D049','2008-7-11','C009');
INSERT INTO Orders VALUES('D050','2008-8-12','C009');
INSERT INTO Orders VALUES('D051','2008-8-13','C009');
INSERT INTO Orders VALUES('D052','2008-8-13','C009');
INSERT INTO Orders VALUES('D053','2008-8-27','C010');
INSERT INTO Orders VALUES('D054','2008-9-12','C010');
INSERT INTO Orders VALUES('D055','2008-9-22','C010');
INSERT INTO Orders VALUES('D056','2008-9-23','C010');
INSERT INTO Orders VALUES('D057','2008-9-24','C010');
INSERT INTO Orders VALUES('D058','2008-9-25','C010');
INSERT INTO Orders VALUES('D059','2008-9-23','C011');
INSERT INTO Orders VALUES('D060','2008-10-7','C012');


INSERT INTO OrderDetail VALUES('D001',	'P001',	3,0);
INSERT INTO OrderDetail VALUES('D001',	'P002',	5,0);
INSERT INTO OrderDetail VALUES('D001',	'P003',	8,0);
INSERT INTO OrderDetail VALUES('D001',	'P006',	10,0);
INSERT INTO OrderDetail VALUES('D002',	'P002',	4,0);
INSERT INTO OrderDetail VALUES('D002',	'P003',	4,0);
INSERT INTO OrderDetail VALUES('D002',	'P008',	3,0);
INSERT INTO OrderDetail VALUES('D002',	'P010',	12,0);
INSERT INTO OrderDetail VALUES('D002',	'P012',	3,0);
INSERT INTO OrderDetail VALUES('D003',	'P001',	9,0);
INSERT INTO OrderDetail VALUES('D003',	'P004',	6,0);
INSERT INTO OrderDetail VALUES('D003',	'P016',	70,0);
INSERT INTO OrderDetail VALUES('D004',	'P002',	12,0);
INSERT INTO OrderDetail VALUES('D004',	'P005',	7,0);
INSERT INTO OrderDetail VALUES('D004',	'P008',	10,0);
INSERT INTO OrderDetail VALUES('D004',	'P013',	9,0);
INSERT INTO OrderDetail VALUES('D004',	'P015',	5,0);
INSERT INTO OrderDetail VALUES('D004',	'P016',	8,0);
INSERT INTO OrderDetail VALUES('D004',	'P020',	5,0);
INSERT INTO OrderDetail VALUES('D004',	'P021',	2,0);
INSERT INTO OrderDetail VALUES('D004',	'P022',	3,0);
INSERT INTO OrderDetail VALUES('D004',	'P024',	4,0);
INSERT INTO OrderDetail VALUES('D005',	'P001',	6,0);
INSERT INTO OrderDetail VALUES('D005',	'P003',	8,0);
INSERT INTO OrderDetail VALUES('D005',	'P007',	90,0);
INSERT INTO OrderDetail VALUES('D006',	'P003',	9,0);
INSERT INTO OrderDetail VALUES('D006',	'P020',	8,0);
INSERT INTO OrderDetail VALUES('D007',	'P020',	10,0);
INSERT INTO OrderDetail VALUES('D008',	'P001',	3,0);
INSERT INTO OrderDetail VALUES('D009',	'P002',	2,0);
INSERT INTO OrderDetail VALUES('D009',	'P003',	2,0);
INSERT INTO OrderDetail VALUES('D009',	'P005',	2,0);
INSERT INTO OrderDetail VALUES('D009',	'P007',	9,0);
INSERT INTO OrderDetail VALUES('D009',	'P008',	2,0);
INSERT INTO OrderDetail VALUES('D009',	'P010',	9,0);
INSERT INTO OrderDetail VALUES('D009',	'P023',	5,0);
INSERT INTO OrderDetail VALUES('D010',	'P010',	6,0);
INSERT INTO OrderDetail VALUES('D010',	'P012',	3,0);
INSERT INTO OrderDetail VALUES('D010',	'P014',	6,0);
INSERT INTO OrderDetail VALUES('D010',	'P015',	6,0);
INSERT INTO OrderDetail VALUES('D010',	'P016',	5,0);
INSERT INTO OrderDetail VALUES('D010',	'P040',	3,0);
INSERT INTO OrderDetail VALUES('D010',	'P041',	2,0);
INSERT INTO OrderDetail VALUES('D012',	'P001',	2,0);
INSERT INTO OrderDetail VALUES('D012',	'P003',	4,0);
INSERT INTO OrderDetail VALUES('D013',	'P005',	4,0);
INSERT INTO OrderDetail VALUES('D013',	'P009',	8,0);
INSERT INTO OrderDetail VALUES('D014',	'P006',	9,0);
INSERT INTO OrderDetail VALUES('D014',	'P009',	4,0);
INSERT INTO OrderDetail VALUES('D014',	'P019',	3,0);
INSERT INTO OrderDetail VALUES('D014',	'P020',	7,0);
INSERT INTO OrderDetail VALUES('D014',	'P021',	3,0);
INSERT INTO OrderDetail VALUES('D014',	'P025',	6,0);
INSERT INTO OrderDetail VALUES('D015',	'P021',	8,0);
INSERT INTO OrderDetail VALUES('D015',	'P022',	3,0);
INSERT INTO OrderDetail VALUES('D015',	'P027',	4,0);
INSERT INTO OrderDetail VALUES('D015',	'P029',	5,0);
INSERT INTO OrderDetail VALUES('D015',	'P032',	41,0);
INSERT INTO OrderDetail VALUES('D015',	'P034',	5,0);
INSERT INTO OrderDetail VALUES('D015',	'P036',	6,0);
INSERT INTO OrderDetail VALUES('D015',	'P038',	4,0);
INSERT INTO OrderDetail VALUES('D016',	'P001',	3,0);
INSERT INTO OrderDetail VALUES('D016',	'P003',	10,0);
INSERT INTO OrderDetail VALUES('D016',	'P007',	3,0);
INSERT INTO OrderDetail VALUES('D016',	'P009',	19,0);
INSERT INTO OrderDetail VALUES('D016',	'P011',	7,0);
INSERT INTO OrderDetail VALUES('D017',	'P001',	12,0);
INSERT INTO OrderDetail VALUES('D017',	'P004',	4,0);
INSERT INTO OrderDetail VALUES('D017',	'P007',	7,0);
INSERT INTO OrderDetail VALUES('D017',	'P009',	5,0);
INSERT INTO OrderDetail VALUES('D017',	'P010',	5,0);
INSERT INTO OrderDetail VALUES('D017',	'P012',	4,0);
INSERT INTO OrderDetail VALUES('D017',	'P019',	4,0);
INSERT INTO OrderDetail VALUES('D018',	'P001',	4,0);
INSERT INTO OrderDetail VALUES('D018',	'P003',	4,0);
INSERT INTO OrderDetail VALUES('D018',	'P005',	3,0);
INSERT INTO OrderDetail VALUES('D018',	'P010',	3,0);
INSERT INTO OrderDetail VALUES('D018',	'P026',	9,0);
INSERT INTO OrderDetail VALUES('D019',	'P009',	2,0);
INSERT INTO OrderDetail VALUES('D019',	'P010',	3,0);
INSERT INTO OrderDetail VALUES('D019',	'P018',	1,0);
INSERT INTO OrderDetail VALUES('D019',	'P019',	8,0);
INSERT INTO OrderDetail VALUES('D019',	'P031',	3,0);
INSERT INTO OrderDetail VALUES('D020',	'P001',	12,0);
INSERT INTO OrderDetail VALUES('D020',	'P004',	9,0);
INSERT INTO OrderDetail VALUES('D020',	'P006',	12,0);
INSERT INTO OrderDetail VALUES('D020',	'P019',	12,0);
INSERT INTO OrderDetail VALUES('D021',	'P001',	12,0);
INSERT INTO OrderDetail VALUES('D021',	'P003',	4,0);
INSERT INTO OrderDetail VALUES('D021',	'P012',	2,0);
INSERT INTO OrderDetail VALUES('D021',	'P041',	10,0);
INSERT INTO OrderDetail VALUES('D022',	'P003',	5,0);
INSERT INTO OrderDetail VALUES('D022',	'P012',	2,0);
INSERT INTO OrderDetail VALUES('D022',	'P028',	7,0);
INSERT INTO OrderDetail VALUES('D022',	'P031',	3,0);
INSERT INTO OrderDetail VALUES('D022',	'P032',	3,0);
INSERT INTO OrderDetail VALUES('D022',	'P034',	5,0);
INSERT INTO OrderDetail VALUES('D022',	'P041',	7,0);
INSERT INTO OrderDetail VALUES('D023',	'P001',	1,0);
INSERT INTO OrderDetail VALUES('D023',	'P002',	3,0);
INSERT INTO OrderDetail VALUES('D023',	'P006',	8,0);
INSERT INTO OrderDetail VALUES('D023',	'P009',	3,0);
INSERT INTO OrderDetail VALUES('D023',	'P012',	3,0);
INSERT INTO OrderDetail VALUES('D023',	'P014',	4,0);
INSERT INTO OrderDetail VALUES('D023',	'P019',	3,0);
INSERT INTO OrderDetail VALUES('D023',	'P022',	4,0);
INSERT INTO OrderDetail VALUES('D023',	'P023',	3,0);
INSERT INTO OrderDetail VALUES('D023',	'P036',	45,0);
INSERT INTO OrderDetail VALUES('D024',	'P006',	4,0);
INSERT INTO OrderDetail VALUES('D024',	'P011',	3,0);
INSERT INTO OrderDetail VALUES('D024',	'P012',	2,0);
INSERT INTO OrderDetail VALUES('D024',	'P023',	3,0);
INSERT INTO OrderDetail VALUES('D024',	'P029',	3,0);
INSERT INTO OrderDetail VALUES('D024',	'P031',	3,0);
INSERT INTO OrderDetail VALUES('D024',	'P034',	3,0);
INSERT INTO OrderDetail VALUES('D024',	'P036',	4,0);
INSERT INTO OrderDetail VALUES('D024',	'P037',	5,0);
INSERT INTO OrderDetail VALUES('D024',	'P042',	23,0);
INSERT INTO OrderDetail VALUES('D025',	'P001',	12,0);
INSERT INTO OrderDetail VALUES('D025',	'P002',	23,0);
INSERT INTO OrderDetail VALUES('D025',	'P003',	34,0);
INSERT INTO OrderDetail VALUES('D025',	'P010',	2,0);
INSERT INTO OrderDetail VALUES('D025',	'P014',	4,0);
INSERT INTO OrderDetail VALUES('D026',	'P003',	2,0);
INSERT INTO OrderDetail VALUES('D026',	'P004',	4,0);
INSERT INTO OrderDetail VALUES('D026',	'P006',	34,0);
INSERT INTO OrderDetail VALUES('D026',	'P007',	34,0);
INSERT INTO OrderDetail VALUES('D026',	'P009',	3,0);
INSERT INTO OrderDetail VALUES('D026',	'P015',	5,0);
INSERT INTO OrderDetail VALUES('D026',	'P019',	4,0);
INSERT INTO OrderDetail VALUES('D027',	'P002',	9,0);
INSERT INTO OrderDetail VALUES('D027',	'P018',	1,0);
INSERT INTO OrderDetail VALUES('D027',	'P019',	9,0);
INSERT INTO OrderDetail VALUES('D027',	'P021',	3,0);
INSERT INTO OrderDetail VALUES('D027',	'P023',	3,0);
INSERT INTO OrderDetail VALUES('D027',	'P024',	4,0);
INSERT INTO OrderDetail VALUES('D027',	'P027',	9,0);
INSERT INTO OrderDetail VALUES('D027',	'P028',	3,0);
INSERT INTO OrderDetail VALUES('D027',	'P031',	23,0);
INSERT INTO OrderDetail VALUES('D028',	'P002',	23,0);
INSERT INTO OrderDetail VALUES('D028',	'P004',	3,0);
INSERT INTO OrderDetail VALUES('D028',	'P006',	9,0);
INSERT INTO OrderDetail VALUES('D028',	'P009',	4,0);
INSERT INTO OrderDetail VALUES('D028',	'P012',	2,0);
INSERT INTO OrderDetail VALUES('D028',	'P025',	4,0);
INSERT INTO OrderDetail VALUES('D028',	'P034',	4,0);
INSERT INTO OrderDetail VALUES('D028',	'P036',	5,0);
INSERT INTO OrderDetail VALUES('D029',	'P004',	4,0);
INSERT INTO OrderDetail VALUES('D029',	'P012',	34,0);
INSERT INTO OrderDetail VALUES('D029',	'P013',	3,0);
INSERT INTO OrderDetail VALUES('D029',	'P019',	2,0);
INSERT INTO OrderDetail VALUES('D030',	'P001',	12,0);
INSERT INTO OrderDetail VALUES('D030',	'P003',	3,0);
INSERT INTO OrderDetail VALUES('D030',	'P005',	5,0);
INSERT INTO OrderDetail VALUES('D030',	'P006',	6,0);
INSERT INTO OrderDetail VALUES('D030',	'P007',	7,0);
INSERT INTO OrderDetail VALUES('D030',	'P008',	8,0);
INSERT INTO OrderDetail VALUES('D030',	'P009',	9,0);
INSERT INTO OrderDetail VALUES('D031',	'P003',	3,0);
INSERT INTO OrderDetail VALUES('D031',	'P004',	5,0);
INSERT INTO OrderDetail VALUES('D031',	'P006',	6,0);
INSERT INTO OrderDetail VALUES('D031',	'P010',	10,0);
INSERT INTO OrderDetail VALUES('D031',	'P013',	2,0);
INSERT INTO OrderDetail VALUES('D031',	'P015',	4,0);
INSERT INTO OrderDetail VALUES('D031',	'P017',	45,0);
INSERT INTO OrderDetail VALUES('D032',	'P002',	4,0);
INSERT INTO OrderDetail VALUES('D032',	'P005',	5,0);
INSERT INTO OrderDetail VALUES('D032',	'P023',	3,0);
INSERT INTO OrderDetail VALUES('D032',	'P031',	3,0);
INSERT INTO OrderDetail VALUES('D032',	'P034',	4,0);
INSERT INTO OrderDetail VALUES('D032',	'P035',	5,0);
INSERT INTO OrderDetail VALUES('D032',	'P039',	4,0);
INSERT INTO OrderDetail VALUES('D032',	'P040',	4,0);
INSERT INTO OrderDetail VALUES('D032',	'P041',	3,0);
INSERT INTO OrderDetail VALUES('D033',	'P017',	6,0);
INSERT INTO OrderDetail VALUES('D033',	'P021',	2,0);
INSERT INTO OrderDetail VALUES('D033',	'P024',	4,0);
INSERT INTO OrderDetail VALUES('D033',	'P026',	6,0);
INSERT INTO OrderDetail VALUES('D033',	'P029',	8,0);
INSERT INTO OrderDetail VALUES('D033',	'P032',	3,0);
INSERT INTO OrderDetail VALUES('D033',	'P035',	5,0);
INSERT INTO OrderDetail VALUES('D033',	'P036',	5,0);
INSERT INTO OrderDetail VALUES('D033',	'P039',	5,0);
INSERT INTO OrderDetail VALUES('D034',	'P001',	9,0);
INSERT INTO OrderDetail VALUES('D034',	'P003',	3,0);
INSERT INTO OrderDetail VALUES('D034',	'P005',	5,0);
INSERT INTO OrderDetail VALUES('D034',	'P008',	4,0);
INSERT INTO OrderDetail VALUES('D034',	'P009',	9,0);
INSERT INTO OrderDetail VALUES('D034',	'P012',	7,0);
INSERT INTO OrderDetail VALUES('D034',	'P017',	5,0);
INSERT INTO OrderDetail VALUES('D034',	'P018',	9,0);
INSERT INTO OrderDetail VALUES('D034',	'P021',	7,0);
INSERT INTO OrderDetail VALUES('D034',	'P024',	4,0);
INSERT INTO OrderDetail VALUES('D034',	'P027',	8,0);
INSERT INTO OrderDetail VALUES('D035',	'P011',	35,0);
INSERT INTO OrderDetail VALUES('D035',	'P014',	2,0);
INSERT INTO OrderDetail VALUES('D035',	'P015',	4,0);
INSERT INTO OrderDetail VALUES('D035',	'P016',	5,0);
INSERT INTO OrderDetail VALUES('D035',	'P017',	6,0);
INSERT INTO OrderDetail VALUES('D035',	'P018',	6,0);
INSERT INTO OrderDetail VALUES('D035',	'P020',	6,0);
INSERT INTO OrderDetail VALUES('D036',	'P014',	6,0);
INSERT INTO OrderDetail VALUES('D036',	'P022',	6,0);
INSERT INTO OrderDetail VALUES('D036',	'P023',	10,0);
INSERT INTO OrderDetail VALUES('D036',	'P026',	9,0);
INSERT INTO OrderDetail VALUES('D036',	'P027',	2,0);
INSERT INTO OrderDetail VALUES('D036',	'P028',	6,0);
INSERT INTO OrderDetail VALUES('D037',	'P028',	2,0);
INSERT INTO OrderDetail VALUES('D037',	'P030',	6,0);
INSERT INTO OrderDetail VALUES('D037',	'P039',	12,0);
INSERT INTO OrderDetail VALUES('D037',	'P042',	5,0);
INSERT INTO OrderDetail VALUES('D038',	'P012',	9,0);
INSERT INTO OrderDetail VALUES('D038',	'P013',	6,0);
INSERT INTO OrderDetail VALUES('D038',	'P028',	7,0);
INSERT INTO OrderDetail VALUES('D038',	'P034',	6,0);
INSERT INTO OrderDetail VALUES('D039',	'P002',	2,0);
INSERT INTO OrderDetail VALUES('D039',	'P006',	8,0);
INSERT INTO OrderDetail VALUES('D039',	'P017',	12,0);
INSERT INTO OrderDetail VALUES('D039',	'P019',	7,0);
INSERT INTO OrderDetail VALUES('D039',	'P023',	6,0);
INSERT INTO OrderDetail VALUES('D039',	'P034',	3,0);
INSERT INTO OrderDetail VALUES('D040',	'P022',	4,0);
INSERT INTO OrderDetail VALUES('D040',	'P002',	6,0);
INSERT INTO OrderDetail VALUES('D040',	'P011',	8,0);
INSERT INTO OrderDetail VALUES('D040',	'P012',	9,0);
INSERT INTO OrderDetail VALUES('D040',	'P013',	3,0);
INSERT INTO OrderDetail VALUES('D040',	'P014',	2,0);
INSERT INTO OrderDetail VALUES('D040',	'P015',	1,0);
INSERT INTO OrderDetail VALUES('D040',	'P016',	2,0);
INSERT INTO OrderDetail VALUES('D041',	'P02',	3,0);
INSERT INTO OrderDetail VALUES('D041',	'P03',	4,0);
INSERT INTO OrderDetail VALUES('D041',	'P032',	5,0);
INSERT INTO OrderDetail VALUES('D041',	'P031',	6,0);
INSERT INTO OrderDetail VALUES('D041',	'P011',	7,0);
INSERT INTO OrderDetail VALUES('D042',	'P011',	8,0);
INSERT INTO OrderDetail VALUES('D042',	'P002',	9,0);
INSERT INTO OrderDetail VALUES('D042',	'P003',	3,0);
INSERT INTO OrderDetail VALUES('D042',	'P004',	3,0);
INSERT INTO OrderDetail VALUES('D043',	'P002',	4,0);
INSERT INTO OrderDetail VALUES('D043',	'P004',	3,0);
INSERT INTO OrderDetail VALUES('D043',	'P001',	2,0);
INSERT INTO OrderDetail VALUES('D043',	'P005',	1,0);
INSERT INTO OrderDetail VALUES('D043',	'P009',	5,0);
INSERT INTO OrderDetail VALUES('D044',	'P012',	6,0);
INSERT INTO OrderDetail VALUES('D044',	'P013',	7,0);
INSERT INTO OrderDetail VALUES('D044',	'P014',	8,0);
INSERT INTO OrderDetail VALUES('D045',	'P021',	9,0);
INSERT INTO OrderDetail VALUES('D045',	'P022',	6,0);
INSERT INTO OrderDetail VALUES('D045',	'P023',	5,0);
INSERT INTO OrderDetail VALUES('D045',	'P024',	4,0);
INSERT INTO OrderDetail VALUES('D045',	'P025',	3,0);
INSERT INTO OrderDetail VALUES('D045',	'P026',	3,0);
INSERT INTO OrderDetail VALUES('D046',	'P011',	2,0);
INSERT INTO OrderDetail VALUES('D046',	'P012',	2,0);
INSERT INTO OrderDetail VALUES('D046',	'P013',	1,0);
INSERT INTO OrderDetail VALUES('D046',	'P014',	7,0);
INSERT INTO OrderDetail VALUES('D046',	'P015',	6,0);
INSERT INTO OrderDetail VALUES('D046',	'P016',	8,0);
INSERT INTO OrderDetail VALUES('D046',	'P017',	7,0);
INSERT INTO OrderDetail VALUES('D046',	'P018',	6,0);
INSERT INTO OrderDetail VALUES('D046',	'P019',	5,0);
INSERT INTO OrderDetail VALUES('D047',	'P023',	4,0);
INSERT INTO OrderDetail VALUES('D047',	'P024',	3,0);
INSERT INTO OrderDetail VALUES('D047',	'P025',	4,0);
INSERT INTO OrderDetail VALUES('D047',	'P026',	5,0);
INSERT INTO OrderDetail VALUES('D048',	'P028',	8,0);
INSERT INTO OrderDetail VALUES('D048',	'P027',	9,0);
INSERT INTO OrderDetail VALUES('D048',	'P026',	7,0);
INSERT INTO OrderDetail VALUES('D048',	'P025',	3,0);
INSERT INTO OrderDetail VALUES('D048',	'P025',	2,0);
INSERT INTO OrderDetail VALUES('D048',	'P024',	3,0);
INSERT INTO OrderDetail VALUES('D049',	'P018',	5,0);
INSERT INTO OrderDetail VALUES('D049',	'P017',	7,0);
INSERT INTO OrderDetail VALUES('D049',	'P016',	5,0);
INSERT INTO OrderDetail VALUES('D050',	'P016',	3,0);
INSERT INTO OrderDetail VALUES('D050',	'P015',	2,0);
INSERT INTO OrderDetail VALUES('D050',	'P014',	2,0);
INSERT INTO OrderDetail VALUES('D050',	'P013',	8,0);

