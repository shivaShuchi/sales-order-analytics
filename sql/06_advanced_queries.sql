 -- SUBQUERY
-- Find orders above the average order value
select *
from orders
where total_amount > (
    select avg(total_amount)
    from orders
);


-- CTE
-- Calculate total revenue for each customer
with customer_revenue as (
    select 
        c.name,
        sum(o.total_amount) as total_revenue
    from customers c
    inner join orders o
    on c.customer_id = o.customer_id
    group by c.name
)
select *
from customer_revenue;


-- CASE EXPRESSION
-- Categorize orders based on order value
select 
    order_id,
    total_amount,
    case
        when total_amount >= 50000 then 'high value'
        when total_amount >= 20000 then 'medium value'
        else 'low value'
    end as order_category
from orders;


-- WINDOW FUNCTION
-- Rank customers based on revenue
select 
    c.name,
    sum(o.total_amount) as revenue,
    rank() over (order by sum(o.total_amount) desc) as revenue_rank
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.name;


-- RUNNING TOTAL
-- Calculate cumulative revenue
select 
    order_date,
    total_amount,
    sum(total_amount) over (order by order_date) as running_revenue
from orders
order by order_date;


-- MONTH-OVER-MONTH ANALYSIS
-- Compare revenue with the previous month
with monthly_revenue as (
    select
        extract(month from order_date) as month,
        sum(total_amount) as revenue
    from orders
    group by extract(month from order_date)
)
select
    month,
    revenue,
    lag(revenue) over (order by month) as previous_month_revenue
from monthly_revenue
order by month;