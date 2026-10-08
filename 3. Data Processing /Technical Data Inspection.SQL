-- This to check my data, how itlookslike before processing
SELECT * 
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
LIMIT 100;

-- How many stores do we have
-- To check the name of the stores location i have
SELECT DISTINCT store_location
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- How many records/rows do we have?
SELECT 
    COUNT(*) AS total_records
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- What columns are available in the dataset?
DESCRIBE `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

SELECT
    SUM(
        transaction_qty *
        CAST(REPLACE(unit_price, ',', '.') AS DOUBLE)
    ) AS total_revenue
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- What stores do we have?
SELECT DISTINCT
    store_id,
    store_location
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
ORDER BY store_id;

-- WHat is the periord of this data?
-- When did we start collecting this data, and we last did we collect the last record
SELECT MIN(transaction_date), 
MAX(transaction_date)
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- What time does the store open and What timedoes it close
SELECT MIN(transaction_time) AS opening_time,
MAX(transaction_time) AS closing_time
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- How many transactions do we have?
SELECT
    COUNT(DISTINCT transaction_id) AS total_transactions
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- How many different products are sold at each store?
SELECT
    store_location,
    COUNT(DISTINCT product_id) AS number_of_products
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
GROUP BY store_location
ORDER BY number_of_products DESC;

-- How many units have been sold?
SELECT
    SUM(transaction_qty) AS total_units_sold
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- How many different products are we selling in total?
SELECT 
COUNT(DISTINCT product_id) AS number_of_products
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- How much revenue does each store generate?
SELECT
    store_location,
    SUM(
        transaction_qty *
        CAST(REPLACE(unit_price, ',', '.') AS DOUBLE)
    ) AS total_revenue
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
GROUP BY store_location
ORDER BY total_revenue DESC;

-- How many products are we selling per store?
SELECT COUNT(DISTINCT product_id) AS number_of_products
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
GROUP BY store_location; 

-- How many units were sold by each store?
SELECT
    store_location,
    SUM(transaction_qty) AS total_units_sold
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
GROUP BY store_location
ORDER BY total_units_sold DESC;

-- What are the different product categories we have?
SELECT DISTINCT product_category, product_type, product_detail
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
WHERE product_category IN ('coffee')
ORDER BY product_type;
