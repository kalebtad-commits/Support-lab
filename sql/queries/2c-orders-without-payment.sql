select orders.id, customers.company_name, orders.amount, order.status AS order_status
from orders
join customers on customer.id= orders.customer_id
left join payments on orders.id= payments.order_id
Where payment.id is null
order by payments.amount desc;
