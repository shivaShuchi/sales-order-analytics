-- Insert customer data
INSERT INTO customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', 'Delhi', '2025-01-15'),
(2, 'Priya Verma', 'priya.verma@gmail.com', 'Mumbai', '2025-02-10'),
(3, 'Rahul Mehta', 'rahul.mehta@gmail.com', 'Bangalore', '2025-02-22'),
(4, 'Sneha Patel', 'sneha.patel@gmail.com', 'Ahmedabad', '2025-03-05'),
(5, 'Aditya Singh', 'aditya.singh@gmail.com', 'Pune', '2025-03-18'),
(6, 'Ananya Gupta', 'ananya.gupta@gmail.com', 'Kolkata', '2025-04-02'),
(7, 'Vikram Rao', 'vikram.rao@gmail.com', 'Hyderabad', '2025-04-15'),
(8, 'Neha Joshi', 'neha.joshi@gmail.com', 'Jaipur', '2025-05-01'),
(9, 'Karan Malhotra', 'karan.malhotra@gmail.com', 'Chandigarh', '2025-05-20'),
(10, 'Riya Kapoor', 'riya.kapoor@gmail.com', 'Indore', '2025-06-08'),
(11, 'Arjun Nair', 'arjun.nair@gmail.com', 'Kochi', '2025-06-25'),
(12, 'Pooja Shah', 'pooja.shah@gmail.com', 'Surat', '2025-07-12'),
(13, 'Manish Yadav', 'manish.yadav@gmail.com', 'Lucknow', '2025-07-28'),
(14, 'Ishita Roy', 'ishita.roy@gmail.com', 'Bhubaneswar', '2025-08-10'),
(15, 'Rohan Das', 'rohan.das@gmail.com', 'Nagpur', '2025-08-25');

-- Insert product data
INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 25),
(2, 'Smartphone', 'Electronics', 25000.00, 40),
(3, 'Headphones', 'Electronics', 2500.00, 60),
(4, 'Keyboard', 'Accessories', 1500.00, 50),
(5, 'Mouse', 'Accessories', 800.00, 70),
(6, 'Monitor', 'Electronics', 12000.00, 30),
(7, 'Backpack', 'Bags', 1800.00, 45),
(8, 'Office Chair', 'Furniture', 8500.00, 20),
(9, 'Desk Lamp', 'Furniture', 2200.00, 35),
(10, 'USB Cable', 'Accessories', 500.00, 100),
(11, 'Tablet', 'Electronics', 18000.00, 30),
(12, 'Webcam', 'Electronics', 3500.00, 40),
(13, 'Notebook', 'Stationery', 250.00, 150),
(14, 'Pen Set', 'Stationery', 300.00, 120),
(15, 'Water Bottle', 'Lifestyle', 700.00, 80);

-- Insert order data
INSERT INTO orders (order_id, customer_id, order_date, status, total_amount) VALUES
(101, 1, '2025-08-01', 'COMPLETED', 57500.00),
(102, 2, '2025-08-03', 'COMPLETED', 27500.00),
(103, 3, '2025-08-07', 'COMPLETED', 10300.00),
(104, 4, '2025-08-12', 'COMPLETED', 18000.00),
(105, 5, '2025-08-18', 'CANCELLED', 25000.00),
(106, 1, '2025-09-02', 'COMPLETED', 12300.00),
(107, 6, '2025-09-05', 'COMPLETED', 20500.00),
(108, 7, '2025-09-10', 'COMPLETED', 8500.00),
(109, 8, '2025-09-15', 'COMPLETED', 2800.00),
(110, 2, '2025-09-20', 'COMPLETED', 60000.00),
(111, 9, '2025-09-25', 'PENDING', 18000.00),
(112, 3, '2025-10-01', 'COMPLETED', 15500.00),
(113, 10, '2025-10-05', 'COMPLETED', 7000.00),
(114, 11, '2025-10-10', 'COMPLETED', 18500.00),
(115, 12, '2025-10-15', 'COMPLETED', 3000.00),
(116, 1, '2025-10-20', 'COMPLETED', 25500.00),
(117, 13, '2025-11-02', 'COMPLETED', 5500.00),
(118, 14, '2025-11-08', 'COMPLETED', 37500.00),
(119, 15, '2025-11-15', 'COMPLETED', 4200.00),
(120, 2, '2025-11-22', 'COMPLETED', 30500.00),
(121, 4, '2025-12-01', 'COMPLETED', 8700.00),
(122, 6, '2025-12-05', 'COMPLETED', 55000.00),
(123, 7, '2025-12-12', 'COMPLETED', 12800.00),
(124, 9, '2025-12-18', 'CANCELLED', 25000.00),
(125, 10, '2025-12-22', 'COMPLETED', 19500.00);

-- Insert order item data
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 101, 1, 1, 55000.00),
(2, 101, 5, 2, 800.00),
(3, 102, 2, 1, 25000.00),
(4, 102, 3, 1, 2500.00),
(5, 103, 6, 1, 12000.00),
(6, 104, 11, 1, 18000.00),
(7, 106, 6, 1, 12000.00),
(8, 107, 11, 1, 18000.00),
(9, 108, 8, 1, 8500.00),
(10, 109, 3, 1, 2500.00),
(11, 110, 1, 1, 55000.00),
(12, 112, 6, 1, 12000.00),
(13, 113, 8, 1, 8500.00),
(14, 114, 11, 1, 18000.00),
(15, 115, 7, 1, 1800.00);

-- Insert payment data
INSERT INTO payments (payment_id, order_id, payment_date, amount, payment_status) VALUES
(1, 101, '2025-08-01', 56600.00, 'PAID'),
(2, 102, '2025-08-03', 27500.00, 'PAID'),
(3, 103, '2025-08-07', 12800.00, 'PAID'),
(4, 104, '2025-08-12', 18000.00, 'PAID'),
(5, 105, '2025-08-18', 25000.00, 'REFUNDED'),
(6, 106, '2025-09-02', 12500.00, 'PAID'),
(7, 107, '2025-09-05', 20500.00, 'PAID'),
(8, 108, '2025-09-10', 8500.00, 'PAID'),
(9, 109, '2025-09-15', 3300.00, 'PAID'),
(10, 110, '2025-09-20', 60000.00, 'PAID'),
(11, 111, '2025-09-25', 18000.00, 'PENDING'),
(12, 112, '2025-10-01', 14500.00, 'PAID'),
(13, 113, '2025-10-05', 7000.00, 'PAID'),
(14, 114, '2025-10-10', 18500.00, 'PAID'),
(15, 115, '2025-10-15', 2600.00, 'PAID');