/*1) Start by casting the value “24.423423” to a float value. For assignment purpose 
i have created a database named sql_assign*/;
SELECT CAST( 24.423423 AS FLOAT) AS cast;

/*2) Next, return the date, time, hour, month, second, and minute data for 
the hero_battles tablebased off of the date column*/
USE sql_assign1;
SELECT date FROM hero_battles;
SELECT DATE(date),MONTH(date),TIME(date), HOUR(date), MINUTE(date), SECOND(date) FROM hero_battles;

/*3) Create a histogram for the number of enemies fought. No need to round*/
USE sql_assign1;
SELECT ROUND (num_enemies,1) AS bucket,
COUNT(*) AS count,
RPAD('',COUNT(*),'*') AS bar
FROM hero_battles
GROUP BY bucket 
ORDER BY bucket;

/*4) Write a query to replace all of the occurrences of Batman with Batwoman. 
Return only the name column.*/
USE sql_assign1;
SELECT REPLACE(name,'Batman','Batwoman') AS cor_name, COUNT(*) FROM hero_battles GROUP BY cor_name;

/*5) Make a new query that creates a sentence that says, “This battle occurred at 14 o’clock,”
but replace 14 with the hour of that particular battle*/
USE sql_assign1;
SELECT CONCAT('This battle occured at',' ',HOUR(date),' ','O"clock') AS battle_time FROM hero_battles;

/*6) Create a query that makes a sentence describing each superhero. 
State their name, andstate what comic series they are from. 
For example, “James Bond is from Titan Books.” 
Use the heroes_information table and the name and publisher columns. 
--I have imported heroes_information table in the current database*/

USE sql_assign1;
SELECT CONCAT( name,' ','is from',' ',publisher,' ','books.') AS hero_detail FROM heroes_information;

/*Assignment completed*/
