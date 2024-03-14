-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  album TEXT NOT NULL,
);

INSERT INTO songs
  (title, duration_in_seconds, release_date, album)
VALUES
  ('MMMBop', 238, '04-15-1997', 'Middle of Nowhere'),
  ('Bohemian Rhapsody', 355, '10-31-1975', 'A Night at the Opera'),
  ('One Sweet Day', 282, '11-14-1995', 'Daydream'),
  ('Shallow', 216, '09-27-2018', 'A Star Is Born'),
  ('How You Remind Me', 223, '08-21-2001', 'Silver Side Up'),
  ('New York State of Mind', 276, '10-20-2009', 'The Blueprint 3'),
  ('Dark Horse', 215, '12-17-2013', 'Prism'),
  ('Moves Like Jagger', 201, '06-21-2011', 'Hands All Over'),
  ('Complicated', 244, '05-14-2002', 'Let Go'),
  ('Say My Name', 240, '11-07-1999', 'The Writing''s on the Wall');

CREATE TABLE Artists (
  id_1 SERIAL PRIMARY KEY,
  main_artist TEXT NOT NULL,
  id_2 SERIAL PRIMARY KEY,
  featuring_artist TEXT NOT NULL,
  song_title TEXT NOT NULL,
)

INSERT INTO Artists
  (main_artists, featuring_artist, song_title)
VALUES
  ('Hanson', 'None', 'MMMBop'),
  ('Queen', 'None', 'Bohemian Rhapsody'),
  ('Mariah Carey', 'Boyz II Men', 'One Sweet Day'),
  ('Lady Gaga', 'Bradley Cooper', 'Shallow'),
  ('Nickelback', 'None', 'How You Remind Me'),
  ('Jay Z', 'Alicia Keys', 'New York State of Mind'),
  ('Katy Perry', 'Juicy J', 'Dark Horse'),
  ('Maroon 5', 'Christina Aguilera', 'Moves Like Jagger'),
  ('Avril Lavigne', 'None', 'Complicated'),
  ('Destiny''s Child', 'None', 'Say My Name');

CREATE TABLE Producers (
  id1 SERIAL PRIMARY KEY,
  producer_1 TEXT NOT NULL,
  id2 SERIAL PRIMARY KEY,
  producer_2 TEXT NOT NULL,
  song_title TEXT NOT NULL,
)

INSERT INTO Producers
  (producer_1, producer_2, song_title)
VALUES
  ('Dust Brothers', 'None' 'Stephen Lironi', 'MMMBop'),
  ('Roy Thomas Baker', 'None' 'Bohemian Rhapsody'),
  ('Walter Afanasieff' 'None' One Sweet Day'),
  ('Benjamin Rice', 'None', 'Shallow'),
  ('Rick Parashar', 'None' 'How You Remind Me'),
  ('Al Shux', 'None', 'New York State of Mind'),
  ('Max Martin', 'Cirkut', 'Dark Horse'),
  ('Shellback', 'Benny Blanco', 'Moves Like Jagger'),
  ('The Matrix', 'None' 'Complicated'),
  ('Darkchild', 'None', 'Say My Name');
