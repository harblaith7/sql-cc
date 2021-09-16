CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    gender BOOLEAN NOT NULL,
    birth_date DATE,
    maintenance_cost INT NOT NULL, 
    weight INT NOT NULL, 
    monthly_visitors INT NOT NULL,
    zookeeper_id INTEGER,
    medicine_id INTEGER UNIQUE,
    FOREIGN KEY (zookeeper_id) REFERENCES zoo_keepers(id),
    FOREIGN KEY (medicine_id) REFERENCES medicine(id)
)

CREATE TABLE zoo_keepers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE medicine (
    id SERIAL PRIMARY KEY,
    solution VARCHAR(255),
    dose INTEGER
)

CREATE TABLE food (
    id SERIAL PRIMARY KEY,
    meal VARCHAR(255),
    quantity INTEGER
) 

CREATE TABLE animals_food (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER,
    food_id INTEGER,
    FOREIGN KEY (animal_id) REFERENCES animals(id),
    FOREIGN KEY (food_id) REFERENCES food(id)
)


INSERT INTO animals (name, class, type, age, gender, birth_date, maintenance_cost, weight, monthly_visitors, zookeeper_id, medicine_id)
VALUES 
    ('Kitty', 'mammal', 'tiger', 14, true, '2012-04-06', 20325, 245, 3422, 1, 1),
    ('Fargo', 'bird', 'penguin', 22, true, '2002-11-01', 12442, 92, 2234, 1, 2),
    ('Garfield', 'mammal', 'cat', 2, false, '2011-01-01', 255, 3, 341, 1, 3),
    ('Teddy', 'mammal', 'bear', 12, false, '2011-12-29', 26638, 321, 4311, 1, 4),
    ('Ali', 'reptile', 'aligator', 52, false, '1973-04-14', 48332, 477, 5586, 1, 5),
    ('Garfield', 'bird', 'ostrich', 37, true, '1980-03-22', 5982, 169, 3406, null, null),
    ('Elfo', 'mammal', 'tiger', 5, false, '2016-11-06', 12888, 125, 9744, 2, 7),
    ('Kilo', 'mammal', 'kangaroo', 85, false, '1940-12-03', 13434, 169, 7227, 2, 8),
    ('Marco', 'mammal', 'cat', 2, false, '2019-11-11', 375, 4, 32, null, 9),
    ('Wings', 'mammal', 'buffalo', 62, true, '1945-10-11', 54245, 433, 1446, 2, 10),
    ('Patro', 'bird', 'flamengo', 12, true, '2009-04-12', 6544, 120, 5545, 2, 11),
    ('Laptop', 'mammal', 'mouse', 7, true, '2014-11-01', 122, 1, 21, 3, 12),
    ('Ja', 'mammal', 'gorilla', 42, false, '1883-01-01', 54223, 399, 6220, 3, null),
    ('Peter', 'bird', 'parrot', 12, false, '2011-01-01', 4773, 39, 2002, 3, 14),
    ('Garfield', 'mammal', 'cat', 12, true, '2011-01-01', 602, 7, 200, 3, 15),
    ('Endo', 'reptile', 'snake', 14, true, '2012-04-06', 2553, 6, 3320, 3, 16),
    ('Jess', 'mammal', 'wolve', 55, true, '1970-11-01', 4311, 89, 3321, 3, 17),
    ('Matteo', 'amphibian', 'dart frog', 2, false, '2019-01-01', 533, 1, 953, null, 18),
    ('Morgan', 'repitle', 'comodo dragon', 53, true, '1970-12-29', 8884, 85, 14244, 4, 19),
    ('Noah', 'mammal', 'elephant', 22, false, '2000-04-14', 133053, 895, 23323, 4, 20),
    ('Piko', 'bird', 'ostrich', 27, true, '1990-03-22', 43555, 255, 5344, 4, 21),
    ('Altas', 'mammal', 'dolphin', 5, false, '2016-11-06', 44328, 273, 10442, 4, 22),
    ('Dabro', 'mammal', 'kangaroo', 25, false, '1994-12-03', 33224, 133, 6422, 4, 23),
    ('Haylea', 'mammal', 'fox', 6, true, '2015-11-11', 4266, 32, 3222, 4, 24),


INSERT INTO animals_food (animal_id, food_id)
VALUES
    (1,1),
    (2,1),
    (2,2),
    (3,1),
    (3,2),
    (3,3),
    (4,1),
    (4,2),
    (4,3),
    (4,4),
    (5,1),
    (6,2),
    (6,3),
    (7,1),
    (8,2),
    (8,5),
    (9,1),
    (10,2),
    (10,6),
    (11,4),
    (11,2),
    (12,1),
    (12,2),
    (12,3),
    (12,4),
    (12,5),
    (12,6),
    (13,1),
    (13,4),
    (13,3),
    (14,2),
    (14,3),
    (14,4),
    (15,1),
    (16,1),
    (17,1),
    (18,1),
    (19,1),
    (20,2),
    (20,3),
    (20,4),
    (20,5),
    (20,6),
    (21,2),
    (22,1),
    (23,3),
    (24,1),



INSERT INTO zoo_keepers (first_name, last_name)
VALUES
    ('Laith', 'Harb'),
    ('Haylea', 'Andrews'),
    ('Morgan', 'Lomo'),
    ('Abby', 'Green'),
    ('Xavier', 'Solo')


INSERT INTO food (meal, quantity)
VALUES
    ('meat', 422),
    ('vegetables', 5942),
    ('fruits', 442),
    ('nuts', 942),
    ('dairy', 652),
    ('grains', 3421)

INSERT INTO medicine (solution, dose, )
VALUES
    ('Amitriptyline', 433),
    ('Bunavail', 523),
    ('Clindamycin', 532),
    ('Azithromycin', 755),
    ('Citalopram', 353),
    ('Farxiga', 535),
    ('Hydroxychloroquine', 422),
    ('Ibuprofen', 743),
    ('Naproxen', 531),
    ('Doxycycline', 23),
    ('Cymbalta', 75),
    ('Humira', 422),
    ('Kevzara', 222),
    ('Entresto', 31),
    ('Ciprofloxacin', 2),
    ('Entyvio', 63),
    ('Januvia', 424),
    ('Tramadol', 232),
    ('Meloxicam', 422),
    ('Methotrexate', 244),
    ('Rybelsus', 885),
    ('Lyrica', 244),
    ('Melatonin', 885),
    ('Pyfier', 422),

