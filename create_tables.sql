CREATE DATABASE telecom_5g_project;

CREATE TABLE countries (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100)
);


CREATE TABLE operators (
    operator_id INT PRIMARY KEY AUTO_INCREMENT,
    operator_name VARCHAR(100),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);


CREATE TABLE deployments_5g (
    deployment_id INT PRIMARY KEY AUTO_INCREMENT,
    operator_id INT,
    year INT,
    number_of_cities INT,
    base_stations INT,
    users_5g_thousands INT,
    investment_million_eur DECIMAL(10,2),
    revenue_million_eur DECIMAL(10,2),
    FOREIGN KEY (operator_id) REFERENCES operators(operator_id)
);


CREATE TABLE countries (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100)
);

CREATE TABLE operators (
    operator_id INT PRIMARY KEY AUTO_INCREMENT,
    operator_name VARCHAR(100),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE deployments_5g (
    deployment_id INT PRIMARY KEY AUTO_INCREMENT,
    operator_id INT,
    year INT,
    number_of_cities INT,
    base_stations INT,
    users_5g_thousands INT,
    investment_million_eur DECIMAL(10,2),
    revenue_million_eur DECIMAL(10,2),
    FOREIGN KEY (operator_id) REFERENCES operators(operator_id)
);






