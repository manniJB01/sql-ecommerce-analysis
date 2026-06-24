# SQL E-Commerce Data Analysis Project

## 📌 Project Overview
This project focuses on extracting actionable business intelligence from an e-commerce platform's transactional database using advanced SQL. The analysis covers critical business verticals, including **financial performance**, **product profitability**, **customer demographics**, and **logistics/supply chain efficiency**. 

By querying relational data across customers, orders, order items, and products, this project answers key operational questions to help optimize revenue and improve customer satisfaction.

---

## 🛠️ Tech Stack & Advanced SQL Concepts Used
* **Database Engine:** MySQL / PostgreSQL compatibility
* **Joins & Aggregations:** `INNER JOIN`, `GROUP BY`, `ROUND()`, `SUM()`, `COUNT()`
* **Date Manipulation:** `DATE_FORMAT()`, `DATEDIFF()`
* **Advanced Analytics:** * **Window Functions:** `RANK() OVER()` and `SUM() OVER()` for percentage distribution and competitive ranking.
  * **Common Table Expressions (CTEs):** `WITH` clauses to isolate complex multi-stage aggregations cleanly.

---

## 🔍 Key Business Metrics Analyzed

### 1. Financial & Sales Trend Analysis
* **Monthly Revenue Generation:** Tracks the company's financial growth trajectory over time by aggregating price totals on all completed (`delivered`) transactions.
* **Peak Revenue Months:** Implements a Window Function subquery to rank and filter the **Top 5 highest-earning months** in the platform’s history.

### 2. Product & Inventory Performance
* **Top 10 Product Categories:** Identifies which product categories generate the highest total revenue versus total order volume, helping pinpoint high-value inventory items.

### 3. Customer Demographics & Value
* **Geographic Distribution:** Groups user bases by `customer_state` to show where the platform has the highest market penetration.
* **High-Value Customers (VIPs):** Utilizes a **CTE** to calculate individual lifetime spend across multiple orders, isolating the **Top 5 highest-spending customers** for targeted loyalty marketing.

### 4. Supply Chain & Operations
* **Order Status Breakdown:** Calculates the exact operational health of the pipeline, using an analytic window function to find the percentage distribution of orders (e.g., *Delivered, Canceled, Shipped, Invoiced*).
* **Logistics Efficiency by Region:** Measures the exact average delivery latency (`DATEDIFF` from purchase to delivery) across different states to identify bottlenecked regions.

---

## 📂 Query Breakdown & Repository Structure

* **`Total Revenue Per Month`** — Financial forecasting and macro trend tracking.
* **`Top 10 Product Categories`** — Inventory management and merchandise optimization.
* **`Customers by State`** — Geographic target mapping.
* **`Order Status Breakdown (% Partition)`** — Operations quality control.
* **`Top 5 Months by Revenue (Window Function)`** — Macro-economic performance ranking.
* **`Average Delivery Time by State`** — Service Level Agreement (SLA) auditing.
* **`Top 5 Customers by Total Spend (CTE)`** — Customer Lifetime Value (CLV) analysis.

---

## 🚀 How to Run This Project
1. Clone the repository:
   ```bash
   git clone [https://github.com/Manishmehra11/sql-ecommerce-analysis.git](https://github.com/Manishmehra11/sql-ecommerce-analysis.git)
