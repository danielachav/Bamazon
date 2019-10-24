DROP DATABASE IF EXISTS bamazon;


CREATE DATABASE bamazon; 

USE bamazon;


CREATE TABLE products (

item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(110),
department_name VARCHAR(110),
price DECIMAL(10,2) NULL,
stock_quantity INT NOT NULL,
PRIMARY KEY (item_id)

);


Select * from products;


INSERT INTO products (name, price, stock_quantity, department_name) VALUES
("Floor Cleaner", 700.00, 10, "Home"),
("Waffle Maker", 299.99, 8, "Kitchen"),
("Shower Stand", 45.00, 15, "Bath"),
("Shampoo", 5.00, 100, "Beauty"),
("Keurig", 100.00, 5, "Home"),
("Wine Cooler", 30.00, 200, "Kitchen"),
("Dog Treats", 80.00, 40, "Pets"),
("Plasma TV", 200.00, 20, "Electronics"),
("Colored Pencils", 39.99, 72, "School"),
("Makeup Brushes", 30.00, 107, "Beauty"),