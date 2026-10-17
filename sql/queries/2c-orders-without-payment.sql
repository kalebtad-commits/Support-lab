select orders.id, customers.company_name, orders.amount, orders.status AS order_status
from orders
join customers on customers.id= orders.customer_id
left join payments on orders.id= payments.order_id
Where payments.id is null
order by payments.amount desc;
