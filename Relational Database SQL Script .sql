CREATE DATABASE SalesDB;
USE SalesDB;
-- Table 1: Customers
CREATE TABLE Customers (
    CustomerIndex INT PRIMARY KEY,
    CustomerNames VARCHAR(255) NOT NULL
);
-- Table 2: Regions
CREATE TABLE Regions (
    RegionIndex INT PRIMARY KEY,
    City VARCHAR(100),
    Country VARCHAR(100),
    FullName VARCHAR(200)
);
-- Table 3: Products
CREATE TABLE Products (
    ProductIndex INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL
);
-- Table 4: Budgets2017
CREATE TABLE Budgets2017 (
    ProductName VARCHAR(255) PRIMARY KEY,
    Budget2017 DECIMAL(18,3)
);
-- Table 5: SalesOrders (Fact Table)
CREATE TABLE SalesOrders (
    OrderNumber VARCHAR(50) PRIMARY KEY,
    OrderDate DATE,
    CustomerNameIndex INT,
    Channel VARCHAR(100),
    CurrencyCode VARCHAR(10),
    WarehouseCode VARCHAR(50),
    DeliveryRegionIndex INT,
    ProductDescriptionIndex INT,
    OrderQuantity INT,
    UnitPrice DECIMAL(18,2),
    LineTotal DECIMAL(18,2),
    TotalUnitCost DECIMAL(18,3),
    FOREIGN KEY (CustomerNameIndex) REFERENCES Customers(CustomerIndex),
    FOREIGN KEY (DeliveryRegionIndex) REFERENCES Regions(RegionIndex),
    FOREIGN KEY (ProductDescriptionIndex) REFERENCES Products(ProductIndex)
    );
    USE salesdb;

SELECT COUNT(*) AS Total_Customers FROM customers;
SELECT COUNT(*) AS Total_Regions FROM regions;
SELECT COUNT(*) AS Total_Products FROM products;
SELECT COUNT(*) AS Total_Budgets FROM budgets2017;
SELECT COUNT(*) AS Total_SalesOrders FROM salesorders;

