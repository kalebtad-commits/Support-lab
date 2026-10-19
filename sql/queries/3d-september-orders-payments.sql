select orders.id, customers.company_name, orders.status AS order_status, payments.status as payment_status
from orders 
join customers on customers.id = orders.customer_id
left join payments on payments.order_id = orders.id
where orders.created_at  between '2026-09-01' AND '2026-09-10'
order by orders.created_at desc; 
