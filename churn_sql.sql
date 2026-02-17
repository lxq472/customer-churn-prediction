-- Schema/Base Table
-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    revenue NUMERIC(10,2)
);


-- Customer Churn Feature Engineering

CREATE TABLE customer_features AS
SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS avg_order_value,
    MAX(order_date) AS last_purchase_date,
    CURRENT_DATE - MAX(order_date) AS days_since_last_purchase,

    CASE
        WHEN CURRENT_DATE - MAX(order_date) > 180 THEN 1
        ELSE 0
    END AS churn_flag

FROM orders
GROUP BY customer_id;


-- Quick check
SELECT *
FROM customer_features
ORDER BY days_since_last_purchase DESC;

-- Active vs Inactive segmentation
SELECT
    CASE
        WHEN days_since_last_purchase > 180 THEN 'Inactive'
        ELSE 'Active'
    END AS customer_status,
    COUNT(*) AS customers
FROM customer_features
GROUP BY customer_status;