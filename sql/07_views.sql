 -- VIEW
-- Create a reusable view for order details
create view order_details_view as
select 
    o.order_id,
    c.name as customer_name,
    c.city,
    o.order_date,
    o.status,
    o.total_amount
from orders o
inner join customers c
on o.customer_id = c.customer_id;


-- Display order details from the view
select *
from order_details_view;


-- Create a reusable view for product sales
create view product_sales_view as
select 
    p.product_name,
    p.category,
    sum(oi.quantity) as quantity_sold,
    sum(oi.quantity * oi.unit_price) as revenue
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.product_name, p.category;


-- Display product sales from the view
select *
from product_sales_view;