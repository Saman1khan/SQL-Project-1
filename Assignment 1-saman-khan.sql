/*--Assignment-you’ll need to create a MySQL database that stores information about 10 different people 
and their educational experience.
1-Create a database named people_education 
2- Show that the database has been created*/
CREATE DATABASE people_education;
SHOW DATABASES;

/*Create a table named people_info*/
USE people_education;
CREATE TABLE people_info(name VARCHAR(255),age FLOAT,highschool_name VARCHAR(255),height FLOAT);

/*Create a table named school_info.*/
USE people_education;
CREATE TABLE school_info(schoo_lname VARCHAR(255),zip_code INT);
USE people_education;
ALTER TABLE school_info RENAME COLUMN schoo_lname TO school_name;

/*Create a table named school_mascot*/
USE people_education;
CREATE TABLE school_mascot(school_name VARCHAR(255),school_mascot VARCHAR(255));

/*Show all tables using the show tables; command*/
USE people_education;
SHOW TABLES;

/*Delete the school_mascot table*/
USE people_education;
DROP TABLE school_mascot;

/*“Poll” at least 4 different people and record the information about them*/
USE people_education;
INSERT INTO people_info (name,age,highschool_name,height) VALUES ("sunil",15,"RLPS",168),
("prabha",14,"RLPS",165),
("vinita",14,"RLPS",167),
("sanjay",15,"RLPS",172);
INSERT INTO school_info (school_name,zip_code) VALUES ("RLPS", 282001);

/*checking content of table people_info*/
USE people_education;
SELECT * FROM people_info;
 
/*checking content of table people_info*/
USE people_education;
SELECT * FROM school_info;
/*Assignment completed*/
