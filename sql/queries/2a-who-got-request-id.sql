select users.email, customers.company_name, error_logs.message
FROM users
JOIN error_logs on error_logs.user_id= users.id
JOIN customers on customers.id= users.customer_id
WHERE error_logs.request_id = '7f3a-91c2';
