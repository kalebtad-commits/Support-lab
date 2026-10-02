-- Ticket #2: "Northwind says they paid, but finance shows no payment"
-- Goal: find orders marked 'paid' that have no matching payment

SELECT o.id AS order_id, c.company_name, o.amount, o.status, o.created_at
FROM orders o
JOIN customers c ON c.id = o.customer_id
LEFT JOIN payments p ON p.order_id = o.id
WHERE o.status = 'paid'
  AND p.id IS NULL;

-- Why LEFT JOIN: it keeps every order, even ones with no payment row.
-- "p.id IS NULL" then shows only the orders where the payment is missing.

-- Finding: order 3 (Northwind Foods, 999.00) is marked paid with no payment.
-- Next step: do NOT change the data. Escalate to billing/R&D with the
-- order ID, amount and date, since this looks like a sync bug.
