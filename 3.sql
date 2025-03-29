SELECT Products.ProductName, SUM(Orders.Total) AS TotalRevenue
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName;