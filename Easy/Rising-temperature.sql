/*
-------------------------------------------------------------------
Purpose : Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Link:     https://leetcode.com/problems/rising-temperature/description/
-------------------------------------------------------------------

-- Table : Weather
          id (pk)
          recordDate (yyyy-mm-dd)
          temperature
*/
SELECT f.id
FROM weather e
JOIN weather f ON f.recorddate = e.recorddate + INTERVAL '1 day'
WHERE e.temperature < f.temperature;
