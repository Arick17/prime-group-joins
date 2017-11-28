--1.Get all customers and their addresses.
SELECT * FROM addresses
JOIN customers
ON customer_id = customers.id;

--2.Get all orders and their line items.
SELECT * FROM line_items
JOIN orders
ON order_id = orders.id;

--3.Which warehouses have cheetos?
SELECT * FROM warehouse_product
JOIN products ON products.id = product_id
JOIN warehouse ON warehouse_id = warehouse.id
WHERE products.id = 5;

--4.Which warehouses have diet pepsi?
SELECT * FROM warehouse_product
JOIN products ON products.id = product_id
JOIN warehouse ON warehouse_id = warehouse.id
WHERE products.id = 6; 

--5.Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.*, COUNT(orders.id) FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;

--6.How many customers do we have?
SELECT COUNT(id)
FROM customers;

--7.How many products do we carry?
SELECT COUNT(id)
products;
--8.What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) FROM products
JOIN warehouse_product ON products.id = product_id
WHERE products.id = 6;