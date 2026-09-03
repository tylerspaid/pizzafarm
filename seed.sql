INSERT INTO pantry (pantry_id, name, pantry_quantity) VALUES (
(1, 'pepperoni', '5000'),
(2, 'sausage', '2500'),
(3, 'fish', '500'),
(4, 'pineapple', '4200'),
(5, 'olives', '2800'),
(6, 'cucumber', '400'),
(7, 'tomato sauce' '7500'),
(8, 'alfredo sauce', '850'),
(9, 'cheese', '7500')

INSERT INTO menu (menu_id, name, ingredient1_id,
    ingredient2_id, ingredient3_id, ingredient4_id) VALUES
(1, 'Best Pizza',
    (SELECT pantry_id FROM pantry WHERE name = 'pepperoni'),
    (SELECT pantry_id FROM pantry WHERE name = 'pineapple'),
    (SELECT pantry_id FROM pantry WHERE name = 'tomato sauce'),
    (SELECT pantry_id FROM pantry WHERE name = 'cheese')
),
(2, 'Okay, That''s Fine',
    (SELECT pantry_id FROM pantry WHERE name = 'sausage'),
    (SELECT pantry_id FROM pantry WHERE name = 'olives'),
    (SELECT pantry_id FROM pantry WHERE name = 'tomato sauce'),
    (SELECT pantry_id FROM pantry WHERE name = 'cheese')
),
(3, 'WHY WOULD YOU ORDER THAT??'
    (SELECT pantry_id FROM pantry WHERE name = 'fish'),
    (SELECT pantry_id FROM pantry WHERE name = 'cucumber'),
    (SELECT pantry_id FROM pantry WHERE name = 'alfredo sauce'),
    (SELECT pantry_id FROM pantry WHERE name = 'cheese')
);
