/*
===========================================================================================
Purpose: Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".
Link:    https://leetcode.com/problems/sales-person/description/
=============================================================================================
*/
select salesperson.name
from orders o join company c on (o.com_id = c.com_id and c.name = 'RED')
right join salesperson on salesperson.sales_id = o.sales_id
where o.sales_id is null
