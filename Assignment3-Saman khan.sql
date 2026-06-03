/*Assignment 3- In this assignment, you’ll be practicing fundamental SQL aggregation functions.
1) Start by returning all rows and columns from the hero_battles data table*/
USE assignment_3;
SELECT*FROM hero_battles;

/*2) Now, return the number of rows in the data set.*/
USE assignment_3;
SELECT COUNT(*) FROM hero_battles;

/*3) Write a query to select the column name’s max and min. Hint: use MIN() and MAX()*/
USE assignment_3;
SELECT MAX(name) AS maximum, MIN(name) AS minimum FROM hero_battles;

/*4) Write a query to select both the sum and the average of the column num_enemies*/
USE assignment_3;
SELECT SUM(num_enemies) AS sum_enemies FROM hero_battles;

USE assignment_3;
SELECT AVG(num_enemies) AS avg_enemies FROM hero_battles;

/*5) Now take that query of the sum and average of enemies, and group it by the column name*/
USE assignment_3;
SELECT  SUM(num_enemies) AS sum_enemies FROM hero_battles
GROUP BY name;

USE assignment_3;
SELECT AVG(num_enemies) AS avg_enemies FROM hero_battles
GROUP BY name;

/*6) Lastly, take the query we’ve been building and ORDER by the average*/
USE assignment_3;
SELECT  SUM(num_enemies) AS sum_enemies FROM hero_battles
GROUP BY name ORDER BY AVG(num_enemies);

/*Assignment completed*/