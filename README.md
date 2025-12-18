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
