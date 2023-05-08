-- 4. Analyze the queries

-- Analyze the query we used to calculate the distance between two points
EXPLAIN SELECT ST_Distance(
   ST_GeomFromText('POINT(-73.961371 40.768311)', 4326),
   ST_GeomFromText('POINT(-73.960233 40.768842)', 4326)
);


-- Using the ANALYZE keyword to get more detailed information on the query performance, such as the actual execution time, number of rows scanned, and so on:

EXPLAIN ANALYZE SELECT ST_Distance(
   ST_GeomFromText('POINT(-73.961371 40.768311)', 4326),
   ST_GeomFromText('POINT(-73.960233 40.768842)', 4326)
);

