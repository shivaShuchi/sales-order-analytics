-- A. Basic Aggregations

-- Calculate total revenue
select sum(total_amount) as total_revenue 
from orders;

-- Count total number of orders
select count(*) as total_orders 
from orders;

-- Calculate average order value
select avg(total_amount) as avg_order_value 
from orders;

-- Calculate maximum order value
select max(total_amount) as max_order_value 
from orders;

-- Calculate minimum order value
select min(total_amount) as min_order_value 
from orders;


-- B. GROUP BY Analysis

-- Calculate revenue by order status
select status, sum(total_amount) as revenue 
from orders 
group by status;

-- Calculate revenue by customer city
select city, sum(total_amount) as revenue
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by city;

-- Calculate number of orders by status
select status, count(*) as total_orders
from orders
group by status;

-- Calculate number of orders per customer
select name, count(order_id) as total_orders
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by name;

-- Calculate revenue by product category
SELECT category, SUM(quantity * unit_price) AS revenue
FROM order_items oi
INNER JOIN products p
ON oi.product_id = p.product_id
GROUP BY category;


-- C. HAVING

-- Find customers with total order value greater than 50000
select name, sum(total_amount) as order_value
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by name
having sum(total_amount) > 50000;


-- Calculate monthly revenue
select 
    extract(month from order_date) as month,
    sum(total_amount) as monthly_revenue
from orders
group by extract(month from order_date)
order by month;


-- Find top-selling products by quantity
select 
    p.product_name,
    sum(oi.quantity) as total_quantity_sold
from order_items oi
inner join products p
on oi.product_id = p.product_id
group by p.product_name
order by total_quantity_sold desc;


-- Find top products by revenue
select 
    p.product_name,
    sum(oi.quantity * oi.unit_price) as revenue
from order_items oi
inner join products p
on oi.product_id = p.product_id
group by p.product_name
order by revenue desc;


-- Find top customers by revenue
select 
    c.name,
    sum(o.total_amount) as total_revenue
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.name
order by total_revenue desc;


-- Find customers with more than one order
select 
    c.name,
    count(o.order_id) as total_orders
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.name
having count(o.order_id) > 1;


-- Calculate revenue by product category and order status
select 
    p.category,
    o.status,
    sum(oi.quantity * oi.unit_price) as revenue
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
group by p.category, o.status;


-- Calculate average product price by category
select 
    category,
    avg(price) as average_price
from products
group by category;


-- Find products with low stock
select 
    product_name,
    category,
    stock
from products
where stock < 30;


-- Calculate revenue from completed orders
select 
    sum(total_amount) as completed_revenue
from orders
where status = 'COMPLETED';
