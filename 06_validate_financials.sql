-- Reconcile financial metrics
SELECT
    'Raw Orders' AS source,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_orders

UNION ALL

SELECT
    'Tableau View',
    ROUND(SUM(sales), 2),
    ROUND(SUM(profit), 2)
FROM superstore_tableau;