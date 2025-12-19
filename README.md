# E-commerce Sales Analysis (Brazilian Online Store)

## Project Overview
This project focuses on analysing sales data from a Brazilian e-commerce platform to uncover key business insights related to revenue, 
customer behaviour, and seller performance.
The goal of the analysis is to demonstrate the practical SQL skills required for a Data Analyst role, including data cleaning, exploratory analysis, aggregations,
and the use of window functions to analyse trends over time.

## Dataset

The dataset represents real transactional data from a Brazilian online marketplace and includes information about:

- customer orders and order statuses
- order items and product details
- sellers and their locations
- payment transactions

Time period: 2016–2018
Database: PostgreSQL
Number of tables: 6

Main tables used in the analysis:

- orders
- order_items
- products
- sellers

The current dataset is taken from Kaggle. Link to the source: [Simple EDA - Sales and Customer Patterns](https://www.kaggle.com/code/kabure/simple-eda-sales-and-customer-patterns)

## Data Model

The database is structured around the orders table, which serves as the central entity. 
- Each order is linked to a customer
- Each order can contain multiple order items
- Each order item is linked to a product and a seller
- Payments are associated with orders

Foreign key relationships were validated and enforced to ensure data consistency. An ER diagram was used to visually inspect the relationships between tables.

## Data Quality Checks

Before performing the analysis, several data quality checks were conducted to ensure the reliability and consistency of the dataset.

### Missing Values

All key tables (orders, order_items, products, customers, sellers, payments) were checked for missing values in critical columns such as primary keys, foreign keys, timestamps, and numeric fields.

Result:
No missing values were found in the essential columns used for the analysis.

### Referential Integrity

Foreign key relationships between tables were validated to ensure that all referenced IDs exist in their parent tables.

Examples:

order_items.product_id → products.product_id

order_items.seller_id → sellers.seller_id

Result:
All foreign key relationships were valid. No orphan records were detected.

## Key Business Questions & Analysis

The following business questions were explored using SQL:

- Which product categories generate the highest revenue?

Approach:

Joined order_items with products

Aggregated total revenue using SUM(price)

Grouped results by product category

Outcome:
Identified top-performing product categories by total revenue.

📄 SQL file: 04_top_categories_by_revenue.sql

- Who are the top sellers by revenue?

Approach:

Aggregated sales per seller using order_items

Joined with sellers to enrich results with location data

Outcome:
Identified sellers with the highest contribution to total revenue.

📄 SQL file: 05_top_sellers_by_revenue.sql

- What is the average order value (AOV)?

Approach:

Calculated total order value per order

Used a subquery to compute the average order value across all orders

Outcome:
Computed the average amount spent per order.

📄 SQL file: 06_average_order_value.sql

- How does average order value change by month?

Approach:

Calculated order totals

Aggregated monthly average order value

Outcome:
Identified trends in customer spending behaviour over time.

📄 SQL file: 07_average_order_value_by_month.sql

- Top 3 categories by revenue per month

Approach:

Aggregated revenue by category and month

Used DENSE_RANK() window function to rank categories per month

Outcome:
Identified the top 3 revenue-generating categories for each month.

📄 SQL file: 08_top_categories_by_month.sql

## Conclusions & Business Insights

Based on the analysis of the Brazilian e-commerce dataset, several key insights were identified:

A small number of product categories generate most of the total revenue. This means that sales are concentrated in a few main categories.

The total revenue grows over time, which may indicate that the platform is gaining more customers or increasing sales activity.

The average order value is relatively stable across months, with only minor changes during some periods.

Only a limited number of sellers are responsible for a large share of the revenue.

The top-selling product categories change from month to month, which shows that customer preferences are not static.

## Tools & Skills

- SQL (PostgreSQL)
- Joins, Aggregations, Subqueries
- Window Functions (DENSE_RANK, SUM OVER)
- Data Cleaning & Validation
- Exploratory Data Analysis
- Git & GitHub
- DBeaver / pgAdmin
