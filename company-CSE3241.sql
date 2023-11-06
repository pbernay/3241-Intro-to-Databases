--
-- File generated with SQLiteStudio v3.4.4 on Fri Oct 27 18:28:59 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: COMMUNITY_MEMBER
CREATE TABLE IF NOT EXISTS COMMUNITY_MEMBER
(UserID varchar(5) not null,
FirstName varchar(15) not null,
LastName varchar(15) not null,
Address varchar(30) not null,
Phone varchar(12) not null,
Email varchar(50),
StartDate date not null,
WarehouseDistance varchar(5) not null,
Status varchar(10) not null,
Primary key(UserID)
Foreign Key(UserID) References Review(UserId)
Foreign Key(UserID) References Rental(MemberID)
Foreign Key(UserID) References Payment(MemberID)
);
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0000', 'Charlie', 'Williams', '303 Cedar St', '176-733-2627', 'charlie.williams@example.com', '7/9/2023', '16.32', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0001', 'Grace', 'Brown', '505 Fir St', '286-175-3090', 'grace.brown@example.com', '5/18/2023', '2.85', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0002', 'Eve', 'Taylor', '789 Maple St', '732-635-3758', 'eve.taylor@example.com', '6/18/2023', '4.12', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0003', 'Alice', 'Davis', '456 Oak St', '889-855-6133', 'alice.davis@example.com', '1/19/2023', '16.95', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0004', 'John', 'Jones', '255 Tree St', '909-775-2245', 'john.jones@example.com', '2/16/2023', '7.46', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0005', 'David', 'Brown', '789 Maple St', '833-149-2163', 'david.brown@example.com', '5/3/2023', '1.22', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0006', 'Alice', 'Taylor', '404 Dogwood St', '200-476-3490', 'alice.taylor@example.com', '1/5/2023', '15.93', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0007', 'Bob', 'Taylor', '707 Cherry St', '925-623-1516', 'bob.taylor@example.com', '6/29/2023', '4.48', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0008', 'Hannah', 'Johnson', '728 Cherry St', '524-205-7490', 'hannah.johnson@example.com', '8/24/2023', '5.01', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0009', 'Jane', 'Smith', '988 Line St', '131-707-2750', 'jane.smith@example.com', '3/27/2023', '11.88', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0010', 'Frank', 'Johnson', '202 Birch St', '961-397-8110', 'frank.johnson@example.com', '4/14/2023', '8.78', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0011', 'Bob', 'Johnson', '404 Dogwood St', '865-181-3910', 'bob.johnson@example.com', '7/22/2023', '18.78', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0012', 'Charlie', 'Taylor', '456 Oak St', '505-591-1025', 'charlie.taylor@example.com', '5/28/2023', '6.78', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0013', 'John', 'Davis', '542 Miller Ave', '132-958-9500', 'john.davis@example.com', '2/8/2023', '15.72', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0014', 'Grace', 'Wilson', '856 Word St', '705-728-3744', 'grace.wilson@example.com', '9/2/2023', '10.46', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0015', 'Bob', 'Wilson', '101 Pine St', '435-949-4938', 'bob.wilson@example.com', '2/21/2023', '14.65', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0016', 'Alice', 'Miller', '303 Cedar St', '711-530-4130', 'alice.miller@example.com', '9/20/2023', '9.72', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0017', 'Bob', 'Jones', '123 Elm St', '985-903-8166', 'bob.jones@example.com', '9/1/2023', '7.04', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0018', 'David', 'Jones', '123 Priest St', '464-776-5484', 'david.jones@example.com', '2/8/2023', '14.59', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0019', 'Bruce', 'Barnes', '561 Lane Ave', '223-112-4861', 'bruce.barnes@example.com', '4/20/2023', '8.26', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0020', 'Robert', 'Sinclair', '894 Grove St', '572-294-6821', 'robert.sinclair@example.com', '9/25/2023', '5.25', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0021', 'Emma', 'Peters', '200 Spruce Dr', '820-461-2938', 'emma.peters@example.com', '1/11/2023', '9.78', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0022', 'Luke', 'Stevenson', '328 Willow Ln', '315-903-7125', 'luke.stevenson@example.com', '10/8/2023', '6.21', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0023', 'Maria', 'Chapman', '799 Birch Pl', '264-219-8754', 'maria.chapman@example.com', '7/15/2023', '14.08', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0024', 'Gary', 'Nelson', '134 Cedar Rd', '573-940-2815', 'gary.nelson@example.com', '8/3/2023', '7.32', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0025', 'Julia', 'Hughes', '621 Oak Cir', '518-376-5901', 'julia.hughes@example.com', '4/22/2023', '11.11', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0026', 'Anna', 'Bates', '399 Pine Pl', '243-712-9504', 'anna.bates@example.com', '9/13/2023', '15.26', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0027', 'Liam', 'Howard', '210 Elm Dr', '475-985-2134', 'liam.howard@example.com', '2/20/2023', '4.98', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0028', 'Caroline', 'Hayes', '802 Maple St', '593-428-1975', 'caroline.hayes@example.com', '12/12/2023', '3.45', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0029', 'Frederick', 'Dale', '177 Spruce Ln', '632-416-2809', 'frederick.dale@example.com', '5/10/2023', '10', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0030', 'Mary', 'Stone', '980 Birch Rd', '910-461-3968', 'mary.stone@example.com', '3/15/2023', '12.89', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0031', 'Jessica', 'Brooks', '357 Willow Cir', '528-473-0146', 'jessica.brooks@example.com', '11/3/2023', '6.59', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0032', 'Harry', 'Wilkinson', '142 Pine St', '684-216-2987', 'harry.wilkinson@example.com', '6/26/2023', '8.76', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0033', 'Paula', 'Blake', '890 Oak Dr', '310-294-5713', 'paula.blake@example.com', '7/24/2023', '10.24', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0034', 'Stanley', 'Cooper', '566 Elm Ln', '487-961-2350', 'stanley.cooper@example.com', '3/2/2023', '13.68', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0035', 'Michele', 'Dawson', '354 Spruce Pl', '293-871-5012', 'michele.dawson@example.com', '2/9/2023', '5.45', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0036', 'George', 'Poole', '489 Cedar Rd', '610-512-8765', 'george.poole@example.com', '12/20/2023', '7.89', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0037', 'Isabelle', 'Knight', '812 Maple Cir', '245-491-3650', 'isabelle.knight@example.com', '9/4/2023', '6.78', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0038', 'Raymond', 'Banks', '244 Pine St', '918-371-4826', 'raymond.banks@example.com', '1/30/2023', '9.45', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0039', 'Jean', 'Graves', '137 Oak Dr', '402-518-2743', 'jean.graves@example.com', '5/27/2023', '8.68', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0040', 'Peter', 'Mills', '546 Willow Ln', '210-918-3764', 'peter.mills@example.com', '11/28/2023', '14.22', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0041', 'Lily', 'Harris', '278 Elm Rd', '315-293-7159', 'lily.harris@example.com', '4/1/2023', '12.35', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0042', 'Aaron', 'Bryant', '301 Spruce Dr', '497-321-4865', 'aaron.bryant@example.com', '3/10/2023', '15.99', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0043', 'Claire', 'Ford', '910 Cedar Ln', '683-214-5026', 'claire.ford@example.com', '10/16/2023', '6.28', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0044', 'Neil', 'Frost', '137 Birch Pl', '294-615-3985', 'neil.frost@example.com', '12/7/2023', '5.76', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0045', 'Barbara', 'Barnett', '259 Pine Rd', '913-496-2187', 'barbara.barnett@example.com', '8/22/2023', '10.32', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0046', 'Norman', 'Fisher', '333 Willow Cir', '471-583-2564', 'norman.fisher@example.com', '7/7/2023', '9.86', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0047', 'Oliver', 'Burton', '255 Oak Dr', '413-672-4193', 'oliver.burton@example.com', '6/17/2023', '11.29', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0048', 'Diane', 'May', '778 Spruce Ln', '298-461-5723', 'diane.may@example.com', '2/14/2023', '13.44', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0049', 'Martin', 'Powell', '198 Elm Rd', '716-392-4891', 'martin.powell@example.com', '1/23/2023', '7.9', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0050', 'Patricia', 'Campbell', '450 Birch Pl', '828-582-6159', 'patricia.campbell@example.com', '12/31/2023', '15.22', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0051', 'Roger', 'Perry', '376 Pine St', '910-461-3960', 'roger.perry@example.com', '3/15/2023', '6.89', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0052', 'Sharon', 'Cook', '360 Willow Cir', '528-473-0100', 'sharon.cook@example.com', '11/3/2023', '5.59', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0053', 'Daniel', 'Fletcher', '142 Pine St', '684-216-2950', 'daniel.fletcher@example.com', '6/26/2023', '12.76', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0054', 'Andrea', 'Payne', '890 Oak Dr', '310-294-5700', 'andrea.payne@example.com', '7/24/2023', '10.24', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0055', 'Eleanor', 'Fowler', '566 Elm Ln', '487-961-2300', 'eleanor.fowler@example.com', '3/2/2023', '9.68', 'Suspended');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0056', 'David', 'Russell', '354 Spruce Pl', '293-871-5000', 'david.russell@example.com', '2/9/2023', '8.45', 'Active');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0057', 'Megan', 'Glover', '489 Cedar Rd', '610-512-8750', 'megan.glover@example.com', '12/20/2023', '5.89', 'Inactive');
INSERT INTO COMMUNITY_MEMBER (UserID, FirstName, LastName, Address, Phone, Email, StartDate, WarehouseDistance, Status) VALUES ('U0058', 'Leonard', 'Duncan', '812 Maple Cir', '245-491-3600', 'leonard.duncan@example.com', '9/4/2023', '15.78', 'Suspended');

-- Table: DRONE
CREATE TABLE IF NOT EXISTS DRONE
(Name varchar(15) not null,
ModelNum varchar(7) not null,
Drone_SerialNum int not null,
Manufacturer varchar(15) not null,
Year int,
Weight_Capacity int not null,
Volume_Capacity int not null,
Distance_Autonomy int not null,
Max_Speed int not null,
Status varchar(10) not null,
OrderNum varchar(10) not null,
Warehouse_Addr varchar(30) not null,
Primary key(Drone_SerialNum)
Foreign Key(Drone_SerialNum) References Rental(DroneSerial)
Foreign Key(OrderNum) References Order1(Order_Num)
Foreign Key(Warehouse_Addr) References Warehouse(Address)
);
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('AeroFalcon', 'DX39924', 2845712398, 'Big Drone', 2020, 40, 24, 10, 8.5, 'Active', 'O000000001', '2831 Steelbeam Boulevard');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('SkySaber', 'DY49921', 3948027591, 'Fly Tech', 2019, 45, 30, 12, 8.2, 'Active', 'O000000002', '4550 Stonegate Industrial Road');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('WindWraith', 'DZ29918', 1092837465, 'Aero Masters', 2019, 38, 22, 11, 7.9, 'Needs Repairs', 'O000000007', '8629 Silverplate Court');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('SkySaber', 'DY49921', 5840291376, 'Fly Tech', 2019, 45, 30, 12, 8.2, 'Active', 'O000000010', '2096 Boltway Plaza');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('AeroFalcon', 'DX39924', 8475619023, 'Big Drone', 2020, 40, 24, 10, 8.5, 'Active', 'O000000013', '2831 Steelbeam Boulevard');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('NebulaNest', 'DW89922', 2057493816, 'Sky Wings', 2018, 42, 25, 10.5, 8, 'Active', 'O000000018', '3112 Redbrick Lane');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('WindWraith', 'DZ29918', 4908237156, 'Aero Masters', 2019, 38, 22, 11, 7.9, 'Active', 'O000000022', '2096 Boltway Plaza');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('AeroFalcon', 'DX39924', 9073124856, 'Big Drone', 2020, 40, 24, 10, 8.5, 'Active', 'O000000025', '2831 Steelbeam Boulevard');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('NebulaNest', 'DW89922', 3158029471, 'Sky Wings', 2018, 42, 25, 10.5, 8, 'Active', 'O000000030', '5390 Pallet Place');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('SkySaber', 'DY49921', 7584392106, 'Fly Tech', 2019, 45, 30, 12, 8.2, 'Active', 'O000000033', '1278 Ironside Drive');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('WindWraith', 'DZ29918', 1290384756, 'Aero Masters', 2019, 38, 22, 11, 7.9, 'Active', 'O000000036', '2831 Steelbeam Boulevard');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('NebulaNest', 'DW89922', 3948572103, 'Sky Wings', 2018, 42, 25, 10.5, 8, 'Inactive', 'O000000039', '5390 Pallet Place');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('AeroFalcon', 'DX39924', 5071829346, 'Big Drone', 2020, 40, 24, 10, 8.5, 'Active', 'O000000042', '8629 Silverplate Court');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('SkySaber', 'DY49921', 8250713492, 'Fly Tech', 2019, 45, 30, 12, 8.2, 'Active', 'O000000045', '1425 Lumberyard Avenue');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('WindWraith', 'DZ29918', 3412908576, 'Aero Masters', 2019, 38, 22, 11, 7.9, 'Active', 'O000000048', '3112 Redbrick Lane');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('NebulaNest', 'DW89922', 9084715230, 'Sky Wings', 2018, 42, 25, 10.5, 8, 'Active', 'O000000051', '8629 Silverplate Court');
INSERT INTO DRONE (Name, ModelNum, Drone_SerialNum, Manufacturer, Year, Weight_Capacity, Volume_Capacity, Distance_Autonomy, Max_Speed, Status, OrderNum, Warehouse_Addr) VALUES ('SkySaber', 'DY49921', 5783410925, 'Fly Tech', 2019, 45, 30, 12, 8.2, 'Needs Repairs', 'O000000054', '1425 Lumberyard Avenue');

-- Table: EQUIPMENT
CREATE TABLE IF NOT EXISTS EQUIPMENT
(Description varchar(15) not null,
Type varchar(20) not null,
Model varchar(7) not null,
Year int,
EquipmentSerial int not null,
Arrival_Date date not null,
WarrantyExp date not null,
Manufacturer varchar(15) not null,
Weight int not null,
Length int not null,
Height varchar(5) not null,
Status varchar(10) not null,
OrderNum varchar(10) not null,
WarehouseAddress varchar(30) not null,
Primary key(EquipmentSerial)
Foreign key(EquipmentSerial) References Review(EquipmentSerial)
Foreign key(EquipmentSerial) References Rental(EquipmentSerial)
Foreign key(OrderNum) References Order1(Order_Num)
Foreign key(WarehouseAddress) References Warehouse(Address)
);
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 1038472650, '2/26/2020', '2/26/2023', 'OfficePlus', 30, 6, '4', 'Active', 'O000000000', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2017, 4056981273, '1/17/2019', '1/17/2024', 'PartWorks', 25, 5, '3', 'Active', 'O000000003', '1425 Lumberyard Avenue');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Workshop', 'Tool Set', 'TS34567', 2020, 9081724356, '8/18/2022', '8/18/2024', 'ToolCraft', 15, 4, '2', 'Active', 'O000000004', '2096 Boltway Plaza');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Storage', 'Shelving', 'SS12345', 2019, 5079281346, '6/10/2022', '6/10/2025', 'StoreWise', 35, 7, '4.5', 'Active', 'O000000005', '1278 Ironside Drive');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2018, 2569084172, '3/19/2021', '3/19/2023', 'PartWorks', 25, 5, '3', 'Needs Repairs', 'O000000006', '3112 Redbrick Lane');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2019, 8750234619, '5/12/2020', '5/12/2023', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000008', '5390 Pallet Place');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Workshop', 'Tool Set', 'TS34567', 2019, 6049182753, '10/9/2021', '10/9/2023', 'ToolCraft', 15, 4, '2', 'Active', 'O000000009', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2018, 2093847165, '12/2/2020', '12/2/2025', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000011', '1278 Ironside Drive');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'MS77281', 2017, 5081942763, '9/19/2019', '9/19/2021', 'OfficePlus', 30, 6, '4', 'Active', 'O000000012', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2018, 6049185720, '5/9/2021', '5/9/2024', 'PartWorks', 25, 5, '3', 'Active', 'O000000014', '4550 Stonegate Industrial Road');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Storage', 'Shelving', 'SS12345', 2018, 2047895136, '3/13/2020', '3/13/2022', 'StoreWise', 35, 7, '4.5', 'Active', 'O000000015', '1425 Lumberyard Avenue');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'MS77281', 2017, 8051942763, '6/10/2019', '6/10/2022', 'OfficePlus', 30, 6, '4', 'Active', 'O000000017', '1278 Ironside Drive');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2018, 4019827356, '11/14/2020', '11/14/2025', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000019', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 9820741536, '7/8/2019', '7/8/2022', 'OfficePlus', 30, 6, '4', 'Active', 'O000000020', '4550 Stonegate Industrial Road');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Storage', 'Shelving', 'SS12345', 2017, 4081592374, '10/15/2019', '10/15/2024', 'StoreWise', 35, 7, '4.5', 'Needs Repairs', 'O000000021', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Workshop', 'Tool Set', 'TS34567', 2020, 9081254730, '1/20/2021', '1/20/2023', 'ToolCraft', 15, 4, '2', 'Active', 'O000000023', '5390 Pallet Place');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2017, 6091748253, '11/14/2018', '11/14/2023', 'PartWorks', 25, 5, '3', 'Active', 'O000000024', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 8019273456, '3/5/2020', '3/5/2022', 'OfficePlus', 30, 6, '4', 'Inactive', 'O000000025', '4550 Stonegate Industrial Road');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2019, 4059187264, '2/10/2021', '2/10/2023', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000027', '2096 Boltway Plaza');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Workshop', 'Tool Set', 'TS34567', 2019, 2038495176, '12/15/2020', '12/15/2025', 'ToolCraft', 15, 4, '2', 'Active', 'O000000028', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2018, 5098124735, '10/19/2022', '10/19/2025', 'PartWorks', 25, 5, '3', 'Active', 'O000000029', '2831 Steelbeam Boulevard');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2017, 4072981536, '9/12/2019', '9/12/2024', 'PartWorks', 25, 5, '3', 'Active', 'O000000031', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 8064912537, '6/10/2020', '6/10/2023', 'OfficePlus', 30, 6, '4', 'Active', 'O000000033', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'MS77281', 2017, 1028947563, '4/15/2019', '4/15/2022', 'OfficePlus', 30, 6, '4', 'Active', 'O000000035', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Storage', 'Shelving', 'SS12345', 2019, 5091842637, '8/9/2022', '8/9/2024', 'StoreWise', 35, 7, '4.5', 'Active', 'O000000037', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Storage', 'Shelving', 'SS12345', 2018, 8041923756, '5/10/2020', '5/10/2023', 'StoreWise', 35, 7, '4.5', 'Active', 'O000000039', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2017, 4028195736, '7/11/2019', '7/11/2022', 'OfficePlus', 30, 6, '4', 'Active', 'O000000041', '4550 Stonegate Industrial Road');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2018, 5072981435, '12/5/2019', '12/5/2024', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000043', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2019, 2058914736, '1/19/2021', '1/19/2024', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000045', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 8041925736, '3/20/2020', '3/20/2023', 'OfficePlus', 30, 6, '4', 'Active', 'O000000047', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2017, 4012985736, '11/15/2018', '11/15/2023', 'PartWorks', 25, 5, '3', 'Active', 'O000000049', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Supplies', 'Office Equipment', 'MS77281', 2018, 9081425736, '8/12/2020', '8/12/2023', 'OfficePlus', 30, 6, '4', 'Active', 'O000000051', '8629 Silverplate Court');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2018, 8051294736, '10/14/2019', '10/14/2024', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000053', '7019 Freightline Terrace');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Office Supplies', 'Printer', 'PR45678', 2019, 5081924736, '4/18/2020', '4/18/2023', 'PrintTech', 20, 4, '2.5', 'Active', 'O000000055', '5390 Pallet Place');
INSERT INTO EQUIPMENT (Description, Type, Model, Year, EquipmentSerial, Arrival_Date, WarrantyExp, Manufacturer, Weight, Length, Height, Status, OrderNum, WarehouseAddress) VALUES ('Parts', 'Machine Parts', 'LG32345', 2017, 1049285736, '2/14/2019', '2/14/2024', 'PartWorks', 25, 5, '3', 'Active', 'O000000057', '2831 Steelbeam Boulevard');

-- Table: MANAGER
CREATE TABLE IF NOT EXISTS MANAGER
(ManagerID varchar(5) not null,
FirstName varchar(15) not null,
LastName varchar(15) not null,
Phone varchar(12) not null,
Email varchar(50),
HoursWorked int not null,
WarehouseAddress varchar(30) not null,
Primary key(ManagerID)
Foreign key(WarehouseAddress) References Warehouse(Address)
);
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0000', 'Paul', 'Bernay', '614-251-4412', 'paul.bernay@example.com', 38, '1278 Ironside Drive');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0001', 'Gracie', 'Horn', '216-302-5801', 'gracie.horn@example.com', 42, '4550 Stonegate Industrial Road');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0002', 'Logan', 'Rindler', '513-428-9086', 'logan.rindler@example.com', 34, '3112 Redbrick Lane');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0003', 'Akshat', 'Saladi', '212-648-1198', 'akshat.saladi@example.com', 37, '8629 Silverplate Court');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0004', 'Lucia', 'Green', '305-296-7520', 'lucia.green@example.com', 41, '2096 Boltway Plaza');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0005', 'Kai', 'Mann', '615-394-8111', 'kai.mann@example.com', 33, '1425 Lumberyard Avenue');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0006', 'Carmen', 'Graves', '312-509-4309', 'carmen.graves@example.com', 43, '5390 Pallet Place');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0007', 'Brian', 'Keller', '720-684-2922', 'brian.keller@example.com', 40, '2831 Steelbeam Boulevard');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0008', 'Lisa', 'Fields', '617-382-9001', 'lisa.fields@example.com', 44, '7019 Freightline Terrace');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0009', 'Shawn', 'Towers', '505-591-1050', 'shawn.towers@example.com', 36, '1278 Ironside Drive');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0010', 'Rebecca', 'Clements', '706-728-3735', 'rebecca.clements@example.com', 32, '4550 Stonegate Industrial Road');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0011', 'Vincent', 'Pierce', '435-949-4929', 'vincent.pierce@example.com', 35, '3112 Redbrick Lane');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0012', 'Noah', 'Wilder', '711-530-4125', 'noah.wilder@example.com', 45, '8629 Silverplate Court');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0013', 'Nina', 'Baxter', '985-903-8150', 'nina.baxter@example.com', 38, '2096 Boltway Plaza');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0014', 'Oliver', 'Harmon', '464-776-5470', 'oliver.harmon@example.com', 31, '1425 Lumberyard Avenue');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0015', 'Daphne', 'Klein', '223-112-4855', 'daphne.klein@example.com', 40, '5390 Pallet Place');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0016', 'Lewis', 'Rogers', '961-397-8105', 'lewis.rogers@example.com', 33, '2831 Steelbeam Boulevard');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0017', 'Marvin', 'Holmes', '865-181-3905', 'marvin.holmes@example.com', 41, '7019 Freightline Terrace');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0018', 'Isabel', 'Hunt', '132-958-9495', 'isabel.hunt@example.com', 32, '1278 Ironside Drive');
INSERT INTO MANAGER (ManagerID, FirstName, LastName, Phone, Email, HoursWorked, WarehouseAddress) VALUES ('M0019', 'Quincy', 'Dillon', '614-251-4444', 'quincy.dillon@example.com', 44, '4550 Stonegate Industrial Road');

-- Table: ORDER1
CREATE TABLE IF NOT EXISTS ORDER1
(Order_Num varchar(10) not null,
WarehouseAddress varchar(30) not null,
Description varchar(15) not null,
ElementType varchar(10) not null,
NumItems int not null,
Value int not null,
OrderDate date not null,
ArrivalDate date not null,
Primary key(Order_Num)
Foreign key(Order_Num) References Equipment(OrderNum)
Foreign key(Order_Num) References Drone(OrderNum)
);
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000000', '8629 Silverplate Court', 'Supplies', 'Equipment', 3, 250, '2/23/2020', '2/26/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000001', '2831 Steelbeam Boulevard', 'For Deliveries', 'Drone', 1, 298, '9/10/2020', '10/6/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000002', '4550 Stonegate Industrial Road', 'For Deliveries', 'Drone', 1, 300, '4/6/2021', '4/28/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000003', '1425 Lumberyard Avenue', 'Parts', 'Equipment', 1, 35, '1/13/2019', '1/17/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000004', '2096 Boltway Plaza', 'Workshop', 'Equipment', 4, 180, '8/14/2022', '8/18/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000005', '1278 Ironside Drive', 'Storage', 'Equipment', 5, 125, '6/6/2022', '6/10/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000006', '3112 Redbrick Lane', 'Parts', 'Equipment', 3, 60, '3/15/2021', '3/19/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000007', '8629 Silverplate Court', 'For Deliveries', 'Drone', 1, 300, '1/28/2022', '2/23/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000008', '5390 Pallet Place', 'Office Supplies', 'Equipment', 4, 90, '5/9/2020', '5/12/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000009', '7019 Freightline Terrace', 'Workshop', 'Equipment', 2, 110, '10/5/2021', '10/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000010', '2096 Boltway Plaza', 'For Deliveries', 'Drone', 1, 300, '7/18/2021', '8/13/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000011', '1278 Ironside Drive', 'Office Supplies', 'Equipment', 6, 140, '11/29/2020', '12/2/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000012', '8629 Silverplate Court', 'Parts', 'Equipment', 1, 40, '9/15/2019', '9/19/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000013', '2831 Steelbeam Boulevard', 'For Deliveries', 'Drone', 1, 305, '2/2/2022', '2/27/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000014', '4550 Stonegate Industrial Road', 'Parts', 'Equipment', 3, 85, '5/5/2021', '5/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000015', '1425 Lumberyard Avenue', 'Storage', 'Equipment', 7, 220, '3/10/2020', '3/13/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000016', '2096 Boltway Plaza', 'Workshop', 'Equipment', 2, 115, '7/8/2022', '7/12/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000017', '1278 Ironside Drive', 'Parts', 'Equipment', 1, 30, '6/6/2019', '6/10/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000018', '3112 Redbrick Lane', 'For Deliveries', 'Drone', 1, 320, '1/14/2021', '2/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000019', '8629 Silverplate Court', 'Office Supplies', 'Equipment', 4, 120, '11/11/2020', '11/14/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000020', '5390 Pallet Place', 'Storage', 'Equipment', 5, 200, '4/4/2021', '4/8/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000021', '7019 Freightline Terrace', 'Parts', 'Equipment', 2, 75, '2/28/2020', '3/3/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000022', '2096 Boltway Plaza', 'For Deliveries', 'Drone', 1, 315, '7/18/2019', '8/13/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000023', '1278 Ironside Drive', 'Workshop', 'Equipment', 3, 170, '12/5/2021', '12/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000024', '8629 Silverplate Court', 'Parts', 'Equipment', 4, 100, '1/22/2019', '1/26/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000025', '2831 Steelbeam Boulevard', 'For Deliveries', 'Drone', 1, 295, '3/6/2021', '4/2/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000026', '4550 Stonegate Industrial Road', 'Workshop', 'Equipment', 5, 205, '9/4/2020', '9/8/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000027', '8629 Silverplate Court', 'Storage', 'Equipment', 4, 160, '5/20/2022', '5/24/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000028', '1425 Lumberyard Avenue', 'Parts', 'Equipment', 2, 70, '10/11/2019', '10/14/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000029', '2096 Boltway Plaza', 'Office Supplies', 'Equipment', 3, 110, '2/15/2020', '2/18/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000030', '5390 Pallet Place', 'For Deliveries', 'Drone', 1, 305, '12/1/2021', '12/26/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000031', '3112 Redbrick Lane', 'Parts', 'Equipment', 5, 180, '8/21/2019', '8/25/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000032', '7019 Freightline Terrace', 'Storage', 'Equipment', 6, 220, '6/13/2022', '6/17/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000033', '1278 Ironside Drive', 'For Deliveries', 'Drone', 1, 299, '4/20/2021', '5/16/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000034', '8629 Silverplate Court', 'Workshop', 'Equipment', 3, 135, '11/30/2020', '12/4/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000035', '4550 Stonegate Industrial Road', 'Parts', 'Equipment', 4, 150, '9/5/2021', '9/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000036', '2831 Steelbeam Boulevard', 'For Deliveries', 'Drone', 1, 302, '2/22/2020', '3/20/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000037', '1425 Lumberyard Avenue', 'Office Supplies', 'Equipment', 6, 190, '5/25/2020', '5/29/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000038', '2096 Boltway Plaza', 'Storage', 'Equipment', 2, 80, '3/18/2022', '3/22/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000039', '5390 Pallet Place', 'For Deliveries', 'Drone', 1, 310, '7/11/2019', '8/7/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000040', '3112 Redbrick Lane', 'Parts', 'Equipment', 1, 45, '6/15/2021', '6/19/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000041', '7019 Freightline Terrace', 'Workshop', 'Equipment', 5, 210, '10/21/2020', '10/25/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000042', '8629 Silverplate Court', 'For Deliveries', 'Drone', 1, 298, '3/28/2021', '4/24/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000043', '4550 Stonegate Industrial Road', 'Office Supplies', 'Equipment', 3, 115, '5/5/2022', '5/9/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000044', '2831 Steelbeam Boulevard', 'Parts', 'Equipment', 4, 155, '1/3/2020', '1/7/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000045', '1425 Lumberyard Avenue', 'For Deliveries', 'Drone', 1, 303, '2/15/2021', '3/13/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000046', '2096 Boltway Plaza', 'Workshop', 'Equipment', 6, 220, '8/14/2019', '8/18/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000047', '5390 Pallet Place', 'Storage', 'Equipment', 2, 85, '11/21/2020', '11/25/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000048', '3112 Redbrick Lane', 'For Deliveries', 'Drone', 1, 296, '9/2/2022', '9/29/2022');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000049', '7019 Freightline Terrace', 'Office Supplies', 'Equipment', 5, 200, '10/5/2021', '10/9/2021');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000050', '1278 Ironside Drive', 'Parts', 'Equipment', 1, 40, '7/12/2020', '7/16/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000051', '8629 Silverplate Court', 'For Deliveries', 'Drone', 1, 297, '3/5/2020', '4/1/2020');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000052', '4550 Stonegate Industrial Road', 'Workshop', 'Equipment', 4, 170, '5/7/2019', '5/11/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000053', '2831 Steelbeam Boulevard', 'Storage', 'Equipment', 3, 120, '12/3/2019', '12/7/2019');
INSERT INTO ORDER1 (Order_Num, WarehouseAddress, Description, ElementType, NumItems, Value, OrderDate, ArrivalDate) VALUES ('O000000054', '1425 Lumberyard Avenue', 'For Deliveries', 'Drone', 1, 304, '8/18/2022', '9/14/2022');

-- Table: PAYMENT
CREATE TABLE IF NOT EXISTS PAYMENT
(PaymentID varchar(5) not null,
Amount int not null,
MemberID varchar(5) not null,
PaymentMethod varchar(10) not null,
Status varchar(10) not null,
RentalID varchar(6) not null,
Primary key(PaymentID)
Foreign key(MemberID) References Community_Member(UserID)
Foreign key(RentalID) References Rental(RentalID)
);
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0000', 45, 'M0002', 'Credit Card', 'Paid', 'RT0000');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0001', 50, 'M0002', 'Credit Card', 'Paid', 'RT0001');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0002', 55, 'M0003', 'Cash', 'Unpaid', 'RT0002');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0003', 52, 'M0004', 'Credit Card', 'Processing', 'RT0003');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0004', 48, 'M0005', 'Credit Card', 'Paid', 'RT0004');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0005', 56, 'M0005', 'Credit Card', 'Paid', 'RT0005');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0006', 58, 'M0006', 'Credit Card', 'Paid', 'RT0006');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0007', 60, 'M0007', 'Gift Card', 'Paid', 'RT0007');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0008', 62, 'M0007', 'Credit Card', 'Unpaid', 'RT0008');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0009', 63, 'M0008', 'Credit Card', 'Paid', 'RT0009');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0010', 65, 'M0009', 'Credit Card', 'Paid', 'RT0010');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0011', 66, 'M0010', 'Credit Card', 'Paid', 'RT0011');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0012', 67, 'M0010', 'Credit Card', 'Unpaid', 'RT0012');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0013', 68, 'M0011', 'Cash', 'Paid', 'RT0013');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0014', 70, 'M0012', 'Credit Card', 'Paid', 'RT0014');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0015', 72, 'M0013', 'Credit Card', 'Paid', 'RT0015');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0016', 74, 'M0001', 'Credit Card', 'Paid', 'RT0016');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0017', 75, 'M0001', 'Credit Card', 'Unpaid', 'RT0017');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0018', 76, 'M0001', 'Cash', 'Paid', 'RT0018');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0019', 78, 'M0002', 'Credit Card', 'Processing', 'RT0019');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0020', 79, 'M0002', 'Credit Card', 'Paid', 'RT0020');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0021', 80, 'M0003', 'Credit Card', 'Paid', 'RT0021');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0022', 35, 'M0004', 'Credit Card', 'Paid', 'RT0022');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0023', 37, 'M0005', 'Credit Card', 'Unpaid', 'RT0023');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0024', 39, 'M0006', 'Credit Card', 'Paid', 'RT0024');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0025', 40, 'M0007', 'Cash', 'Paid', 'RT0025');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0026', 42, 'M0007', 'Credit Card', 'Paid', 'RT0026');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0027', 44, 'M0008', 'Credit Card', 'Paid', 'RT0027');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0028', 46, 'M0009', 'Credit Card', 'Paid', 'RT0028');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0029', 48, 'M0010', 'Credit Card', 'Unpaid', 'RT0029');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0030', 50, 'M0011', 'Credit Card', 'Paid', 'RT0030');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0031', 52, 'M0012', 'Credit Card', 'Paid', 'RT0031');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0032', 54, 'M0013', 'Credit Card', 'Paid', 'RT0032');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0033', 56, 'M0001', 'Cash', 'Unpaid', 'RT0033');
INSERT INTO PAYMENT (PaymentID, Amount, MemberID, PaymentMethod, Status, RentalID) VALUES ('P0034', 58, 'M0001', 'Credit Card', 'Paid', 'RT0034');

-- Table: RENTAL
CREATE TABLE IF NOT EXISTS RENTAL
(RentalID varchar(6) not null,
MemberID varchar(5) not null,
DroneSerial int not null,
EquipmentSerial int not null,
RentalDate date not null,
DueDate date not null,
ReturnDate date not null,
RentalFee not null,
Primary key(RentalID)
Foreign key(RentalID) References Payment(RentalID)
Foreign key(MemberID) References Community_Member(UserID)
Foreign key(DroneSerial) References Drone(Drone_SerialNum)
Foreign key(EquipmentSerial) References Equipment(EquipmentSerial)
);
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0000', 'M0002', 2845712398, 9081724356, '2023-02-15', '2023-04-15', '2023-04-10', '45');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0001', 'M0002', 3948027591, 2569084172, '2023-03-01', '2023-05-01', '2023-04-28', '50');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0002', 'M0003', 1092837465, 6049182753, '2023-03-15', '2023-06-15', '2023-06-10', '55');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0003', 'M0004', 5840291376, 5081942763, '2023-04-01', '2023-06-01', '2023-05-28', '52');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0004', 'M0005', 2057493816, 2047895136, '2023-04-15', '2023-06-15', '2023-06-12', '48');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0005', 'M0005', 4908237156, 4019827356, '2023-05-01', '2023-07-01', '2023-06-29', '56');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0006', 'M0006', 9073124856, 4081592374, '2023-05-15', '2023-08-15', '2023-08-10', '58');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0007', 'M0007', 3158029471, 6091748253, '2023-06-01', '2023-08-01', '2023-07-29', '60');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0008', 'M0007', 7584392106, 4059187264, '2023-06-15', '2023-09-15', '2023-09-10', '62');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0009', 'M0008', 1290384756, 5098124735, '2023-07-01', '2023-09-01', '2023-08-30', '63');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0010', 'M0009', 3948572103, 4056981273, '2023-07-15', '2023-09-15', '2023-09-12', '65');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0011', 'M0010', 5071829346, 5079281346, '2023-08-01', '2023-11-01', '2023-10-28', '66');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0012', 'M0010', 8250713492, 8750234619, '2023-08-15', '2023-11-15', '2023-11-10', '67');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0013', 'M0011', 3412908576, 2093847165, '2023-09-01', '2023-12-01', '2023-11-29', '68');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0014', 'M0012', 9084715230, 6049185720, '2023-09-15', '2023-12-15', '2023-12-10', '70');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0015', 'M0013', 5783410925, 8051942763, '2023-10-01', '2023-12-01', '2023-11-30', '72');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0016', 'M0001', 2845712398, 9820741536, '2023-10-15', '2024-01-15', '2024-01-10', '74');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0017', 'M0001', 3948027591, 9081254730, '2023-11-01', '2024-01-01', '2023-12-30', '75');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0018', 'M0001', 1092837465, 8019273456, '2023-11-15', '2024-02-15', '2024-02-10', '76');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0019', 'M0002', 5840291376, 2038495176, '2023-12-01', '2024-03-01', '2024-02-28', '78');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0020', 'M0002', 2057493816, 4072981536, '2023-12-15', '2024-03-15', '2024-03-12', '79');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0021', 'M0003', 4908237156, 9081724356, '2024-01-01', '2024-03-01', '2024-02-28', '80');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0022', 'M0004', 9073124856, 2569084172, '2024-01-15', '2024-03-15', '2024-03-14', '35');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0023', 'M0005', 3158029471, 6049182753, '2024-02-01', '2024-05-01', '2024-04-28', '37');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0024', 'M0006', 7584392106, 5081942763, '2024-02-15', '2024-04-15', '2024-04-14', '39');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0025', 'M0007', 1290384756, 2047895136, '2024-03-01', '2024-06-01', '2024-05-30', '40');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0026', 'M0007', 3948572103, 4019827356, '2024-03-15', '2024-06-15', '2024-06-14', '42');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0027', 'M0008', 5071829346, 4081592374, '2024-04-01', '2024-06-01', '2024-05-31', '44');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0028', 'M0009', 8250713492, 6091748253, '2024-04-15', '2024-07-15', '2024-07-10', '46');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0029', 'M0010', 3412908576, 4059187264, '2024-05-01', '2024-07-01', '2024-06-30', '48');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0030', 'M0011', 9084715230, 5098124735, '2024-05-15', '2024-08-15', '2024-08-12', '50');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0031', 'M0012', 5783410925, 1038472650, '2024-06-01', '2024-08-01', '2024-07-31', '52');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0032', 'M0013', 2845712398, 5079281346, '2024-06-15', '2024-09-15', '2024-09-10', '54');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0033', 'M0001', 3948027591, 8750234619, '2024-07-01', '2024-10-01', '2024-09-28', '56');
INSERT INTO RENTAL (RentalID, MemberID, DroneSerial, EquipmentSerial, RentalDate, DueDate, ReturnDate, RentalFee) VALUES ('RT0034', 'M0001', 1092837465, 2093847165, '2024-07-15', '2024-09-15', '2024-09-12', '58');

-- Table: REVIEW
CREATE TABLE IF NOT EXISTS REVIEW
(ReviewID varchar(5) not null,
UserId varchar(5) not null,
EquipmentSerial int not null,
Rating int not null,
Comments varchar(50),
Primary key(ReviewID)
Foreign key(UserId) References Community_Member(UserID)
Foreign key(EquipmentSerial) References Equipment(EquipmentSerial)
);
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0000', 'M0002', 2845712398, 9081724356, '2023-02-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0001', 'M0002', 3948027591, 2569084172, '2023-03-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0002', 'M0003', 1092837465, 6049182753, '2023-03-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0003', 'M0004', 5840291376, 5081942763, '2023-04-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0004', 'M0005', 2057493816, 2047895136, '2023-04-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0005', 'M0005', 4908237156, 4019827356, '2023-05-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0006', 'M0006', 9073124856, 4081592374, '2023-05-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0007', 'M0007', 3158029471, 6091748253, '2023-06-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0008', 'M0007', 7584392106, 4059187264, '2023-06-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0009', 'M0008', 1290384756, 5098124735, '2023-07-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0010', 'M0009', 3948572103, 4056981273, '2023-07-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0011', 'M0010', 5071829346, 5079281346, '2023-08-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0012', 'M0010', 8250713492, 8750234619, '2023-08-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0013', 'M0011', 3412908576, 2093847165, '2023-09-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0014', 'M0012', 9084715230, 6049185720, '2023-09-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0015', 'M0013', 5783410925, 8051942763, '2023-10-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0016', 'M0001', 2845712398, 9820741536, '2023-10-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0017', 'M0001', 3948027591, 9081254730, '2023-11-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0018', 'M0001', 1092837465, 8019273456, '2023-11-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0019', 'M0002', 5840291376, 2038495176, '2023-12-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0020', 'M0002', 2057493816, 4072981536, '2023-12-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0021', 'M0003', 4908237156, 9081724356, '2024-01-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0022', 'M0004', 9073124856, 2569084172, '2024-01-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0023', 'M0005', 3158029471, 6049182753, '2024-02-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0024', 'M0006', 7584392106, 5081942763, '2024-02-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0025', 'M0007', 1290384756, 2047895136, '2024-03-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0026', 'M0007', 3948572103, 4019827356, '2024-03-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0027', 'M0008', 5071829346, 4081592374, '2024-04-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0028', 'M0009', 8250713492, 6091748253, '2024-04-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0029', 'M0010', 3412908576, 4059187264, '2024-05-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0030', 'M0011', 9084715230, 5098124735, '2024-05-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0031', 'M0012', 5783410925, 1038472650, '2024-06-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0032', 'M0013', 2845712398, 5079281346, '2024-06-15');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0033', 'M0001', 3948027591, 8750234619, '2024-07-01');
INSERT INTO REVIEW (ReviewID, UserId, EquipmentSerial, Rating, Comments) VALUES ('RT0034', 'M0001', 1092837465, 2093847165, '2024-07-15');

-- Table: WAREHOUSE
CREATE TABLE IF NOT EXISTS WAREHOUSE
(Address varchar(30) not null,
City varchar(20) not null,
Phone_Num varchar(12) not null,
Drone_Cap int not null,
Storage_Cap int not null,
Primary key(Address)
Foreign Key(Address) References Equipment(WarehouseAddress)
Foreign Key(Address) References Drone(Warehouse_Addr)
Foreign Key(Address) References Order1(WarehouseAddress)
Foreign Key(Address) References Manager(WarehouseAddress)
);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('1278 Ironside Drive', 'Columbus', '614-251-4450', 9, 224);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('4550 Stonegate Industrial Road', 'Cleveland', '216-302-5841', 6, 318);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('3112 Redbrick Lane', 'Cincinnati', '513-428-9057', 7, 297);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('8629 Silverplate Court', 'New York City', '212-648-1124', 10, 500);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('2096 Boltway Plaza', 'Miami', '305-296-7530', 5, 180);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('1425 Lumberyard Avenue', 'Nashville', '615-394-8120', 8, 350);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('5390 Pallet Place', 'Chicago', '312-509-4312', 7, 275);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('2831 Steelbeam Boulevard', 'Denver', '720-684-2931', 4, 160);
INSERT INTO WAREHOUSE (Address, City, Phone_Num, Drone_Cap, Storage_Cap) VALUES ('7019 Freightline Terrace', 'Boston', '617-382-9015', 6, 240);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
