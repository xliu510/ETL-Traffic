CREATE DATABASE etl_traffic;
USE ETL_Traffic;

DROP DATABASE etl_traffic;
DROP TABLE trafficking;

CREATE TABLE trafficking (
	id INT NOT NULL AUTO_INCREMENT,
    nationality VARCHAR(250),
    year INT,
	male_adult INT,
    female_adult INT,
	male_minor INT,
    female_minor INT,
	male_all INT,
    female_all INT,
    total_minor INT,
    total_adult INT,
    total_all INT,
    PRIMARY KEY(id));
    
    
# 2015 Data Base

CREATE DATABASE ETL_Traffic_UK;
USE ETL_Traffic_UK;

CREATE TABLE minor_trafficking_UK_2015 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2015 Minor Total` INT,
	PRIMARY KEY(id));

CREATE TABLE adult_trafficking_UK_2015 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2015 Adult Total` INT,
	PRIMARY KEY(id));
    
CREATE TABLE all_trafficking_UK_2015 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2015 Total` INT,
	PRIMARY KEY(id));
    

# 2016 Data Base

CREATE DATABASE ETL_Traffic_UK_2016;
USE ETL_Traffic;

CREATE TABLE minor_trafficking_UK_2016 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2016 Minor Total` INT,
	PRIMARY KEY(id));

CREATE TABLE adult_trafficking_UK_2016 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2016 Adult Total` INT,
	PRIMARY KEY(id));
    
CREATE TABLE all_trafficking_UK_2016 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude` INT,
    `Labour Exploitation` INT,
    `Organ Harvesting` INT,
    `Sexual Exploitation` INT,
    `Unknown Exploitation` INT,
    `2016 Total` INT,
	PRIMARY KEY(id));