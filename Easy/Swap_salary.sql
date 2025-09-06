/*
=================================================================================
Purpose: Swap The sex of the employee from Salary table
Link:    https://leetcode.com/problems/swap-salary/submissions/1761604099/
=================================================================================
*/
UPDATE Salary
SET sex = CASE
    WHEN sex = 'f' THEN 'm'
    ELSE 'f'
END;
