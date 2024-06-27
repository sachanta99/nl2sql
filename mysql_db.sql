--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `customer`
--
CREATE TABLE customer (
  CustomerID int(11) NOT NULL AUTO_INCREMENT,
  FirstName varchar(100) DEFAULT NULL,
  LastName varchar(100) DEFAULT NULL,
  Email varchar(255) DEFAULT NULL,
  Phone varchar(20) DEFAULT NULL,
  BillingAddress text DEFAULT NULL,
  ShippingAddress text DEFAULT NULL,
  CustomerSince date DEFAULT NULL,
  IsActive tinyint(1) DEFAULT NULL,
  PRIMARY KEY (CustomerID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 101,
AVG_ROW_LENGTH = 491,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `employee`
--
CREATE TABLE employee (
  EmployeeID int(11) NOT NULL AUTO_INCREMENT,
  FirstName varchar(100) DEFAULT NULL,
  LastName varchar(100) DEFAULT NULL,
  Email varchar(255) DEFAULT NULL,
  Phone varchar(20) DEFAULT NULL,
  HireDate date DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  Salary decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 1001,
AVG_ROW_LENGTH = 147,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `inventorylog`
--
CREATE TABLE inventorylog (
  LogID int(11) NOT NULL AUTO_INCREMENT,
  ProductID int(11) DEFAULT NULL,
  ChangeDate date DEFAULT NULL,
  QuantityChange int(11) DEFAULT NULL,
  Notes text DEFAULT NULL,
  PRIMARY KEY (LogID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 1001,
AVG_ROW_LENGTH = 98,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Create foreign key
--
ALTER TABLE inventorylog
ADD CONSTRAINT inventorylog_ibfk_1 FOREIGN KEY (ProductID)
REFERENCES product (ProductID);

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `lineitem`
--
CREATE TABLE lineitem (
  LineItemID int(11) NOT NULL AUTO_INCREMENT,
  SalesOrderID int(11) DEFAULT NULL,
  ProductID int(11) DEFAULT NULL,
  Quantity int(11) DEFAULT NULL,
  UnitPrice decimal(10, 2) DEFAULT NULL,
  Discount decimal(10, 2) DEFAULT NULL,
  TotalPrice decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (LineItemID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5001,
AVG_ROW_LENGTH = 55,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Create foreign key
--
ALTER TABLE lineitem
ADD CONSTRAINT lineitem_ibfk_1 FOREIGN KEY (SalesOrderID)
REFERENCES salesorder (SalesOrderID);

--
-- Create foreign key
--
ALTER TABLE lineitem
ADD CONSTRAINT lineitem_ibfk_2 FOREIGN KEY (ProductID)
REFERENCES product (ProductID);

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `product`
--
CREATE TABLE product (
  ProductID int(11) NOT NULL AUTO_INCREMENT,
  ProductName varchar(255) DEFAULT NULL,
  Description text DEFAULT NULL,
  UnitPrice decimal(10, 2) DEFAULT NULL,
  StockQuantity int(11) DEFAULT NULL,
  ReorderLevel int(11) DEFAULT NULL,
  Discontinued tinyint(1) DEFAULT NULL,
  PRIMARY KEY (ProductID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 1001,
AVG_ROW_LENGTH = 163,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `salesorder`
--
CREATE TABLE salesorder (
  SalesOrderID int(11) NOT NULL AUTO_INCREMENT,
  CustomerID int(11) DEFAULT NULL,
  OrderDate date DEFAULT NULL,
  RequiredDate date DEFAULT NULL,
  ShippedDate date DEFAULT NULL,
  Status varchar(50) DEFAULT NULL,
  Comments text DEFAULT NULL,
  PaymentMethod varchar(50) DEFAULT NULL,
  IsPaid tinyint(1) DEFAULT NULL,
  PRIMARY KEY (SalesOrderID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 1001,
AVG_ROW_LENGTH = 81,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

--
-- Create foreign key
--
ALTER TABLE salesorder
ADD CONSTRAINT salesorder_ibfk_1 FOREIGN KEY (CustomerID)
REFERENCES customer (CustomerID);


--
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE classicmodels;

--
-- Create table `supplier`
--
CREATE TABLE supplier (
  SupplierID int(11) NOT NULL AUTO_INCREMENT,
  CompanyName varchar(255) DEFAULT NULL,
  ContactName varchar(100) DEFAULT NULL,
  ContactTitle varchar(50) DEFAULT NULL,
  Address text DEFAULT NULL,
  Phone varchar(20) DEFAULT NULL,
  Email varchar(255) DEFAULT NULL,
  PRIMARY KEY (SupplierID)
)
ENGINE = INNODB,
AUTO_INCREMENT = 1001,
AVG_ROW_LENGTH = 212,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;

