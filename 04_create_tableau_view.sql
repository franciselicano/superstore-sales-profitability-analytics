
CREATE OR REPLACE VIEW superstore_tableau AS
SELECT
    -- Order information
    o.row_id,
    o.order_id,
    TO_DATE(o.order_date, 'MM/DD/YYYY') AS order_date,
    TO_DATE(o.ship_date, 'MM/DD/YYYY') AS ship_date,
    o.ship_mode,

    -- Customer information
    o.customer_id,
    o.customer_name,
    o.segment,

    -- Geographic information
    o.country_region,
    o.city,
    o.state_province,
    o.postal_code,
    o.region,
    p.regional_manager,

    -- Product information
    o.product_id,
    o.category,
    o.sub_category,
    o.product_name,

    -- Financial metrics
    o.sales,
    o.quantity,
    o.discount,
    o.profit,

    -- Return indicator
    CASE
        WHEN r.order_id IS NOT NULL THEN 1
        ELSE 0
    END AS is_returned

FROM superstore_orders o

LEFT JOIN superstore_people p
    ON o.region = p.region

LEFT JOIN superstore_returns r
    ON o.order_id = r.order_id;