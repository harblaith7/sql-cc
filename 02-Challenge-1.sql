-------------------------------
        -- insert --
-------------------------------


INSERT INTO animals (name, class, type, age, gender, birth_date, maintenance_cost, weight, monthly_visitors)
VALUES 
    ('Kitty', 'mammal', 'tiger', 14, true, '2012-04-06', 20325, 245, 3422),
    ('Fargo', 'bird', 'penguin', 22, true, '2002-11-01', 12442, 92, 2234),
    ('Garfield', 'mammal', 'cat', 2, false, '2011-01-01', 255, 3, 341),
    ('Teddy', 'mammal', 'bear', 12, false, '2011-12-29', 26638, 321, 4311),
    ('Ali', 'reptile', 'aligator', 52, false, '1973-04-14', 48332, 477, 5586),
    ('Garfield', 'bird', 'ostrich', 37, true, '1980-03-22', 5982, 169, 3406),
    ('Elfo', 'mammal', 'tiger', 5, false, '2016-11-06', 12888, 125, 9744),
    ('Kilo', 'mammal', 'kangaroo', 85, false, '1940-12-03', 13434, 169, 7227),
    ('Marco', 'mammal', 'cat', 2, false, '2019-11-11', 375, 4, 32),
    ('Wings', 'mammal', 'buffalo', 62, true, '1945-10-11', 54245, 433, 1446),
    ('Patro', 'bird', 'flamengo', 12, true, '2009-04-12', 6544, 120, 5545),
    ('Laptop', 'mammal', 'mouse', 7, true, '2014-11-01', 122, 1, 21),
    ('Ja', 'mammal', 'gorilla', 42, false, '1883-01-01', 54223, 399, 6220),
    ('Peter', 'bird', 'parrot', 12, false, '2011-01-01', 4773, 39, 2002),
    ('Garfield', 'mammal', 'cat', 12, true, '2011-01-01', 602, 7, 200),
    ('Endo', 'reptile', 'snake', 14, true, '2012-04-06', 2553, 6, 3320),
    ('Jess', 'mammal', 'wolve', 55, true, '1970-11-01', 4311, 89, 3321),
    ('Matteo', 'amphibian', 'dart frog', 2, false, '2019-01-01', 533, 1, 953),
    ('Morgan', 'reptile', 'comodo dragon', 53, true, '1970-12-29', 8884, 85, 14244),
    ('Noah', 'mammal', 'elephant', 22, false, '2000-04-14', 133053, 895, 23323),
    ('Piko', 'bird', 'ostrich', 27, true, '1990-03-22', 43555, 255, 5344),
    ('Altas', 'mammal', 'dolphin', 5, false, '2016-11-06', 44328, 273, 10442),
    ('Dabro', 'mammal', 'kangaroo', 25, false, '1994-12-03', 33224, 133, 6422),
    ('Haylea', 'mammal', 'fox', 6, true, '2015-11-11', 4266, 32, 3222),


-------------------------------
    -- CHALLENGE ANSWERS --
-------------------------------

-- Select all the female animals (gender = true)
SELECT * 
FROM animals
WHERE gender = true

-- Select all the animals that weight more 300 kg
SELECT *
FROM animals
WHERE weight > 300

-- Select all the male animals that weight under 100kg
SELECT *
FROM animals
WHERE gender = false AND weight < 100

-- Select all the mammals or reptiles that have monthly
-- vistors greater than 10000
SELECT *
FROM animals
WHERE (class = 'mammal' OR class = 'reptile') AND monthly_visitors > 10000

-- Determine the total maintance cost
SELECT SUM(maintenance_cost) AS total_cost
FROM animals

-- Determine the number of male animals over 50
SELECT COUNT(*)
FROM animals
WHERE gender = false AND age > 50

-- Determine the average weight of all female animals
SELECT AVG(weight)::INT
FROM animals
WHERE gender = true

-- Determine the average weight of all female animals
-- between the age of 20 to 30
SELECT AVG(weight)::INT
FROM animals
WHERE gender = true AND (age BETWEEN 20 AND 30)

-- Find the name and type of the most visited animal
-- SELECT MAX(monthly_visitors) FROM animals = 23323

