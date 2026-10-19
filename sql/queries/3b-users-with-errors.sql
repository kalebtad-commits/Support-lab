select distinct users.email
from users
join error_logs on users.id = error_logs.user_id
order by users.email asc;
