/*
========================================================================================================
Purpose: Write a solution to find the customer_number for the customer who has placed the largest number of orders.
Link:    https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
========================================================================================================
-- Table : Orders
            order_number   
            customer_number
*/
select customer_number
from orders
group by customer_number
order by count(*) DESC limit 1;
