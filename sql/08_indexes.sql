 -- Create an index on customer_id for faster joins and filtering
create index idx_orders_customer_id
on orders(customer_id);


-- Create an index on order_date for faster date-based queries
create index idx_orders_order_date
on orders(order_date);


-- Create an index on product_id for faster joins
create index idx_order_items_product_id
on order_items(product_id);


-- Analyze the execution plan for filtering orders by customer
explain
select *
from orders
where customer_id = 1;


-- Analyze the execution plan for filtering orders by date
explain
select *
from orders
where order_date >= '2025-01-01';