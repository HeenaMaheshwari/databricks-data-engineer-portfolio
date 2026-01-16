-- Silver layer transformations will be added here
-- Create Silver table with cleaned and transformed data
CREATE OR REPLACE TABLE silver_sales AS
SELECT
    order_id,
    customer_id,
    CAST(order_date AS DATE) AS order_date,
    CAST(amount AS DOUBLE) AS amount,
    region
FROM delta.`/mnt/bronze/sales/`
WHERE order_id IS NOT NULL
  AND amount IS NOT NULL;

