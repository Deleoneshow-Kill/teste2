-- Produtos sem estoque
SELECT p.product_id, p.product_name
FROM production.products p
JOIN production.stocks s
    ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) = 0;