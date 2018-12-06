CREATE DATABASE ETL_Traffic;
USE ETL_Traffic;

# 2014 Data Base

CREATE TABLE  if not exists referrals_minor_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_minor INT,
   male_minor INT,
   total_minor INT,
   year INT
);


CREATE TABLE  if not exists referrals_all_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_all INT,
   male_all INT,
   total_all INT,
   year INT
);

CREATE TABLE  if not exists referrals_adult_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_adult INT,
   male_adult INT,
   total_adult INT,
   year INT
);

# Merge 2014 tables into 1 table
CREATE TABLE IF NOT EXISTS data_2014 AS SELECT referrals_minor_df_2014.nationality,
    referrals_minor_df_2014.female_minor,
    referrals_minor_df_2014.male_minor,
    referrals_minor_df_2014.total_minor,
    referrals_adult_df_2014.female_adult,
    referrals_adult_df_2014.male_adult,
    referrals_adult_df_2014.total_adult,
    referrals_all_df_2014.female_all,
    referrals_all_df_2014.male_all,
    referrals_all_df_2014.total_all,
    referrals_all_df_2014.year FROM
    referrals_all_df_2014,
    referrals_adult_df_2014,
    referrals_minor_df_2014
WHERE
    referrals_adult_df_2014.nationality = referrals_minor_df_2014.nationality
        AND referrals_adult_df_2014.nationality = referrals_all_df_2014.nationality;
        

CREATE TABLE if not exists trafficking (
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

CREATE TABLE if not exists minor_trafficking_UK_2015 (
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

CREATE TABLE if not exists adult_trafficking_UK_2015 (
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
    
CREATE TABLE if not exists all_trafficking_UK_2015 (
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


CREATE TABLE if not exists minor_trafficking_UK_2016 (
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

CREATE TABLE if not exists adult_trafficking_UK_2016 (
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
    
CREATE TABLE if not exists all_trafficking_UK_2016 (
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
    
    