INSERT INTO countries (country_name)
VALUES ('Germany'), ('France'), ('Spain');

INSERT INTO operators (operator_name, country_id)
VALUES 
('Deutsche Telekom', 1),   -- Germany
('Orange', 2),              -- France
('Telefonica', 3);          -- Spain

INSERT INTO deployments_5g (
    operator_id, year, number_of_cities, base_stations, 
    users_5g_thousands, investment_million_eur, revenue_million_eur
)
VALUES 
(1, 2019, 20, 500, 200, 300.00, 150.00),
(1, 2022, 100, 2000, 1500, 700.00, 900.00),
(2, 2020, 50, 1000, 800, 400.00, 320.00),
(3, 2021, 80, 1500, 1200, 500.00, 450.00);

