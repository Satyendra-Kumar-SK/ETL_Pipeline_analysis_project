
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



CREATE TABLE population (
    Population_id INT AUTO_INCREMENT,
    Population INT NOT NULL,
    Year_Data_Retrieved VARCHAR(255),
    City_id INT,
    PRIMARY KEY (Population_id),
    FOREIGN KEY (City_id) REFERENCES cities(City_id)
);


DROP TABLE IF EXISTS city_weather;

CREATE TABLE city_weather (
    city VARCHAR(100),
    forecast_time DATETIME,
    weather_forecast VARCHAR(255),
    temperature FLOAT,
    rain_in_last_3h FLOAT,
    wind_speed FLOAT,
    rain_prob FLOAT,
    data_retrieved_at DATETIME
);

SELECT * FROM city_weather;

ALTER TABLE city_weather
ADD COLUMN weather_forcast VARCHAR (255);


 CREATE TABLE airports (
  airport_icao VARCHAR(4) PRIMARY KEY,
  airport_name VARCHAR(255)
);
 
 
  DROP TABLE IF EXISTS flights;
  
  CREATE TABLE flights (
  arrival_airport_icao VARCHAR(10),
  departure_airport_icao VARCHAR(10),
  scheduled_arrival_time DATETIME,
  flight_number VARCHAR(20),
  data_retrieved_at DATETIME,
  departure_airport_name VARCHAR(100)
);

SELECT * FROM flights;