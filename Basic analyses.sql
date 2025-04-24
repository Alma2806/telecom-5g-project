SELECT o.operator_name, SUM(d.number_of_cities) AS total_cities_5g
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
GROUP BY o.operator_name;

SELECT 
    c.country_name, 
    o.operator_name, 
    d.year, 
    d.users_5g_thousands AS users_5g_k
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
JOIN countries c ON o.country_id = c.country_id
ORDER BY c.country_name, d.year;


SELECT 
    c.country_name, 
    o.operator_name,
    SUM(d.investment_million_eur) AS total_investment
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
JOIN countries c ON o.country_id = c.country_id
GROUP BY c.country_name, o.operator_name;


SELECT 
    c.country_name,
    o.operator_name,
    ROUND(SUM(d.revenue_million_eur) / NULLIF(SUM(d.investment_million_eur), 0), 2) AS roi
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
JOIN countries c ON o.country_id = c.country_id
GROUP BY c.country_name, o.operator_name;


SELECT 
    c.country_name,
    o.operator_name,
    d.year,
    SUM(d.base_stations) AS total_base_stations
FROM deployments_5g d
JOIN operators o ON d.operator_id = o.operator_id
JOIN countries c ON o.country_id = c.country_id
GROUP BY c.country_name, o.operator_name, d.year
ORDER BY d.year;




