--Part Three: Soccer League
--Design a schema for a simple sports league. Your schema should keep track of

--All of the teams in the league
--All of the goals scored by every player for each game
--All of the players in the league and their corresponding teams
--All of the referees who have been part of each game
--All of the matches played between teams
--All of the start and end dates for season that a league has
--The standings/rankings of each team in the league (This doesn't have to be its own table if the data can be captured somehow).

-- from the terminal run:
-- psql < Part3_Soccer_league.sql

DROP DATABASE IF EXISTS Soccer_league;

CREATE DATABASE Soccer_league;

CRETAE TABLE Leagues (
    league_ID SERIAL PRIMARY KEY,
    team TEXT NOT NULL UNIQUE, 
    ranking INT NOT NULL, 
);

CREATE TABLE Games (
    game_ID SERIAL PRIMARY KEY,
    team_ID PRIMARY KEY REFERENCES(Teams)
    player TEXT NOT NULL,
    Goals INT NOT NULL, 
);

CREATE TABLE Seasons (
    season_ID SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
);

CREATE TABLE Referees (
    referee_ID SERIAL PRIMARY KEY,
    Full_name TEXT NOT NULL, 
);

CREATE TABLE Teams (
    team_ID SERIAL PRIMARY KEY,
    match_ID PRIMARY KEY REFERENCES(Matches),
    league_ID PRIMARY KEY REFERENCES(Leagues),
    player PRIMARY KEY REFERENCES(Games),
);

CREATE TABLE Matches (
    match_ID SERIAL PRIMARY KEY,
    referee_ID PRIMARY KEY REFERENCES(Referees)
    game_ID PRIMARY KEY REFERENCES(Games)
    Team_1_ID PRIMARY KEY REFERENCES(Teams)
    Team_2_ID PRIMARY KEY REFERENCES(Teams)
    season_ID PRIMARY KEY REFERENCES(Seasons),
    league_ID PRINARY KEY REFERENCES(Leagues)
);