-- INNER JOIN: Display customers with their orders
select name, order_id, order_date, status, total_amount 
from customers c 
inner join orders o 
on c.customer_id = o.customer_id;

-- LEFT JOIN: Display all customers, including those without orders
select name, order_id, order_date, status, total_amount 
from customers c 
left join orders o 
on c.customer_id = o.customer_id;

-- MULTI-TABLE JOIN: Display customer, order and product details
select name, o.order_id, product_name, quantity, unit_price 
from customers c 
inner join orders o 
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id;
