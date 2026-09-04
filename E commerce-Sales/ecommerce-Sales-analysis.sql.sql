CREATE DATABASE EcommerceSalesDB;
GO

USE EcommerceSalesDB;
GO
CREATE TABLE Sales (
OrderID INT,
OrderDate DATE,
CustomerName VARCHAR(100),
Product VARCHAR(100),
Category VARCHAR(50),
Quantity INT,
UnitPrice DECIMAL(10,2),
SalesAmount DECIMAL(12,2),
Region VARCHAR(50)
);
GO

USE EcommerceSalesDB;
Go
SELECT*
FROM Sales;

INSERT INTO Sales
(OrderID, OrderDate, CustomerName, Product, Category, Quantity, UnitPrice, SalesAmount, Region)
VALUES
(1001, '2026-01-05', 'Ava Johnson', 'Laptop', 'Electronics', 1, 950.00, 950.00, 'East'),
(1002, '2026-01-08', 'Noah Smith', 'Wireless Mouse', 'Electronics', 2, 25.00, 50.00, 'South'),
(1003, '2026-01-12', 'Emma Davis', 'Office Chair', 'Furniture', 1, 220.00, 220.00, 'West'),
(1004, '2026-01-15', 'Liam Brown', 'Desk', 'Furniture', 1, 400.00, 400.00, 'East'),
(1005, '2026-01-18', 'Olivia Wilson', 'Headphones', 'Electronics', 2, 80.00, 160.00, 'North'),
(1006, '2026-02-02', 'Elijah Moore', 'Monitor', 'Electronics', 1, 300.00, 300.00, 'West'),
(1007, '2026-02-06', 'Sophia Taylor', 'Keyboard', 'Electronics', 2, 45.00, 90.00, 'South'),
(1008, '2026-02-10', 'James Anderson', 'Bookshelf', 'Furniture', 1, 180.00, 180.00, 'North'),
(1009, '2026-02-14', 'Mia Thomas', 'Tablet', 'Electronics', 1, 500.00, 500.00, 'East'),
(1010, '2026-02-20', 'Benjamin Jackson', 'Desk Lamp', 'Office Supplies', 3, 35.00, 105.00, 'South'),
(1011, '2026-03-01', 'Charlotte White', 'Printer', 'Electronics', 1, 210.00, 210.00, 'North'),
(1012, '2026-03-04', 'Lucas Harris', 'Notebook Pack', 'Office Supplies', 5, 12.00, 60.00, 'West'),
(1013, '2026-03-08', 'Amelia Martin', 'Office Chair', 'Furniture', 2, 220.00, 440.00, 'East'),
(1014, '2026-03-12', 'Henry Thompson', 'Monitor', 'Electronics', 2, 300.00, 600.00, 'South'),
(1015, '2026-03-18', 'Harper Garcia', 'Laptop', 'Electronics', 1, 950.00, 950.00, 'West');

SELECT
COUNT(DISTINCT OrderID) AS TotalOrders,
SUM(Quantity) AS TotalUnitsSold,
SUM(SalesAmount) AS TotalSales,
AVG(SalesAmount) AS AverageOrderValue
FROM Sales;

SELECT
Region,
SUM(SalesAmount) AS TotalSalesRevenue
FROM Sales
GROUP BY Region
ORDER BY TotalSalesRevenue DESC;

SELECT
Category,
SUM(SalesAmount) AS TotalSalesRevenue
FROM Sales
GROUP BY Category
ORDER BY TotalSalesRevenue DESC;

SELECT TOP 5
Product,
SUM(SalesAmount) AS TotalSalesRevenue
FROM Sales
GROUP BY Product
ORDER BY TotalSalesRevenue DESC;

SELECT
YEAR(OrderDate) AS SalesYear,
MONTH(OrderDate) AS SalesMonth,
SUM(SalesAmount) AS TotalSalesRevenue
FROM Sales
GROUP BY
YEAR(OrderDate),
MONTH(OrderDate)
ORDER BY
SalesYear,
SalesMonth;

SELECT
Region,
AVG(SalesAmount) AS AverageOrderValue
FROM Sales
GROUP BY Region
ORDER BY AverageOrderValue DESC;

SELECT
Region,
AVG(SalesAmount) AS AverageOrderValue
FROM Sales
GROUP BY Region
ORDER BY AverageOrderValue DESC;

SELECT
OrderID,
CustomerName,
Product,
SalesAmount,
Region
FROM Sales
WHERE SalesAmount > 300
ORDER BY SalesAmount DESC;