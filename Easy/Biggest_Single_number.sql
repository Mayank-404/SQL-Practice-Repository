/*
===========================================================================================================
Purpose: Find the largest single number. If there is no single number, report null.
Link: https://leetcode.com/problems/biggest-single-number/description/
===========================================================================================================
-- Table   

MyNumbers
+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
+-------------+------+
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
Each row of this table contains an integer.
*/
SELECT MAX(num) as num
FROM Mynumbers
WHERE num IN (
    SELECT num
    FROM Mynumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)
