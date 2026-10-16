--find orders marked 'paid' that have no matching payment

SELECT o.id AS order_id, c.company_name, o.amount, o.status, o.created_at
FROM orders o
JOIN customers c ON c.id = o.customer_id
LEFT JOIN payments p ON p.order_id = o.id
WHERE o.status = 'paid'
  AND p.id IS NULL;
