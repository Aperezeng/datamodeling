--Part Two: Craigslist
--Design a schema for Craigslist! Your schema should keep track of the following

--The region of the craigslist post (San Francisco, Atlanta, Seattle, etc)
--Users and preferred region
--Posts: contains title, text, the user who has posted, the location of the posting, the region of the posting
--Categories that each post belongs to

-- from the terminal run:
-- psql < Part2_Craiglist.sql

DROP DATABASE IF EXISTS Craiglist;

CREATE DATABASE Craiglist;

\c Craiglist

CREATE TABLE Region (
    Region_ID SERIAL PRIMARY KEY,
    State TEXT NOT NULL, 
    County TEXT NOT NULL, 
    Zip_Code INT NOT NULL, 
);

CREATE TABLE User_Preface (
    User_ID SERIAL PRIMARY KEY, 
    User_name TEXT NOT NULL CHECK(user_name < 10),
    Zip_Code INT NOT NULL REFERENCES(Region),
    Password TEXT UNIQUE NOT NULL CHECK(password < 20),
);

CREATE TABLE Posts (
    Post_ID SERIAL PRIMARY KEY, 
    Category_ID INT NOT NULL REFERENCES(categories),
    User_ID INT NOT NULL REFERENCES(User_Preface),
    Region_ID INT NOT NULL REFERENCES(Region)
    title TEXT NOT NULL,
    text TEXT NOT NULL CHECK(text > 500), 
);

CREATE TABLE Categories (
    Category_ID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL
    Description TEXT NOT NULL CHECK(text > 2000), 
);