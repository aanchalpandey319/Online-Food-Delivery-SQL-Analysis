-- ==========================================
-- Online Food Delivery Data Analysis
-- Database: food_delivery_db
-- Author: Aanchal Pandey
-- ==========================================

USE food_delivery_db;

-- 1. Total Orders & Total Revenue
SELECT
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_revenue
FROM orders;

-- 2. City-wise Revenue
SELECT
    r.city,
    SUM(o.amount) AS city_revenue
FROM orders o
JOIN restaurants r
    ON o.restaurant_id = r.restaurant_id
GROUP BY r.city
ORDER BY city_revenue DESC;

