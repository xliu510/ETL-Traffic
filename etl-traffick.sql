CREATE DATABASE ETL_Traffic;
USE ETL_Traffic;

drop table referrals_minor_df_2014;
drop table referrals_all_df_2014;
drop table referrals_adult_df_2014;

CREATE TABLE referrals_minor_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_minor INT,
   male_minor INT,
   total_minor INT,
   year INT
);


CREATE TABLE referrals_all_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_all INT,
   male_all INT,
   total_all INT,
   year INT
);

CREATE TABLE referrals_adult_df_2014 (
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nationality TEXT,
   female_adult INT,
   male_adult INT,
   total_adult INT,
   year INT
);


