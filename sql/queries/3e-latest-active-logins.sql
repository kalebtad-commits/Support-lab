select users.email, customers.company_name, users.last_login AS last_seen
from users
join customers on customers.id= user.customer_id
where users.status ='active' 
order by users.last_login asc; 
