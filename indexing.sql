DROP user IF EXISTS "indexed_cars_user";

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars;
 -- indexed_cars_user;

\c indexed_cars;








\dt

-- SELECT * FROM