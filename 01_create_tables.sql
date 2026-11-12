
-- TABLE 1: ORDERS
CREATE TABLE superstore_orders (
    row_id INTEGER,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country_region TEXT,
    city TEXT,
    state_province TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);

-- TABLE 2: PEOPLE
CREATE TABLE superstore_people (
    regional_manager TEXT,
    region TEXT
);

-- TABLE 3: RETURNS
CREATE TABLE superstore_returns (
    order_id TEXT,
    returned TEXT
);