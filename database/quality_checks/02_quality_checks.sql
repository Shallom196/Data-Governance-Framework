-- Purpose: Basic data quality checks for Soyombo Imagineering Inc.
-- Created: [Today's Date]

-- Create view for basic data quality metrics
CREATE VIEW quality_metrics.daily_quality_check AS
SELECT 
    CURRENT_TIMESTAMP as check_time,
    'Customer Data' as domain,
    (SELECT COUNT(*) FROM customer_data.customers) as total_records,
    (SELECT COUNT(*) FROM customer_data.customers WHERE email IS NULL) as missing_emails,
    (SELECT COUNT(*) FROM customer_data.customers WHERE phone IS NULL) as missing_phones,
    (SELECT COUNT(*) FROM customer_data.customers WHERE address IS NULL) as missing_addresses;

-- Relationship check query
SELECT 
    c.first_name,
    c.last_name,
    o.order_date,
    o.status,
    o.total_amount,
    COUNT(o.order_id) as total_orders
FROM customer_data.customers c
LEFT JOIN product_data.orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.first_name,
    c.last_name,
    o.order_date,
    o.status,
    o.total_amount
ORDER BY c.last_name;