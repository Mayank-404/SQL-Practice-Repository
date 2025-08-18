/* 
--------------------------------------------------------------------------------------
Purpose: Write a solution to report the name and bonus amount of each employee with a bonus less than
Link:    https://leetcode.com/problems/employee-bonus/submissions/1739701425/
---------------------------------------------------------------------------------------
-- Table Employee :
                    empId (pk)
                    name
                    supervisor
                    salary
-- Table Bonus: 
                  empId
                  bonus
                    
*/



SELECT e.name AS name, b.bonus AS bonus
FROM Employee e 
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
