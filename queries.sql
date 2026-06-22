-- Total revenue per month
SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY month
ORDER BY month;

-- Top 10 product categories by revenue
SELECT 
    p.product_category_name,
    ROUND(SUM(oi.price), 2) AS revenue,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

--  Customers by state
SELECT 
    customer_state,
    COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;

-- Order status breakdown (% of each status)
SELECT 
    order_status,
    COUNT(*) AS total,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM orders
GROUP BY order_status
ORDER BY total DESC;

-- Top 5 months by revenue (Window Function)
SELECT month, total_revenue, revenue_rank
FROM (
    SELECT 
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
        ROUND(SUM(oi.price), 2) AS total_revenue,
        RANK() OVER (ORDER BY SUM(oi.price) DESC) AS revenue_rank
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY month
) AS monthly_revenue
WHERE revenue_rank <= 5;

-- Average delivery time by state
SELECT 
    c.customer_state,
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)), 1) AS avg_delivery_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY avg_delivery_days DESC;

-- Top 5 customers by total spend
WITH customer_spend AS (
    SELECT 
        c.customer_id,
        c.customer_state,
        SUM(oi.price) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.customer_state
)
SELECT *
FROM customer_spend
ORDER BY total_spent DESC
LIMIT 5;