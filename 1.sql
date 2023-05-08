-- Create table Restaurants
CREATE TABLE restaurants (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    geom GEOMETRY(Point, 4326)
);

-- Insert data into the table
INSERT INTO restaurants (name, address, geom) VALUES
    ('Pizza Palace', '123 Main St', ST_GeomFromText('POINT(-122.409375 37.790410)', 4326)),
    ('Burger Barn', '456 Oak St', ST_GeomFromText('POINT(-122.407294 37.789573)', 4326)),
    ('Taco Truck', '789 Elm St', ST_GeomFromText('POINT(-122.406069 37.791159)', 4326)),
    ('Sushi Shack', '321 Pine St', ST_GeomFromText('POINT(-122.408079 37.788605)', 4326)),
    ('Falafel Factory', '987 Maple St', ST_GeomFromText('POINT(-122.410717 37.789334)', 4326));
    

-- 1. Retrieve Locations of specific features

SELECT ST_AsText(geom) FROM restaurants WHERE name = 'Pizza Palace';
