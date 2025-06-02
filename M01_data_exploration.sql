/* ===============================================================================
1. Database Exploration
	- Explore database and table structure
=============================================================================== */

-- List all tables available in the database
SELECT 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = DATABASE();

-- Explore table structure including column names, data structure, contraints, etc.
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
AND TABLE_NAME = 'gold_customers';

/* ===============================================================================
2. Dimensions Exploration
	- Explore unique values in customers and products tables
=============================================================================== */

-- List the unique countries that the customers are from
SELECT DISTINCT 
    country 
FROM gold_customers
ORDER BY country;

-- List unique product names, subcategories, and categories
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold_products
ORDER BY category, subcategory, product_name;


/* ===============================================================================
3. Date Range Exploration 
	- Understand the range of data available
=============================================================================== */

-- Identify the first and last order dates in the sales records
SELECT 
  MIN(order_date) AS first_order_date,
  MAX(order_date) AS last_order_date
FROM gold_sales
-- First_order_date = 0000-00-00. We will exclude such records from future analysis.

-- Identify the first and last order dates with total range in months
SELECT 
  MIN(order_date) AS first_order_date,
  MAX(order_date) AS last_order_date,
  TIMESTAMPDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold_sales
WHERE order_date != 0000-00-00

-- Identify the oldest and youngest birthdates in the customers table
SELECT
    MIN(birthdate) AS oldest_birthdate,
    TIMESTAMPDIFF(YEAR, MIN(birthdate), CURDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    TIMESTAMPDIFF(YEAR, MAX(birthdate), CURDATE()) AS youngest_age
FROM gold_customers

-- Identify the oldest and youngest customers using birthdate
SELECT
    MIN(birthdate) AS oldest_birthdate,
    TIMESTAMPDIFF(YEAR, MIN(birthdate), CURDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    TIMESTAMPDIFF(YEAR, MAX(birthdate), CURDATE()) AS youngest_age
FROM gold_customers
WHERE birthdate != 0000-00-00

/* ===============================================================================
4. Measures Exploration
    - Calculate key aggregated metrics
=============================================================================== */

-- Calculate total sales, number of items sold, average selling price, total order recoreds, order volume
SELECT 
	SUM(sales_amount) AS total_sales,
	SUM(quantity) AS total_quantity,
    AVG(price) AS avg_selling_price, 
    COUNT(order_number) AS total_order_records,
    COUNT(DISTINCT order_number) AS order_volume
FROM gold_sales

-- Calculate the total number of products available
SELECT COUNT(product_key) AS total_products 
FROM gold_products

-- Calculate the total number of customers
SELECT COUNT(customer_key) AS total_customers
FROM gold_customers

-- Gather all key metrics
SELECT 'Total Sales' AS measure, SUM(sales_amount) AS 'value' FROM gold_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold_sales
UNION ALL
SELECT 'Order Volume', COUNT(DISTINCT order_number) FROM gold_sales
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_key) FROM gold_products
UNION ALL
SELECT 'Total Customers', COUNT(customer_key) FROM gold_customers