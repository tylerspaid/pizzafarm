INSERT INTO categories (category_id, name) VALUES (
    (1, 'meat'),
    (2, 'vegetable'),
    (3, 'cheese'),
    (4, 'sauce'),
    (5, 'crust');
);

INSERT INTO pantry (pantry_id, name, category, pantry_quantity) VALUES (
    (1, 'pepperoni', 1, '5000'),
    (2, 'sausage', 1, '2500'),
    (3, 'fish', 1, '500'),
    (4, 'pineapple', 2, '4200'),
    (5, 'olives', 2, '2800'),
    (6, 'cucumber', 2, '400'),
    (7, 'cheese', 3, '7500'),
    (8, 'tomato sauce' 4, '7500'),
    (9, 'alfredo sauce', 4, '850'),
    (10, 'thick crust', 5, '2000'),
    (11, 'thin crust', 5, '2000'),
    (12, 'ridiculously thin crust', 5, '35');
);

INSERT INTO menu (menu_id, name, menu_price) VALUES (
    (1, 'Best Pizza', 16.99),
    (2, 'Okay, That''s Fine', 14.99),
    (3, 'WHY WOULD YOU ORDER THAT??', 23.99);
);

INSERT INTO menu_ingredients (menu_id, pantry_id) VALUES (
    (1, 1), (1, 4), (1, 7), (1, 8), (1, 10),
    (2, 2), (2, 5), (2, 7), (2, 8), (2, 11),
    (3, 3), (3, 6), (3, 7), (3, 9), (3, 12);
);