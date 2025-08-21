INSERT INTO users (name, email, password, address, phone) VALUES
('Abhinash Kapilavaye', 'abhinash@example.com', 'hashedpassword123', 'Hyderabad, India', '+919876543210'),
('Riya Sharma', 'riya.sharma@example.com', 'securepass456', 'Delhi, India', '+919123456789'),
('Arjun Mehta', 'arjun.mehta@example.com', 'mypassword789', 'Mumbai, India', '+918765432109');
select*from users;

+---------+---------------------+-------------------------+-------------------+------------------+---------------+---------------------+
| user_id | name                | email                   | password          | address          | phone         | created_at          |
+---------+---------------------+-------------------------+-------------------+------------------+---------------+---------------------+
|       1 | John Doe            | john@example.com        | pass123           | New York, USA    | 1234567890    | 2025-08-19 21:23:03 |
|       2 | Alice Smith         | alice@example.com       | alicepass         | Los Angeles, USA | 9876543210    | 2025-08-19 21:23:03 |
|       3 | Bob Johnson         | bob@example.com         | bobpass           | Chicago, USA     | 5551234567    | 2025-08-19 21:23:03 |
|     101 | Abhinash Kapilavaye | abhinash@example.com    | hashedpassword123 | Hyderabad, India | +919876543210 | 2025-08-21 19:37:37 |
|     102 | Riya Sharma         | riya.sharma@example.com | securepass456     | Delhi, India     | +919123456789 | 2025-08-21 19:37:37 |
|     103 | Arjun Mehta         | arjun.mehta@example.com | mypassword789     | Mumbai, India    | +918765432109 | 2025-08-21 19:37:37 |
+---------+---------------------+-------------------------+-------------------+------------------+---------------+---------------------+

INSERT INTO products (name, description, price, stock, category) VALUES
('iPhone 15', 'Apple smartphone with A17 chip', 79999.00, 50, 'Electronics'),
('Samsung Galaxy S23', 'Latest Samsung flagship phone', 74999.00, 40, 'Electronics'),
('Nike Running Shoes', 'Comfortable sports shoes', 5999.00, 100, 'Footwear'),
('Wooden Study Table', 'Solid wood study table with drawers', 8999.00, 20, 'Furniture'),
('HP Laptop', '14-inch laptop with Intel i5 processor', 55999.00, 30, 'Electronics');
select*from products;

+------------+--------------------+----------------------------------------+----------+-------+-------------+---------------------+
| product_id | name               | description                            | price    | stock | category    | created             |
+------------+--------------------+----------------------------------------+----------+-------+-------------+---------------------+
|          1 | iPhone 14          | Apple smartphone with 128GB storage    |   799.99 |    50 | Electronics | 2025-08-19 21:16:42 |
|          2 | Samsung Galaxy S22 | Samsung flagship smartphone            |   699.99 |    40 | Electronics | 2025-08-19 21:16:42 |
|          3 | Nike Running Shoes | Comfortable running shoes              |   120.00 |   100 | Footwear    | 2025-08-19 21:16:42 |
|          4 | Adidas T-shirt     | Cotton T-shirt                         |    25.00 |   200 | Clothing    | 2025-08-19 21:16:42 |
|          5 | Sony Headphones    | Noise cancelling headphones            |   150.00 |    80 | Electronics | 2025-08-19 21:16:42 |
|          6 | iPhone 15          | Apple smartphone with A17 chip         | 79999.00 |    50 | Electronics | 2025-08-21 19:39:53 |
|          7 | Samsung Galaxy S23 | Latest Samsung flagship phone          | 74999.00 |    40 | Electronics | 2025-08-21 19:39:53 |
|          8 | Nike Running Shoes | Comfortable sports shoes               |  5999.00 |   100 | Footwear    | 2025-08-21 19:39:53 |
|          9 | Wooden Study Table | Solid wood study table with drawers    |  8999.00 |    20 | Furniture   | 2025-08-21 19:39:53 |
|         10 | HP Laptop          | 14-inch laptop with Intel i5 processor | 55999.00 |    30 | Electronics | 2025-08-21 19:39:53 |
+------------+--------------------+----------------------------------------+----------+-------+-------------+---------------------+



INSERT INTO orders (user_id, status, total) VALUES
(101, 'pending', 79999.00),   
(102, 'shipping', 134998.00),   
(103, 'delivered', 5999.00),  
(101, 'cancelled', 8999.00),   
(102, 'pending', 55999.00);   


INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 79999.00),     -- Abhinash bought 1 iPhone 15
(2, 1, 1, 79999.00),     -- Riya bought 1 iPhone 15
(2, 2, 1, 74999.00),     -- Riya bought 1 Samsung Galaxy S23
(3, 3, 1, 5999.00);      -- Arjun bought 1 Nike Shoes

INSERT INTO payments (order_id, amount, method, status) VALUES
(1, 79999.00, 'credit card', 'pending'),
(2, 134998.00, 'upi', 'success'),
(3, 5999.00, 'cash on delivery', 'success');
  


