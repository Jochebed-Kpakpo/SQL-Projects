SELECT customers.customername, COUNT(orders.orderid) AS qualifying_orders
FROM customers
JOIN orders ON customers.customerid = orders.customerid
WHERE orders.orderdate BETWEEN '2023-12-01' AND '2023-12-31'
AND orders.total > 100
GROUP BY customers.customername
HAVING COUNT(orders.orderid) >= 2;

