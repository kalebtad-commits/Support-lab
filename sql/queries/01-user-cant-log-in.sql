
SELECT email, role, status, last_login
FROM users
WHERE email = 'carla@acme.com';

SELECT e.logged_at, e.error_code, e.message, e.request_id
FROM error_logs e
JOIN users u ON u.id = e.user_id
WHERE u.email = 'carla@acme.com'
ORDER BY e.logged_at DESC;
