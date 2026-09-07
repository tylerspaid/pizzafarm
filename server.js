const express = require('express');
const app = express();
const PORT = 3000;
const { Pool } = require('pg')
const pool = new Pool({
    host: "locahost",
    user: "postgres",
    password: "make-password-safe"
    database: "schema.sql",
    port 5432,
    max: 20
})

module.exports = pool;

app.use(express.json());
app.listen(3000, () => {
    console.log("Server is running on port 3000!");
});

const fetchMenu => {
    SELECT name, price FROM menu;
}

/* const fetchIngredients => {
    SELECT category_id, name FROM categories
    SELECT
} */ /* finish building custom pizza generation */

app.get('/api/menu', async (req, res) => {
    try {
        dbResult = await pool.query({fetchMenu})
        return res.json({dbResult});
    } catch (error) {
        res.json({success: false, error: "There was an error in app.get /api/menu"})
    }
});

/* app.post('/api/processOrder', async (req, res) => {
    try {
        const userOrder = req.body.userOrder
        
    } catch (error) {
        
    }
}); */
