
-- Drop the database if it already exists
-- DROP DATABASE IF EXISTS gans_local;


-- Create the database
CREATE DATABASE gans_local;

-- Use the database
USE gans_local;


CREATE TABLE cities (
    City_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    City_name VARCHAR(255) NOT NULL, -- Name of the city
    Country VARCHAR(255) NOT NULL, -- Name of the country
    PRIMARY KEY (City_id) -- Primary key to uniquely identify each city
);

SELECT* FROM cities;


CREATE TABLE population (
    Population_id INT AUTO_INCREMENT,
    Population INT NOT NULL,
    Year_Data_Retrieved VARCHAR(255),
    City_id INT,
    PRIMARY KEY (Population_id),
    FOREIGN KEY (City_id) REFERENCES city_info(City_id)
);

SELECT * FROM population;



CREATE TABLE Cities_weather (
   forecast_id INT AUTO_INCREMENT,
   city_id INT,
   forecast_time DATETIME,
   Weather_forcast VARCHAR(255) NOT NULL,
   temperature FLOAT,
   rain_in_last_3h FLOAT,
   wind_speed FLOAT,
   rain_prob FLOAT,
   data_retrieved_at DATETIME,
   PRIMARY KEY (forecast_id),
   FOREIGN KEY (city_id) REFERENCES city_infos(city_id)
);

SELECT * FROM Cities_weather;

