-- 2. Calculate Distance between points

-- Here's an example query to calculate the distance between two restaurants in the restaurants table:

SELECT name AS restaurant_1, 
       address AS address_1, 
       name AS restaurant_2, 
       address AS address_2, 
       ST_Distance(geom, 
                    (SELECT geom FROM restaurants WHERE name = 'Burger Barn')) AS distance
FROM restaurants
WHERE name = 'Pizza Palace';
