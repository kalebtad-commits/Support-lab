-- Ticket #1: "Carla from Acme can't log in"
-- Goal: check her account status and any login errors

-- 1) Is her account active?
SELECT email, role, status, last_login
FROM users
WHERE email = 'carla@acme.com';

-- 2) What errors did she get, and when?
SELECT e.logged_at, e.error_code, e.message, e.request_id
FROM error_logs e
JOIN users u ON u.id = e.user_id
WHERE u.email = 'carla@acme.com'
ORDER BY e.logged_at DESC;

-- Finding: status = 'locked' after 5 failed logins (401, request a1b2-c3d4).
-- Fix: unlock or reset password per policy, then ask her to try again.
