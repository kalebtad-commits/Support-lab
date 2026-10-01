-- Support Tickets in SQL: database tables

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  company_name TEXT NOT NULL,
  plan TEXT NOT NULL,              -- Basic, Pro, Enterprise
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(id),
  email TEXT UNIQUE NOT NULL,
  role TEXT NOT NULL,              -- admin, editor, viewer
  status TEXT NOT NULL,            -- active, locked, disabled
  last_login TIMESTAMP
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(id),
  amount NUMERIC(10,2) NOT NULL,
  status TEXT NOT NULL,            -- pending, paid, failed
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(id),
  amount NUMERIC(10,2) NOT NULL,
  status TEXT NOT NULL,            -- succeeded, declined, refunded
  paid_at TIMESTAMP
);

CREATE TABLE error_logs (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  error_code INT,                  -- e.g. 401, 403, 500
  message TEXT,
  request_id TEXT,
  logged_at TIMESTAMP DEFAULT NOW()
);
