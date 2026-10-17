select users.email, customers.company_name, error_logs.error_code
from users 
JOIN customers on customers.id= users.customer_id
Left join error_logs on error_logs.user_id=users.id
order by customers.company_name ASC;
