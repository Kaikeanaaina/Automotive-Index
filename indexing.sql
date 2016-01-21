DROP user IF EXISTS "indexed_cars_user";

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars;
 -- indexed_cars_user;

\c indexed_cars;

\i Automotive-Index/scripts/car_models.sql

\i Automotive-Index/scripts/car_model_data.sql

\timing

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

-- this enables the timing thing
-- it shows you how long it takes for the process to finish

-- DISTINCT make sure there are no duplicates

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';





\dt

-- SELECT * FROM car_models;