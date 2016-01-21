DROP user IF EXISTS "indexed_cars_user";

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars;
 -- indexed_cars_user;

\c indexed_cars;

\i Automotive-Index/scripts/car_models.sql

\i Automotive-Index/scripts/car_model_data.sql



\dt

-- SELECT * FROM