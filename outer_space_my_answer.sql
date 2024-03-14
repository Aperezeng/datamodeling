-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL, 
  galaxy TEXT NOT NULL,
  number_of_moons INT,
);

CREATE TABLE moons(
  moon_id SERIAL PRIMARY KEY,
  name_of_moon TEXT NOT NULL,
  What_planet_it_belongs TEXT NOT NULL, 
); 

INSERT INTO moons(
  (name_of_moon, What_planet_it_belongs)
VALUES
  ('The Moon', 'Earth')
  ('Phobos', 'Mars') 
  ('Phobos', 'Mars'),
  ('Naiad', 'Neptune')
  ('Thalassa', 'Neptune')
  ('Despina', 'Neptune') 
  ('Galatea', 'Neptune') 
  ('Larissa', 'Neptune') 
  ('S/2004 N 1', 'Neptune')  
  ('Proteus', 'Neptune') 
  ('Triton', 'Neptune') 
  ('Nereid', 'Neptune') 
  ('Halimede', 'Neptune') 
  ('Sao', 'Neptune') 
  ('Laomedeia', 'Neptune') 
  ('Psamathe', 'Neptune') 
  ('Neso','Neptune') 
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
)

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, number_of_moons)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', 1),
  ('Mars', 1.88, 'The Sun', 'Milky Way', 2),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '0),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 14),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', 0),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', 0);

  