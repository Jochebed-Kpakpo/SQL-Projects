SELECT customers.customername, SUM(orders.quantity) AS total_quantity
FROM customers
JOIN orders ON customers.customerid = orders.customerid
GROUP BY customers.customername
ORDER BY total_quantity DESC;
