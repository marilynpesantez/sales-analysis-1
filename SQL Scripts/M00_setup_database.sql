/* ===============================================================================
1. Create Database
	-- Create a new database named 'sales_analysis_db'
=============================================================================== */

-- Create and use the 'sales_analysis_db' database
CREATE DATABASE sales_analysis_db;
USE sales_analysis_db;

-- Create tables to hold customer, product, and sales data
CREATE TABLE gold_customers(
	customer_key int,
	customer_id int,
	customer_number nvarchar(50),
	first_name nvarchar(50),
	last_name nvarchar(50),
	country nvarchar(50),
	marital_status nvarchar(50),
	gender nvarchar(50),
	birthdate date,
	create_date date
);

CREATE TABLE gold_products(
	product_key int ,
	product_id int ,
	product_number nvarchar(50) ,
	product_name nvarchar(50) ,
	category_id nvarchar(50) ,
	category nvarchar(50) ,
	subcategory nvarchar(50) ,
	maintenance nvarchar(50) ,
	cost int,
	product_line nvarchar(50),
	start_date date 
);

CREATE TABLE gold_sales(
	order_number nvarchar(50),
	product_key int,
	customer_key int,
	order_date date,
	shipping_date date,
	due_date date,
	sales_amount int,
	quantity tinyint,
	price int 
);

-- Load data into tables
TRUNCATE TABLE gold_customers;

LOAD DATA LOCAL INFILE '/Users/marilynpesantez/Documents/portfolio-projects/sales-analysis/datasets/gold.dim_customers.csv'
INTO TABLE gold_customers
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

TRUNCATE TABLE gold_products;

LOAD DATA LOCAL INFILE '/Users/marilynpesantez/Documents/portfolio-projects/sales-analysis/datasets/gold.dim_products.csv'
INTO TABLE gold_products
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

TRUNCATE TABLE gold_sales;

LOAD DATA LOCAL INFILE '/Users/marilynpesantez/Documents/portfolio-projects/sales-analysis/datasets/gold.fact_sales.csv'
INTO TABLE gold_sales
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;