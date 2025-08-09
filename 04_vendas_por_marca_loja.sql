-- Quantidade de vendas por Marca e Loja
SELECT b.brand_name,
       s.store_name,
       COUNT(DISTINCT o.order_id) AS total_vendas
FROM sales.orders o
JOIN sales.order_items oi
    ON o.order_id = oi.order_id
JOIN production.products p
    ON oi.product_id = p.product_id
JOIN production.brands b
    ON p.brand_id = b.brand_id
JOIN sales.stores s
    ON o.store_id = s.store_id
GROUP BY b.brand_name, s.store_name
ORDER BY b.brand_name, s.store_name;