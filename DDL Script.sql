# DDL - Data Definition Language : 

# Create database :
CREATE database volttech_db ; 

USE volttech_db ; 

# Create table - Products :
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    sku VARCHAR(10) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# Describe Table : 
DESCRIBE products ; 

# Add a new column : 

ALTER TABLE products
ADD COLUMN stock_qty INT NOT NULL DEFAULT 0 ; 

select * from products ; 

DESCRIBE products ; 

# Change datatype :
ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(250) NOT NULL ; 

DESCRIBE products ; 

# Delete Column : 

ALTER TABLE products 
DROP COLUMN sku ; 

# Rename Column :

ALTER TABLE products 
RENAME COLUMN stock_qty TO inventory_count ; 

select * from products ; 

# RENAME TABLE : 
RENAME TABLE products TO inventory_items ; 

SELECT * FROM inventory_items ; 

# Delete contents of Table : 
 # INSERT Dummy records into inventory_items table : 
 
INSERT INTO inventory_items (product_name, price, inventory_count)
VALUES 
    ('Test Laptop 999', 1200.00, 10),
    ('Dummy Charger X', 25.50, 50),
    ('Sample Barcode Scanner', 85.00, 5);
 
SELECT * FROM inventory_items ; 

DESCRIBE inventory_items ; 

TRUNCATE TABLE inventory_items ; 

DROP TABLE IF EXISTS inventory_items ; 

SELECT * FROM inventory_items ; 

 


