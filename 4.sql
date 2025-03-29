SELECT OrderDate, COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY OrderDate;