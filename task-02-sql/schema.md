# Schema

## customers
- id (PK)
- full_name
- email
- created_at

## orders
- id (PK)
- customer_id (FK -> customers.id)
- status (NEW | PAID | SHIPPED | CANCELED)
- created_at

## products
- id (PK)
- name
- category
- price

## order_items
- id (PK)
- order_id (FK -> orders.id)
- product_id (FK -> products.id)
- quantity
- unit_price
