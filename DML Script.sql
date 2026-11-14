 
USE volttech_db ; 
Describe inventory_items ; 

# CREATE TABLE INVENTORY_ITEMS : 
CREATE TABLE inventory_items (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(250) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    inventory_count INT NOT NULL DEFAULT 0 
);

# Describe :
describe inventory_items ; 

# Inserting Single Record : 
INSERT INTO inventory_items (product_name, price, inventory_count)
                        values('Apex Pro 16 Gaming Laptop', 149.99, 25) ; 

Select * FROM inventory_items ; 

# Check the Integrity of the DATA (Insert Negative Value) : 
INSERT INTO inventory_items (product_name, price, inventory_count) 
                        values('Budget Earbuds', -15.00,10) ; 

# Inserting Multiple Records : 
INSERT INTO inventory_items (product_name, price, inventory_count)
VALUES  ('ProSound Wireless Headphones', 199.99, 60),
    ('UltraView 27-inch 4K Monitor', 349.50, 40),
    ('Mechanical RGB Keyboard', 89.99, 120),
    ('Ergonomic Vertical Mouse', 49.99, 85),
    ('USB-C 7-in-1 Multiport Hub', 29.99, 200);
    
SELECT * FROM inventory_items ;     

# UPDATE : 
# Update the price of Monitor from 349.50 to 299.99 : 
UPDATE inventory_items
SET price = 299.99
WHERE product_id = 3 ;

SELECT * FROM inventory_items ; 


# update inventory count of product_id = 4  (-10counts) less than the present count : 
UPDATE inventory_items
SET inventory_count = inventory_count - 10
WHERE product_id = 4 ;
   
SELECT * FROM inventory_items ; 

UPDATE inventory_items
SET inventory_count = 100 ; 

SET SQL_SAFE_UPDATES = 0 ;  
SET SQL_SAFE_UPDATES = 1 ; 

 
# DELETE
# Delete single record(Row) :
DELETE FROM inventory_items
WHERE product_name = 'USB-C 7-in-1 Multiport Hub' ; 

SELECT * FROM inventory_items ; 