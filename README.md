# E-Commerce Sales Analysis (SQL)

## 📌 Project Overview
This project analyzes ~100,000 orders from **Olist**, a Brazilian e-commerce
platform, to uncover revenue trends, top product categories, customer
distribution, delivery performance, and review patterns using SQL.

## 🛠 Tools Used
- MySQL 8.0
- MySQL Workbench

## 🗂 Dataset
Public dataset from Kaggle: [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

9 tables covering customers, orders, order items, products, sellers,
payments, reviews, and geolocation.

## 📂 Files
- `schema.sql` — Database and table creation scripts (DDL) for all 9 tables
- `queries.sql` — 10 business analysis queries (joins, CTEs, window functions)
- `insights.md` — Key findings written in plain English

## 📊 Key Business Questions Answered
1. What is the monthly revenue trend?
2. Which product categories generate the most revenue?
3. Which states have the most customers?
4. What percentage of orders are delivered vs. canceled?
5. Which months had the highest revenue (ranked)?
6. Which states have the slowest average delivery time?
7. Who are the top 5 highest-spending customers?
8. Which product categories get the best/worst reviews?
9. Which payment method is most popular?
10. Does the number of installments affect customer satisfaction?

## 🧠 Skills Demonstrated
- Multi-table JOINs across a 9-table relational schema
- Common Table Expressions (CTEs)
- Window functions (RANK, OVER/PARTITION)
- Date functions (DATEDIFF, DATE_FORMAT)
- Aggregations and GROUP BY analysis
- Real-world schema design with primary/foreign keys

## ▶️ How to Run
1. Create the database and tables: run `schema.sql` in MySQL Workbench
2. Import each Olist CSV into its matching table using the Table Data Import Wizard
   (import order matters — see comments in `schema.sql`)
3. Run any query from `queries.sql` to explore the data
