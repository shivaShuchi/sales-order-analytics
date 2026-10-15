-- INSERT: Add a new customer
insert into customers 
(customer_id, name, email, city, signup_date) 
values
(16, 'Elena Gilbert', 'elena12@gmail.com', 'Pune', '2025-08-12');

-- SELECT: Retrieve customers from Pune
select *
from customers
where city = 'Pune';

-- UPDATE: Change the city of customer 16
update customers
set city = 'Mumbai'
where customer_id = 16;

-- DELETE: Remove customer 16
delete from customers
where customer_id = 16;