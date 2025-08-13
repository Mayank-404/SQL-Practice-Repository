/*
====================================================================================================================
Purpose: Write a solution to find all customers who never order anything.
Link:    https://leetcode.com/problems/customers-who-never-order/description/
==================================================================================================================="
-- Table customers
      id	(PK)( representing a unique identifier for each customer)
      name
-- Table oders
      id		        (PK) ( representing a unique identifier for each order)
      customerId   (Foreign key)( referencing the id from the Customers table, indicating which customer placed the order.)
*/
-- Write your PostgreSQL query statement below
select c.name as Customers 
from Customers  c
 left join Orders o
  on c.id=o.customerId
where o.id is null;
      
