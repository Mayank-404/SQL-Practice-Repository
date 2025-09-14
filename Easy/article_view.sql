/*
======================================================================================================
Purpose: Write a solution to find all the authors that viewed at least one of their own articles.
Link:    https://leetcode.com/problems/article-views-i/description/
=======================================================================================================
*/
SELECT distinct viewer_id id 
FROM Views
WHERE author_id=viewer_id
