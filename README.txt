README:

This project involves analyzing geographic data such as maps and spatial data using a PostgreSQL (PostGIS) database. The following are the steps that were taken to complete this project.

Step 1: Create a database
A PostgreSQL database called cs623_gisdb was created using the command:

CREATE DATABASE cs623_gisdb;

Step 2: Create tables and insert data
Tables for points of interest, parks, and restaurants were created.
Dummy data was then inserted into the tables using the INSERT command.

Step 3: Perform GIS analysis
Several GIS analysis tasks were performed, including:

1. Retrieve Locations of specific features
To retrieve the locations of parks, the following command was used:

SELECT name, ST_AsText(geom) AS location
FROM parks;

2. Calculate Distance between points
To calculate the distance between a given point (x,y) and the points of interest, the following command was used:

SELECT name, ST_Distance(geom, ST_SetSRID(ST_MakePoint(x, y), 4326)) AS distance
FROM places_of_interest
ORDER BY geom <-> ST_SetSRID(ST_MakePoint(x, y), 4326)
LIMIT 5;

3. Calculate Areas of Interest
To calculate the area of parks, the following command was used:

SELECT name, ST_Area(geom) AS area
FROM parks;

4. Analyze the queries
The queries were analyzed using the EXPLAIN command to identify any inefficiencies.

5. Sorting and Limit Executions
The results of the queries were sorted and limited using the ORDER BY and LIMIT commands.

6. Optimize the queries to speed up execution time
Indexes were created on the tables using the CREATE INDEX command and the tables were clustered using the CLUSTER command to speed up execution time.

7. N-Optimization of queries
Additional optimizations were made to the queries to further improve execution time.

Conclusion
By following the above steps, a PostgreSQL (PostGIS) database was created and used to perform various GIS analysis tasks. The queries were optimized to speed up execution time, resulting in faster and more efficient analysis.
