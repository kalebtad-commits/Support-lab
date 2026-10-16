select users.email, users."role", users.status
from users
where users.role = 'admin' and users.status = 'active';