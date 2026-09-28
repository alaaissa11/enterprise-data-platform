INSERT INTO customers (name, email, country) VALUES
('Ahmed Ben Ali', 'ahmed@example.com', 'Tunisia'),
('Sara Martin', 'sara@example.com', 'France'),
('John Smith', 'john@example.com', 'United Kingdom'),
('Maria Rossi', 'maria@example.com', 'Italy'),
('Omar Haddad', 'omar@example.com', 'Tunisia');

INSERT INTO products (name, category, price) VALUES
('Laptop Pro', 'Electronics', 1299.99),
('Wireless Mouse', 'Electronics', 29.99),
('Mechanical Keyboard', 'Electronics', 89.99),
('Running Shoes', 'Sports', 119.99),
('Backpack', 'Accessories', 59.99);

INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-09-20 10:30:00', 'completed'),
(2, '2026-09-21 14:20:00', 'completed'),
(1, '2026-09-22 09:15:00', 'pending'),
(3, '2026-09-23 18:40:00', 'completed'),
(5, '2026-09-24 11:10:00', 'completed');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1299.99),
(1, 2, 2, 29.99),
(2, 4, 1, 119.99),
(3, 3, 1, 89.99),
(4, 1, 1, 1299.99),
(5, 5, 2, 59.99);

INSERT INTO payments (order_id, amount, payment_status, payment_date) VALUES
(1, 1359.97, 'paid', '2026-09-20 10:35:00'),
(2, 119.99, 'paid', '2026-09-21 14:25:00'),
(3, 89.99, 'pending', NULL),
(4, 1299.99, 'paid', '2026-09-23 18:45:00'),
(5, 119.98, 'paid', '2026-09-24 11:15:00');
