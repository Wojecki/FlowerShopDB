CREATE DATABASE FlowerShop;

GO

USE FlowerShop;

CREATE TABLE Suppliers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Representative VARCHAR(100)
);

CREATE TABLE Flowers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(ID)
);

CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    LastName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    NIP VARCHAR(15)
);

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    LastName VARCHAR(100),
    PESEL VARCHAR(11),
    DateOfBirth DATE,
    DateOfEmployment DATE,
    Address VARCHAR(255),
    City VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    DeliveryAddress VARCHAR(255),
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(ID)
);

CREATE TABLE Deliveries (
    ID INT PRIMARY KEY,
    EmployeeID INT,
    SupplierID INT,
    OrderDate DATE,
    DeliveryDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(ID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(ID)
);

CREATE TABLE FlowersOrders (
    FlowerID INT,
    OrderID INT,
    Quantity INT,
    PRIMARY KEY (FlowerID, OrderID),
    FOREIGN KEY (FlowerID) REFERENCES Flowers(ID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID)
);

CREATE TABLE FlowersDeliveries (
    FlowerID INT,
    DeliveryID INT,
    Quantity INT,
    PRIMARY KEY (FlowerID, DeliveryID),
    FOREIGN KEY (FlowerID) REFERENCES Flowers(ID),
    FOREIGN KEY (DeliveryID) REFERENCES Deliveries(ID)
);
