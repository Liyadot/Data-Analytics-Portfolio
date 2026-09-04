 SELECT 
    ROUND(SUM(
        od.Quantity * od.UnitPrice * (1 - od.Discount)
    ), 2) AS TotalRevenue
FROM dbo.OrderDetails od
JOIN dbo.Orders o
    ON od.OrderID = o.OrderID
WHERE o.OrderStatus IN ('Completed', 'Shipped');

SELECT
    p.ProductName,
    SUM(od.Quantity) AS UnitsSold,
    ROUND(SUM(
        od.Quantity * od.UnitPrice * (1 - od.Discount)
    ), 2) AS TotalRevenue
FROM dbo.OrderDetails od
JOIN dbo.Products p
    ON od.ProductID = p.ProductID
JOIN dbo.Orders o
    ON od.OrderID = o.OrderID
WHERE o.OrderStatus IN ('Completed', 'Shipped')
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;


SELECT
c.CustomerID,
c.CustomerName,
ROUND(SUM(
od.Quantity * od.UnitPrice * (1 - od.Discount)
), 2) AS TotalSpent
FROM dbo.Customers c
JOIN dbo.Orders o
ON c.CustomerID = o.CustomerID
JOIN dbo.OrderDetails od
ON o.OrderID = od.OrderID
WHERE o.OrderStatus IN ('Completed', 'Shipped')
GROUP BY
c.CustomerID,
c.CustomerName
ORDER BY TotalSpent DESC;


SELECT
    YEAR(o.OrderDate) AS SalesYear,
    MONTH(o.OrderDate) AS MonthNumber,
    DATENAME(MONTH, o.OrderDate) AS SalesMonth,
    ROUND(SUM(
        od.Quantity * od.UnitPrice * (1 - od.Discount)
    ), 2) AS MonthlyRevenue
FROM dbo.Orders o
JOIN dbo.OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus IN ('Completed', 'Shipped')
GROUP BY
    YEAR(o.OrderDate),
    MONTH(o.OrderDate),
    DATENAME(MONTH, o.OrderDate)
ORDER BY SalesYear, MonthNumber;