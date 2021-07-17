-- Get the name weight and max weight
SELECT name, weight, (SELECT MAX(weight) FROM animals)
FROM animals;


-- Find all the names and class of all animals that 
-- have a maintance to weight ratio greater than 200
SELECT * 
FROM (
    SELECT name, type, class, (maintenance_cost/weight)
    AS price_to_weight
    FROM animals
) AS price_to_weight_table
WHERE price_to_weight > 200;


-- Average number of animals per zoo_keeper
SELECT AVG(count) FROM (
    SELECT COUNT(*)
    FROM animals
    GROUP BY zookeeper_id
) as p


-- Find the animals that have a cost to visitors ratio greater than 10
SELECT *
FROM animals
WHERE id IN (
    SELECT id FROM animals WHERE maintenance_cost/monthly_visitors > 10
)