
-- Validate final dataset for Tableau
SELECT
    COUNT(*) AS total_rows,

    COUNT(DISTINCT order_id) AS distinct_orders,

    COUNT(DISTINCT order_id) FILTER (
        WHERE is_returned = 1
    ) AS returned_orders,

    COUNT(*) FILTER (
        WHERE regional_manager IS NULL
    ) AS missing_managers,

    COUNT(*) FILTER (
        WHERE order_date IS NULL
           OR ship_date IS NULL
    ) AS missing_dates,

    MIN(order_date) AS earliest_order,
    MAX(order_date) AS latest_order,

    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit

FROM superstore_tableau;