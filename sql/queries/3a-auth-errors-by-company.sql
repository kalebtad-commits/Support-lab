select users.email, customers.company_name, error_logs.error_codes, error_logs.logged_at
from error_logs
join users on error_logs.user_id= users.id
join customers on customers.id= users.customer_id
where (error_logs.error_code = '403' or error_logs.error_code = '401')
order by error_logs.logged_at asc;
