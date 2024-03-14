--Design the schema for a medical center.

--A medical center employs several doctors
--A doctors can see many patients
--A patient can be seen by many doctors
--During a visit, a patient may be diagnosed to have one or more diseases.

-- from the terminal run:
-- psql < Part1_Medical_Center.sql

DROP DATABASE IF EXISTS Medical_Center;

CREATE DATABASE Medical_Center;

\c Medical_Center

CREATE TABLE Doctors Management (
Employee_ID SERIAL PRIMARY KEY
Last_name TEXT
First_name TEXT
Specialty TEXT
); 

CREATE TABLE Patient Portal (
Patient_ID SERIAL PRIMARY KEY,
Last_Name TEXT NOT NULL,
First_name TEXT NOT NULL,
DOB DATE NOT NULL,
SSN UNIQUE,
SEX TEXT NOT NULL,
Insurance TEXT NOT NULL,
);

CREATE TABLE CHART (
CHART_ID SERIAL PRIMARY KEY,
Patient_ID PRIMARY KEY NOT NULL, 
Date_of_visit DATE NOT NULL, 
Doctor_ID PRIMARY KEY NOT NULL,
Notes TEXT NOT NULL, 
);

CREATE TABLE DISEASES (
Disease_ ID SERIAL PRIMARY KEY,
Name TEXT NOT NULL, 
Description TEXT NOT NULL, 
);

CREATE TABLE VISITS (
    Doctor_ID PRIMARY KEY NOT NULL, 
    Patient_ID PRIMARY KEY NOT NULL, 
    Date_of_visit DATE,
); 