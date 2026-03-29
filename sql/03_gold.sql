USE main.ecommerce;

CREATE OR REPLACE TABLE dim_customer AS
SELECT DISTINCT
    customer_id,
    customer_name,
    city
FROM silver_orders;

CREATE OR REPLACE TABLE dim_product AS
SELECT DISTINCT
    product_id,
    product_name,
    category,
    price
FROM silver_orders;

CREATE OR REPLACE TABLE dim_date AS
SELECT DISTINCT
    order_date,
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    DAY(order_date) AS day
FROM silver_orders;

CREATE OR REPLACE TABLE fact_sales AS
SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    price,
    total_sales
FROM silver_orders;