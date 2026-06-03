/*1) Take hero_battles and do a left join on heroes_information on the name columns. 
Select all columns*/
USE sql_assignment;
SELECT * FROM hero_battles
LEFT JOIN heroes_information
ON hero_battles.name = heroes_information.name;

/*2) Take super_hero_powers and do a right join with hero_battles on the name columns. 
Note that the name column is hero_names on the super_hero_powers table*/
USE sql_assignment;
SELECT * FROM super_hero_powers
RIGHT JOIN hero_battles
ON super_hero_powers.hero_names = hero_battles.name;

/*3) Select all the female heroes from heroes_information and stack that name result on top of
all the heroes who have accelerated healing from the super_hero_powers table. 
Only return the name columns*/
USE sql_assignment;
SELECT name AS new_name FROM heroes_information WHERE Gender = 'Female' 
UNION 
SELECT hero_names FROM super_hero_powers WHERE 'Accelerated Healing' = 'True';

/*Assignment Completed*/