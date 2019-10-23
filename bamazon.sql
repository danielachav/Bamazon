DROP DATABASE IF EXISTS bamazon;


CREATE DATABASE bamazon; 

USE bamazon;


CREATE TABLE products (

item_id VARCHAR()
product_name VARCHAR()
department_name VARCHAR()
price DECIMAL() NULL,
stock_quantity INT NULL,
PRIMARY KEY (id)

);

INSERT INTO products (name)
VALUES ("Floor Cleaner");

INSERT INTO products (name)
VALUES ("Waffle Maker");

INSERT INTO productss (name)
VALUES ("Roomba 500");

INSERT INTO products (name)
VALUES ("Shampoo");

INSERT INTO products (name)
VALUES ("Coffee Machine");

INSERT INTO products (name)
VALUES ("Wine Cooler");

INSERT INTO products (name)
VALUES ("Dog Treats");

INSERT INTO products (name)
VALUES ("Colored Pencils");

INSERT INTO products (name)
VALUES ("Duster");

INSERT INTO products (name)
VALUES ("Makeup Brushes");