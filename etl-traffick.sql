# Dropping Database
DROP DATABASE if exists ETL_Traffic_UK;

# Creating Database
CREATE DATABASE if not exists ETL_Traffic_UK;
USE ETL_Traffic_UK;


#################################################
# 2014 DataBase
#################################################

# Creating 2014 Minor DataBase
CREATE TABLE  if not exists referrals_minor_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_minor INT,
   male_minor INT,
   total_minor INT,
   year INT
);

# Creating 2014 Adult DataBase
CREATE TABLE  if not exists referrals_adult_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_adult INT,
   male_adult INT,
   total_adult INT,
   year INT
);

# Creating 2014 All DataBase
CREATE TABLE  if not exists referrals_all_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_all INT,
   male_all INT,
   total_all INT,
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
       
       
#################################################
# 2015 DataBase
#################################################

# Creating 2015 Minor DataBase
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

# Creating 2015 Adult DataBase
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

# Creating 2015 All DataBase
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
    
# Merge 2015 tables into 1 table  
	CREATE TABLE IF NOT EXISTS data_2015 AS SELECT minor_trafficking_UK_2015.nationality,
    minor_trafficking_UK_2015.`2015 Minor Total`,
    adult_trafficking_UK_2015.`2015 Adult Total`,
    all_trafficking_UK_2015.`2015 Total`,
    all_trafficking_UK_2015.year FROM
    minor_trafficking_UK_2015,
    adult_trafficking_UK_2015,
    all_trafficking_UK_2015
WHERE
    minor_trafficking_UK_2015.nationality = adult_trafficking_UK_2015.nationality
        AND minor_trafficking_UK_2015.nationality = all_trafficking_UK_2015.nationality;

# Creating 2015 Minor and Adult DataBase
CREATE TABLE if not exists trafficking_UK_2015 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude Minor` INT,
    `Labour Exploitation Minor` INT,
    `Organ Harvesting Minor` INT,
    `Sexual Exploitation Minor` INT,
    `Unknown Exploitation Minor` INT,
    `2015 Minor Total` INT,
	`Domestic Servitude Adult` INT,
    `Labour Exploitation Adult` INT,
    `Organ Harvesting Adult` INT,
    `Sexual Exploitation Adult` INT,
    `Unknown Exploitation Adult` INT,
    `2015 Adult Total` INT,
	PRIMARY KEY(id));
    
    
#################################################
# 2016 DataBase
#################################################

# Creating 2016 Minor DataBase
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

# Creating 2016 Adult DataBase
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

# Creating 2016 All DataBase
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
    show tables;
    
# Merge 2016 tables into 1 table
    CREATE TABLE IF NOT EXISTS data_2016 AS SELECT minor_trafficking_UK_2016.nationality,
    minor_trafficking_UK_2016.`2016 Minor Total`,
    adult_trafficking_UK_2016.`2016 Adult Total`,
    all_trafficking_UK_2016.`2016 Total`,
    all_trafficking_UK_2016.year FROM
    minor_trafficking_UK_2016,
    adult_trafficking_UK_2016,
    all_trafficking_UK_2016
WHERE
    minor_trafficking_UK_2016.nationality = adult_trafficking_UK_2016.nationality
        AND minor_trafficking_UK_2016.nationality = all_trafficking_UK_2016.nationality;
        
# Creating 2016 Minor and Adult DataBase
CREATE TABLE if not exists trafficking_UK_2016 (
	id INT NOT NULL AUTO_INCREMENT,
	Year INT,
	Nationality VARCHAR(250),
    `Domestic Servitude Minor` INT,
    `Labour Exploitation Minor` INT,
    `Sexual Exploitation Minor` INT,
    `Unknown Exploitation Minor` INT,
    `2016 Minor Total` INT,
	`Domestic Servitude Adult` INT,
    `Labour Exploitation Adult` INT,
    `Organ Harvesting Adult` INT,
    `Sexual Exploitation Adult` INT,
    `Unknown Exploitation Adult` INT,
    `2016 Adult Total` INT,
	PRIMARY KEY(id));