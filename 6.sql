-- 6. Optimize the queries to speed up execution time

-- Indexing, Clustering and simplification
CREATE INDEX idx_places_of_interest_category ON places_of_interest (category);
CLUSTER places_of_interest USING idx_places_of_interest_category;

-- Using a spatial index for the distance query
SELECT name, ST_Distance(geom, ST_SetSRID(ST_MakePoint(-122.406417, 37.785834), 4326)) AS distance
FROM places_of_interest
ORDER BY geom <-> ST_SetSRID(ST_MakePoint(-122.406417, 37.785834), 4326)
LIMIT 5;

