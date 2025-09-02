/*
===========================================================================================
Purpose : Report for every three line segments whether they can form a triangle
Link:     https://leetcode.com/problems/triangle-judgement/description/ 
===========================================================================================

-- Table Triangle
     ( x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
*/

select x,y,z ,
case 
    when x<0 and y<0 and z<0 then 'No'
    when x=y and y=z then 'Yes'
    when (x+y)>z and x+z>y and z+y>x  then 'Yes'
    else 'No' 
end as triangle
from Triangle
