USE main.ecommerce;

-- Top Products
SELECT
    p.product_name,
    SUM(f.total_sales) AS revenue
FROM fact_sales f
JOIN dim_product p
ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- Sales by City
SELECT
    c.city,
    SUM(f.total_sales) AS revenue
FROM fact_sales f
JOIN dim_customer c
ON f.customer_id = c.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- Monthly Sales
SELECT
    d.year,
    d.month,
    SUM(f.total_sales) AS revenue
FROM fact_sales f
JOIN dim_date d
ON f.order_date = d.order_date
GROUP BY d.year, d.month
ORDER BY d.year, d.month;