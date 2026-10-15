-- Create customers table
create table customers(
customer_id int primary key, 
name varchar(50) not null, 
email varchar(50) unique, 
city varchar(30), 
signup_date date
);

-- Create products table
create table products(
product_id int primary key,
product_name varchar(30) not null,
category varchar(30),
price numeric(12,2),
stock int
);

-- Create orders table
create table orders(
order_id int primary key,
customer_id int not null references customers(customer_id),
order_date date,
status varchar(20),
total_amount numeric(12,2)
);

-- Create order items table
create table order_items(
order_item_id int primary key,
order_id int not null references orders(order_id),
product_id int not null references products(product_id),
quantity int,
unit_price numeric(10,2)
);

-- Create payments table
create table payments(
payment_id int primary key,
order_id int not null references orders(order_id),
payment_date date,
amount numeric(12,2),
payment_status varchar(20)
);






