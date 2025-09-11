/*
======================================================================================================================
Purpose:   Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.
Link:      https://leetcode.com/problems/sales-analysis-iii/description/
=======================================================================================================================
Table: Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |
+--------------+---------+
product_id is the primary key (column with unique values) of this table.
Each row of this table indicates the name and the price of each product.

Table: Sales
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |
+-------------+---------+
This table can have duplicate rows.
product_id is a foreign key (reference column) to the Product table.
Each row of this table contains some information about one sale.
*/
Select distinct Product_id, Product_name
From Product join Sales using(product_id)
Where  EXTRACT(YEAR FROM sale_date) = 2019  
  AND EXTRACT(MONTH FROM sale_date) IN (1, 2, 3) 
  And Product_id Not In (select distinct product_id from Sales where sale_date > '2019-03-31' or sale_date < '2019-01-01'); 
