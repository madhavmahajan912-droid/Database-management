create database In_Adidas;

CREATE TABLE adidas_products (
snapshot_date DATE,
country_code VARCHAR(10),
product_name VARCHAR(255),
model_number VARCHAR(50),
currency VARCHAR(10),
price_local DECIMAL(10,2),
gender_segment VARCHAR(50),
size_label VARCHAR(50),
category VARCHAR(100),
subcategory VARCHAR(100),
base_model_number VARCHAR(50),
size_labels TEXT,
availability VARCHAR(50),
availability_units INT,
best_for_ids TEXT,
seen_market_count INT,
seen_markets TEXT
);

select * from adidas_products;

-- Show all Adidas products
SELECT product_name, category, price_local
FROM adidas_products;


-- Count total products
SELECT COUNT(*) AS total_products
FROM adidas_products;


-- Average price of products
SELECT AVG(price_local) AS avg_price
FROM adidas_products;


-- Find products priced above average
SELECT product_name, price_local
FROM adidas_products
WHERE price_local >
(SELECT AVG(price_local) FROM adidas_products);


-- Top 10 most expensive products
SELECT product_name, price_local
FROM adidas_products
ORDER BY price_local DESC
LIMIT 10;


-- Total number of products in each category
SELECT category, COUNT(*) AS total_products
FROM adidas_products
GROUP BY category
ORDER BY total_products DESC;


-- Product Price Category
SELECT product_name,
       price_local,
       CASE
           WHEN price_local < 3000 THEN 'Low Price'
           WHEN price_local BETWEEN 3000 AND 7000 THEN 'Medium Price'
           ELSE 'Premium Product'
       END AS price_category
FROM adidas_products;


-- Prevent Negative Price
DELIMITER //

CREATE TRIGGER check_price
BEFORE INSERT ON adidas_products
FOR EACH ROW
BEGIN
    IF NEW.price_local < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Price cannot be negative';
    END IF;
END //

DELIMITER ;


-- Products Available in More Markets Than Average
SELECT product_name, seen_market_count
FROM adidas_products
WHERE seen_market_count >
(
    SELECT AVG(seen_market_count)
    FROM adidas_products
);