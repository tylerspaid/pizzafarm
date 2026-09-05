/*categorize inventory*/
CREATE TABLE IF NOT EXISTS categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(50)
)

/*table of stocked ingredients*/
CREATE TABLE IF NOT EXISTS pantry (
    pantry_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
    pantry_quantity INT NOT NULL CHECK (pantry_quantity >= 0),     /*quantity as servings*/
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

/* add database transaction*/


/*table of quick select recipes*/
CREATE TABLE IF NOT EXISTS menu (
    menu_id INT NOT NULL PRIMARY KEY UNIQUE,
    name VARCHAR(50) NOT NULL UNIQUE,
    price NOT NULL NUMERIC(5, 2),
);

CREATE TABLE IF NOT EXISTS menu_ingredients (
    menu_id INT REFERENCES menu(menu_id),
    pantry_id INT REFERENCES pantry(pantry_id)
    PRIMARY KEY (menu_id, pantry_id)
); 

/*retain a log of inventory*/
CREATE TABLE IF NOT EXISTS inventory_log (
    inventory_id INT UNIQUE PRIMARY KEY,
    pantry_id INT REFERENCES pantry(pantry_id),
    inventory_adjustment INT,
    inventory_quantity INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
/* add database transaction*/

CREATE TABLE IF NOT EXISTS orders (
    order_id INT UNIQUE PRIMARY KEY,
    crust_id INT REFERENCES pantry(pantry_id),
    meat INT REFERENCES pantry(pantry_id),
    veggie INT REFERENCES pantry(pantry_id),
    status STR,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

/*database transaction?*/
