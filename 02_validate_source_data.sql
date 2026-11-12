
-- Validate source table row counts
SELECT 'Orders' AS table_name, COUNT(*) AS row_count
FROM superstore_orders

UNION ALL

SELECT 'People', COUNT(*)
FROM superstore_people

UNION ALL

SELECT 'Returns', COUNT(*)
FROM superstore_returns;


-- Validate lookup table join key uniqueness
SELECT
    'People' AS table_name,
    COUNT(*) - COUNT(DISTINCT region) AS duplicate_count
FROM superstore_people

UNION ALL

SELECT
    'Returns',
    COUNT(*) - COUNT(DISTINCT order_id)
FROM superstore_returns;