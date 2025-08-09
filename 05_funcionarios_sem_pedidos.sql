-- Funcionários que não estejam relacionados a um pedido
SELECT st.staff_id, st.first_name, st.last_name
FROM sales.staffs st
LEFT JOIN sales.orders o
    ON st.staff_id = o.staff_id
WHERE o.order_id IS NULL;