select users.email, customers.company_name, users.last_login AS last_seen
from users
join customers on customers.id= users.customer_id
where users.status ='active' and users.last_login is not null 
order by users.last_login desc limit 2; 
