-- Produtos que não tenham sido comprados
SELECT p.product_id, p.product_name
FROM production.products p
LEFT JOIN sales.order_items oi
    ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;