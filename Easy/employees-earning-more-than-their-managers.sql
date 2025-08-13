/*
==============================================================================================
Purpose : Write a solution to find the employees who earn more than their managers.
link : https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
==============================================================================================

-- Table Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
*/
Select e.name as Employee
from Employee as e cross join Employee as m  
where e.managerId = m.id and e.salary > m.salary;
