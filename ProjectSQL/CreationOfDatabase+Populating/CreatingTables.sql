
USE FatimasDB
GO


Create TABLE Employees(
EmployeeID INT NOT NULL PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
JobTitle VARCHAR(50) NOT NULL,
BirthDate DATE,
HireDate DATE,
City VARCHAR (50),
Address VARCHAR(50),
)
CREATE TABLE Discounts(
DiscountID INT NOT NULL PRIMARY KEY,
DiscountType VARCHAR(60),
DiscountFactor INT,
)
CREATE TABLE Customer(
CustomerID INT NOT NULL PRIMARY KEY,
CustomerTitle VARCHAR(60) DEFAULT 'N/A',
FirstName VARCHAR(60),
Lastname VARCHAR(60),
Phone Int,
Address VARCHAR(60),
City VARCHAR(60),
)
CREATE TABLE Product(
ProductID INT NOT NULL PRIMARY KEY,
SupplierID INT FOREIGN KEY REFERENCES Suppliers(SupplierID),
ProductName VARCHAR(60),
UnitCost int,
UnitPrice int,
Qauntity Int,
)


CREATE TABLE Suppliers(
SupplierID INT NOT NULL PRIMARY KEY,
ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
ContactTitle VARCHAR(5),
ContactName VARCHAR(50),
Phone int,
City VARCHAR(50),
Address VARCHAR(50)
)

CREATE TABLE Orders(
OrderID INT NOT NULL PRIMARY KEY,
CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
DiscountID INT FOREIGN KEY REFERENCES Discounts(DiscountID),
EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
OrderDate DATE,
ShipDate DATE,
City VARCHAR(25),
Address VARCHAR(50),
Phone INT,
)