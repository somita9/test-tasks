SELECT id, full_name, email, created_at
FROM customers
ORDER BY created_at DESC;


SELECT id, full_name, email
FROM customers
WHERE email ILIKE '%@gmail.com';


SELECT id, customer_id, status, created_at
FROM orders
ORDER BY created_at DESC
LIMIT 10;


SELECT o.id AS order_id, o.status, o.created_at, c.full_name
FROM orders o
JOIN customers c ON c.id = o.customer_id
ORDER BY o.created_at DESC;


SELECT c.id, c.full_name, c.email
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
WHERE o.id IS NULL;


SELECT status, COUNT(*) AS orders_count
FROM orders
GROUP BY status
ORDER BY orders_count DESC;


SELECT customer_id, COUNT(*) AS orders_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) >= 3
ORDER BY orders_count DESC;


