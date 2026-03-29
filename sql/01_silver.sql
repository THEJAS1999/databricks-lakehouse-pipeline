USE main.ecommerce;

CREATE OR REPLACE TABLE silver_orders AS
SELECT
    order_id,
    customer_id,
    customer_name,
    product_id,
    product_name,
    category,
    price,
    quantity,
    order_date,
    city,
    price * quantity AS total_sales
FROM bronze_orders
WHERE price IS NOT NULL
AND quantity IS NOT NULL;