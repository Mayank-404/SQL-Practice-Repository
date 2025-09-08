/*
=======================================================================================================
Purpose:  Write a solution to find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.
Link:     https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/description/
=========================================================================================================
Table: ActorDirector

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| actor_id    | int     |
| director_id | int     |
| timestamp   | int     |
+-------------+---------+
timestamp is the primary key (column with unique values) for this table.
*/
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
