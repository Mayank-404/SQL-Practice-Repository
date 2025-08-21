/*
============================================================
purpose: Write a solution to find all the classes that have at least five students.
Link:   https://leetcode.com/problems/classes-with-at-least-5-students/description/
============================================================
-- Table Courses 
                Student
                class
*/
select class from courses group by class having count(class)>=5
