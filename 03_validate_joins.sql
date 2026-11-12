
-- Validate joins between Orders, People, and Returns
SELECT
    COUNT(*) AS joined_rows,

    COUNT(*) FILTER (
        WHERE p.regional_manager IS NULL
    ) AS orders_without_manager,

    COUNT(DISTINCT r.order_id) AS returned_orders

FROM superstore_orders o

LEFT JOIN superstore_people p
    ON o.region = p.region

LEFT JOIN superstore_returns r
    ON o.order_id = r.order_id;