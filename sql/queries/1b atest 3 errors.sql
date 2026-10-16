Select error_logs.error_code, error_logs.message, error_logs.logged_at
from error_logs
order by error_logs.logged_at desc 
Limit 3;