/*1) Start by querying all of the data from heroes_information 
if the Race has an average weight of over 400*/

USE sql_assignment;
SELECT * FROM heroes_information WHERE race IN (SELECT race
FROM heroes_information GROUP BY race
HAVING AVG(Weight)>400  ORDER BY race); 

/*2) Create a temporary table for this result called bigs*/

USE sql_assignment;
CREATE TEMPORARY TABLE bigs
SELECT * FROM heroes_information WHERE race IN (SELECT race
FROM heroes_information GROUP BY race
HAVING AVG(Weight) > 400  ORDER BY race); 

/*3) Select all columns and rows from that temporary table*/

USE sql_assignment;
SELECT * FROM bigs;

/*4) Write a new query that creates a view that selects the data 
if the publisher is MarvelComics and if their height is above the average height*/

USE sql_assignment;
CREATE VIEW marvel AS
SELECT * FROM heroes_information  WHERE Publisher ='Marvel Comics' AND Height > 'avg_height' 
IN (SELECT AVG(Height) AS avg_height FROM heroes_information); 

/*Bring that view up.*/

USE sql_assignment;
SELECT* FROM marvel;

/*5) Now add an index to the heroes_information table on the name and Race columns*/

USE sql_assignment;
CREATE FULLTEXT index index1 ON heroes_information (name,race);
SHOW index FROM heroes_information;

/*6) Finally, create a stored procedure that selects all the data from heroes_information 
if theyare from DC. Call it all_dc_rows*/

USE sql_assignment;
DELIMITER ##
CREATE PROCEDURE sp_all_dc_rows ()
BEGIN
SELECT * FROM heroes_information  WHERE Publisher ='DC Comics'; 
END ##
CALL sp_all_dc_rows();

/*Assignment Completed*/
