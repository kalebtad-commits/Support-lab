-- Support Tickets in SQL: fake sample data
-- Run after schema.sql

INSERT INTO customers (company_name, plan, created_at) VALUES
('Acme Logistics',  'Pro',        '2026-01-15 09:00'),
('Bright Dental',   'Basic',      '2026-03-02 11:30'),
('Northwind Foods', 'Enterprise', '2026-05-20 14:00');

INSERT INTO users (customer_id, email, role, status, last_login) VALUES
(1, 'anna@acme.com',          'admin',  'active',   '2026-09-30 08:15'),
(1, 'ben@acme.com',           'viewer', 'active',   '2026-09-30 17:40'),
(1, 'carla@acme.com',         'editor', 'locked',   '2026-09-12 10:05'),
(2, 'dan@brightdental.com',   'admin',  'active',   '2026-09-29 13:20'),
(3, 'eva@northwind.com',      'admin',  'disabled', '2026-07-01 09:00'),
(3, 'frank@northwind.com',    'editor', 'active',   NULL);

INSERT INTO orders (customer_id, amount, status, created_at) VALUES
(1, 199.00, 'paid',    '2026-09-01 10:00'),
(2,  49.00, 'failed',  '2026-09-03 12:00'),
(3, 999.00, 'paid',    '2026-09-05 15:00'),
(1, 199.00, 'pending', '2026-09-28 09:30');

INSERT INTO payments (order_id, amount, status, paid_at) VALUES
(1, 199.00, 'succeeded', '2026-09-01 10:01'),
(2,  49.00, 'declined',  '2026-09-03 12:01');
-- Note: order 3 is marked paid but has NO payment row (a ticket to find!)

INSERT INTO error_logs (user_id, error_code, message, request_id, logged_at) VALUES
(2, 403, 'Permission denied: export report',         '7f3a-91c2', '2026-09-30 17:41'),
(3, 401, 'Account locked after 5 failed logins',     'a1b2-c3d4', '2026-09-12 10:06'),
(4, 500, 'Import failed: invalid date 31/02/2026',   'e5f6-0718', '2026-09-29 13:25'),
(2, 403, 'Permission denied: export report',         '9d8c-7b6a', '2026-09-30 17:45'),
(6, 401, 'Token expired',                            'c0ff-ee11', '2026-09-30 18:02');
