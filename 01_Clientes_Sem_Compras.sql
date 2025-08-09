-- Clientes que não tenham realizado uma compra
SELECT c.customer_id, c.first_name, c.last_name
FROM sales.customers c
LEFT JOIN sales.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;