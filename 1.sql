select orders.orderid, products.productid, orders.quantity, orders.total from products
join orders on orders.productid = products.productid where products.price > 25;
