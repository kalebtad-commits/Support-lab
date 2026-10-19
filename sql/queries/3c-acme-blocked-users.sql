select users.email, error_logs.message, error_logs.request_id
from users
join customers on customers.id = users.customer_id
join error_logs on error_logs.user_id = users.id
where (error_logs.message like '%denied%' or error_logs.message like '%locked%') AND customers.company_name = 'Acme Logistics';
