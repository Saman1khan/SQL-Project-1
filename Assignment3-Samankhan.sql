/*In this assignment, you’ll practice the topics you covered in Module 9, including CASE,
HAVING, window functions, text analysis, and ranking.
1. Create a query to select all columns from heroes_information but to add a new column
called human. Have that column be a 1 if their race is Human and 0 if not*/
USE sql_assignment;
SELECT * ,
CASE
WHEN Race = 'Human' THEN 1
ELSE 0
END AS human
FROM heroes_information;

/*2. Create a new query to provide a list of the heaviest super heroes, 
with the heaviest being #1*/
USE sql_assignment;
SELECT name,Weight,
DENSE_RANK () OVER(ORDER BY Weight DESC) AS rank_weight FROM heroes_information  ;

/*3. Give a frequency table with each letter of the alphabet and how many superheroes’ names
start with that letter*/
USE sql_assignment;
SELECT LEFT (name,1) AS letter,COUNT(name) AS count_hero_name
FROM heroes_information Group BY letter ;

/*4. Select all the hero races with an average weight of over 150 
and an average height of over 100*/
USE sql_assignment;
SELECT race, COUNT(name) AS heroes
FROM heroes_information GROUP BY race
HAVING AVG(Weight) >150 and AVG(Height)>100  ORDER BY race; 

/*Assignment completed*/