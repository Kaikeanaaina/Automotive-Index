DROP user IF EXISTS "indexed_cars_user";

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars;
 -- indexed_cars_user;

\c indexed_cars;

\i Automotive-Index/scripts/car_models.sql

\i Automotive-Index/scripts/car_model_data.sql

--\timing

-- --1
-- SELECT DISTINCT make_title
-- FROM car_models
-- WHERE make_code = 'LAM';

-- this enables the timing thing
-- it shows you how long it takes for the process to finish

-- DISTINCT make sure there are no duplicates

-- --2
-- SELECT DISTINCT make_title,
-- FROM car_models
-- WHERE make_code = 'NISSAN' AND model_code = 'GT-R';


-- --3
-- SELECT make_code, model_code, model_title, year
-- FROM car_models
-- WHERE make_code = 'LAM';

-- -- --4
-- SELECT count(*)
-- FROM car_models
-- WHERE year BETWEEN 2010 AND 2015;

-- --5
-- SELECT count(*)
-- FROM car_models
-- WHERE year = 2010;

CREATE INDEX get_make_code
  ON car_models (make_code);

CREATE INDEX get_model_title
  ON car_models (make_code, model_code);

CREATE INDEX get_car_year
  ON car_models (year)



--\dt

-- SELECT * FROM car_models;