-- Here's an example of creating a new places_of_interest table with a name column and a category column:
CREATE TABLE places_of_interest (
    name VARCHAR(50),
    category VARCHAR(50),
    geom GEOMETRY(Polygon, 4326)
);

-- 3. Calculate Areas of Interest (specific to each group)

INSERT INTO places_of_interest (name, category, geom)
VALUES ('Central Park', 'Parks', ST_GeomFromText('POLYGON((-73.968285 40.773564,-73.981428 40.778123,-73.974243 40.785794,-73.959157 40.781379,-73.968285 40.773564))', 4326));
