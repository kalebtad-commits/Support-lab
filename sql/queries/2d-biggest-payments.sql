select customers.company_name, payments.amount, payments.status AS payment_status
from payments
join orders on payments.order_id= orders.id
JOIN customers on customers.id = orders.customer_id 
order by payments.amount Desc 
limit 2; 
