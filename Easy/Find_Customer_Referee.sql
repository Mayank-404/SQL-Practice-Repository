/*
--------------------------------------------------------------------------------------------------------
Purpose: Find the names of the customer that are either:
         referred by any customer with id != 2.
         not referred by any customer.
 Link:   https://leetcode.com/problems/find-customer-referee/description/
-----------------------------------------------------------------------------------------------------

--Table :        
          id
          name
          referee_id
*/
SELECT name
FROM customer 
Where referee_id !=2 or referee_id IS NULL


