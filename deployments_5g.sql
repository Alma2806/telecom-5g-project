ALTER TABLE deployments_5g
ADD COLUMN users_4g_thousands INT,
ADD COLUMN users_3g_thousands INT,
ADD COLUMN avg_package_value_eur DECIMAL(10,2);

SHOW COLUMNS FROM deployments_5g;



SELECT 
    c.country_name,
    o.operator_name,
    d.year,
    d.users_3g_thousands,
    d.users_4g_thousands,
    d.users_5g_thousands
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
JOIN countries c ON o.country_id = c.country_id
ORDER BY d.year;

DESCRIBE deployments_5g;

UPDATE deployments_5g
SET users_4g_thousands = 800,
    users_3g_thousands = 1000,
    avg_package_value_eur = 29.99
WHERE deployment_id = 1;

UPDATE deployments_5g
SET users_4g_thousands = 1200,
    users_3g_thousands = 500,
    avg_package_value_eur = 39.99
WHERE deployment_id = 2;

UPDATE deployments_5g
SET users_4g_thousands = 1000,
    users_3g_thousands = 700,
    avg_package_value_eur = 35.50
WHERE deployment_id = 3;

UPDATE deployments_5g
SET users_4g_thousands = 1100,
    users_3g_thousands = 300,
    avg_package_value_eur = 42.00
WHERE deployment_id = 4;



