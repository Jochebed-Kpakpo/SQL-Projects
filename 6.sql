SELECT LOWER(products.productname) AS product_name, 
       SUM(orders.quantity) AS total_quantity
FROM orders
JOIN products ON orders.productid = products.productid
GROUP BY product_name
ORDER BY product_name;
