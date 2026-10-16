select users.email, users.status
from users
where users.status = 'locked' or users.status = 'disabled'
