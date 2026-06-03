/*1-Start by returning all rows and columns from the hero_battles data table*/
USE assignment_2;
SELECT * FROM hero_battles;

/*2-Now return the same result set but sort the data by ascending the number of enemies(num_enemies) column.*/
USE assignment_2;
SELECT * FROM hero_battles
ORDER BY num_enemies ASC;

/*3-Take that same query but change it and sort descending instead*/
USE assignment_2;
SELECT * FROM hero_battles
ORDER BY num_enemies DESC;

/*4-Keep the current query, but only show rows where the name column is equal toBatman.*/
USE assignment_2;
SELECT * FROM hero_battles
WHERE name="Batman"
ORDER BY num_enemies DESC;

/*5-edit the prior query to return the result set that is not Batman.*/
USE assignment_2;
SELECT * FROM hero_battles
WHERE NOT name="Batman"
ORDER BY num_enemies DESC;

/*6-Write a query that returns a data set that contains all the data 
where the number of enemies fought was 1 or 2*/
USE assignment_2;
SELECT * FROM hero_battles
WHERE num_enemies=1 OR num_enemies=2;

/*7-Now take that and write a query with all the data 
where the number of enemies was 1, or 2,or 10, or 12. Use an IN clause*/
USE assignment_2;
SELECT * FROM hero_battles
WHERE num_enemies IN (1,2,10,12);

/*8-Make a new query that returns any row where the name column contains the phrase “man”*/
USE assignment_2;
SELECT * FROM hero_battles
WHERE name LIKE "%man%";
/*Assignment completed*/

