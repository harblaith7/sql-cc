-- Determine the number of meat eater per animal class 
SELECT class, COUNT(*)
FROM animals_food
JOIN animals
ON animals_food.animal_id = animals.id
JOIN food 
ON food.id = animals_food.food_id
WHERE meal = 'meat'
GROUP BY class


-- Determine average monthly visitors the zookeepers
-- get on a per animal basis
SELECT first_name, (SUM(monthly_visitors)/COUNT(name)) AS avg_monthly_visitors
FROM zoo_keepers
JOIN animals 
ON zoo_keepers.id = animals.zookeeper_id 
GROUP BY first_name

-- Determine the count of the animals that are 
-- vegetarians and requires a dose of medicine 
-- greater than 500
SELECT COUNT(*) FROM (
    SELECT animals.id
    FROM animals_food 
    JOIN animals
    ON animals_food.animal_id = animals.id
    JOIN food 
    ON food.id = animals_food.food_id
    JOIN medicine
    ON animals.medicine_id = medicine.id
    WHERE dose > 500 AND meal <> 'meat'
    GROUP BY animals.id
) as sadas