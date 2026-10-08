-- This to check my data, how itlookslike before processing
SELECT * 
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
LIMIT 100;

SELECT
    SUM(
        transaction_qty *
        CAST(REPLACE(unit_price, ',', '.') AS DOUBLE)
    ) AS total_revenue
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`;

-- Big code
SELECT
      transaction_date,
      store_location,
      product_category,
      product_type,
      product_detail, -- from original table
      DAYNAME(transaction_date) AS Day_name, -- Extracts the day of the week for example mon, tue, wed, and so on this will be a new column
      MONTHNAME(transaction_date) AS Month_name, -- Extracts the name of month. This is a new column

-- sales matrics
      COUNT(transaction_id) AS number_of_sales, -- counting all the raws. This is going to be a new column
      SUM(transaction_qty) AS unit_sold, -- calculating total unit sold. This is a new column
      COUNT(DISTINCT product_id) AS unique_products, --counting the unique products. This is a new column
      COUNT(DISTINCT store_id) AS number_of_stores, -- counting all the rows. This is a new column

-- case statemnt always creates buckets for enhanced analysis
-- this case statement is classifying the DAYNAME column into classification buckets 
      CASE
          WHEN day_name IN ('Sun', 'Sat') THEN 'Weekend'
          WHEN day_name IN ('Mon', 'Tue', 'Wed', 'Thu', 'Fri') THEN 'Weekday'
      END AS day_classification,

-- this case statement is classifying the transaction_time column into time buckets. this is a new column 
      CASE
          WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN '01. Morning'
          WHEN transaction_time BETWEEN '12:00:00' AND '17:59:59' THEN '02. Afternoon'
          WHEN transaction_time BETWEEN '18:00:00' AND '21:59:59' THEN '03. Evening'
     END AS time_classification,
      
   SUM(
        transaction_qty *
        CAST(REPLACE(unit_price, ',', '.') AS DOUBLE)
    ) AS total_revenue
FROM `bright_coffee_shop`.`default`.`bright_coffee_shop_sales_dataset`
GROUP BY transaction_date,
        DAYNAME(transaction_date),
         CASE WHEN DAYNAME(transaction_date) IN ('Sun', 'Sat') THEN 'Weekend' WHEN DAYNAME(transaction_date) IN ('Mon', 'Tue', 'Wed', 'Thu', 'Fri') THEN 'Weekday' END,
         CASE WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' 
              THEN '01. Morning' 
              WHEN transaction_time BETWEEN '12:00:00' AND '17:59:59' 
              THEN '02. Afternoon' 
              WHEN transaction_time BETWEEN '18:00:00' AND '21:59:59' 
              THEN '03. Evening' 
              END,
         MONTHNAME(transaction_date),
         store_location, product_category, product_type, product_detail;
