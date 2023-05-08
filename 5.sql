-- 5. Sorting and Limit Executions

SELECT name, ST_Area(geom) AS area
FROM places_of_interest
WHERE category = 'Parks'
ORDER BY area DESC
LIMIT 10;
