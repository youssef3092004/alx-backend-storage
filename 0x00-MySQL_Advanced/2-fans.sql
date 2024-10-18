-- This query selects the origin of metal bands and the total number of fans for each origin.
-- It groups the results by origin and orders them in descending order based on the number of fans.

SELECT origin, SUM(fans) as nb_fans 
FROM metal_bands 
GROUP BY origin 
ORDER BY nb_fans DESC;
