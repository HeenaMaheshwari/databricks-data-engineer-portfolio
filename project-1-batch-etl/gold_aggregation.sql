-- Create Gold table with business-ready aggregations
CREATE OR REPLACE TABLE gold_sales_summary AS
SELECT
    region,
    order_date,
    SUM(amount) AS total_sales,
    COUNT(order_id) AS total_orders
FROM silver_sales
GROUP BY region, order_date;
