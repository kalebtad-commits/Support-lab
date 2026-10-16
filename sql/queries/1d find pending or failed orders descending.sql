select orders.amount, orders.status, orders.id
from orders
where orders.status = 'pending' or orders.status = 'failed'
order by orders.amount desc; 