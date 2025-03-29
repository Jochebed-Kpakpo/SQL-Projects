SELECT orders.orderid, 
       LEFT(customers.customername, 3) AS ShortCustomerName, 
       products.productname, 
       orders.total
FROM orders
JOIN customers ON orders.customerid = customers.customerid
JOIN products ON orders.productid = products.productid
ORDER BY 
    CASE 
        WHEN products.productname = 'Widget A' THEN 1
        WHEN products.productname = 'Widget B' THEN 2
        WHEN products.productname = 'Widget C' THEN 3
        WHEN products.productname = 'Widget D' THEN 4
    END,
    orders.orderid;
