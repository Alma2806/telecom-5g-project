ALTER TABLE deployments_5g
ADD avg_package_value_eur DECIMAL(10,2);

SELECT 
    o.operator_name,
    d.year,
    d.users_5g_thousands,
    d.avg_package_value_eur
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
ORDER BY d.year;
