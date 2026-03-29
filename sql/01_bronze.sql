USE main.ecommerce;

CREATE OR REPLACE TABLE bronze_orders AS
SELECT *
FROM orders_raw;