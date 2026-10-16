-- Ticket 2B: "Show all errors for Acme Logistics users, newest first. Rename the time column to error_time."
Select users.email, error_logs.error_code, error_logs.logged_at AS error_time
From error_logs
JOIN users on users.id= error_logs.user_id
JOIN customers on customers.id = users.customer_id
WHERE customers.company_name = 'Acme Logistics users' asc; 
