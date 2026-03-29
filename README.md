# Databricks Lakehouse Data Pipeline

## Project Overview

This project implements a Lakehouse Data Pipeline using Databricks Free Edition and Delta Lake.
The pipeline follows the Medallion Architecture (Bronze, Silver, Gold) and builds a Star Schema Data Warehouse for analytics.

The project demonstrates data ingestion, transformation, data warehouse modeling, and analytical queries using SQL.

---

## Architecture

The pipeline follows this flow:

Source Data → Bronze Layer → Silver Layer → Gold Layer → Analytics

* Bronze Layer: Raw data ingestion
* Silver Layer: Data cleaning and transformation
* Gold Layer: Star schema data warehouse
* Analytics Layer: Business queries and insights

---

## Technologies Used

* Databricks Free Edition
* Delta Lake
* SQL
* Data Warehouse (Star Schema)
* Medallion Architecture
* GitHub (Version Control)

---

## Data Pipeline Layers

### Bronze Layer

Raw data is ingested from CSV into the bronze table.
This layer stores raw historical data.

### Silver Layer

Data is cleaned, null values removed, and new columns such as total_sales are created.

### Gold Layer

Star schema data warehouse is created with:

* dim_customer
* dim_product
* dim_date
* fact_sales

### Analytics Layer

SQL queries are used to generate insights such as:

* Top selling products
* Sales by city
* Monthly revenue

---

## Tables Created

* orders_raw
* bronze_orders
* silver_orders
* dim_customer
* dim_product
* dim_date
* fact_sales

---

## How to Run the Project

Run SQL scripts in the following order:

1. sql/01_bronze.sql
2. sql/02_silver.sql
3. sql/03_gold.sql
4. sql/04_analytics.sql

---

## Project Architecture Diagram

(See architecture/architecture_diagram.png)

---

## Future Improvements

* Incremental data loading
* Slowly Changing Dimensions (SCD Type 2)
* Data quality checks
* Pipeline automation
* Dashboard integration (Power BI / Tableau)

---

## Author

Thejas P Y
Data Engineering

GitHub: https://github.com/THEJAS1999
LinkedIn: https://linkedin.com/in/thejasyatheendran
