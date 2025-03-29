SELECT products.productname, SUM(orders.total) AS total_sales,
       CASE 
           WHEN SUM(orders.total) > 300 THEN 'High Revenue'
           ELSE 'Low Revenue'
       END AS revenue_category
FROM products
JOIN orders ON products.productid = orders.productid
GROUP BY products.productname;

