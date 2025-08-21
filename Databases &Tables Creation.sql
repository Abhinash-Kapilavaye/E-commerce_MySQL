CREATE DATABASE e_commerce;
USE e_commerce;
CREATE TABLE users(
user_id INT PRIMARY KEY,name VARCHAR(100),email VARCHAR(100) UNIQUE,password VARCHAR(200),address VARCHAR(200),phone INT,
created_at timestamp default current_timestamp);
DESC users;
 CREATE TABLE products(
product_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),description TEXT,price DECIMAL(10,2),stock INT,category VARCHAR(50),
created timestamp default current_timestamp);
DESC products;
CREATE TABLE orders(
order_id  INT AUTO_INCREMENT PRIMARY KEY,user_id INT,
order_date timestamp default current_timestamp,
status ENUM('pending','shopping','delivered','cancelled') DEFAULT 'pending', total DECIMAL(10,2),
FOREIGN KEY(user_id) REFERENCES users(user_id));
DESC orders;
CREATE TABLE orders_items(
order_item_id INT AUTO_INCREMENT PRIMARY KEY,order_id INT,product_id INT,quantity INT,price DECIMAL(10,2),
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES products(product_id));
DESC orders_items;
CREATE TABLE payments(
payment_id INT AUTO_INCREMENT PRIMARY KEY,order_id INT,amount DECIMAL(10,2),
payment_date timestamp default current_timestamp,
method ENUM('credit card','debit card','upi','netbanking','cash on delivary'),
status ENUM('success','failed','pending') DEFAULT 'pending',FOREIGN KEY(order_id) REFERENCES orders(order_id));
DESC payments;

+------------+--------------+------+-----+-------------------+-------------------+
| Field      | Type         | Null | Key | Default           | Extra             |
+------------+--------------+------+-----+-------------------+-------------------+
| user_id    | int          | NO   | PRI | NULL              |                   |
| name       | varchar(100) | YES  |     | NULL              |                   |
| email      | varchar(100) | YES  | UNI | NULL              |                   |
| password   | varchar(200) | YES  |     | NULL              |                   |
| address    | varchar(200) | YES  |     | NULL              |                   |
| phone      | varchar(100) | YES  |     | NULL              |                   |
| created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+--------------+------+-----+-------------------+-------------------+

+-------------+---------------+------+-----+-------------------+-------------------+
| Field       | Type          | Null | Key | Default           | Extra             |
+-------------+---------------+------+-----+-------------------+-------------------+
| product_id  | int           | NO   | PRI | NULL              | auto_increment    |
| name        | varchar(100)  | YES  |     | NULL              |                   |
| description | text          | YES  |     | NULL              |                   |
| price       | decimal(10,2) | YES  |     | NULL              |                   |
| stock       | int           | YES  |     | NULL              |                   |
| category    | varchar(50)   | YES  |     | NULL              |                   |
| created     | timestamp     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------+---------------+------+-----+-------------------+-------------------+

+------------+----------------------------------------------------+------+-----+-------------------+-------------------+
| Field      | Type                                               | Null | Key | Default           | Extra             |
+------------+----------------------------------------------------+------+-----+-------------------+-------------------+
| order_id   | int                                                | NO   | PRI | NULL              | auto_increment    |
| user_id    | int                                                | YES  | MUL | NULL              |                   |
| order_date | timestamp                                          | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| status     | enum('pending','shopping','delivered','cancelled') | YES  |     | pending           |                   |
| total      | decimal(10,2)                                      | YES  |     | NULL              |                   |
+------------+----------------------------------------------------+------+-----+-------------------+-------------------+

+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| order_item_id | int           | NO   | PRI | NULL    | auto_increment |
| order_id      | int           | YES  | MUL | NULL    |                |
| product_id    | int           | YES  | MUL | NULL    |                |
| quantity      | int           | YES  |     | NULL    |                |
| price         | decimal(10,2) | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+

+--------------+------------------------------------------------------------------------+------+-----+-------------------+-------------------+
| Field        | Type                                                                   | Null | Key | Default           | Extra             |
+--------------+------------------------------------------------------------------------+------+-----+-------------------+-------------------+
| payment_id   | int                                                                    | NO   | PRI | NULL              | auto_increment    |
| order_id     | int                                                                    | YES  | MUL | NULL              |                   |
| amount       | decimal(10,2)                                                          | YES  |     | NULL              |                   |
| payment_date | timestamp                                                              | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| method       | enum('credit card','debit card','upi','netbanking','cash on delivary') | YES  |     | NULL              |                   |
| status       | enum('success','failed','pending')                                     | YES  |     | pending           |                   |
+--------------+------------------------------------------------------------------------+------+-----+-------------------+-------------------+
